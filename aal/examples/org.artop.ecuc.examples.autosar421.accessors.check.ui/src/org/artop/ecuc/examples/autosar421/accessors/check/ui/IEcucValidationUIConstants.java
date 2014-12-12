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
package org.artop.ecuc.examples.autosar421.accessors.check.ui;

import org.artop.ecuc.examples.autosar421.accessors.check.ui.internal.Activator;

public interface IEcucValidationUIConstants {

	/**
	 * Identifier of the Validate sub menu.
	 */
	public static final String MENU_VALIDATE_ID = Activator.getDefault().getBundle().getSymbolicName() + ".menus.validate"; //$NON-NLS-1$

	/**
	 * Label of the Validate sub menu.
	 */
	public static final String SUBMENU_VALIDATE_LABEL = "ECUC Value Accessor Check-based Validation"; //$NON-NLS-1$
}
