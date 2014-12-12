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
package org.artop.ecuc.examples.autosar421.accessors.check.ui.actions;

import org.artop.ecuc.examples.autosar421.accessors.check.ui.IEcucValidationUIConstants;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.sphinx.emf.check.ui.IValidationUIConstants;
import org.eclipse.sphinx.emf.check.ui.actions.BasicCheckValidationAction;
import org.eclipse.sphinx.emf.check.ui.actions.BasicCheckValidationActionProvider;
import org.eclipse.ui.navigator.ICommonMenuConstants;

public class EcucValueAccessorCheckValidationActionProvider extends BasicCheckValidationActionProvider {

	@Override
	protected BasicCheckValidationAction createValidateAction() {
		return new EcucValueAccessorCheckValidationAction();
	}

	@Override
	protected IMenuManager addSubMenu(IMenuManager contextMenuManager) {
		IMenuManager subMenuManager = contextMenuManager.findMenuUsingPath(IEcucValidationUIConstants.MENU_VALIDATE_ID);
		if (subMenuManager == null) {
			subMenuManager = new MenuManager(IValidationUIConstants.MENU_VALIDATE_LABEL, IEcucValidationUIConstants.MENU_VALIDATE_ID);
			contextMenuManager.appendToGroup(ICommonMenuConstants.GROUP_ADDITIONS, subMenuManager);
		}
		return subMenuManager;
	}
}
