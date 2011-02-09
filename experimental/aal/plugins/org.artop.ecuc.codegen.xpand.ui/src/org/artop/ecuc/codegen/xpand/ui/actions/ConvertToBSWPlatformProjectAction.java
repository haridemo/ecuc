package org.artop.ecuc.codegen.xpand.ui.actions;

import org.artop.ecuc.codegen.xpand.ui.internal.messages.Messages;
import org.artop.ecuc.codegen.xpand.ui.jobs.ConvertToBSWPlatformProjectJob;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.ui.IObjectActionDelegate;
import org.eclipse.ui.IWorkbenchPart;

public class ConvertToBSWPlatformProjectAction implements IObjectActionDelegate {
	ISelection selection;

	public void run(IAction action) {
		if (selection instanceof StructuredSelection) {
			StructuredSelection structuredSelection = (StructuredSelection) selection;
			Object firstElement = structuredSelection.getFirstElement();
			IProject project = null;
			if (firstElement instanceof IProject) {
				project = (IProject) firstElement;
				ConvertToBSWPlatformProjectJob convertToBSWPlatformProjectJob = new ConvertToBSWPlatformProjectJob(
						Messages.job_convertToBSWPlatformProject, project);
				try {
					convertToBSWPlatformProjectJob.runInWorkspace(null);
				} catch (CoreException ex) {
				}
			}
		}
	}

	public void selectionChanged(IAction action, ISelection selection) {
		this.selection = selection;

	}

	public void setActivePart(IAction action, IWorkbenchPart targetPart) {

	}
}
