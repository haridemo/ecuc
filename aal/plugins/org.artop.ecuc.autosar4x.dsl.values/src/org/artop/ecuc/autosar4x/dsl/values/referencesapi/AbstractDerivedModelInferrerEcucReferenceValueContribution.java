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
package org.artop.ecuc.autosar4x.dsl.values.referencesapi;

import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EcucValuesDslPackage;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Reference;

import autosar40.ecucdescription.EcucReferenceValue;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.util.Autosar40Factory;

/**
 * Base class for IDerivedModelInferrerEcucReferenceValueContributions
 *
 * @author Christian Dietrich
 */
public abstract class AbstractDerivedModelInferrerEcucReferenceValueContribution implements IDerivedModelInferrerEcucReferenceValueContribution {

	protected EcucReferenceValue createEcucReferenceValue(Reference r, Identifiable inst) {
		final EcucReferenceValue result = Autosar40Factory.eINSTANCE.createEcucReferenceValue();
		if (r.eIsSet(EcucValuesDslPackage.Literals.CONTAINED_ELEMENT__INDEX)) {
			result.setIndex(Long.valueOf(r.getIndex()));
		}
		result.setDefinition(r.getDefinition());
		result.setValue(inst);
		return result;
	}

}
