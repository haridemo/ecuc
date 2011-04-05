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
package org.artop.ecuc.gautosar.codegen.xpand.ui.preferences;

import org.artop.aal.workspace.natures.AutosarNature;
import org.eclipse.sphinx.xpand.ui.preferences.XpandPreferencePage;

public class EcucCodeGenerationPreferencePage extends XpandPreferencePage {

	public static final String PROP_PAGE_ID = "ecuc.codegen.propertyPages.ecucCodeGen"; //$NON-NLS-1$

	public EcucCodeGenerationPreferencePage() {
		super(AutosarNature.ID, GRID);
	}

	@Override
	protected String getPropertyPageID() {
		return PROP_PAGE_ID;
	}
}
