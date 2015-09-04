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
package org.artop.ecuc.autosar4x.dsl.paramdef.ui;

import org.eclipse.core.resources.IResource;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.sphinx.platform.ui.util.SelectionUtil;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.menus.CommandContributionItem;
import org.eclipse.ui.menus.CommandContributionItemParameter;
import org.eclipse.ui.navigator.CommonActionProvider;

/**
 * This ActionProvider makes the Import Command Available in the Common Navigator Framework (It adapts the Command to a
 * MenuContrib. Item
 */
public class ActionProvider extends CommonActionProvider {

	public ActionProvider() {
	}

	@Override
	public void fillContextMenu(IMenuManager menu) {
		IStructuredSelection selection = SelectionUtil.getStructuredSelection(getContext().getSelection());
		if (selection.size() != 1) {
			return;
		}

		if (!(selection.getFirstElement() instanceof IResource)) {
			return;
		}

		CommandContributionItem item = new CommandContributionItem(new CommandContributionItemParameter(PlatformUI.getWorkbench(),
				"org.artop.ecuc.autosar4x.dsl.paramdef.handler.ParamDefDslToAutosarTransformationCommand",
				"org.artop.ecuc.autosar4x.dsl.paramdef.handler.ParamDefDslToAutosarTransformationCommand", CommandContributionItem.STYLE_PUSH));
		menu.add(item);
	}
}