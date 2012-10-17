/**
 * <copyright>
 * 
 * Copyright (c) {contributing company name} and others.
 * All rights reserved. This program and the accompanying materials 
 * are made available under the terms of the Artop Software License 
 * Based on Released AUTOSAR Material (ASLR) which accompanies this 
 * distribution, and is available at http://www.artop.org/aslr.html
 * 
 * Contributors: 
 *     see4sys - Initial API and implementation
 * 
 * </copyright>
 */
package org.artop.ecuc.gautosar.codegen.xpand.ui.wizards.pages;

import org.artop.ecuc.gautosar.codegen.xpand.ui.groups.ExtendedTemplateGroup;
import org.artop.ecuc.gautosar.codegen.xpand.ui.internal.messages.Messages;
import org.eclipse.sphinx.platform.ui.fields.IField;
import org.eclipse.sphinx.platform.ui.groups.IGroupListener;
import org.eclipse.sphinx.xtendxpand.ui.wizards.pages.XpandConfigurationPage;
import org.eclipse.swt.widgets.Composite;

/**
 * Extended Xpand configuration page that inherits from {@link XpandConfigurationPage} in order to extend creation of
 * {@linkplain org.eclipse.sphinx.xtendxpand.ui.groups.TemplateGroup Template Group} to let one default Xpand template
 * be suggested to user when wizard opens.
 */
public class ExtendedXpandConfigurationPage extends XpandConfigurationPage {

	/**
	 * Constructor.
	 * 
	 * @param pageName
	 *            The name of this page.
	 */
	public ExtendedXpandConfigurationPage(String pageName) {
		super(pageName);
	}

	/**
	 * Overrides default implementation in order to instantiate a {@link ExtendedTemplateGroup} that has the capability
	 * to suggest default applicable Xpand template, if any.
	 * 
	 * @param parent
	 *            The parent composite within which group must be created.
	 * @see org.eclipse.sphinx.xtendxpand.ui.wizards.pages.XpandConfigurationPage#createTemplateGroup(org.eclipse.swt.widgets.Composite)
	 */
	@Override
	protected void createTemplateGroup(Composite parent) {
		templateGroup = new ExtendedTemplateGroup(Messages.label_xpandTemplateGroupName, modelObject, typeSystem, getDialogSettings());
		templateGroup.createContent(parent, 3);
		templateGroup.addGroupListener(new IGroupListener() {
			public void groupChanged(IField field) {
				getWizard().getContainer().updateButtons();
			}
		});
	}
}
