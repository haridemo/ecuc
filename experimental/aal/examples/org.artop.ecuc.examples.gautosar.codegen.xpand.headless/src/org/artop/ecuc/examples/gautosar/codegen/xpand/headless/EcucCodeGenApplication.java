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
import org.eclipse.core.runtime.Path;
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

public class EcucCodeGenApplication extends CLIApplication {
	// Ecuc CodeGen Options names definition
	private static String PROJECT_OPTION = "project"; //$NON-NLS-1$
	private static String MODULE_OPTION = "module"; //$NON-NLS-1$
	private static String TEMPLATE_OPTION = "template"; //$NON-NLS-1$
	private static String DEFINE_BLOCK_OPTION = "defineblock"; //$NON-NLS-1$
	private static String OUTPUTFOLDER_OPTION = "output"; //$NON-NLS-1$

	// Generation constants
	public static final String DEFAULT_ROOT_DEFINE_NAME = "main"; //$NON-NLS-1$
	public static final String DEFAULT_OUTLET_PATH = "gen"; //$NON-NLS-1$

	// CodeGeneration variables definition
	private String projectName;
	private IProject generationProject;
	private String moduleConfAbsoluteQualifiedName;
	private String definitionfilePath;
	private IFile definitionFile;
	private String outputFolderPath;
	private String defineBlock;
	private GModuleConfiguration moduleConfiguration;

	/*
	 * @see org.artop.ecuc.examples.gautosar.codegen.xpand.headless.CLIApplication#defineOptions()
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
		OptionBuilder.withArgName("templatePath");//$NON-NLS-1$
		OptionBuilder.hasArgs(1);
		OptionBuilder.withValueSeparator();
		OptionBuilder.withDescription("Path of the template definition file"); //$NON-NLS-1$
		Option template = OptionBuilder.create(TEMPLATE_OPTION);

		OptionBuilder.withArgName("definitionBlock");//$NON-NLS-1$
		OptionBuilder.hasArgs(1);
		OptionBuilder.withValueSeparator();
		OptionBuilder.withDescription("Name of the definition file"); //$NON-NLS-1$
		Option defineBlock = OptionBuilder.create(DEFINE_BLOCK_OPTION);

		OptionBuilder.withArgName("outputFolderName");//$NON-NLS-1$
		OptionBuilder.hasArgs(1);
		OptionBuilder.withValueSeparator();
		OptionBuilder.withDescription("Path used for generation output"); //$NON-NLS-1$
		Option outputFolder = OptionBuilder.create(OUTPUTFOLDER_OPTION);

		addOption(project);
		addOption(moduleconf);
		addOption(template);
		addOption(defineBlock);
		addOption(outputFolder);
	}

	/*
	 * @see org.artop.ecuc.examples.gautosar.codegen.xpand.headless.CLIApplication#createParser()
	 */
	@Override
	protected CommandLineParser createParser() {
		return new GnuParser();
	}

	/*
	 * @see org.artop.ecuc.examples.gautosar.codegen.xpand.headless.CLIApplication#getApplicationName()
	 */
	@Override
	protected String getApplicationName() {
		return "Ecuc CodeGen"; //$NON-NLS-1$
	}

	/*
	 * @see org.artop.ecuc.examples.gautosar.codegen.xpand.headless.CLIApplication#interrogate()
	 */
	@Override
	protected void interrogate() {
		super.interrogate();
		CommandLine commandLine = getCommandLine();
		if (commandLine != null) {
			if (commandLine.hasOption(PROJECT_OPTION)) {
				projectName = commandLine.getOptionValue(PROJECT_OPTION);
				if (getAndLoadProject()) {
					if (commandLine.hasOption(TEMPLATE_OPTION)) {
						definitionfilePath = commandLine.getOptionValue(TEMPLATE_OPTION);
						if (getdefinitionFile()) {
							if (commandLine.hasOption(MODULE_OPTION)) {
								moduleConfAbsoluteQualifiedName = commandLine.getOptionValue(MODULE_OPTION);
								if (getModuleConfObject()) {

									if (commandLine.hasOption(OUTPUTFOLDER_OPTION)) {
										outputFolderPath = commandLine.getOptionValue(OUTPUTFOLDER_OPTION);
									}
									if (commandLine.hasOption(DEFINE_BLOCK_OPTION)) {
										defineBlock = commandLine.getOptionValue(DEFINE_BLOCK_OPTION);
									}
									launchGeneration();
								}
							}
						}
					}
				}
			}
		}
	}

	private void launchGeneration() {
		BasicM2TJob m2TJob = createM2TJob();
		try {
			IStatus status = m2TJob.runInWorkspace(new NullProgressMonitor());
			if (!status.equals(Status.OK_STATUS)) {
				System.out.println("Code generarion Failed: " + status.getMessage()); //$NON-NLS-1$
			}
		} catch (Exception ex) {
			System.out.println("Exception during code generarion: " + ex.getMessage()); //$NON-NLS-1$

		}
	}

	private boolean getAndLoadProject() {
		generationProject = ResourcesPlugin.getWorkspace().getRoot().getProject(projectName);
		if (!generationProject.exists()) {
			System.out.println("Project: " + projectName + " does not exist in workspace"); //$NON-NLS-1$ //$NON-NLS-2$
			return false;
		}
		ModelLoadManager.INSTANCE.loadProject(generationProject, true, false, null);
		return true;
	}

	private boolean getdefinitionFile() {
		definitionFile = generationProject.getFile(new Path(definitionfilePath));
		if (definitionFile.exists()) {
			return true;
		}
		System.out.println("Template file " + projectName + " does not exist"); //$NON-NLS-1$ //$NON-NLS-2$
		return false;
	}

	private boolean getModuleConfObject() {
		Collection<IModelDescriptor> models = ModelDescriptorRegistry.INSTANCE.getModels(generationProject);
		String uriFragment = AutosarURIFactory.createURIFragment(moduleConfAbsoluteQualifiedName, "EcucModuleConfigurationValues"); //$NON-NLS-1$
		for (IModelDescriptor model : models) {
			Collection<Resource> loadedResources = model.getLoadedResources(false);
			for (Resource resource : loadedResources) {
				EObject eObject = resource.getEObject(uriFragment);
				if (eObject instanceof GModuleConfiguration) {
					moduleConfiguration = (GModuleConfiguration) eObject;
					return true;
				}

			}
		}
		System.out.println("Module configuration object " + moduleConfAbsoluteQualifiedName + " does not exist"); //$NON-NLS-1$ //$NON-NLS-2$
		return false;
	}

	protected String getQualifiedTemplateName() {
		String defineBlock = DEFAULT_ROOT_DEFINE_NAME;
		if (this.defineBlock != null && defineBlock.length() > 0) {
			defineBlock = this.defineBlock;
		}
		return definitionFile.getProjectRelativePath().removeFileExtension().append(defineBlock).toString().replaceAll("/", "::");
	}

	public Collection<ExecutionContextRequest> getExecutionContextRequests() {
		List<ExecutionContextRequest> requests = new ArrayList<ExecutionContextRequest>();
		requests.add(new ExecutionContextRequest(getQualifiedTemplateName(), moduleConfiguration));
		return requests;
	}

	protected BasicM2TJob createM2TJob() {
		BasicM2TJob job = new BasicM2TJob(getM2TJobName(), getExecutionContextRequests());
		job.setScopingResourceLoader(new BasicWorkspaceResourceLoader());
		job.setDefaultOutletURI(getDefaultOutletURI());
		job.getOutlets().addAll(getOutlets());
		job.setMetaModel(getMetaModel());
		job.setPriority(Job.BUILD);
		job.setRule(generationProject);
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
			return EcorePlatformUtil.createURI(generationProject.getFolder(outputFolderPath).getFullPath());
		} else {
			return EcorePlatformUtil.createURI(generationProject.getFolder(DEFAULT_OUTLET_PATH).getFullPath());
		}
	}

	protected Collection<Outlet> getOutlets() {
		return Collections.emptyList();
	}
}
