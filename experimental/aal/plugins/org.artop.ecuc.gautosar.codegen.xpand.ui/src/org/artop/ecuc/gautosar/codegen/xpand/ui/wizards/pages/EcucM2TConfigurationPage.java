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

import gautosar.gecucdescription.GModuleConfiguration;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

import org.artop.aal.workspace.ui.preferences.AutosarPreferenceMessages;
import org.artop.aal.workspace.ui.preferences.PreferenceAndPropertyPage;
import org.artop.ecuc.gautosar.codegen.xpand.ui.preferences.EcucCodeGenerationPreferencePage;
import org.eclipse.core.resources.IProject;
import org.eclipse.jface.preference.PreferenceDialog;
import org.eclipse.sphinx.xpand.ExecutionContextRequest;
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

	public EcucM2TConfigurationPage(String pageName) {
		super(pageName);
	}

	@Override
	protected void createTemplateBlock(Composite parent) {
		if (modelObject instanceof GModuleConfiguration) {
			super.createTemplateBlock(parent);
		} else {
			createTemplateTableViewer(parent);
		}
	}

	// TODO (aakar)Create the template table viewer here
	protected void createTemplateTableViewer(Composite parent) {

	}

	@Override
	protected void createOutputBlock(Composite parent) {

		Group outputGroup = new Group(parent, SWT.SHADOW_NONE);
		outputGroup.setText(Messages.label_output);
		outputGroup.setLayoutData(new GridData(SWT.FILL, SWT.FILL, true, false));

		GridLayout outputGroupLayout = new GridLayout();
		outputGroupLayout.verticalSpacing = 10;
		outputGroup.setLayout(outputGroupLayout);

		Link link = createLink(outputGroup, AutosarPreferenceMessages.AutosarPreferencePage_configureProjectSpecificSettings);
		link.setLayoutData(new GridData(GridData.END, GridData.END, true, true));
	}

	@Override
	public Collection<ExecutionContextRequest> getExecutionContextRequests() {
		if (modelObject instanceof GModuleConfiguration) {
			return super.getExecutionContextRequests();
		}
		// TODO (aakar) Create a collection of requests from template table viewer
		return Collections.emptyList();
	}

	@Override
	protected boolean isOutputBlockComplete() {
		return true;
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
			dialog.open();
		}
	}
}
