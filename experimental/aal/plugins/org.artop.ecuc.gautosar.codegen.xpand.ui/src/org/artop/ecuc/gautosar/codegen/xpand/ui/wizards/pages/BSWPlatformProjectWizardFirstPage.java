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

import java.util.Collection;
import java.util.Collections;

import org.artop.aal.workspace.ui.wizards.pages.AutosarProjectWizardFirstPage;
import org.artop.ecuc.gautosar.codegen.xpand.ui.preferences.IEcucCodeGenerationPreferenceConstants;
import org.eclipse.sphinx.platform.ui.util.SWTUtil;
import org.eclipse.sphinx.xpand.outlet.ExtendedOutlet;
import org.eclipse.sphinx.xpand.preferences.OutletsPreference;
import org.eclipse.sphinx.xpand.ui.groups.OutletsGroup;
import org.eclipse.sphinx.xpand.ui.providers.OutletProvider;
import org.eclipse.swt.SWT;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;

public class BSWPlatformProjectWizardFirstPage extends AutosarProjectWizardFirstPage {

	private OutletsPreference outletsPreference;
	private OutletProvider outletProvider;
	private OutletsGroup outletsGroup;

	private Button restoreDefaultButton;

	public BSWPlatformProjectWizardFirstPage(String pageName, OutletsPreference outletsPreference) {
		super(pageName);
		this.outletsPreference = outletsPreference;
	}

	@Override
	protected void createAdditionalGroups(Composite parent) {
		if (outletsPreference != null) {
			outletProvider = new OutletProvider(outletsPreference);
			for (ExtendedOutlet outlet : IEcucCodeGenerationPreferenceConstants.ECUC_OUTLETS) {
				outletProvider.addOutlet(outlet);
			}
			outletsGroup = new OutletsGroup(parent, "Outlets", outletProvider, 2, true);
			restoreDefaultButton = SWTUtil.createButton(outletsGroup.getButtonsComposite(), "Restore Defaults", SWT.PUSH);
			restoreDefaultButton.addListener(SWT.Selection, new Listener() {
				public void handleEvent(Event event) {
					if (event.widget == restoreDefaultButton) {
						restoreDefaults();
					}
				}
			});
		}
	}

	protected void restoreDefaults() {
		if (outletProvider != null) {
			outletProvider.setToDefault();
			for (ExtendedOutlet outlet : IEcucCodeGenerationPreferenceConstants.ECUC_OUTLETS) {
				outletProvider.addOutlet(outlet);
			}
			outletsGroup.getTableViewer().refresh();
		}
	}

	public Collection<ExtendedOutlet> getOutlets() {
		return outletProvider != null ? outletProvider.getOutlets() : Collections.<ExtendedOutlet> emptyList();
	}
}
