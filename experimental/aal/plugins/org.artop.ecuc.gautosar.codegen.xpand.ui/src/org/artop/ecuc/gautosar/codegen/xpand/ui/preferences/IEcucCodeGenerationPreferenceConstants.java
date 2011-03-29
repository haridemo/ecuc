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

import java.util.Arrays;
import java.util.Collection;

import org.eclipse.sphinx.xpand.outlet.ExtendedOutlet;
import org.eclipse.sphinx.xpand.preferences.OutletsPreference;

public interface IEcucCodeGenerationPreferenceConstants {

	ExtendedOutlet COUTLET = new ExtendedOutlet("COUTLET", "${project_loc}/coutlet"); //$NON-NLS-1$ //$NON-NLS-2$

	ExtendedOutlet HOUTLET = new ExtendedOutlet("HOUTLET", "${project_loc}/houtlet"); //$NON-NLS-1$ //$NON-NLS-2$

	Collection<ExtendedOutlet> ECUC_OUTLETS = Arrays.asList(new ExtendedOutlet[] { COUTLET, HOUTLET });

	OutletsPreference ECUC_OUTLETS_PREFERENCE = OutletsPreference.INSTANCE;
}
