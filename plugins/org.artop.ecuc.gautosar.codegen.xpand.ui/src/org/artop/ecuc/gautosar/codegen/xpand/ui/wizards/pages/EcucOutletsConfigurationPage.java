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
package org.artop.ecuc.gautosar.codegen.xpand.ui.wizards.pages;

import org.artop.ecuc.gautosar.codegen.xpand.ui.preferences.IOutletsPreferenceConstants;
import org.eclipse.sphinx.xtendxpand.outlet.ExtendedOutlet;
import org.eclipse.sphinx.xtendxpand.preferences.OutletsPreference;
import org.eclipse.sphinx.xtendxpand.ui.outlet.providers.OutletProvider;
import org.eclipse.sphinx.xtendxpand.ui.wizards.pages.OutletsConfigurationPage;

public class EcucOutletsConfigurationPage extends OutletsConfigurationPage {

	public EcucOutletsConfigurationPage(String pageName, String enableText, OutletsPreference outletsPreference) {
		super(pageName, enableText, outletsPreference);
	}

	@Override
	protected OutletProvider createOutletProvider() {
		OutletProvider outletProvider = new OutletProvider(getOutletsPreference());
		for (ExtendedOutlet outlet : IOutletsPreferenceConstants.ECUC_OUTLETS) {
			outletProvider.addOutlet(outlet);
		}
		return outletProvider;
	}

	@Override
	protected void restoreDefaults() {
		super.restoreDefaults();
		for (ExtendedOutlet outlet : IOutletsPreferenceConstants.ECUC_OUTLETS) {
			OutletProvider outletProvider = getOutletProvider();
			if (outletProvider != null) {
				outletProvider.addOutlet(outlet);
			}
		}
	}
}
