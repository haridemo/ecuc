package org.artop.ecuc.codegen.xpand.ui.wizards;

import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.net.URI;

import org.artop.aal.common.library.AutosarLibraryUtil;
import org.artop.aal.common.library.IAutosarLibraryConstants;
import org.artop.aal.common.metamodel.AutosarReleaseDescriptor;
import org.artop.aal.workspace.natures.AutosarNature;
import org.artop.aal.workspace.preferences.IAutosarWorkspacePreferences;
import org.artop.aal.workspace.ui.messages.ErrorUIMessages;
import org.artop.aal.workspace.ui.wizards.BasicAutosarProjectWizard;
import org.artop.aal.workspace.ui.wizards.pages.AutosarProjectWizardFirstPage;
import org.artop.ecl.emf.util.EcoreResourceUtil;
import org.artop.ecl.platform.util.PlatformLogUtil;
import org.artop.ecl.platform.util.StatusUtil;
import org.artop.ecuc.codegen.xpand.ui.internal.Activator;
import org.artop.ecuc.codegen.xpand.ui.internal.messages.Messages;
import org.artop.ecuc.codegen.xpand.ui.jobs.ConvertToBSWPlatformProjectJob;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IProjectDescription;
import org.eclipse.core.resources.IResourceStatus;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExecutableExtension;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.operation.IRunnableWithProgress;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.osgi.util.NLS;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.dialogs.WizardNewProjectReferencePage;
import org.eclipse.ui.ide.undo.CreateProjectOperation;
import org.eclipse.ui.ide.undo.WorkspaceUndoUtil;
import org.eclipse.ui.statushandlers.IStatusAdapterConstants;
import org.eclipse.ui.statushandlers.StatusAdapter;
import org.eclipse.ui.statushandlers.StatusManager;

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
	 * Creates a new project resource with the selected name.
	 * <p>
	 * In normal usage, this method is invoked after the user has pressed Finish on the wizard; the enablement of the
	 * Finish button implies that all controls on the pages currently contain valid values.
	 * </p>
	 * <p>
	 * Note that this wizard caches the new project once it has been successfully created; subsequent invocations of
	 * this method will answer the same project resource without attempting to create it again.
	 * </p>
	 * 
	 * @return the created project resource, or <code>null</code> if the project was not created
	 */
	private IProject createNewProject() {
		if (newProject != null) {
			return newProject;
		}

		// get a project handle
		IProject newProjectHandle = mainPage.getProjectHandle();

		// get a project descriptor
		URI location = null;
		if (!mainPage.useDefaults()) {
			location = mainPage.getLocationURI();
		}

		IWorkspace workspace = ResourcesPlugin.getWorkspace();
		final IProjectDescription description = workspace.newProjectDescription(newProjectHandle.getName());
		description.setLocationURI(location);

		// update the referenced project if provided
		if (referencePage != null) {
			IProject[] refProjects = referencePage.getReferencedProjects();
			if (refProjects.length > 0) {
				description.setReferencedProjects(refProjects);
			}
		}

		// create the new project operation
		IRunnableWithProgress op = new IRunnableWithProgress() {
			public void run(IProgressMonitor monitor) throws InvocationTargetException {
				CreateProjectOperation op = new CreateProjectOperation(description, Messages.label_newBSWPlatformProjectWindowTitle);
				try {
					PlatformUI.getWorkbench().getOperationSupport().getOperationHistory()
							.execute(op, monitor, WorkspaceUndoUtil.getUIInfoAdapter(getShell()));
				} catch (ExecutionException e) {
					throw new InvocationTargetException(e);
				}
			}
		};

		// run the new project creation operation
		try {
			getContainer().run(true, true, op);
		} catch (InterruptedException e) {
			newProjectHandle = null;
		} catch (InvocationTargetException e) {
			handleInvocationTargetException(newProjectHandle, e);
			newProjectHandle = null;
		}

		if (newProjectHandle != null) {
			newProject = newProjectHandle;
			continueCreation(newProject);
		}
		return newProject;
	}

	private IProject handleInvocationTargetException(final IProject newProjectHandle, InvocationTargetException e) {
		Throwable t = e.getTargetException();
		if (t instanceof ExecutionException && t.getCause() instanceof CoreException) {
			CoreException cause = (CoreException) t.getCause();
			StatusAdapter status;
			if (cause.getStatus().getCode() == IResourceStatus.CASE_VARIANT_EXISTS) {
				status = new StatusAdapter(new Status(IStatus.WARNING, Activator.getPlugin().getSymbolicName(), NLS.bind(
						ErrorUIMessages.error_newProjectCaseVariantExists, newProjectHandle.getName()), cause));
			} else {
				status = new StatusAdapter(new Status(cause.getStatus().getSeverity(), Activator.getPlugin().getSymbolicName(),
						ErrorUIMessages.error_newProjectMessage, cause));
			}
			status.setProperty(IStatusAdapterConstants.TITLE_PROPERTY, ErrorUIMessages.error_newProjectMessage);
			StatusManager.getManager().handle(status, StatusManager.BLOCK);
		} else {
			StatusAdapter status = new StatusAdapter(new Status(IStatus.WARNING, Activator.getPlugin().getSymbolicName(), 0, NLS.bind(
					ErrorUIMessages.error_newProjectInternalError, t.getMessage()), t));
			status.setProperty(IStatusAdapterConstants.TITLE_PROPERTY, ErrorUIMessages.error_newProjectMessage);
			StatusManager.getManager().handle(status, StatusManager.LOG | StatusManager.BLOCK);
		}
		return null;
	}

	private void continueCreation(IProject newProject) {
		try {
			AutosarNature.addTo(newProject, new NullProgressMonitor());
		} catch (CoreException ex) {
			PlatformLogUtil.logAsError(Activator.getPlugin(), ex);
		}
	}

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
		ImageDescriptor desc = Activator.getPlugin().getImageDescriptor("wizban/newbswpprj_wiz.png");//$NON-NLS-1$
		setDefaultPageImageDescriptor(desc);
	}

	/**
	 * Returns the newly created project.
	 * 
	 * @return the created project, or <code>null</code> if project not created
	 */
	@Override
	public IProject getNewProject() {
		return newProject;
	}

	/*
	 * Method declared on IWizard.
	 */
	@Override
	public boolean performFinish() {
		mainPage.saveDialogSettings();
		mainPage.setVisible(false);

		createNewProject();
		if (newProject == null) {
			return false;
		}
		final AutosarReleaseDescriptor autosarReleaseDescriptor = mainPage.getRelease();
		if (autosarReleaseDescriptor != null) {
			IAutosarWorkspacePreferences.AUTOSAR_RELEASE.setInProject(newProject, autosarReleaseDescriptor);
		}

		updatePerspective();
		selectAndReveal(newProject);

		if (mainPage.isImportEcuCParamDef()) {
			ARLibImportJob job = new ARLibImportJob(Messages.job_ImportEcucParamDef, autosarReleaseDescriptor);
			job.setLibID(IAutosarLibraryConstants.ECU_C_PARAM_DEF_LIB_ID);
			job.setFileName(IAutosarLibraryConstants.ECU_C_PARAM_DEF_XML_FILE_NAME);
			job.setPriority(Job.INTERACTIVE);
			job.schedule(10);
		}
		ConvertToBSWPlatformProjectJob convertToEcuConfigurationProjectJob = new ConvertToBSWPlatformProjectJob(
				Messages.job_convertToBSWPlatformProject, getNewProject());
		convertToEcuConfigurationProjectJob.schedule(10);
		return true;
	}

	class ARLibImportJob extends Job {

		private String fLibID;
		private String fFileName;
		private AutosarReleaseDescriptor fAutosarRelDesc;

		private ARLibImportJob(String name, AutosarReleaseDescriptor autosarRelDesc) {
			super(name);
			fAutosarRelDesc = autosarRelDesc;
		}

		public void setLibID(String libID) {
			fLibID = libID;
		}

		public void setFileName(String fileName) {
			fFileName = fileName;
		}

		@Override
		protected IStatus run(IProgressMonitor monitor) {
			IFile file = newProject.getFile(fFileName);
			if (!file.exists()) {
				org.eclipse.emf.common.util.URI uri = null;
				if (fAutosarRelDesc != null) {
					uri = AutosarLibraryUtil.getLibraryARXMLURI(fLibID, fAutosarRelDesc);
					try {
						// Copy file rather than linking it
						InputStream inputStream = EcoreResourceUtil.getURIConverter().createInputStream(uri);
						file.create(inputStream, true, null);
						inputStream.close();
					} catch (CoreException ex) {
						return ex.getStatus();
					} catch (Exception ex) {
						return StatusUtil.createErrorStatus(Activator.getPlugin(), ex);
					}
				}
			}
			return Status.OK_STATUS;
		}
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
		// super.addPages();

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
