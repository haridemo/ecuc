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

import org.artop.aal.workspace.ui.wizards.pages.AutosarProjectWizardFirstPage;
import org.artop.ecl.platform.ui.util.SWTUtil;
import org.artop.ecuc.codegen.xpand.output.ExtendedOutlet;
import org.artop.ecuc.codegen.xpand.preferences.ProjectOutletProvider;
import org.artop.ecuc.gautosar.codegen.xpand.ui.OutletsBlock;
import org.eclipse.swt.SWT;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Group;
import org.eclipse.swt.widgets.Listener;

public class BSWPlatformProjectWizardFirstPage extends AutosarProjectWizardFirstPage {

	private Button restoreDefaultButton;

	public BSWPlatformProjectWizardFirstPage(String pageName) {
		super(pageName);
	}

	ProjectOutletProvider outletProvider;
	OutletsBlock outletBlock;

	@Override
	protected void createAdditionalGroups(Composite parent) {
		Group group = new Group(parent, SWT.None);
		group.setText("Outlets");
		GridLayout groupLayout = new GridLayout();
		groupLayout.numColumns = 2;
		group.setLayout(groupLayout);
		group.setLayoutData(new GridData(GridData.FILL_HORIZONTAL));

		outletProvider = new ProjectOutletProvider();

		outletBlock = new OutletsBlock(group, getShell(), outletProvider);

		restoreDefaultButton = SWTUtil.createButton(outletBlock.getButtonsComposite(), "Restore Defaults", SWT.PUSH); //$NON-NLS-1$
		restoreDefaultButton.addListener(SWT.Selection, new Listener() {

			public void handleEvent(Event event) {
				if (event.widget == restoreDefaultButton) {
					restoreDefaults();
				}
			}
		});
	}

	protected void restoreDefaults() {
		outletProvider.setToDefault();
		outletBlock.getTableViewer().refresh();
	}

	public Collection<ExtendedOutlet> getOutlets() {
		return outletProvider.getOutlets();
	}
}
