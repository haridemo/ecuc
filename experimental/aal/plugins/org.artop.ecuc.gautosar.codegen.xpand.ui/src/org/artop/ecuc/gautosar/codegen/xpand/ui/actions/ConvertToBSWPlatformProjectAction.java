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
package org.artop.ecuc.gautosar.codegen.xpand.ui.actions;

import org.artop.ecuc.gautosar.codegen.xpand.ui.internal.messages.Messages;
import org.artop.ecuc.gautosar.codegen.xpand.ui.jobs.ConvertToBSWPlatformProjectJob;
import org.artop.ecuc.gautosar.codegen.xpand.ui.preferences.IEcucCodeGenerationPreferenceConstants;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.jobs.IJobChangeEvent;
import org.eclipse.core.runtime.jobs.JobChangeAdapter;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.sphinx.xpand.preferences.OutletsPreference;
import org.eclipse.ui.IObjectActionDelegate;
import org.eclipse.ui.IWorkbenchPart;

public class ConvertToBSWPlatformProjectAction implements IObjectActionDelegate {

	protected ISelection selection;

	protected OutletsPreference getOutletsPreference() {
		return IEcucCodeGenerationPreferenceConstants.ECUC_OUTLETS_PREFERENCE;
	}

	public void setActivePart(IAction action, IWorkbenchPart targetPart) {
	}

	public void selectionChanged(IAction action, ISelection selection) {
		this.selection = selection;
	}

	// TODO Support simultaneous conversion of multiple projects
	public void run(IAction action) {
		if (selection instanceof StructuredSelection) {
			StructuredSelection structuredSelection = (StructuredSelection) selection;
			Object selected = structuredSelection.getFirstElement();
			if (selected instanceof IProject) {
				final IProject project = (IProject) selected;
				ConvertToBSWPlatformProjectJob job = new ConvertToBSWPlatformProjectJob(Messages.job_convertToBSWPlatformProject, project);

				// Add ECU Configuration specific outlets after conversion
				job.addJobChangeListener(new JobChangeAdapter() {
					@Override
					public void done(IJobChangeEvent event) {
						if (event.getResult().getSeverity() == IStatus.OK) {
							OutletsPreference outletsPreference = getOutletsPreference();
							if (outletsPreference != null) {
								outletsPreference.setInProject(project, IEcucCodeGenerationPreferenceConstants.ECUC_OUTLETS);
							}
						}
					}
				});
				job.schedule();
			}
		}
	}
}
