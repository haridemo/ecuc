/**
 * <copyright>
 * 
 * Copyright (c) See4sys and others.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of the Artop Software License Based on AUTOSAR
 * Released Material (ASLR) which accompanies this distribution, and is
 * available at http://www.artop.org/aslr.html
 * 
 * Contributors: 
 *     See4sys - Initial API and implementation
 * 
 * </copyright>
 */
package org.artop.ecuc.examples.gautosar.codegen.xpand.headless;

import gautosar.gecucdescription.GModuleConfiguration;

import java.util.Collection;

import org.apache.commons.cli.CommandLine;
import org.apache.commons.cli.Option;
import org.apache.commons.cli.OptionBuilder;
import org.artop.aal.common.metamodel.AutosarReleaseDescriptor;
import org.artop.aal.common.resource.AutosarURIFactory;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucMetaModel;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.sphinx.emf.model.IModelDescriptor;
import org.eclipse.sphinx.emf.model.ModelDescriptorRegistry;
import org.eclipse.sphinx.emf.mwe.resources.BasicWorkspaceResourceLoader;
import org.eclipse.sphinx.emf.util.EcorePlatformUtil;
import org.eclipse.sphinx.emf.workspace.loading.ModelLoadManager;
import org.eclipse.sphinx.xpand.XpandEvaluationRequest;
import org.eclipse.sphinx.xpand.jobs.XpandJob;
import org.eclipse.sphinx.xpand.outlet.ExtendedOutlet;
import org.eclipse.xtend.typesystem.MetaModel;

public class EcucCodeGenApplication extends AbstractCLIApplication {

	private static final String PRJ_OPTION = "prj"; //$NON-NLS-1$
	private static final String MOD_OPTION = "mod"; //$NON-NLS-1$
	private static final String TPL_OPTION = "tpl"; //$NON-NLS-1$
	private static final String OUT_OPTION = "out"; //$NON-NLS-1$

	public static final String DEFAULT_OUTPUT_FOLDER_PATH = "gen"; //$NON-NLS-1$

	/*
	 * @see org.artop.ecuc.examples.gautosar.codegen.xpand.headless.AbstractCLIApplication#getApplicationName()
	 */
	@Override
	protected String getApplicationName() {
		return "EcucCodeGen"; //$NON-NLS-1$
	}

	/*
	 * @see org.artop.ecuc.examples.gautosar.codegen.xpand.headless.AbstractCLIApplication#defineOptions()
	 */
	@Override
	protected void defineOptions() {
		super.defineOptions();

		OptionBuilder.isRequired();
		OptionBuilder.withArgName("projectName");//$NON-NLS-1$
		OptionBuilder.hasArgs(1);
		OptionBuilder.withValueSeparator();
		OptionBuilder.withDescription("Name of project in which code generation is to be run"); //$NON-NLS-1$
		Option prjOption = OptionBuilder.create(PRJ_OPTION);

		OptionBuilder.isRequired();
		OptionBuilder.withArgName("moduleName");//$NON-NLS-1$
		OptionBuilder.hasArgs(1);
		OptionBuilder.withValueSeparator();
		OptionBuilder.withDescription("Absolute qualified name of ModuleConfiguration to generate code for"); //$NON-NLS-1$
		Option modOption = OptionBuilder.create(MOD_OPTION);

		OptionBuilder.isRequired();
		OptionBuilder.withArgName("templateName");//$NON-NLS-1$
		OptionBuilder.hasArgs(1);
		OptionBuilder.withValueSeparator();
		OptionBuilder.withDescription("Qualified name of code generation template to be applied"); //$NON-NLS-1$
		Option tplOption = OptionBuilder.create(TPL_OPTION);

		OptionBuilder.withArgName("outputFolderPath");//$NON-NLS-1$
		OptionBuilder.hasArgs(1);
		OptionBuilder.withValueSeparator();
		OptionBuilder.withDescription("Project-relative path to location where the generated code is to be placed"); //$NON-NLS-1$
		Option outOption = OptionBuilder.create(OUT_OPTION);

		addOption(prjOption);
		addOption(modOption);
		addOption(tplOption);
		addOption(outOption);
	}

	/*
	 * @see org.artop.ecuc.examples.gautosar.codegen.xpand.headless.AbstractCLIApplication#interrogate()
	 */
	@Override
	protected Object interrogate() throws Throwable {
		super.interrogate();

		// Retrieve arguments
		CommandLine commandLine = getCommandLine();
		String projectName = commandLine.getOptionValue(PRJ_OPTION);
		String moduleName = commandLine.getOptionValue(MOD_OPTION);
		String templateName = commandLine.getOptionValue(TPL_OPTION);
		String outputFolderName = commandLine.getOptionValue(OUT_OPTION);

		// Load project
		IProject project = ResourcesPlugin.getWorkspace().getRoot().getProject(projectName);
		if (!project.exists()) {
			throw new RuntimeException("Project '" + projectName + "' does not exist in workspace");//$NON-NLS-1$ //$NON-NLS-2$
		}
		ModelLoadManager.INSTANCE.loadProject(project, true, AutosarReleaseDescriptor.INSTANCE, false, null);

		// Generate ECUC code
		generate(project, moduleName, templateName, outputFolderName);

		// Unload project
		ModelLoadManager.INSTANCE.unloadProject(project, true, AutosarReleaseDescriptor.INSTANCE, false, null);

		return NO_ERROR;
	}

	protected void generate(IProject project, String moduleName, String templateName, String outputFolderPath) throws Throwable {
		GModuleConfiguration moduleConfiguration = getModuleConfiguration(project, moduleName);

		MetaModel metaModel = getMetaModel(moduleConfiguration);
		XpandEvaluationRequest evaluationRequest = new XpandEvaluationRequest(templateName, moduleConfiguration);
		BasicWorkspaceResourceLoader resourceLoader = new BasicWorkspaceResourceLoader();
		ExtendedOutlet outlet = getOutlet(project, outputFolderPath);

		XpandJob job = new XpandJob("Generating ECUC code", metaModel, evaluationRequest);
		job.setScopingResourceLoader(resourceLoader);
		job.getOutlets().add(outlet);

		IStatus status = job.runInWorkspace(new NullProgressMonitor());

		if (!status.equals(Status.OK_STATUS)) {
			Throwable exception = status.getException();
			if (exception != null) {
				throw exception;
			} else {
				throw new RuntimeException("ECUC code generation failed");//$NON-NLS-1$ 
			}
		}
	}

	protected GModuleConfiguration getModuleConfiguration(IProject project, String moduleName) {
		Collection<IModelDescriptor> models = ModelDescriptorRegistry.INSTANCE.getModels(project);
		String uriFragment = AutosarURIFactory.createURIFragment(moduleName, GModuleConfiguration.class.getSimpleName());
		for (IModelDescriptor model : models) {
			Collection<Resource> loadedResources = model.getLoadedResources(false);
			for (Resource resource : loadedResources) {
				EObject eObject = resource.getEObject(uriFragment);
				if (eObject instanceof GModuleConfiguration) {
					return (GModuleConfiguration) eObject;
				}
			}
		}
		throw new RuntimeException("Module configuration object '" + moduleName + "' does not exist");//$NON-NLS-1$ //$NON-NLS-2$
	}

	protected MetaModel getMetaModel(GModuleConfiguration moduleConfiguration) {
		IFile moduleConfigurationFile = EcorePlatformUtil.getFile(moduleConfiguration);
		IModelDescriptor moduleDefModelDescriptor = ModelDescriptorRegistry.INSTANCE.getModel(moduleConfigurationFile);
		if (moduleDefModelDescriptor != null) {
			return (MetaModel) moduleDefModelDescriptor.getAdapter(EcucMetaModel.class);
		}
		return null;
	}

	protected ExtendedOutlet getOutlet(IProject project, String outputFolderPath) {
		if (outputFolderPath == null || outputFolderPath.length() == 0) {
			outputFolderPath = DEFAULT_OUTPUT_FOLDER_PATH;
		}
		return new ExtendedOutlet(project.getFolder(outputFolderPath));
	}
}
