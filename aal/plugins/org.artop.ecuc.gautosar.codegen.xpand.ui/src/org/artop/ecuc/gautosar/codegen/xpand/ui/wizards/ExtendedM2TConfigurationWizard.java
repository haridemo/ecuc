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

import java.io.File;
import java.util.Collection;
import java.util.List;

import org.artop.ecuc.gautosar.codegen.xpand.ui.wizards.pages.ExtendedXpandConfigurationPage;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.sphinx.xtendxpand.outlet.ExtendedOutlet;
import org.eclipse.sphinx.xtendxpand.ui.wizards.M2TConfigurationWizard;
import org.eclipse.sphinx.xtendxpand.ui.wizards.pages.XpandConfigurationPage;
import org.eclipse.xtend.typesystem.MetaModel;

/**
 * Extended M2T Configuration wizard which has the capability to create directories (if not already existing) of outlets
 * whose protected region is set to <code>true</code>.
 */
// FIXME This class should be deleted as soon as M2TConfigurationWizard will be able to create outlet directory when it
// does not already exist (which should be the case in the next Sphinx SDK build).
// FIXME Actually it should be kept for letting XpandConfigurationPage be extended (in order to provide the
// ExtendedTemplateGroup that automatically computes default applicable Xpand template).
public class ExtendedM2TConfigurationWizard extends M2TConfigurationWizard {

	/** The name of the Extended Xpand Configuration Page. */
	private static final String XPAND_CONFIGURATION_PAGE_NAME = "org.artop.ecuc.gautosar.codegen.xpand.ui.wizards.pages.ExtendedXpandConfigurationPage"; //$NON-NLS-1$

	/**
	 * Constructor.
	 * 
	 * @param modelObject
	 *            The model object from which M2T operation should be performed.
	 * @param metaModels
	 *            The meta-models to consider for this M2T operation.
	 */
	public ExtendedM2TConfigurationWizard(EObject modelObject, List<MetaModel> metaModels) {
		super(modelObject, metaModels);
	}

	/**
	 * Overrides default implementation to create outlet directory that does not already exist.
	 * 
	 * @param outlets
	 *            The outlets from which protected source paths must be aggregated.
	 * @return A string containing the paths of the directories containing protected source code; paths being separated
	 *         by commas.
	 * @see org.eclipse.sphinx.xtendxpand.ui.wizards.M2TConfigurationWizard#getPrSrcPaths(java.util.Collection)
	 */
	@Override
	protected String getPrSrcPaths(Collection<? extends ExtendedOutlet> outlets) {
		String prSrcPaths = super.getPrSrcPaths(outlets);

		// Split protected source paths (comma separated)
		String[] paths = prSrcPaths.split(","); //$NON-NLS-1$

		for (String path : paths) {
			File dir = new File(path);
			// Creates the folder if it does not exist already
			if (!dir.exists()) {
				dir.mkdir();
			}
		}

		return prSrcPaths;
	}

	@Override
	protected XpandConfigurationPage createXpandConfigurationPage() {
		// Override XpandConfigurationPage for providing a custom Xpand template group (ExtendedTemplateGroup)
		ExtendedXpandConfigurationPage xpandPage = new ExtendedXpandConfigurationPage(XPAND_CONFIGURATION_PAGE_NAME);
		xpandPage.init(modelObject, typeSystem, getOutletsPreference(), getDefaultOutlet());
		return xpandPage;
	}
}
