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

import gautosar.gecucdescription.GContainer;
import gautosar.gecucdescription.GModuleConfiguration;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;

import org.artop.ecuc.autosar421.accessors.EcucValueAccessor421Factory;
import org.artop.ecuc.examples.autosar421.accessors.check.ui.IEcucValidationUIConstants;
import org.artop.ecuc.examples.autosar421.accessors.check.ui.internal.Activator;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.sphinx.emf.check.ui.actions.BasicCheckValidationAction;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;

public class EcucValueAccessorCheckValidationAction extends BasicCheckValidationAction {

	public EcucValueAccessorCheckValidationAction() {
		this(IEcucValidationUIConstants.SUBMENU_VALIDATE_LABEL);
	}

	protected EcucValueAccessorCheckValidationAction(String text) {
		super(text);
	}

	@Override
	protected Object getValidationInput() {
		Object selectedObject = getSelectedObject();

		if (selectedObject instanceof GModuleConfiguration || selectedObject instanceof GContainer) {
			try {
				return EcucValueAccessor421Factory.INSTANCE.createEcucValueAccessor((GIdentifiable) selectedObject);
			} catch (CoreException ex) {
				PlatformLogUtil.logAsError(Activator.getPlugin(), ex);
				return null;
			}
		}
		return super.getValidationInput();
	}
}
