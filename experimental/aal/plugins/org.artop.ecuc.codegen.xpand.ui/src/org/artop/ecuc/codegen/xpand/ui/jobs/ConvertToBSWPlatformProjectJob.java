package org.artop.ecuc.codegen.xpand.ui.jobs;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Iterator;
import java.util.List;

import org.artop.aal.workspace.natures.AutosarNature;
import org.artop.ecl.platform.util.ExtendedPlatform;
import org.artop.ecuc.codegen.xpand.ui.internal.messages.Messages;
import org.eclipse.core.resources.ICommand;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IProjectDescription;
import org.eclipse.core.resources.ProjectScope;
import org.eclipse.core.resources.WorkspaceJob;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.emf.common.util.UniqueEList;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.launching.JavaRuntime;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.pde.internal.core.bundle.WorkspaceBundlePluginModel;
import org.eclipse.pde.internal.core.ibundle.IBundle;
import org.eclipse.pde.internal.core.project.PDEProject;
import org.eclipse.pde.internal.ui.wizards.tools.ConvertProjectToPluginOperation;
import org.eclipse.ui.preferences.ScopedPreferenceStore;
import org.eclipse.xtend.shared.ui.core.builder.XtendXpandNature;
import org.eclipse.xtend.shared.ui.core.preferences.PreferenceConstants;
import org.eclipse.xtend.shared.ui.internal.XtendLog;

@SuppressWarnings("restriction")
public class ConvertToBSWPlatformProjectJob extends WorkspaceJob {

	protected static final String PDE_MANIFEST_BUILDER = "org.eclipse.pde.ManifestBuilder"; //$NON-NLS-1$
	protected static final String PDE_SCHEMA_BUILDER = "org.eclipse.pde.SchemaBuilder"; //$NON-NLS-1$
	protected static final String JAVA_CLASSPATH_JRE_CONTAINER_ENTRY_SUFFIX_J2SE_1_5 = "/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/J2SE-1.5"; //$NON-NLS-1$
	protected static final String JAVA_CLASSPATH_JRE_CONTAINER_ENTRY_SUFFIX_JAVA_SE_1_6 = "/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.6"; //$NON-NLS-1$

	private IProject project;
	private static String EXTENSION_PACKAGE_NAME = "extensions"; //$NON-NLS-1$
	private static String SOURCE_PACKAGE_NAME = "src"; //$NON-NLS-1$
	private static String REQUIRED_BUNDLES = "org.eclipse.jdt.core,org.eclipse.xtend.profiler,org.apache.commons.logging,org.apache.log4j,com.ibm.icu,org.antlr.runtime,org.eclipse.core.runtime,org.eclipse.emf.ecore.xmi,org.eclipse.jface.text,org.eclipse.xtend,org.eclipse.xtend.typesystem.emf,org.eclipse.xtend.backend,org.eclipse.xtend.middleend.xpand,org.eclipse.xtend.middleend.xtend,org.eclipse.xtend.util.stdlib,org.eclipse.emf.mwe.activities,org.eclipse.xpand"; //$NON-NLS-1$
	private static String REQUIRED_EXECUTION_ENVIRONMENT = "J2SE-1.5"; //$NON-NLS-1$
	private static String METAMODEL_CONTRIBUTOR_ECUCMETAMODELCONTRIBUTOR = "org.artop.ecuc.xtend.typesystem.ui.internal.EcucMetamodelContributor"; //$NON-NLS-1$

	public ConvertToBSWPlatformProjectJob(String name, IProject project) {
		super(name);
		this.project = project;
	}

	protected void createSubPackageExtensions(IProgressMonitor monitor) throws CoreException {
		SubMonitor progress = SubMonitor.convert(monitor, 2);

		progress.setTaskName(Messages.task_CreationOfSubpackageExtensions);
		if (progress.isCanceled()) {
			throw new OperationCanceledException();
		}
		IJavaProject javaProject = JavaCore.create(project);
		IPackageFragmentRoot rootPackageFragmentRoot = javaProject.getPackageFragmentRoot(project.getFolder(SOURCE_PACKAGE_NAME));
		progress.worked(1);
		rootPackageFragmentRoot.createPackageFragment(EXTENSION_PACKAGE_NAME, true, monitor);
		progress.worked(1);
		progress.done();
	}

	protected void addDependencies(IProgressMonitor monitor) {
		SubMonitor progress = SubMonitor.convert(monitor, 4);
		progress.setTaskName(Messages.task_AddPluginDependencies);
		if (progress.isCanceled()) {
			throw new OperationCanceledException();
		}
		WorkspaceBundlePluginModel model = new WorkspaceBundlePluginModel(PDEProject.getManifest(project), null);
		model.load();
		progress.worked(1);
		IBundle pluginBundle = model.getBundleModel().getBundle();
		pluginBundle.setHeader(org.osgi.framework.Constants.BUNDLE_NAME, project.getName());
		pluginBundle.setHeader(org.osgi.framework.Constants.REQUIRE_BUNDLE, REQUIRED_BUNDLES);
		progress.worked(1);
		pluginBundle.setHeader(org.osgi.framework.Constants.BUNDLE_REQUIREDEXECUTIONENVIRONMENT, REQUIRED_EXECUTION_ENVIRONMENT);
		progress.worked(1);
		model.save();
		progress.worked(1);
		progress.done();
	}

	protected void addNaturesToProject(IProgressMonitor monitor) throws CoreException {
		SubMonitor progress = SubMonitor.convert(monitor, 2);
		progress.setTaskName(Messages.task_AddXtendXpandNature);
		if (progress.isCanceled()) {
			throw new OperationCanceledException();
		}
		ExtendedPlatform.addNature(project, JavaCore.NATURE_ID, null);
		progress.worked(1);
		ExtendedPlatform.addNature(project, XtendXpandNature.NATURE_ID, null);
		progress.worked(1);
		progress.done();
	}

	protected void convertToJavaPluginProject(IProgressMonitor monitor) throws CoreException {
		SubMonitor progress = SubMonitor.convert(monitor, 100);
		progress.setTaskName(Messages.task_ConvertToJavaPluginProject);
		if (progress.isCanceled()) {
			throw new OperationCanceledException();
		}
		IJavaProject javaProject = JavaCore.create(project);
		IPath javaSource = project.getFullPath().append(SOURCE_PACKAGE_NAME);
		IProjectDescription projectDescription = project.getDescription();
		List<IClasspathEntry> classpathEntries = new UniqueEList<IClasspathEntry>();
		boolean isInitiallyEmpty = classpathEntries.isEmpty();
		ICommand[] builders = projectDescription.getBuildSpec();
		if (builders == null) {
			builders = new ICommand[0];
		}
		boolean hasManifestBuilder = false;
		boolean hasSchemaBuilder = false;
		for (int i = 0; i < builders.length; ++i) {
			if (PDE_MANIFEST_BUILDER.equals(builders[i].getBuilderName())) {
				hasManifestBuilder = true;
			}
			if (PDE_SCHEMA_BUILDER.equals(builders[i].getBuilderName())) {
				hasSchemaBuilder = true;
			}
		}
		if (!hasManifestBuilder) {
			ICommand[] oldBuilders = builders;
			builders = new ICommand[oldBuilders.length + 1];
			System.arraycopy(oldBuilders, 0, builders, 0, oldBuilders.length);
			builders[oldBuilders.length] = projectDescription.newCommand();
			builders[oldBuilders.length].setBuilderName(PDE_MANIFEST_BUILDER);
		}
		if (!hasSchemaBuilder) {
			ICommand[] oldBuilders = builders;
			builders = new ICommand[oldBuilders.length + 1];
			System.arraycopy(oldBuilders, 0, builders, 0, oldBuilders.length);
			builders[oldBuilders.length] = projectDescription.newCommand();
			builders[oldBuilders.length].setBuilderName(PDE_SCHEMA_BUILDER);
		}
		projectDescription.setBuildSpec(builders);

		project.setDescription(projectDescription, new SubProgressMonitor(progress, 1));

		IContainer sourceContainer = project;
		if (javaSource.segmentCount() > 1) {
			IPath sourceContainerPath = javaSource.removeFirstSegments(1).makeAbsolute();
			sourceContainer = project.getFolder(sourceContainerPath);
			if (!sourceContainer.exists()) {
				for (int i = sourceContainerPath.segmentCount() - 1; i >= 0; i--) {
					sourceContainer = project.getFolder(sourceContainerPath.removeLastSegments(i));
					if (!sourceContainer.exists()) {
						((IFolder) sourceContainer).create(false, true, new SubProgressMonitor(monitor, 1));
					}
				}
			}

			IClasspathEntry sourceClasspathEntry = JavaCore.newSourceEntry(javaSource);
			for (Iterator<IClasspathEntry> i = classpathEntries.iterator(); i.hasNext();) {
				IClasspathEntry classpathEntry = i.next();
				if (classpathEntry.getPath().isPrefixOf(javaSource)) {
					i.remove();
				}
			}
			classpathEntries.add(0, sourceClasspathEntry);
		}

		if (isInitiallyEmpty) {
			IClasspathEntry jreClasspathEntry = JavaCore.newVariableEntry(new Path(JavaRuntime.JRELIB_VARIABLE),
					new Path(JavaRuntime.JRESRC_VARIABLE), new Path(JavaRuntime.JRESRCROOT_VARIABLE));
			for (Iterator<IClasspathEntry> i = classpathEntries.iterator(); i.hasNext();) {
				IClasspathEntry classpathEntry = i.next();
				if (classpathEntry.getPath().isPrefixOf(jreClasspathEntry.getPath())) {
					i.remove();
				}
			}

			String jreContainer = JavaRuntime.JRE_CONTAINER;
			String complianceLevel = javaProject.getOption(JavaCore.COMPILER_COMPLIANCE, true);
			if ("1.5".equals(complianceLevel)) { //$NON-NLS-1$
				jreContainer += JAVA_CLASSPATH_JRE_CONTAINER_ENTRY_SUFFIX_J2SE_1_5;
			} else if ("1.6".equals(complianceLevel)) { //$NON-NLS-1$
				jreContainer += JAVA_CLASSPATH_JRE_CONTAINER_ENTRY_SUFFIX_JAVA_SE_1_6;
			}
			classpathEntries.add(JavaCore.newContainerEntry(new Path(jreContainer)));
		}
		IClasspathEntry[] entries = new IClasspathEntry[classpathEntries.size()];
		int i = 0;
		for (IClasspathEntry entry : classpathEntries) {
			entries[i] = entry;
			i++;
		}

		javaProject.setRawClasspath(entries, progress);
		progress.done();
	}

	public void addMetamodelContributor(IProgressMonitor monitor) {
		SubMonitor progress = SubMonitor.convert(monitor, 2);
		progress.setTaskName(Messages.task_AddMetamodelContributor);
		IPreferenceStore store;
		store = new ScopedPreferenceStore(new ProjectScope(project), org.eclipse.xtend.shared.ui.Activator.getId());
		store.setValue(PreferenceConstants.PROJECT_SPECIFIC_METAMODEL, true);
		store.setValue(PreferenceConstants.METAMODELCONTRIBUTORS, METAMODEL_CONTRIBUTOR_ECUCMETAMODELCONTRIBUTOR);
		progress.worked(1);
		try {
			((ScopedPreferenceStore) store).save();
		} catch (final IOException e1) {
			XtendLog.logError(e1);
		}
		progress.worked(1);
	}

	@Override
	public IStatus runInWorkspace(IProgressMonitor monitor) throws CoreException {

		if (project.hasNature(AutosarNature.ID)) {
			SubMonitor progress = SubMonitor.convert(monitor, 5);
			progress.setTaskName(Messages.task_ConvertToBSWPlatformProject);
			if (progress.isCanceled()) {
				throw new OperationCanceledException();
			}
			// we add java nature plugin nature and Xtend Xpand nature
			addNaturesToProject(progress);
			progress.worked(1);
			// We convert project into plugin project
			ConvertProjectToPluginOperation convertProjectToPluginOperation = new ConvertProjectToPluginOperation(new IProject[] { project });
			try {
				convertProjectToPluginOperation.run(progress);
			} catch (InvocationTargetException ex) {
				progress.done();
			} catch (InterruptedException ex) {
				progress.done();
			}
			progress.worked(1);
			// We convert Project into Java plugin project
			convertToJavaPluginProject(progress);
			progress.worked(1);
			// we create default package extension
			createSubPackageExtensions(progress);
			progress.worked(1);
			// we add necessary external dependencies
			addDependencies(progress);
			// we add xtend metamodel contributor property
			addMetamodelContributor(progress);
			progress.worked(1);
			progress.done();

		}

		return Status.OK_STATUS;
	}
}
