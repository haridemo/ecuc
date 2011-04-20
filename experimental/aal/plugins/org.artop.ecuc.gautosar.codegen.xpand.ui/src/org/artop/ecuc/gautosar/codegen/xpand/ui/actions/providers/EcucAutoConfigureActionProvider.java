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
package org.artop.ecuc.gautosar.codegen.xpand.ui.actions.providers;

import org.artop.ecuc.gautosar.codegen.xpand.ui.actions.LaunchEcucAutoConfigureAction;
import org.eclipse.jface.action.ActionContributionItem;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.sphinx.emf.ui.actions.providers.BasicActionProvider;
import org.eclipse.sphinx.platform.ui.util.SelectionUtil;
import org.eclipse.ui.navigator.ICommonMenuConstants;

public class EcucAutoConfigureActionProvider extends BasicActionProvider {

	protected LaunchEcucAutoConfigureAction launchModelTransformationAction;

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

	protected LaunchEcucAutoConfigureAction createLaunchEcucModelTransformationAction() {
		return new LaunchEcucAutoConfigureAction();
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
