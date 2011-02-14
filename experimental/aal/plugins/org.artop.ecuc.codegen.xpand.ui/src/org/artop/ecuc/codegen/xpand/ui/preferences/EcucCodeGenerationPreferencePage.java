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
package org.artop.ecuc.codegen.xpand.ui.preferences;

import org.artop.aal.workspace.ui.preferences.PreferenceAndPropertyPage;
import org.artop.ecuc.codegen.xpand.preferences.ProjectOutletProvider;
import org.artop.ecuc.codegen.xpand.ui.OutletsBlock;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.ProjectScope;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.viewers.TableViewer;
import org.eclipse.swt.SWT;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Group;
import org.eclipse.ui.preferences.ScopedPreferenceStore;

public class EcucCodeGenerationPreferencePage extends PreferenceAndPropertyPage {

	public static final String PROP_PAGE_ID = "ecuc.codegen.propertyPages.ecucCodeGen"; //$NON-NLS-1$

	private Group fOutletsGroup;

	private TableViewer fTableViewer;

	private ProjectOutletProvider fOutletProvider;

	public EcucCodeGenerationPreferencePage() {
		super(GRID);
	}

	@Override
	protected IPreferenceStore doGetPreferenceStore() {
		if (isProjectPreferencePage()) {
			ScopedPreferenceStore scopedPreferenceStore = new ScopedPreferenceStore(new ProjectScope((IProject) getElement()),
					org.artop.ecuc.codegen.xpand.Activator.getPlugin().getBundle().getSymbolicName(), org.artop.aal.common.Activator.getPlugin()
							.getSymbolicName());
			return scopedPreferenceStore;
		}
		return null;
	}

	@Override
	protected void addFields(Composite parent) {
		addOutletsGroup(parent);
	}

	protected void addOutletsGroup(Composite parent) {
		fOutletsGroup = new Group(parent, SWT.None);
		fOutletsGroup.setText("Outlets"); //$NON-NLS-1$

		GridLayout layout = new GridLayout();
		layout.numColumns = 2;
		layout.marginHeight = 5;
		layout.marginWidth = 5;
		fOutletsGroup.setLayout(layout);
		GridData gridData = new GridData(GridData.FILL, GridData.FILL, true, true);
		fOutletsGroup.setLayoutData(gridData);

		Composite innerParent = new Composite(fOutletsGroup, SWT.NONE);
		GridLayout innerLayout = new GridLayout();
		innerLayout.numColumns = 2;
		innerLayout.marginHeight = 0;
		innerLayout.marginWidth = 0;
		innerParent.setLayout(innerLayout);
		GridData gd = new GridData(GridData.FILL_BOTH);
		gd.horizontalSpan = 2;
		innerParent.setLayoutData(gd);

		fOutletProvider = new ProjectOutletProvider((IProject) getElement());

		OutletsBlock outletsBlock = new OutletsBlock(innerParent, getShell(), fOutletProvider);
		fTableViewer = outletsBlock.getTableViewer();

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
		fOutletProvider.setToDefault();
		fTableViewer.refresh();
		super.performDefaults();
	}

	@Override
	public boolean performOk() {
		fOutletProvider.store();
		return super.performOk();
	}

	@Override
	protected void performApply() {
		fOutletProvider.store();
		super.performApply();
	}

	@Override
	public void dispose() {
		super.dispose();
		fOutletProvider.dispose();
	}

	@Override
	protected void adjustGridLayout() {
		super.adjustGridLayout();
		if (((GridLayout) getFieldEditorParent().getLayout()).numColumns == 0) {
			((GridLayout) getFieldEditorParent().getLayout()).numColumns = 1;
		}
	}
}
