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
package org.artop.ecuc.examples.autosar442.accessors.check;

import java.math.BigInteger;
import java.util.regex.Pattern;

import org.artop.ecuc.autosar442.accessors.Dem;
import org.artop.ecuc.autosar442.accessors.EcucValueAccessor442Factory;
import org.artop.ecuc.autosar442.accessors.NvM;
import org.artop.ecuc.autosar442.accessors.NvM.NvMBlockDescriptor;
import org.artop.ecuc.gautosar.accessors.check.AbstractEcucValueAccessorCheckValidator;
import org.eclipse.core.runtime.Assert;
import org.eclipse.sphinx.emf.check.Check;

import autosar40.ecucdescription.EcucModuleConfigurationValues;
import autosar40.ecucdescription.EcucdescriptionPackage;
import gautosar.ggenericstructure.ginfrastructure.GinfrastructurePackage;

public class EcucValueAccessor442CheckValidator extends AbstractEcucValueAccessorCheckValidator {

	public EcucValueAccessor442CheckValidator() {
		super(EcucValueAccessor442Factory.INSTANCE);
	}

	private static final Pattern ILLEGAL_CHARACTERS_PATTERN = Pattern.compile("[ \\t\\.,;]"); //$NON-NLS-1$

	@Check(constraint = "DemShortNameNotValid", categories = { "Category1" })
	void checkDemShortName(Dem dem) {
		Assert.isNotNull(dem);

		if (!hasValidShortName(dem.getShortName())) {
			issue(dem, GinfrastructurePackage.Literals.GREFERRABLE__GSHORT_NAME);
		}
	}

	@Check(constraint = "NvMShortNameNotValid", categories = { "Category1" })
	void checkNvMShortName(NvM nvm) {
		Assert.isNotNull(nvm);

		if (!hasValidShortName(nvm.getShortName())) {
			issue(nvm, GinfrastructurePackage.Literals.GREFERRABLE__GSHORT_NAME);
		}
	}

	@Check(constraint = "NvMBlockJobPriorityNotValid", categories = { "Category2" })
	void checkNvMBlockJobPriority(NvM nvm) {
		Assert.isNotNull(nvm);

		for (NvMBlockDescriptor nvMBlockDescriptor : nvm.getNvMBlockDescriptors()) {
			if (new BigInteger("2").compareTo(nvMBlockDescriptor.getNvMBlockJobPriority()) < 0) { //$NON-NLS-1$
				issue(nvMBlockDescriptor, EcucdescriptionPackage.Literals.ECUC_NUMERICAL_PARAM_VALUE__VALUE);
			}
		}
	}

	@Check(constraint = "ShortNameNotValid", categories = { "Category1" })
	void checkModuleConfigurationShortName(EcucModuleConfigurationValues moduleConf) {
		Assert.isNotNull(moduleConf);

		if (!hasValidShortName(moduleConf.getShortName())) {
			issue(moduleConf, GinfrastructurePackage.Literals.GREFERRABLE__GSHORT_NAME);
		}
	}

	private boolean hasValidShortName(String shortName) {
		return !ILLEGAL_CHARACTERS_PATTERN.matcher(shortName).find();
	}
}