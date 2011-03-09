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

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

import org.apache.commons.cli.CommandLine;
import org.apache.commons.cli.CommandLineParser;
import org.apache.commons.cli.GnuParser;
import org.apache.commons.cli.Option;
import org.apache.commons.cli.OptionBuilder;
import org.artop.aal.common.resource.AutosarURIFactory;
import org.artop.ecl.emf.model.IModelDescriptor;
import org.artop.ecl.emf.model.ModelDescriptorRegistry;
import org.artop.ecl.emf.util.EcorePlatformUtil;
import org.artop.ecl.emf.workspace.loading.ModelLoadManager;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucMetaModel;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.sphinx.emf.mwe.resources.BasicWorkspaceResourceLoader;
import org.eclipse.sphinx.xpand.ExecutionContextRequest;
import org.eclipse.sphinx.xpand.jobs.BasicM2TJob;
import org.eclipse.xpand2.output.Outlet;
import org.eclipse.xtend.typesystem.MetaModel;

public class EcucCodeGenApplication extends AbstractCLIApplication {
	// Ecuc CodeGen Options names definition
	private static String PROJECT_OPTION = "project"; //$NON-NLS-1$
	private static String MODULE_OPTION = "module"; //$NON-NLS-1$
	private static String DEFINITION_OPTION = "definition"; //$NON-NLS-1$
	private static String OUTPUT_OPTION = "output"; //$NON-NLS-1$

	// Generation constants
	public static final String DEFAULT_ROOT_DEFINE_NAME = "main"; //$NON-NLS-1$
	public static final String DEFAULT_OUTLET_PATH = "gen"; //$NON-NLS-1$

	// CodeGeneration variables definition
	private IProject project;
	private String outputFolderPath;
	private String definitionName;
	private GModuleConfiguration moduleConfiguration;

	/*
	 * @see org.artop.ecuc.examples.gautosar.codegen.xpand.headless.AbstractCLIApplication#defineOptions()
	 */
	@Override
	protected void defineOptions() {
		super.defineOptions();
		OptionBuilder.isRequired();
		OptionBuilder.withArgName("absoluteQualifiedName");//$NON-NLS-1$
		OptionBuilder.hasArgs(1);
		OptionBuilder.withValueSeparator();
		OptionBuilder.withDescription("Absolute qualified name of the moduleConfiguration to generate code for"); //$NON-NLS-1$
		Option moduleconf = OptionBuilder.create(MODULE_OPTION);

		OptionBuilder.isRequired();
		OptionBuilder.withArgName("projectName");//$NON-NLS-1$
		OptionBuilder.hasArgs(1);
		OptionBuilder.withValueSeparator();
		OptionBuilder.withDescription("Name of the code generation project"); //$NON-NLS-1$
		Option project = OptionBuilder.create(PROJECT_OPTION);

		OptionBuilder.isRequired();
		OptionBuilder.withArgName("definitionName");//$NON-NLS-1$
		OptionBuilder.hasArgs(1);
		OptionBuilder.withValueSeparator();
		OptionBuilder.withDescription("Name of the definition to be applied"); //$NON-NLS-1$
		Option defineBlock = OptionBuilder.create(DEFINITION_OPTION);

		OptionBuilder.withArgName("outputFolderName");//$NON-NLS-1$
		OptionBuilder.hasArgs(1);
		OptionBuilder.withValueSeparator();
		OptionBuilder.withDescription("Path used for generation output"); //$NON-NLS-1$
		Option outputFolder = OptionBuilder.create(OUTPUT_OPTION);

		addOption(project);
		addOption(moduleconf);
		addOption(defineBlock);
		addOption(outputFolder);
	}

	/*
	 * @see org.artop.ecuc.examples.gautosar.codegen.xpand.headless.AbstractCLIApplication#createParser()
	 */
	@Override
	protected CommandLineParser createParser() {
		return new GnuParser();
	}

	/*
	 * @see org.artop.ecuc.examples.gautosar.codegen.xpand.headless.AbstractCLIApplication#getApplicationName()
	 */
	@Override
	protected String getApplicationName() {
		return "Ecuc CodeGen"; //$NON-NLS-1$
	}

	/*
	 * @see org.artop.ecuc.examples.gautosar.codegen.xpand.headless.AbstractCLIApplication#interrogate()
	 */
	@Override
	protected Object interrogate() throws Throwable {
		super.interrogate();
		CommandLine commandLine = getCommandLine();

		loadProject(commandLine.getOptionValue(PROJECT_OPTION));

		definitionName = commandLine.getOptionValue(DEFINITION_OPTION);

		moduleConfiguration = getModuleConfObject(commandLine.getOptionValue(MODULE_OPTION));

		outputFolderPath = commandLine.getOptionValue(OUTPUT_OPTION);

		return launchGeneration();

	}

	private Object launchGeneration() throws Throwable {
		BasicM2TJob m2TJob = createM2TJob();
		IStatus status = m2TJob.runInWorkspace(new NullProgressMonitor());
		if (!status.equals(Status.OK_STATUS)) {
			Throwable exception = status.getException();
			if (exception != null) {
				throw exception;
			} else {
				throw new RuntimeException("Code Generation failed");//$NON-NLS-1$ 
			}
		}
		return status.getCode();

	}

	private void loadProject(String projectName) {
		project = ResourcesPlugin.getWorkspace().getRoot().getProject(projectName);
		if (!project.exists()) {
			throw new RuntimeException("Project '" + projectName + "' does not exist in workspace");//$NON-NLS-1$ //$NON-NLS-2$
		}
		ModelLoadManager.INSTANCE.loadProject(project, true, false, null);
	}

	private GModuleConfiguration getModuleConfObject(String moduleName) {
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

	public Collection<ExecutionContextRequest> getExecutionContextRequests() {
		List<ExecutionContextRequest> requests = new ArrayList<ExecutionContextRequest>();
		requests.add(new ExecutionContextRequest(definitionName, moduleConfiguration));
		return requests;
	}

	protected BasicM2TJob createM2TJob() {
		BasicM2TJob job = new BasicM2TJob(getM2TJobName(), getExecutionContextRequests());
		job.setScopingResourceLoader(new BasicWorkspaceResourceLoader());
		job.setDefaultOutletURI(getDefaultOutletURI());
		job.getOutlets().addAll(getOutlets());
		job.setMetaModel(getMetaModel());
		job.setPriority(Job.BUILD);
		job.setRule(project);
		return job;
	}

	protected MetaModel getMetaModel() {
		IFile moduleConfigurationFile = EcorePlatformUtil.getFile(moduleConfiguration);
		IModelDescriptor moduleDefModelDescriptor = ModelDescriptorRegistry.INSTANCE.getModel(moduleConfigurationFile);
		if (moduleDefModelDescriptor != null) {
			return (MetaModel) moduleDefModelDescriptor.getAdapter(EcucMetaModel.class);
		}
		return null;
	}

	protected String getM2TJobName() {
		return "GeneratingCode"; //$NON-NLS-1$
	}

	protected URI getDefaultOutletURI() {
		if (outputFolderPath != null && outputFolderPath.length() > 0) {
			return EcorePlatformUtil.createURI(project.getFolder(outputFolderPath).getFullPath());
		} else {
			return EcorePlatformUtil.createURI(project.getFolder(DEFAULT_OUTLET_PATH).getFullPath());
		}
	}

	protected Collection<Outlet> getOutlets() {
		return Collections.emptyList();
	}
}
