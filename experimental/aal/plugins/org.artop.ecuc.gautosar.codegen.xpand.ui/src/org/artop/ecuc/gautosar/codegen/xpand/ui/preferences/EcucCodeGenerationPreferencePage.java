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

import org.artop.aal.workspace.ui.preferences.PreferenceAndPropertyPage;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.ProjectScope;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.viewers.TableViewer;
import org.eclipse.sphinx.xpand.preferences.OutletsPreference;
import org.eclipse.sphinx.xpand.ui.blocks.OutletsBlock;
import org.eclipse.sphinx.xpand.ui.providers.OutletProvider;
import org.eclipse.swt.SWT;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Group;
import org.eclipse.ui.preferences.ScopedPreferenceStore;

// TODO Consider to add a generalized extract of this class to org.eclipse.sphinx.xpand.ui
public class EcucCodeGenerationPreferencePage extends PreferenceAndPropertyPage {

	public static final String PROP_PAGE_ID = "ecuc.codegen.propertyPages.ecucCodeGen"; //$NON-NLS-1$

	private Group outletsGroup;

	private TableViewer tableViewer;

	private OutletProvider outletProvider;

	public EcucCodeGenerationPreferencePage() {
		super(GRID);
	}

	public OutletsPreference getOutletsPreference() {
		return OutletsPreference.INSTANCE;
	}

	@Override
	protected IPreferenceStore doGetPreferenceStore() {
		if (isProjectPreferencePage()) {
			ScopedPreferenceStore scopedPreferenceStore = new ScopedPreferenceStore(new ProjectScope((IProject) getElement()), getOutletsPreference()
					.getQualifier());
			return scopedPreferenceStore;
		}
		return null;
	}

	@Override
	protected void addFields(Composite parent) {
		addOutletsGroup(parent);
	}

	protected void addOutletsGroup(Composite parent) {
		outletsGroup = new Group(parent, SWT.None);
		outletsGroup.setText("Outlets");

		GridLayout layout = new GridLayout();
		layout.numColumns = 2;
		layout.marginHeight = 5;
		layout.marginWidth = 5;
		outletsGroup.setLayout(layout);
		GridData gridData = new GridData(GridData.FILL, GridData.FILL, true, true);
		outletsGroup.setLayoutData(gridData);

		Composite innerParent = new Composite(outletsGroup, SWT.NONE);
		GridLayout innerLayout = new GridLayout();
		innerLayout.numColumns = 2;
		innerLayout.marginHeight = 0;
		innerLayout.marginWidth = 0;
		innerParent.setLayout(innerLayout);
		GridData gd = new GridData(GridData.FILL_BOTH);
		gd.horizontalSpan = 2;
		innerParent.setLayoutData(gd);

		outletProvider = new OutletProvider((IProject) getElement(), getOutletsPreference());

		OutletsBlock outletsBlock = new OutletsBlock(innerParent, outletProvider, true);
		tableViewer = outletsBlock.getTableViewer();

		Dialog.applyDialogFont(parent);
		innerParent.layout();
	}

	@Override
	protected void enablePreferenceContent(boolean useProjectSpecificSettings) {

	}

	@Override
	protected String getPreferencePageID() {
		return null;
	}

	@Override
	protected String getPropertyPageID() {
		return PROP_PAGE_ID;
	}

	@Override
	protected void performDefaults() {
		outletProvider.setToDefault();
		tableViewer.refresh();
		super.performDefaults();
	}

	@Override
	public boolean performOk() {
		outletProvider.store();
		return super.performOk();
	}

	@Override
	public void dispose() {
		outletProvider.dispose();
		super.dispose();
	}

	@Override
	protected void adjustGridLayout() {
		super.adjustGridLayout();
		if (((GridLayout) getFieldEditorParent().getLayout()).numColumns == 0) {
			((GridLayout) getFieldEditorParent().getLayout()).numColumns = 1;
		}
	}
}
