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

import org.eclipse.emf.ecore.EObject;
import org.eclipse.sphinx.xtendxpand.outlet.ExtendedOutlet;
import org.eclipse.sphinx.xtendxpand.ui.wizards.M2TConfigurationWizard;
import org.eclipse.xtend.typesystem.MetaModel;

/**
 * Extended M2T Configuration wizard which has the capability to create directories (if not already existing) of outlets
 * whose protected region is set to <code>true</code>.
 */
public class ExtendedM2TConfigurationWizard extends M2TConfigurationWizard {

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
}
