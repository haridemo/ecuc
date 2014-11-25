/**
 * <copyright>
 *
 * Copyright (c) itemis and others.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of the Artop Software License Based on AUTOSAR
 * Released Material (ASLR) which accompanies this distribution, and is
 * available at http://www.artop.org/aslr.html
 *
 * Contributors:
 *     itemis - Initial API and implementation
 *
 * </copyright>
 */
package org.artop.ecuc.examples.autosar421.accessors.check;

import gautosar.ggenericstructure.ginfrastructure.GinfrastructurePackage;

import java.util.regex.Pattern;

import org.artop.ecuc.autosar421.accessors.Dem;
import org.artop.ecuc.autosar421.accessors.NvM;
import org.artop.ecuc.autosar421.accessors.NvM.NvMBlockDescriptor;
import org.eclipse.core.runtime.Assert;
import org.eclipse.sphinx.emf.check.AbstractCheckValidator;
import org.eclipse.sphinx.emf.check.Check;

import autosar40.ecucdescription.EcucdescriptionPackage;

public class EcucValueAccessor421CheckValidator extends AbstractCheckValidator {

	private static final Pattern ILLEGAL_CHARACTERS_PATTERN = Pattern.compile(".*[ \\t\\.,;].*"); //$NON-NLS-1$

	@Check(constraint = "DemShortNameNotValid", categories = { "Category1" })
	void checkDemShortName(Dem dem) {
		Assert.isNotNull(dem);

		if (!isValidShortName(dem.getShortName())) {
			issue(dem, GinfrastructurePackage.Literals.GREFERRABLE__GSHORT_NAME);
		}
	}

	@Check(constraint = "NvMShortNameNotValid", categories = { "Category1" })
	void checkNvMShortName(NvM nvm) {
		Assert.isNotNull(nvm);

		if (!isValidShortName(nvm.getShortName())) {
			issue(nvm, GinfrastructurePackage.Literals.GREFERRABLE__GSHORT_NAME);
		}
	}

	@Check(constraint = "NvMBlockJobPriorityNotValid", categories = { "Category2" })
	void checkNvMBlockJobPriority(NvM nvm) {
		Assert.isNotNull(nvm);

		for (NvMBlockDescriptor nvMBlockDescriptor : nvm.getNvMBlockDescriptors()) {
			if (nvMBlockDescriptor.getNvMBlockJobPriority() > 2) {
				issue(nvMBlockDescriptor, EcucdescriptionPackage.Literals.ECUC_NUMERICAL_PARAM_VALUE__VALUE);
			}
		}
	}

	private boolean isValidShortName(String shortName) {
		return !ILLEGAL_CHARACTERS_PATTERN.matcher(shortName).matches();
	}
}