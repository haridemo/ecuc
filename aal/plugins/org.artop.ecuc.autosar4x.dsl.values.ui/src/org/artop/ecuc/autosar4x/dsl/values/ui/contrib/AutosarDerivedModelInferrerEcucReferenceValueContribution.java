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
package org.artop.ecuc.autosar4x.dsl.values.ui.contrib;

import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.InstanceReference;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Reference;
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.ReferenceValue;
import org.artop.ecuc.autosar4x.dsl.values.referencesapi.AbstractDerivedModelInferrerEcucReferenceValueContribution;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.util.EcoreUtil;

import autosar40.ecucdescription.EcucReferenceValue;
import autosar40.ecucparameterdef.EcucInstanceReferenceDef;
import autosar40.genericstructure.abstractstructure.AtpFeature;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;

public class AutosarDerivedModelInferrerEcucReferenceValueContribution extends AbstractDerivedModelInferrerEcucReferenceValueContribution {

	@Override
	public EcucReferenceValue toEcucReferenceValue(Reference r) {
		ReferenceValue value = r.getValue();
		if (r.getDefinition() instanceof EcucInstanceReferenceDef) {
			// TODO
		} else if (value instanceof ReferenceValue) {
			EObject modeledValue = value.getContainer();
			if (modeledValue == null) {
				return null;
			}
			if (modeledValue.eIsProxy()) {
				modeledValue = EcoreUtil.resolve(modeledValue, r);
			}
			if (modeledValue instanceof Identifiable) {
				EcucReferenceValue result = createEcucReferenceValue(r, (Identifiable) modeledValue);

				return result;
			} else {

				return null;
			}
		}
		return null;
	}

	@Override
	public AtpFeature toAtpTargetFeature(InstanceReference r, EObject o) {
		if (o instanceof AtpFeature) {
			return (AtpFeature) o;
		}
		return null;
	}

	@Override
	public AtpFeature toAtpContextFeature(InstanceReference r, EObject o, int index) {
		if (o instanceof AtpFeature) {
			return (AtpFeature) o;
		}
		return null;
	}

}
