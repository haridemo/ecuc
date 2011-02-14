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

import java.util.HashMap;
import java.util.Map;

import org.artop.aal.workspace.ui.preferences.AutosarPreferenceMessages;
import org.artop.aal.workspace.ui.preferences.PreferenceAndPropertyPage;
import org.artop.ecuc.codegen.xpand.preferences.ProjectOutletProvider;
import org.artop.ecuc.gautosar.codegen.xpand.ui.OutletsBlock;
import org.artop.ecuc.gautosar.codegen.xpand.ui.preferences.EcucCodeGenerationPreferencePage;
import org.eclipse.core.resources.IProject;
import org.eclipse.jface.preference.PreferenceDialog;
import org.eclipse.jface.window.Window;
import org.eclipse.sphinx.xpand.ui.internal.messages.Messages;
import org.eclipse.sphinx.xpand.ui.wizards.pages.M2TConfigurationPage;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Group;
import org.eclipse.swt.widgets.Link;
import org.eclipse.ui.dialogs.PreferencesUtil;

@SuppressWarnings("restriction")
public class EcucM2TConfigurationPage extends M2TConfigurationPage {

	protected OutletsBlock outletBlock;
	protected ProjectOutletProvider outletProvider;

	public EcucM2TConfigurationPage(String pageName) {
		super(pageName);
	}

	@Override
	protected void createOutputBlock(Composite parent) {

		Group outputGroup = new Group(parent, SWT.SHADOW_NONE);
		outputGroup.setText(Messages.label_output);
		outputGroup.setLayoutData(new GridData(SWT.FILL, SWT.NONE, true, false));

		GridLayout outputGroupLayout = new GridLayout();
		outputGroupLayout.verticalSpacing = 10;
		outputGroup.setLayout(outputGroupLayout);

		Link link = createLink(outputGroup, AutosarPreferenceMessages.AutosarPreferencePage_configureProjectSpecificSettings);
		link.setLayoutData(new GridData(GridData.HORIZONTAL_ALIGN_END));

		outletProvider = new ProjectOutletProvider(getContextProject());
		outletBlock = new OutletsBlock(outputGroup, getShell(), outletProvider);
		outletBlock.setEnabled(false);
	}

	protected Link createLink(Composite composite, String text) {
		Link link = new Link(composite, SWT.NONE);
		link.setFont(composite.getFont());
		link.setText("<A>" + text + "</A>"); //$NON-NLS-1$//$NON-NLS-2$
		link.addSelectionListener(new SelectionListener() {
			public void widgetSelected(SelectionEvent e) {
				doLinkActivated((Link) e.widget);
			}

			public void widgetDefaultSelected(SelectionEvent e) {
				doLinkActivated((Link) e.widget);
			}
		});
		return link;
	}

	protected void doLinkActivated(Link link) {
		Map<String, Object> data = new HashMap<String, Object>();
		data.put(PreferenceAndPropertyPage.DATA_NO_LINK, Boolean.TRUE);
		openProjectProperties(getContextProject(), data);
	}

	protected void openProjectProperties(IProject project, Object data) {
		String id = EcucCodeGenerationPreferencePage.PROP_PAGE_ID;
		if (id != null) {
			PreferenceDialog dialog = PreferencesUtil.createPropertyDialogOn(getShell(), project, id, new String[] { id }, data);
			if (dialog.open() == Window.OK) {
				outletBlock.getTableViewer().refresh();
			}
		}
	}

	@Override
	public void dispose() {
		super.dispose();
		outletProvider.dispose();
	}
}
