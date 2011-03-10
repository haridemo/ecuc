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
package org.artop.ecuc.gautosar.codegen.xpand.ui.wizards;

import org.artop.ecuc.gautosar.codegen.xpand.ui.internal.Activator;
import org.artop.ecuc.gautosar.codegen.xpand.ui.wizards.pages.EcucM2TConfigurationPage;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.sphinx.xpand.ui.internal.messages.Messages;
import org.eclipse.sphinx.xpand.ui.wizards.M2TConfigurationWizard;
import org.eclipse.sphinx.xpand.ui.wizards.pages.M2TConfigurationPage;
import org.eclipse.xtend.typesystem.MetaModel;

public class EcucM2TConfigurationWizard extends M2TConfigurationWizard {

	public EcucM2TConfigurationWizard(EObject modelObject, MetaModel metaModel) {
		super(modelObject, metaModel);
		setDialogSettings(Activator.getDefault().getDialogSettings());
	}

	@Override
	protected M2TConfigurationPage createM2TConfigurationPage() {
		EcucM2TConfigurationPage m2TPage = new EcucM2TConfigurationPage(Messages.label_configPageName);
		m2TPage.init(modelObject, metaModel, getOutletsPreference(), getDefaultOutlet());
		return m2TPage;
	}
}
