/**
 * <copyright>
 * 
 * Copyright (c) 2011 See4sys, itemis and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: 
 *     See4sys - Initial API and implementation
 *     itemis - [343844] Enable multiple Xtend MetaModels to be configured on BasicM2xAction, M2xConfigurationWizard, and Xtend/Xpand/CheckJob
 *     itemis - [357813] Risk of NullPointerException when transforming models using M2MConfigurationWizard
 *     itemis - [358706] Default output path never initialized when opening M2TConfigurationWizard
 *      
 * </copyright>
 */
package org.artop.ecuc.gautosar.codegen.xpand.ui.wizards.pages;

import java.util.Collection;

import org.artop.ecuc.gautosar.codegen.xpand.ui.groups.TemplateTableGroup;
import org.artop.ecuc.gautosar.codegen.xpand.ui.internal.messages.Messages;
import org.artop.ecuc.gautosar.codegen.xpand.ui.providers.XpandEvaluationRequestDescriptorProvider;
import org.eclipse.sphinx.platform.ui.fields.IField;
import org.eclipse.sphinx.platform.ui.groups.IGroupListener;
import org.eclipse.sphinx.xtendxpand.XpandEvaluationRequest;
import org.eclipse.sphinx.xtendxpand.ui.wizards.pages.XpandConfigurationPage;
import org.eclipse.swt.widgets.Composite;

public class AdvancedXpandConfigurationPage extends XpandConfigurationPage {

	protected TemplateTableGroup templateTableGroup;

	public AdvancedXpandConfigurationPage(String pageName) {
		super(pageName);
	}

	/**
	 * Creates the template group field and load dialog settings.
	 */
	@Override
	protected void createTemplateGroup(Composite parent) {
		templateTableGroup = new TemplateTableGroup(Messages.label_templateTableGroupName, new XpandEvaluationRequestDescriptorProvider(modelObject),
				typeSystem, getDialogSettings());
		templateTableGroup.createContent(parent, 3);
		templateTableGroup.addGroupListener(new IGroupListener() {

			public void groupChanged(IField field) {
				getWizard().getContainer().updateButtons();
			}
		});
	}

	@Override
	public Collection<XpandEvaluationRequest> getXpandEvaluationRequests() {
		return templateTableGroup.getXpandEvaluationRequests();
	}

	@Override
	protected boolean doIsPageComplete() {
		return templateTableGroup.isGroupComplete() && outputGroup.isGroupComplete();
	}

	@Override
	public void finish() {
		super.finish();
		if (templateTableGroup != null) {
			templateTableGroup.saveGroupSettings();
		}
	}
}
