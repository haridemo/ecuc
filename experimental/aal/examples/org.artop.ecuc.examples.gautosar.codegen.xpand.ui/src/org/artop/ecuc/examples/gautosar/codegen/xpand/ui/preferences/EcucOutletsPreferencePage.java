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
package org.artop.ecuc.examples.gautosar.codegen.xpand.ui.preferences;

import org.artop.aal.workspace.natures.AutosarNature;
import org.eclipse.sphinx.xpand.ui.preferences.AbstractOutletsPreferencePage;

public class EcucOutletsPreferencePage extends AbstractOutletsPreferencePage {

	public static final String PREFERENCE_PAGE_ID = "org.artop.ecuc.examples.gautosar.codegen.ui.preferencePages.ecucOutlets"; //$NON-NLS-1$

	public static final String PROPERTY_PAGE_ID = "org.artop.ecuc.examples.gautosar.codegen.ui.propertyPages.ecucOutlets"; //$NON-NLS-1$

	public EcucOutletsPreferencePage() {
		super(AutosarNature.ID, GRID);
	}

	@Override
	protected String getPreferencePageID() {
		return PREFERENCE_PAGE_ID;
	}

	@Override
	protected String getPropertyPageID() {
		return PROPERTY_PAGE_ID;
	}

}
