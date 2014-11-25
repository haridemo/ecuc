/**
 * <copyright>
 *
 * Copyright (c) itemis and others.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of the Artop Software License Based on AUTOSAR
 * Released Material (ASLR) which accompanies this distribution, and is
 * available at http://www.artop.org/aslr.html
 *
 * Contributors:
 *     itemis - Initial API and implementation
 *
 * </copyright>
 */
package org.artop.ecuc.gautosar.accessorgen.operations;

import gautosar.ggenericstructure.ginfrastructure.GARPackage;

import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

import org.artop.aal.common.resource.AutosarURIFactory;
import org.artop.ecuc.gautosar.accessorgen.jobs.ConvertToXtendEnabledPluginProjectJob;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.sphinx.emf.model.IModelDescriptor;
import org.eclipse.sphinx.emf.model.ModelDescriptorRegistry;
import org.eclipse.sphinx.emf.util.EcorePlatformUtil;
import org.eclipse.sphinx.emf.util.EcoreResourceUtil;
import org.eclipse.sphinx.emf.workspace.loading.ModelLoadManager;
import org.eclipse.sphinx.platform.operations.AbstractWorkspaceOperation;

public abstract class AbstractGenerateFromAutosarOperation extends AbstractWorkspaceOperation implements IGenerateFromAutosarOperation {

	protected IFile autosarFile;
	protected String absoluteQualifiedARPackageName;
	protected IProject targetProject;

	private static final Pattern AR_XSD_PATTERN = Pattern.compile(
			"autosar_(\\d)-(\\d)-(\\d)(_(strict|compact|strict_compact))?\\.xsd", Pattern.CASE_INSENSITIVE); //$NON-NLS-1$

	private static final String TARGET_PLUGIN_NAME = "org.artop.ecuc.autosar{0}.accessors"; //$NON-NLS-1$
	private static final String AUTOSAR_REVISION_PLUGIN_NAME = "org.artop.aal.autosar{0}"; //$NON-NLS-1$
	private static final String AR_ECUC_ACCESSORS_LIB_PLUGIN_NAME = "org.artop.ecuc.autosar{0}.accessors.lib"; //$NON-NLS-1$
	private static final String SPHINX_EMF_PLUGIN_NAME = "org.eclipse.sphinx.emf"; //$NON-NLS-1$

	public AbstractGenerateFromAutosarOperation(String label) {
		super(label);
	}

	public AbstractGenerateFromAutosarOperation(String label, IFile autosarFile, String absoluteQualifiedARPackageName) {
		super(label);
		this.autosarFile = autosarFile;
		this.absoluteQualifiedARPackageName = absoluteQualifiedARPackageName;
	}

	/*
	 * @see org.eclipse.sphinx.platform.operations.IWorkspaceOperation#getRule()
	 */
	@Override
	public ISchedulingRule getRule() {
		return targetProject;
	}

	/*
	 * @see org.eclipse.core.resources.IWorkspaceRunnable#run(org.eclipse.core.runtime.IProgressMonitor)
	 */
	@Override
	public void run(IProgressMonitor monitor) throws CoreException, OperationCanceledException {
		SubMonitor progress = SubMonitor.convert(monitor, 100);
		if (progress.isCanceled()) {
			throw new OperationCanceledException();
		}

		GARPackage arPackage = getARPackage(absoluteQualifiedARPackageName, progress.newChild(5));
		targetProject = getTargetProject(progress.newChild(15));

		if (progress.isCanceled()) {
			throw new OperationCanceledException();
		}

		if (targetProject != null) {
			generate(arPackage, targetProject, progress.newChild(80));
		} else {
			progress.worked(80);
		}
	}

	/*
	 * @see
	 * org.artop.ecuc.gautosar.accessorgen.operations.IGenerateFromAutosarOperation#generate(gautosar.ggenericstructure
	 * .ginfrastructure.GARPackage, org.eclipse.core.resources.IProject, org.eclipse.core.runtime.IProgressMonitor)
	 */
	@Override
	public abstract void generate(GARPackage arPackage, IProject targetProject, IProgressMonitor monitor) throws CoreException,
			OperationCanceledException;

	protected GARPackage getARPackage(String absoluteQualifiedName, IProgressMonitor monitor) throws CoreException, OperationCanceledException {
		Assert.isNotNull(autosarFile);

		SubMonitor progress = SubMonitor.convert(monitor, 100);
		if (progress.isCanceled()) {
			throw new OperationCanceledException();
		}

		Resource autosarResource = getModelResource(progress);
		if (autosarResource != null) {
			String uriFragment = AutosarURIFactory.createURIFragment(absoluteQualifiedName, GARPackage.class.getSimpleName());
			return (GARPackage) autosarResource.getEObject(uriFragment);
		}
		return null;
	}

	protected IProject getTargetProject(IProgressMonitor monitor) throws CoreException, OperationCanceledException {
		Assert.isNotNull(autosarFile);

		SubMonitor progress = SubMonitor.convert(monitor, 100);
		if (progress.isCanceled()) {
			throw new OperationCanceledException();
		}

		Resource autosarResource = getModelResource(progress.newChild(60));
		if (autosarResource != null) {
			Map<String, String> schemaLocationEntries = EcoreResourceUtil.readSchemaLocationEntries(autosarResource);
			if (!schemaLocationEntries.isEmpty()) {
				String arXSD = schemaLocationEntries.values().iterator().next();
				if (AR_XSD_PATTERN.matcher(arXSD).matches()) {
					final String arRevision = AR_XSD_PATTERN.matcher(arXSD).replaceAll("$1$2$3"); //$NON-NLS-1$
					final String targetPluginName = MessageFormat.format(TARGET_PLUGIN_NAME, arRevision);
					IProject targetProject = ResourcesPlugin.getWorkspace().getRoot().getProject(targetPluginName);
					// Create the target project if not exist yet
					if (!targetProject.exists()) {
						final String arVersion = AR_XSD_PATTERN.matcher(arXSD).replaceAll("$1") + "x"; //$NON-NLS-1$ //$NON-NLS-2$
						targetProject = createTargetProject(targetPluginName, arVersion, arRevision, progress.newChild(40));
					} else {
						progress.worked(40);
					}
					return targetProject;
				}
			}
		}

		return null;
	}

	protected IProject createTargetProject(String targetPluginName, String autosarVersion, String autosarRevision, IProgressMonitor monitor)
			throws CoreException, OperationCanceledException {
		SubMonitor progress = SubMonitor.convert(monitor, 100);
		if (progress.isCanceled()) {
			throw new OperationCanceledException();
		}

		IProject targetProject = ResourcesPlugin.getWorkspace().getRoot().getProject(targetPluginName);
		if (!targetProject.exists()) {
			targetProject.create(progress.newChild(10));
			targetProject.open(progress.newChild(10));

			List<String> requiredBundleIds = new ArrayList<String>();
			requiredBundleIds.add(SPHINX_EMF_PLUGIN_NAME);
			requiredBundleIds.add(MessageFormat.format(AR_ECUC_ACCESSORS_LIB_PLUGIN_NAME, autosarVersion));
			requiredBundleIds.add(MessageFormat.format(AUTOSAR_REVISION_PLUGIN_NAME, autosarRevision));

			ConvertToXtendEnabledPluginProjectJob convertProjectToXtendPluginOperation = new ConvertToXtendEnabledPluginProjectJob(targetProject,
					requiredBundleIds);
			convertProjectToXtendPluginOperation.runInWorkspace(progress.newChild(80));
		}
		return targetProject;
	}

	protected Resource getModelResource(IProgressMonitor monitor) {
		// Is given workspace resource a file?
		if (autosarFile != null) {
			// Get model behind given workspace file
			IModelDescriptor modelDescriptor = ModelDescriptorRegistry.INSTANCE.getModel(autosarFile);
			if (modelDescriptor != null) {
				// Try to retrieve model resource behind given workspace file but don't force it to be loaded in case
				// that this has not been done yet
				Resource modelResource = EcorePlatformUtil.getResource(autosarFile);

				// Given model resource already loaded?
				if (modelResource != null) {
					return modelResource;
				} else {
					// Request loading model behind of given workspace file
					ModelLoadManager.INSTANCE.loadModel(modelDescriptor, false, monitor);
					return EcorePlatformUtil.getResource(autosarFile);
				}
			}
		}
		return null;
	}
}