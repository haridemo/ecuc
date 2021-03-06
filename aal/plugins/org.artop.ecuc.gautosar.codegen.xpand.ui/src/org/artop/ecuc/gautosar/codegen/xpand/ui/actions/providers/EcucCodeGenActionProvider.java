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

import org.artop.ecuc.gautosar.codegen.xpand.ui.IEcucCodeGenerationMenuConstants;
import org.artop.ecuc.gautosar.codegen.xpand.ui.actions.LaunchEcucCodeGenAction;
import org.eclipse.jface.action.ActionContributionItem;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.sphinx.emf.ui.actions.providers.BasicActionProvider;
import org.eclipse.sphinx.platform.ui.util.SelectionUtil;
import org.eclipse.ui.navigator.ICommonMenuConstants;

public class EcucCodeGenActionProvider extends BasicActionProvider {

	protected LaunchEcucCodeGenAction launchCodeGenAction;

	@Override
	public void doInit() {
		launchCodeGenAction = createLaunchEcucCodeGenAction();

		if (selectionProvider != null) {
			selectionProvider.addSelectionChangedListener(launchCodeGenAction);

			ISelection selection = selectionProvider.getSelection();
			IStructuredSelection structuredSelection = SelectionUtil.getStructuredSelection(selection);

			launchCodeGenAction.selectionChanged(structuredSelection);
		}
	}

	protected LaunchEcucCodeGenAction createLaunchEcucCodeGenAction() {
		return new LaunchEcucCodeGenAction();
	}

	@Override
	protected IMenuManager addSubMenu(IMenuManager contextMenuManager) {
		IMenuManager subMenuManager = contextMenuManager.findMenuUsingPath(IEcucCodeGenerationMenuConstants.MENU_GENERATE_ID);
		if (subMenuManager == null) {
			subMenuManager = new MenuManager(IEcucCodeGenerationMenuConstants.MENU_GENERATE_LABEL, IEcucCodeGenerationMenuConstants.MENU_GENERATE_ID);
			contextMenuManager.appendToGroup(ICommonMenuConstants.GROUP_ADDITIONS, subMenuManager);
		}
		return subMenuManager;

	}

	@Override
	protected void fillSubMenu(IMenuManager subMenuManager) {
		if (launchCodeGenAction != null) {
			subMenuManager.add(new ActionContributionItem(launchCodeGenAction));
		}
	}

	@Override
	public void dispose() {
		super.dispose();

		if (selectionProvider != null) {
			if (launchCodeGenAction != null) {
				selectionProvider.removeSelectionChangedListener(launchCodeGenAction);
			}
		}
	}
}
