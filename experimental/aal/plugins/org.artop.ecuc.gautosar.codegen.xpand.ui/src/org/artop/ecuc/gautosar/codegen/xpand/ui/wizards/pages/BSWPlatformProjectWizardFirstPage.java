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

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

import org.artop.aal.workspace.ui.wizards.pages.AutosarProjectWizardFirstPage;
import org.eclipse.sphinx.platform.ui.util.SWTUtil;
import org.eclipse.sphinx.xpand.outlet.ExtendedOutlet;
import org.eclipse.sphinx.xpand.preferences.OutletsPreference;
import org.eclipse.sphinx.xpand.ui.blocks.OutletsBlock;
import org.eclipse.sphinx.xpand.ui.providers.OutletProvider;
import org.eclipse.swt.SWT;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Group;
import org.eclipse.swt.widgets.Listener;

public class BSWPlatformProjectWizardFirstPage extends AutosarProjectWizardFirstPage {

	private OutletsPreference outletsPreference;
	private OutletProvider outletProvider;
	private OutletsBlock outletsBlock;

	private Button restoreDefaultButton;

	public BSWPlatformProjectWizardFirstPage(String pageName, OutletsPreference outletsPreference) {
		super(pageName);
		this.outletsPreference = outletsPreference;
	}

	@Override
	protected void createAdditionalGroups(Composite parent) {
		if (outletsPreference != null) {
			Group group = new Group(parent, SWT.None);
			group.setText("Outlets");
			GridLayout groupLayout = new GridLayout();
			groupLayout.numColumns = 2;
			group.setLayout(groupLayout);
			group.setLayoutData(new GridData(GridData.FILL_HORIZONTAL));

			outletProvider = new OutletProvider(outletsPreference);
			for (ExtendedOutlet outlet : getInitialNamedOutlets()) {
				outletProvider.addOutlet(outlet);
			}
			outletsBlock = new OutletsBlock(group, outletProvider, true);
			restoreDefaultButton = SWTUtil.createButton(outletsBlock.getButtonsComposite(), "Restore Defaults", SWT.PUSH);
			restoreDefaultButton.addListener(SWT.Selection, new Listener() {
				public void handleEvent(Event event) {
					if (event.widget == restoreDefaultButton) {
						restoreDefaults();
					}
				}
			});
		}
	}

	protected Collection<ExtendedOutlet> getInitialNamedOutlets() {
		Collection<ExtendedOutlet> outlets = new ArrayList<ExtendedOutlet>(2);
		outlets.add(new ExtendedOutlet("COUTLET", "${project_loc}/coutlet", false)); //$NON-NLS-1$ //$NON-NLS-2$
		outlets.add(new ExtendedOutlet("HOUTLET", "${project_loc}/houtlet", false)); //$NON-NLS-1$ //$NON-NLS-2$
		return outlets;
	}

	// TODO Make sure that this takes initialNamedOutlets() into account
	protected void restoreDefaults() {
		if (outletProvider != null) {
			outletProvider.setToDefault();
			outletsBlock.getTableViewer().refresh();
		}
	}

	public Collection<ExtendedOutlet> getOutlets() {
		return outletProvider != null ? outletProvider.getOutlets() : Collections.<ExtendedOutlet> emptyList();
	}
}
