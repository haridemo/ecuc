package org.artop.ecuc.codegen.xpand.ui.wizards;

import java.net.URI;

import org.artop.aal.workspace.jobs.CreateArtopProjectJob;
import org.artop.aal.workspace.ui.wizards.BasicAutosarProjectWizard;
import org.artop.aal.workspace.ui.wizards.pages.AutosarProjectWizardFirstPage;
import org.artop.ecl.platform.ui.util.ExtendedPlatformUI;
import org.artop.ecuc.codegen.xpand.ui.internal.Activator;
import org.artop.ecuc.codegen.xpand.ui.internal.messages.Messages;
import org.artop.ecuc.codegen.xpand.ui.jobs.ConvertToBSWPlatformProjectJob;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExecutableExtension;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.jobs.IJobChangeEvent;
import org.eclipse.core.runtime.jobs.JobChangeAdapter;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.dialogs.WizardNewProjectReferencePage;
import org.eclipse.ui.ide.undo.WorkspaceUndoUtil;

public class BSWPlatformProjectWizard extends BasicAutosarProjectWizard implements IExecutableExtension {

	private AutosarProjectWizardFirstPage mainPage;

	private WizardNewProjectReferencePage referencePage;

	// cache of newly-created project
	private IProject newProject;
	/**
	 * The config element which declares this wizard.
	 */
	private IConfigurationElement configElement;

	/**
	 * Updates the perspective for the active page within the window.
	 */
	@Override
	protected void updatePerspective() {
		updatePerspective(configElement);
	}

	/*
	 * Method declared on BasicNewResourceWizard.
	 */
	@Override
	protected void initializeDefaultPageImageDescriptor() {
		ImageDescriptor desc = Activator.getPlugin().getImageDescriptor("full/wizban/newbswpprj_wiz.png");//$NON-NLS-1$
		setDefaultPageImageDescriptor(desc);
	}

	/*
	 * Method declared on IWizard.
	 */
	@Override
	public boolean performFinish() {
		mainPage.setVisible(false);
		mainPage.saveDialogSettings();

		URI location = !mainPage.useDefaults() ? mainPage.getLocationURI() : null;
		IProject[] referencedProjects = referencePage != null ? referencePage.getReferencedProjects() : null;
		final IProject projectHandle = mainPage.getProjectHandle();

		final CreateArtopProjectJob job = new CreateArtopProjectJob(Messages.job_creatingAutosarProject, projectHandle, location,
				mainPage.getRelease());
		job.setReferencedProjects(referencedProjects);
		job.getImportedAutosarLibraries().addAll(mainPage.getImportedAutosarLibraryDescriptors());
		job.setUiInfoAdaptable(WorkspaceUndoUtil.getUIInfoAdapter(getShell()));
		job.addJobChangeListener(new JobChangeAdapter() {
			@Override
			public void done(IJobChangeEvent event) {
				if (event.getResult().getSeverity() == IStatus.OK) {
					ConvertToBSWPlatformProjectJob convertToEcuConfigurationProjectJob = new ConvertToBSWPlatformProjectJob(
							Messages.job_convertToBSWPlatformProject, projectHandle);
					// reveal the project after creation
					convertToEcuConfigurationProjectJob.addJobChangeListener(new JobChangeAdapter() {
						@Override
						public void done(IJobChangeEvent event) {
							if (event.getResult().getSeverity() == IStatus.OK) {
								Display display = ExtendedPlatformUI.getDisplay();
								if (display != null) {
									display.asyncExec(new Runnable() {
										public void run() {
											updatePerspective();
											selectAndReveal(getNewProject(), PlatformUI.getWorkbench().getActiveWorkbenchWindow());
										}
									});
								}
							}
						}
					});
					convertToEcuConfigurationProjectJob.schedule();
				}
			}
		});
		job.schedule();

		return true;
	}

	/*
	 * (non-Javadoc) Method declared on IWorkbenchWizard.
	 */
	@Override
	public void init(IWorkbench workbench, IStructuredSelection currentSelection) {
		super.init(workbench, currentSelection);
		setWindowTitle(Messages.BSWPlatformProjectWizzardTitle);
	}

	/*
	 * (non-Javadoc) Method declared on IWizard.
	 */
	@Override
	public void addPages() {
		mainPage = new AutosarProjectWizardFirstPage("basicNewProjectPage"); //$NON-NLS-1$
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

	/**
	 * Stores the configuration element for the wizard. The config element will be used in <code>performFinish</code> to
	 * set the result perspective.
	 */
	@Override
	public void setInitializationData(IConfigurationElement cfig, String propertyName, Object data) {
		configElement = cfig;
	}
}
