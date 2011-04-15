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
import java.util.MissingResourceException;

import org.artop.ecuc.gautosar.codegen.xpand.ui.preferences.IEcucCodeGenerationPreferenceConstants;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.sphinx.platform.ui.fields.IField;
import org.eclipse.sphinx.platform.ui.fields.IFieldListener;
import org.eclipse.sphinx.platform.ui.fields.SelectionButtonField;
import org.eclipse.sphinx.platform.ui.util.SWTUtil;
import org.eclipse.sphinx.platform.ui.wizards.pages.AbstractWizardPage;
import org.eclipse.sphinx.xpand.outlet.ExtendedOutlet;
import org.eclipse.sphinx.xpand.preferences.OutletsPreference;
import org.eclipse.sphinx.xpand.ui.groups.OutletsGroup;
import org.eclipse.sphinx.xpand.ui.outlet.providers.OutletProvider;
import org.eclipse.swt.SWT;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;

// TODO: move this class to Sphinx
public class OutletsConfigurationPage extends AbstractWizardPage {

	/**
	 * The enable button that allows showing or not Xtend/Xpand/Check support.
	 */
	private SelectionButtonField enableButton;

	/**
	 * The label text of the enable button that allows showing or not Xtend/Xpand/Check support.
	 */
	private String enableText;

	/**
	 * The outlet preference.
	 */
	private OutletsPreference outletsPreference;

	/**
	 * The outlet provider.
	 */
	private OutletProvider outletProvider;

	/**
	 * The outlets group.
	 */
	private OutletsGroup outletsGroup;

	/**
	 * Restore default button in this page.
	 */
	private Button restoreDefaultButton;

	public OutletsConfigurationPage(String pageName, String enableText, OutletsPreference outletsPreference) {
		super(pageName);
		this.enableText = enableText;
		this.outletsPreference = outletsPreference;
	}

	@Override
	protected void doCreateControl(Composite parent) {
		createOutletsGroupContent(parent);
	}

	protected void createOutletsGroupContent(Composite parent) {
		Composite parentComposite = new Composite(parent, SWT.NULL);
		parentComposite.setFont(parent.getFont());
		parentComposite.setLayout(new GridLayout(2, false));
		parentComposite.setLayoutData(new GridData(GridData.HORIZONTAL_ALIGN_FILL));

		// Allow user to add specific groups
		createAdditionalGroups(parentComposite);

		if (outletsPreference != null) {
			outletProvider = new OutletProvider(outletsPreference);
			for (ExtendedOutlet outlet : IEcucCodeGenerationPreferenceConstants.ECUC_OUTLETS) {
				outletProvider.addOutlet(outlet);
			}

			// Add button enable Xtend/Xpand/Check support
			if (enableText != null && enableText.length() > 0) {
				enableButton = new SelectionButtonField(SWT.CHECK);
			}
			if (enableText != null && enableText.length() > 0) {
				enableButton.setLabelText(enableText);
				enableButton.setSelection(true);
				enableButton.fillIntoGrid(parentComposite, 2);
				enableButton.addFieldListener(new IFieldListener() {
					public void dialogFieldChanged(IField field) {
						updateOutletsGroupEnableState(enableButton.isSelected());
					}
				});
			}

			// Add outlets group that allow Xtend/Xpand/Check support
			outletsGroup = new OutletsGroup("Outlets", outletProvider);
			outletsGroup.createContent(parentComposite, 2);
			restoreDefaultButton = SWTUtil.createButton(outletsGroup.getButtonsComposite(), "Restore Defaults", SWT.PUSH);
			restoreDefaultButton.addListener(SWT.Selection, new Listener() {
				public void handleEvent(Event event) {
					if (event.widget == restoreDefaultButton) {
						restoreDefaults();
					}
				}
			});

			// Display always the outlets group if no button
			if (enableButton == null) {
				updateOutletsGroupEnableState(true);
			}
		}

		setControl(parentComposite);
	}

	/**
	 * This is a hook method for subclasses to add additional Groups to their pages.
	 * 
	 * @param parent
	 *            a composite.
	 */
	protected void createAdditionalGroups(Composite parent) {
		// Adds nothing by default
	}

	protected void updateOutletsGroupEnableState(boolean enabled) {
		if (outletsGroup != null) {
			outletsGroup.setEnabled(enabled);
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

	protected OutletsPreference getOutletsPreference() {
		return outletsPreference;
	}

	@Override
	protected String doGetDescription() throws MissingResourceException {
		return "Configure the outlets";
	}

	@Override
	protected String doGetTitle() throws MissingResourceException {
		return "Outlets Configuration";
	}

	@Override
	protected boolean doIsPageComplete() {
		return true;
	}

	@Override
	protected IStatus doValidateRules() {
		return null;
	}
}
