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
import org.artop.ecuc.gautosar.codegen.xpand.ui.preferences.IOutletsPreferenceConstants;
import org.artop.ecuc.xtend.typesystem.ui.EcucMetamodelContributor;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.jobs.IJobChangeEvent;
import org.eclipse.core.runtime.jobs.JobChangeAdapter;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.sphinx.xtendxpand.jobs.ConvertToXtendXpandEnabledPluginProjectJob;
import org.eclipse.sphinx.xtendxpand.preferences.OutletsPreference;
import org.eclipse.ui.IObjectActionDelegate;
import org.eclipse.ui.IWorkbenchPart;

public class ConvertToXtendXpandEnabledAutosarProjectAction implements IObjectActionDelegate {

	protected ISelection selection;

	protected OutletsPreference getOutletsPreference() {
		return IOutletsPreferenceConstants.ECUC_OUTLETS_PREFERENCE;
	}

	/*
	 * @see org.eclipse.ui.IObjectActionDelegate#setActivePart(org.eclipse.jface.action.IAction,
	 * org.eclipse.ui.IWorkbenchPart)
	 */
	public void setActivePart(IAction action, IWorkbenchPart targetPart) {
	}

	/*
	 * @see org.eclipse.ui.IActionDelegate#selectionChanged(org.eclipse.jface.action.IAction,
	 * org.eclipse.jface.viewers.ISelection)
	 */
	public void selectionChanged(IAction action, ISelection selection) {
		this.selection = selection;
	}

	/*
	 * @see org.eclipse.ui.IActionDelegate#run(org.eclipse.jface.action.IAction)
	 */
	// TODO Support simultaneous conversion of multiple projects
	public void run(IAction action) {
		if (selection instanceof StructuredSelection) {
			StructuredSelection structuredSelection = (StructuredSelection) selection;
			Object selected = structuredSelection.getFirstElement();
			if (selected instanceof IProject) {
				final IProject project = (IProject) selected;
				ConvertToXtendXpandEnabledPluginProjectJob job = new ConvertToXtendXpandEnabledPluginProjectJob(
						Messages.job_convertingToXtendXpandEnabledAutosarProject, project);
				job.getEnabledMetamodelContributorTypeNames().add(EcucMetamodelContributor.class.getName());

				// Add ECU Configuration specific outlets after conversion
				job.addJobChangeListener(new JobChangeAdapter() {
					@Override
					public void done(IJobChangeEvent event) {
						if (event.getResult().getSeverity() == IStatus.OK) {
							OutletsPreference outletsPreference = getOutletsPreference();
							if (outletsPreference != null) {
								outletsPreference.setInProject(project, IOutletsPreferenceConstants.ECUC_OUTLETS);
							}
						}
					}
				});
				job.schedule();
			}
		}
	}
}
