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
package org.artop.ecuc.examples.autosar40.transform.xtend.ui.actions.providers;

import org.artop.ecuc.examples.autosar40.transform.xtend.ui.actions.LaunchEcucAutoConfigure40Action;
import org.eclipse.jface.action.ActionContributionItem;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.sphinx.emf.ui.actions.providers.BasicActionProvider;
import org.eclipse.sphinx.platform.ui.util.SelectionUtil;
import org.eclipse.ui.navigator.ICommonMenuConstants;

public class EcucAutoConfigure40ActionProvider extends BasicActionProvider {

	protected LaunchEcucAutoConfigure40Action launchModelTransformationAction;

	@Override
	public void doInit() {
		launchModelTransformationAction = createLaunchEcucModelTransformationAction();

		if (selectionProvider != null) {
			selectionProvider.addSelectionChangedListener(launchModelTransformationAction);

			ISelection selection = selectionProvider.getSelection();
			IStructuredSelection structuredSelection = SelectionUtil.getStructuredSelection(selection);

			launchModelTransformationAction.selectionChanged(structuredSelection);
		}
	}

	protected LaunchEcucAutoConfigure40Action createLaunchEcucModelTransformationAction() {
		return new LaunchEcucAutoConfigure40Action();
	}

	@Override
	protected void fillSubMenu(IMenuManager subMenuManager) {
		if (launchModelTransformationAction != null) {
			subMenuManager.appendToGroup(ICommonMenuConstants.GROUP_ADDITIONS, new ActionContributionItem(launchModelTransformationAction));
		}
	}

	@Override
	public void dispose() {
		super.dispose();

		if (selectionProvider != null) {
			if (launchModelTransformationAction != null) {
				selectionProvider.removeSelectionChangedListener(launchModelTransformationAction);
			}
		}
	}
}
