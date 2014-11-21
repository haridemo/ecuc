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
package org.artop.ecuc.gautosar.accessorgen.jobs;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import org.artop.ecuc.gautosar.accessorgen.internal.Activator;
import org.artop.ecuc.gautosar.accessorgen.internal.messages.Messages;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.resources.WorkspaceJob;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.sphinx.jdt.jobs.ConvertProjectToJavaProjectJob;
import org.eclipse.sphinx.jdt.util.JavaExtensions;
import org.eclipse.sphinx.pde.util.PDEExtensions;
import org.eclipse.sphinx.pde.jobs.ConvertProjectToPluginProjectJob;
import org.eclipse.sphinx.platform.util.ExtendedPlatform;
import org.eclipse.sphinx.platform.util.StatusUtil;

/**
 * A {@link WorkspaceJob workspace job} that supports conversion of {@link IProject project}s to an Xtend-enabled
 * plug-in project.
 */
public class ConvertToXtendEnabledPluginProjectJob extends WorkspaceJob {

	private static final String PROJECT_RELATIVE_JAVA_SOURCE_GEN_DEFAULT_PATH = "src-gen"; //$NON-NLS-1$

	private static final List<String> DEFAULT_REQUIRED_BUNDLES_IDS = Arrays.asList(new String[] {
			"org.eclipse.core.runtime", "org.eclipse.core.resources", "org.eclipse.xtext.xbase.lib" }); //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
	private static final String XTEXT_PLUGIN_NATURE_ID = "org.eclipse.xtext.ui.shared.xtextNature"; //$NON-NLS-1$

	private IProject project;
	private String projectRelativeJavaSourcePath = PROJECT_RELATIVE_JAVA_SOURCE_GEN_DEFAULT_PATH;
	private String compilerCompliance;
	List<String> requiredBundleIDs;

	public ConvertToXtendEnabledPluginProjectJob(IProject project, List<String> requiredBundleIDs) {
		this(Messages.task_ConvertingToXtendEnabledPluginProject, project, requiredBundleIDs);
	}

	public ConvertToXtendEnabledPluginProjectJob(String name, IProject project, List<String> requiredBundleIDs) {
		super(name);

		this.project = project;
		compilerCompliance = JavaCore.getOption(JavaCore.COMPILER_COMPLIANCE);
		this.requiredBundleIDs = requiredBundleIDs;

		setPriority(Job.BUILD);
		setRule(ResourcesPlugin.getWorkspace().getRoot());
	}

	public String getProjectRelativeJavaSourcePath() {
		return projectRelativeJavaSourcePath;
	}

	public void setProjectRelativeJavaSourcePath(String projectRelativeJavaSourcePath) {
		this.projectRelativeJavaSourcePath = projectRelativeJavaSourcePath;
	}

	public String getCompilerCompliance() {
		return compilerCompliance;
	}

	public void setCompilerCompliance(String compilerCompliance) {
		JavaExtensions.validateCompilerCompliance(compilerCompliance);
		this.compilerCompliance = compilerCompliance;
	}

	/*
	 * @see org.eclipse.core.resources.WorkspaceJob#runInWorkspace(org.eclipse.core.runtime.IProgressMonitor)
	 */
	@Override
	public IStatus runInWorkspace(IProgressMonitor monitor) throws CoreException {
		SubMonitor progress = SubMonitor.convert(monitor, Messages.task_ConvertingToXtendEnabledPluginProject, 100);
		if (progress.isCanceled()) {
			throw new OperationCanceledException();
		}

		try {
			// Convert project to Java project
			convertToJavaProject(progress.newChild(45));

			// Convert project to plug-in project
			convertToPluginProject(progress.newChild(50));

			// Add Xtext nature
			if (!project.hasNature(XTEXT_PLUGIN_NATURE_ID)) {
				ExtendedPlatform.addNature(project, XTEXT_PLUGIN_NATURE_ID, progress.newChild(5));
			} else {
				progress.worked(5);
			}
		} catch (OperationCanceledException ex) {
			return Status.CANCEL_STATUS;
		} catch (Exception ex) {
			return StatusUtil.createErrorStatus(Activator.getPlugin(), ex);
		}
		return Status.OK_STATUS;
	}

	/**
	 * Converts the given project to a Java project.
	 *
	 * @param monitor
	 *            the progress monitor
	 * @throws CoreException
	 */
	protected void convertToJavaProject(IProgressMonitor monitor) throws CoreException {
		SubMonitor progress = SubMonitor.convert(monitor, Messages.task_ConvertingToJavaProject, 100);
		if (progress.isCanceled()) {
			throw new OperationCanceledException();
		}

		try {
			ConvertProjectToJavaProjectJob convertProjectToJavaProjectJob = new ConvertProjectToJavaProjectJob(project);
			convertProjectToJavaProjectJob.setProjectRelativeJavaSourcePath(PROJECT_RELATIVE_JAVA_SOURCE_GEN_DEFAULT_PATH);
			convertProjectToJavaProjectJob.runInWorkspace(progress);
		} catch (Exception ex) {
			IStatus status = StatusUtil.createErrorStatus(Activator.getDefault(), ex);
			throw new CoreException(status);
		}
	}

	/**
	 * Converts the given project to a Plug-in project.
	 *
	 * @param monitor
	 *            the progress monitor
	 * @throws CoreException
	 */
	protected void convertToPluginProject(IProgressMonitor monitor) throws CoreException {
		SubMonitor progress = SubMonitor.convert(monitor, Messages.task_ConvertingToPluginProject, 100);
		if (progress.isCanceled()) {
			throw new OperationCanceledException();
		}

		try {
			final String requiredExecutionEnvironment = PDEExtensions.getRequiredExecutionEnvironment(getCompilerCompliance());
			ConvertProjectToPluginProjectJob convertProjectToPluginOperation = new ConvertProjectToPluginProjectJob(
					Collections.singletonList(project), getRequiredBundleIds(), requiredExecutionEnvironment);
			convertProjectToPluginOperation.runInWorkspace(progress);
		} catch (Exception ex) {
			IStatus status = StatusUtil.createErrorStatus(Activator.getDefault(), ex);
			throw new CoreException(status);
		}
	}

	/**
	 * Gets the required bundles IDs.
	 *
	 * @return the required bundles IDs.
	 */
	protected List<String> getRequiredBundleIds() {
		List<String> allRequiredBundleIDs = new ArrayList<String>(DEFAULT_REQUIRED_BUNDLES_IDS);
		if (requiredBundleIDs != null) {
			allRequiredBundleIDs.addAll(requiredBundleIDs);
		}
		return allRequiredBundleIDs;
	}
}
