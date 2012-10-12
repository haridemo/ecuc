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

import org.eclipse.sphinx.xtendxpand.outlet.ExtendedOutlet;
import org.eclipse.sphinx.xtendxpand.preferences.OutletsPreference;

// TODO (aakar & seberle) Should be moved to a new non-UI plug-in named org.artop.ecuc.gautosar.codegen.xpand
public interface IOutletsPreferenceConstants {

	ExtendedOutlet COUTLET = new ExtendedOutlet("COUTLET", "${project_loc}/coutlet", true); //$NON-NLS-1$ //$NON-NLS-2$

	ExtendedOutlet HOUTLET = new ExtendedOutlet("HOUTLET", "${project_loc}/houtlet", true); //$NON-NLS-1$ //$NON-NLS-2$

	ExtendedOutlet MAKEOUTLET = new ExtendedOutlet("MAKEOUTLET", "${project_loc}/makeoutlet", true); //$NON-NLS-1$ //$NON-NLS-2$

	Collection<ExtendedOutlet> ECUC_OUTLETS = Arrays.asList(new ExtendedOutlet[] { COUTLET, HOUTLET, MAKEOUTLET });

	OutletsPreference ECUC_OUTLETS_PREFERENCE = OutletsPreference.INSTANCE;
}
