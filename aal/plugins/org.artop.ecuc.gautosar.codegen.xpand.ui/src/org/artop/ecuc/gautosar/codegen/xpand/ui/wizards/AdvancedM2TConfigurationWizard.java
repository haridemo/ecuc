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

import java.util.List;

import org.artop.ecuc.gautosar.codegen.xpand.ui.wizards.pages.AdvancedXpandConfigurationPage;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.sphinx.xtendxpand.ui.wizards.M2TConfigurationWizard;
import org.eclipse.sphinx.xtendxpand.ui.wizards.pages.XpandConfigurationPage;
import org.eclipse.xtend.typesystem.MetaModel;

public class AdvancedM2TConfigurationWizard extends M2TConfigurationWizard {

	public AdvancedM2TConfigurationWizard(EObject modelObject, List<MetaModel> metaModels) {
		super(modelObject, metaModels);
	}

	@Override
	protected XpandConfigurationPage createXpandConfigurationPage() {
		AdvancedXpandConfigurationPage xpandPage = new AdvancedXpandConfigurationPage("Configuration"); //$NON-NLS-1$
		xpandPage.init(modelObject, typeSystem, getOutletsPreference(), getDefaultOutlet());
		return xpandPage;
	}
}
