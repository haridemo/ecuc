/**
 * <copyright>
 * 
 * Copyright (c) itemis and others.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of the Artop Software License Based on AUTOSAR
 * Released Material (ASLR) which accompanies this distribution, and is
 * available at http://www.artop.org/aslr.html
 * 
 * Contributors: 
 *     itemis - Initial API and implementation
 * 
 * </copyright>
 */
package org.artop.ecuc.examples.autosar4x.accessorgen.ui.actions.providers;

import org.artop.aal.examples.actions.providers.AbstractArtopExampleActionProvider;
import org.artop.aal.examples.common.ui.IArtopExampleMenuConstants;
import org.artop.ecuc.examples.autosar4x.accessorgen.ui.IAutosarParameterValueAccessorGenExampleMenuConstants;
import org.artop.ecuc.examples.autosar4x.accessorgen.ui.actions.GenerateParameterValueAccessorGenAction;
import org.eclipse.jface.action.ActionContributionItem;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.sphinx.platform.ui.util.SelectionUtil;

public class ParameterValueAccessorGenActionProvider extends AbstractArtopExampleActionProvider {

	private GenerateParameterValueAccessorGenAction generateParameterValueAccessorGenAction;

	/*
	 * @see org.eclipse.sphinx.emf.ui.actions.providers.BasicActionProvider#doInit()
	 */
	@Override
	public void doInit() {
		generateParameterValueAccessorGenAction = new GenerateParameterValueAccessorGenAction();

		if (selectionProvider != null) {
			selectionProvider.addSelectionChangedListener(generateParameterValueAccessorGenAction);

			ISelection selection = selectionProvider.getSelection();
			IStructuredSelection structuredSelection = SelectionUtil.getStructuredSelection(selection);
			generateParameterValueAccessorGenAction.updateSelection(structuredSelection);
		}
	}

	/*
	 * @see
	 * org.artop.aal.examples.actions.providers.AbstractArtopExampleActionProvider#addSubMenu(org.eclipse.jface.action
	 * .IMenuManager)
	 */
	@Override
	protected IMenuManager addSubMenu(IMenuManager contextMenuManager) {
		IMenuManager examplesMenuManager = super.addSubMenu(contextMenuManager);

		IMenuManager menuManager = examplesMenuManager
				.findMenuUsingPath(IAutosarParameterValueAccessorGenExampleMenuConstants.MENU_PARAMETER_VALUE_ACCESSOR_GEN_ID);
		if (menuManager == null) {
			menuManager = new MenuManager(IAutosarParameterValueAccessorGenExampleMenuConstants.MENU_PARAMETER_VALUE_ACCESSOR_GEN_LABEL,
					IAutosarParameterValueAccessorGenExampleMenuConstants.MENU_PARAMETER_VALUE_ACCESSOR_GEN_ID);
			examplesMenuManager.appendToGroup(IArtopExampleMenuConstants.GROUP_ARTOP_EXAMPLES, menuManager);
		}
		return menuManager;

	}

	/*
	 * @see
	 * org.eclipse.sphinx.emf.ui.actions.providers.BasicActionProvider#fillSubMenu(org.eclipse.jface.action.IMenuManager
	 * )
	 */
	@Override
	protected void fillSubMenu(IMenuManager subMenuManager) {
		subMenuManager.add(new ActionContributionItem(generateParameterValueAccessorGenAction));
	}

	/*
	 * @see org.eclipse.ui.actions.ActionGroup#dispose()
	 */
	@Override
	public void dispose() {
		if (selectionProvider != null) {
			if (generateParameterValueAccessorGenAction != null) {
				selectionProvider.removeSelectionChangedListener(generateParameterValueAccessorGenAction);
			}
		}

		super.dispose();
	}
}
