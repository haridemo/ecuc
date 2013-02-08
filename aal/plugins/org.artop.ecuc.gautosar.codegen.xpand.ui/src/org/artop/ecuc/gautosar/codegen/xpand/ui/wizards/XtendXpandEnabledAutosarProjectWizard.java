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
import java.util.ArrayList;
import java.util.List;

import org.artop.aal.workspace.jobs.CreateNewAutosarProjectJob;
import org.artop.aal.workspace.ui.wizards.BasicAutosarProjectWizard;
import org.artop.aal.workspace.ui.wizards.pages.NewAutosarProjectCreationPage;
import org.artop.ecuc.gautosar.codegen.xpand.ui.internal.Activator;
import org.artop.ecuc.gautosar.codegen.xpand.ui.internal.messages.Messages;
import org.artop.ecuc.gautosar.codegen.xpand.ui.preferences.IOutletsPreferenceConstants;
import org.artop.ecuc.gautosar.codegen.xpand.ui.wizards.pages.EcucOutletsConfigurationPage;
import org.artop.ecuc.xtend.typesystem.ui.EcucMetamodelContributor;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExecutableExtension;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.jobs.IJobChangeEvent;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.core.runtime.jobs.JobChangeAdapter;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.sphinx.platform.ui.util.ExtendedPlatformUI;
import org.eclipse.sphinx.xtend.typesystem.emf.ui.SphinxManagedEmfMetamodelContributor;
import org.eclipse.sphinx.xtendxpand.jobs.ConvertToXtendXpandEnabledPluginProjectJob;
import org.eclipse.sphinx.xtendxpand.preferences.OutletsPreference;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.dialogs.WizardNewProjectReferencePage;
import org.eclipse.ui.ide.undo.WorkspaceUndoUtil;

public class XtendXpandEnabledAutosarProjectWizard extends BasicAutosarProjectWizard implements IExecutableExtension {

	protected NewAutosarProjectCreationPage mainPage;

	protected EcucOutletsConfigurationPage outletsPage;

	protected WizardNewProjectReferencePage referencePage;

	/**
	 * The config element which declares this wizard.
	 */
	private IConfigurationElement configElement;

	protected OutletsPreference getOutletsPreference() {
		return IOutletsPreferenceConstants.ECUC_OUTLETS_PREFERENCE;
	}

	/*
	 * @see org.artop.aal.workspace.ui.wizards.BasicAutosarProjectWizard#init(org.eclipse.ui.IWorkbench,
	 * org.eclipse.jface.viewers.IStructuredSelection)
	 */
	@Override
	public void init(IWorkbench workbench, IStructuredSelection currentSelection) {
		super.init(workbench, currentSelection);
		setWindowTitle(Messages.BSWPlatformProjectWizardTitle);
	}

	/*
	 * @see org.artop.aal.workspace.ui.wizards.BasicAutosarProjectWizard#initializeDefaultPageImageDescriptor()
	 */
	@Override
	protected void initializeDefaultPageImageDescriptor() {
		ImageDescriptor descriptor = Activator.getPlugin().getImageDescriptor("full/wizban/newbswpprj_wiz.png");//$NON-NLS-1$
		setDefaultPageImageDescriptor(descriptor);
	}

	/*
	 * @see org.artop.aal.workspace.ui.wizards.BasicAutosarProjectWizard#addPages()
	 */
	@Override
	public void addPages() {
		// Add an AutosarProjectWizardFirstPage
		mainPage = new NewAutosarProjectCreationPage("basicNewProjectPage"); //$NON-NLS-1$
		mainPage.setTitle(Messages.BSWPlatformProjectWizardFirstPageTitle);
		mainPage.setDescription(Messages.BSWPlatformProjectWizardFirstPageDescription);
		addPage(mainPage);

		// Add an OutletsConfigurationPage
		outletsPage = createOutletsConfigurationPage(
				"basicNewProjectPage", Messages.BSWPlatformProjectWizardFirstPageTitle, Messages.BSWPlatformProjectWizardFirstPageDescription, Messages.label_addXtendXpandCheckSupportEnableButton, getOutletsPreference()); //$NON-NLS-1$
		addPage(outletsPage);

		// only add page if there are already projects in the workspace
		if (ResourcesPlugin.getWorkspace().getRoot().getProjects().length > 0) {
			referencePage = createProjectReferencePage("basicReferenceProjectPage", Messages.BSWPlatformProjectWizardReferencePageTitle, //$NON-NLS-1$
					Messages.BSWPlatformProjectWizardReferencePageDescription);
			addPage(referencePage);
		}
	}

	protected EcucOutletsConfigurationPage createOutletsConfigurationPage(String pageName, String pageTitle, String pageDesc, String enableText,
			OutletsPreference outletPreference) {
		EcucOutletsConfigurationPage outletsPage = new EcucOutletsConfigurationPage(pageName, enableText, outletPreference);
		outletsPage.setTitle(pageTitle);
		outletsPage.setDescription(pageDesc);
		return outletsPage;
	}

	protected WizardNewProjectReferencePage createProjectReferencePage(String pageName, String pageTitle, String pageDesc) {
		WizardNewProjectReferencePage referencePage = new WizardNewProjectReferencePage(pageName);
		referencePage.setTitle(pageTitle);
		referencePage.setDescription(pageDesc);
		return referencePage;
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

		final CreateNewAutosarProjectJob createJob = new CreateNewAutosarProjectJob(Messages.job_creatingAutosarProject, projectHandle, location,
				mainPage.getRelease());
		createJob.setReferencedProjects(referencedProjects);
		createJob.getImportedAutosarLibraries().addAll(mainPage.getImportedAutosarLibraryDescriptors());
		createJob.setUIInfoAdaptable(WorkspaceUndoUtil.getUIInfoAdapter(getShell()));
		addCreateJobChangeListener(createJob, projectHandle);
		createJob.schedule();

		return true;
	}

	protected void addCreateJobChangeListener(Job job, final IProject projectHandle) {
		job.addJobChangeListener(new JobChangeAdapter() {
			@Override
			public void done(IJobChangeEvent event) {
				if (event.getResult().getSeverity() == IStatus.OK) {
					ConvertToXtendXpandEnabledPluginProjectJob convertJob = new ConvertToXtendXpandEnabledPluginProjectJob(
							Messages.job_convertingToXtendXpandEnabledAutosarProject, projectHandle);
					convertJob.getEnabledMetamodelContributorTypeNames().addAll(getMetamodelContributors());
					addConvertJobChangeListener(convertJob, projectHandle);
					convertJob.schedule();
				}
			}
		});
	}

	/**
	 * Returns the metamodel contributors to be activated by default for Xtend/Xpand enabled AUTOSAR projects i.e., BSW
	 * Platform projects.
	 */
	protected List<String> getMetamodelContributors() {
		List<String> metaModelContributors = new ArrayList<String>();
		metaModelContributors.add(EcucMetamodelContributor.class.getName());
		metaModelContributors.add(SphinxManagedEmfMetamodelContributor.class.getName());
		return metaModelContributors;
	}

	protected void addConvertJobChangeListener(Job job, final IProject projectHandle) {
		// Commit outlets and reveal new project after creation
		job.addJobChangeListener(new JobChangeAdapter() {
			@Override
			public void done(IJobChangeEvent event) {
				if (event.getResult().getSeverity() == IStatus.OK) {
					OutletsPreference outletsPreference = getOutletsPreference();
					if (outletsPreference != null) {
						outletsPreference.setInProject(projectHandle, outletsPage.getOutlets());
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
