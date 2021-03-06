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
package org.artop.ecuc.gautosar.codegen.xpand.ui;

import org.artop.ecuc.gautosar.codegen.xpand.ui.internal.Activator;
import org.artop.ecuc.gautosar.codegen.xpand.ui.internal.messages.Messages;

public interface IEcucCodeGenerationMenuConstants {

	/**
	 * Identifier of the Generate sub menu.
	 */
	String MENU_GENERATE_ID = Activator.getPlugin().getSymbolicName() + ".menus.generate"; //$NON-NLS-1$

	/**
	 * Label of the Generate sub menu.
	 */
	String MENU_GENERATE_LABEL = Messages.menu_generate;
}
