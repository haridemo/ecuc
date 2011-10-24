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
package org.artop.ecuc.autosar40.codegen.xpand.ui.actions.providers;

import org.artop.ecuc.autosar40.codegen.xpand.ui.actions.AdvancedLaunchEcucCodeGen40Action;
import org.artop.ecuc.autosar40.codegen.xpand.ui.actions.LaunchEcucCodeGen40Action;
import org.artop.ecuc.gautosar.codegen.xpand.ui.IEcucCodeGenerationMenuConstants;
import org.eclipse.jface.action.ActionContributionItem;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.sphinx.emf.ui.actions.providers.BasicActionProvider;
import org.eclipse.sphinx.platform.ui.util.SelectionUtil;
import org.eclipse.ui.navigator.ICommonMenuConstants;

public class EcucCodeGen40ActionProvider extends BasicActionProvider {

	protected LaunchEcucCodeGen40Action launchCodeGen40Action;
	protected AdvancedLaunchEcucCodeGen40Action advancedLaunchCodeGen40Action;

	@Override
	public void doInit() {
		launchCodeGen40Action = createLaunchEcucCodeGenAction();
		advancedLaunchCodeGen40Action = createAdvancedLaunchEcucCodeGen();
		if (selectionProvider != null) {
			selectionProvider.addSelectionChangedListener(launchCodeGen40Action);
			selectionProvider.addSelectionChangedListener(advancedLaunchCodeGen40Action);

			ISelection selection = selectionProvider.getSelection();
			IStructuredSelection structuredSelection = SelectionUtil.getStructuredSelection(selection);

			launchCodeGen40Action.selectionChanged(structuredSelection);
			advancedLaunchCodeGen40Action.selectionChanged(structuredSelection);
		}
	}

	protected LaunchEcucCodeGen40Action createLaunchEcucCodeGenAction() {
		return new LaunchEcucCodeGen40Action();
	}

	protected AdvancedLaunchEcucCodeGen40Action createAdvancedLaunchEcucCodeGen() {
		return new AdvancedLaunchEcucCodeGen40Action();
	}

	/*
	 * @see
	 * org.artop.ecl.emf.validation.ui.actions.providers.AbstractValidationActionProvider#addSubMenu(org.eclipse.jface
	 * .action.IMenuManager)
	 */
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
		if (launchCodeGen40Action != null) {
			subMenuManager.add(new ActionContributionItem(launchCodeGen40Action));
		}
		if (advancedLaunchCodeGen40Action != null) {
			subMenuManager.add(new ActionContributionItem(advancedLaunchCodeGen40Action));
		}
	}

	@Override
	public void dispose() {
		super.dispose();

		if (selectionProvider != null) {
			if (launchCodeGen40Action != null) {
				selectionProvider.removeSelectionChangedListener(launchCodeGen40Action);
			}
			if (advancedLaunchCodeGen40Action != null) {
				selectionProvider.removeSelectionChangedListener(advancedLaunchCodeGen40Action);
			}
		}
	}
}
