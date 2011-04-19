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
package org.artop.ecuc.gautosar.codegen.xpand.ui.decorators;

import org.artop.ecuc.gautosar.codegen.xpand.ui.preferences.IEcucCodeGenerationPreferenceConstants;
import org.eclipse.sphinx.xpand.preferences.OutletsPreference;
import org.eclipse.sphinx.xtendxpand.ui.decorators.BasicOutletFolderLabelDecorator;

public class EcucOutletFolderLabelDecorator extends BasicOutletFolderLabelDecorator {

	@Override
	protected OutletsPreference getOutletsPreference() {
		return IEcucCodeGenerationPreferenceConstants.ECUC_OUTLETS_PREFERENCE;
	}
}
