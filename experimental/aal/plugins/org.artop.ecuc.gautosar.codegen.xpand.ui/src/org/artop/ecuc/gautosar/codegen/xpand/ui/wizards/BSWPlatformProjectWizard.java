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
package org.artop.ecuc.gautosar.codegen.xpand.ui.wizards;

import java.net.URI;

import org.artop.aal.workspace.jobs.CreateArtopProjectJob;
import org.artop.aal.workspace.ui.wizards.BasicAutosarProjectWizard;
import org.artop.ecuc.gautosar.codegen.xpand.ui.internal.Activator;
import org.artop.ecuc.gautosar.codegen.xpand.ui.internal.messages.Messages;
import org.artop.ecuc.gautosar.codegen.xpand.ui.jobs.ConvertToBSWPlatformProjectJob;
import org.artop.ecuc.gautosar.codegen.xpand.ui.preferences.IEcucCodeGenerationPreferenceConstants;
import org.artop.ecuc.gautosar.codegen.xpand.ui.wizards.pages.BSWPlatformProjectWizardFirstPage;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExecutableExtension;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.jobs.IJobChangeEvent;
import org.eclipse.core.runtime.jobs.JobChangeAdapter;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.sphinx.platform.ui.util.ExtendedPlatformUI;
import org.eclipse.sphinx.xpand.preferences.OutletsPreference;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.dialogs.WizardNewProjectReferencePage;
import org.eclipse.ui.ide.undo.WorkspaceUndoUtil;

public class BSWPlatformProjectWizard extends BasicAutosarProjectWizard implements IExecutableExtension {

	private BSWPlatformProjectWizardFirstPage mainPage;

	private WizardNewProjectReferencePage referencePage;

	/**
	 * The config element which declares this wizard.
	 */
	private IConfigurationElement configElement;

	protected OutletsPreference getOutletsPreference() {
		return IEcucCodeGenerationPreferenceConstants.ECUC_OUTLETS_PREFERENCE;
	}

	/*
	 * @see org.artop.aal.workspace.ui.wizards.BasicAutosarProjectWizard#init(org.eclipse.ui.IWorkbench,
	 * org.eclipse.jface.viewers.IStructuredSelection)
	 */
	@Override
	public void init(IWorkbench workbench, IStructuredSelection currentSelection) {
		super.init(workbench, currentSelection);
		setWindowTitle(Messages.BSWPlatformProjectWizzardTitle);
	}

	/*
	 * @see org.artop.aal.workspace.ui.wizards.BasicAutosarProjectWizard#initializeDefaultPageImageDescriptor()
	 */
	@Override
	protected void initializeDefaultPageImageDescriptor() {
		ImageDescriptor desc = Activator.getPlugin().getImageDescriptor("full/wizban/newbswpprj_wiz.png");//$NON-NLS-1$
		setDefaultPageImageDescriptor(desc);
	}

	/*
	 * @see org.artop.aal.workspace.ui.wizards.BasicAutosarProjectWizard#addPages()
	 */
	@Override
	public void addPages() {
		mainPage = new BSWPlatformProjectWizardFirstPage("basicNewProjectPage", getOutletsPreference()); //$NON-NLS-1$
		mainPage.setTitle(Messages.BSWPlatformProjectWizzardFirstPageTitle);
		mainPage.setDescription(Messages.BSWPlatformProjectWizzardFirstPageDescription);
		addPage(mainPage);
		// only add page if there are already projects in the workspace
		if (ResourcesPlugin.getWorkspace().getRoot().getProjects().length > 0) {
			referencePage = new WizardNewProjectReferencePage("basicReferenceProjectPage"); //$NON-NLS-1$
			referencePage.setTitle(Messages.BSWPlatformProjectWizzardReferencePageTitle);
			referencePage.setDescription(Messages.BSWPlatformProjectWizzardReferencePageDescription);
			addPage(referencePage);
		}
	}

	/*
	 * @see org.artop.aal.workspace.ui.wizards.BasicAutosarProjectWizard#performFinish()
	 */
	@Override
	public boolean performFinish() {
		mainPage.setVisible(false);
		mainPage.saveDialogSettings();

		URI location = !mainPage.useDefaults() ? mainPage.getLocationURI() : null;
		IProject[] referencedProjects = referencePage != null ? referencePage.getReferencedProjects() : null;
		final IProject projectHandle = mainPage.getProjectHandle();

		final CreateArtopProjectJob createJob = new CreateArtopProjectJob(Messages.job_creatingAutosarProject, projectHandle, location,
				mainPage.getRelease());
		createJob.setReferencedProjects(referencedProjects);
		createJob.getImportedAutosarLibraries().addAll(mainPage.getImportedAutosarLibraryDescriptors());
		createJob.setUiInfoAdaptable(WorkspaceUndoUtil.getUIInfoAdapter(getShell()));
		createJob.addJobChangeListener(new JobChangeAdapter() {
			@Override
			public void done(IJobChangeEvent event) {
				if (event.getResult().getSeverity() == IStatus.OK) {
					ConvertToBSWPlatformProjectJob convertJob = new ConvertToBSWPlatformProjectJob(Messages.job_convertToBSWPlatformProject,
							projectHandle);
					// Commit outlets and reveal new project after creation
					convertJob.addJobChangeListener(new JobChangeAdapter() {
						@Override
						public void done(IJobChangeEvent event) {
							if (event.getResult().getSeverity() == IStatus.OK) {
								OutletsPreference outletsPreference = getOutletsPreference();
								if (outletsPreference != null) {
									outletsPreference.setInProject(projectHandle, mainPage.getOutlets());
								}

								Display display = ExtendedPlatformUI.getDisplay();
								if (display != null) {
									display.asyncExec(new Runnable() {
										public void run() {
											updatePerspective();
											selectAndReveal(projectHandle, PlatformUI.getWorkbench().getActiveWorkbenchWindow());
										}
									});
								}
							}
						}
					});
					convertJob.schedule();
				}
			}
		});
		createJob.schedule();

		return true;
	}

	/*
	 * @see org.artop.aal.workspace.ui.wizards.BasicAutosarProjectWizard#setInitializationData(org.eclipse.core.runtime.
	 * IConfigurationElement, java.lang.String, java.lang.Object)
	 */
	@Override
	public void setInitializationData(IConfigurationElement cfig, String propertyName, Object data) {
		configElement = cfig;
	}

	/*
	 * @see org.artop.aal.workspace.ui.wizards.BasicAutosarProjectWizard#updatePerspective()
	 */
	@Override
	protected void updatePerspective() {
		updatePerspective(configElement);
	}
}
