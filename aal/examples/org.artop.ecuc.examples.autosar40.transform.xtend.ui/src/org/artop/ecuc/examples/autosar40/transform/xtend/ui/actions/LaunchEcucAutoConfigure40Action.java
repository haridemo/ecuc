/**
 * <copyright>
 * 
 * Copyright (c) See4sys, itemis and others.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of the Artop Software License Based on AUTOSAR
 * Released Material (ASLR) which accompanies this distribution, and is
 * available at http://www.artop.org/aslr.html
 * 
 * Contributors: 
 *     See4sys - Initial API and implementation
 *     itemis - [1448] Provide an example for automatically creating ECU configurations from ECU extracts of system descriptions using Xtend
 * 
 * </copyright>
 */
package org.artop.ecuc.examples.autosar40.transform.xtend.ui.actions;

import org.artop.aal.common.metamodel.AutosarReleaseDescriptor;
import org.artop.ecuc.examples.autosar40.transform.xtend.ui.internal.messages.Messages;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.jobs.IJobChangeListener;
import org.eclipse.jface.wizard.WizardDialog;
import org.eclipse.sphinx.platform.ui.util.ExtendedPlatformUI;
import org.eclipse.sphinx.xtendxpand.jobs.XtendJob;
import org.eclipse.sphinx.xtendxpand.ui.actions.BasicM2MAction;
import org.eclipse.sphinx.xtendxpand.ui.wizards.M2MConfigurationWizard;

public class LaunchEcucAutoConfigure40Action extends BasicM2MAction {

	public LaunchEcucAutoConfigure40Action() {
		super(Messages.menuItem_launchAutoConfigure);
	}

	public LaunchEcucAutoConfigure40Action(String text) {
		super(text);
	}

	/*
	 * @see org.eclipse.sphinx.xpand.ui.actions.BasicM2TAction#run()
	 */
	@Override
	public void run() {
		M2MConfigurationWizard wizard = new M2MConfigurationWizard(getSelectedModelObject(), getMetaModels()) {
			@Override
			protected IJobChangeListener createResultObjectHandler(XtendJob xtendJob) {
				SaveAsNewAutosarFileHandler handler = new SaveAsNewAutosarFileHandler(xtendJob);
				handler.setDefaultProjectRelativeResultPath(new Path("bsw.config").append("Car_Configuration").addFileExtension(AutosarReleaseDescriptor.ARXML_DEFAULT_FILE_EXTENSION)); //$NON-NLS-1$ //$NON-NLS-2$
				return handler;
			}
		};
		wizard.setM2MJobName(getM2MJobName());
		wizard.setWorkspaceResourceLoader(getWorkspaceResourceLoader());
		WizardDialog wizardDialog = new WizardDialog(ExtendedPlatformUI.getDisplay().getActiveShell(), wizard);
		wizardDialog.open();
	}
}
