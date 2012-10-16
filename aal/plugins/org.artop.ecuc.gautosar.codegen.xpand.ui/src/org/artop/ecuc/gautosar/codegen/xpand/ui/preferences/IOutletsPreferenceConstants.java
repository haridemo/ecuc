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

	String COUTLET_DEFAULT_PATH = "${project_loc}/coutlet"; //$NON-NLS-1$

	String HOUTLET_DEFAULT_PATH = "${project_loc}/houtlet"; //$NON-NLS-1$

	String MAKEOUTLET_DEFAULT_PATH = "${project_loc}/makeoutlet"; //$NON-NLS-1$

	String COUTLET_DEFAULT_NAME = "COUTLET"; //$NON-NLS-1$

	String HOUTLET_DEFAULT_NAME = "HOUTLET"; //$NON-NLS-1$

	String MAKEOUTLET_DEFAULT_NAME = "MAKEOUTLET"; //$NON-NLS-1$

	ExtendedOutlet COUTLET = new ExtendedOutlet(COUTLET_DEFAULT_NAME, COUTLET_DEFAULT_PATH);

	ExtendedOutlet HOUTLET = new ExtendedOutlet(HOUTLET_DEFAULT_NAME, HOUTLET_DEFAULT_PATH);

	ExtendedOutlet MAKEOUTLET = new ExtendedOutlet(MAKEOUTLET_DEFAULT_NAME, MAKEOUTLET_DEFAULT_PATH);

	Collection<ExtendedOutlet> ECUC_OUTLETS = Arrays.asList(new ExtendedOutlet[] { COUTLET, HOUTLET, MAKEOUTLET });

	OutletsPreference ECUC_OUTLETS_PREFERENCE = OutletsPreference.INSTANCE;
}
