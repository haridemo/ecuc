/**
 * <copyright>
 * 
 * Copyright (c) See4sys, Tata Elxsi and others.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of the Artop Software License Based on AUTOSAR
 * Released Material (ASLR) which accompanies this distribution, and is
 * available at http://www.artop.org/aslr.html
 * 
 * Contributors: 
 *     Tata Elxsi - Initial API and implementation
 *     See4sys - API and implementation.
 * 
 * </copyright>
 */
package org.artop.ecuc.autosar40.initializers;

import gautosar.gecucdescription.GConfigReferenceValue;
import gautosar.gecucdescription.GModuleConfiguration;
import gautosar.gecucdescription.GParameterValue;
import gautosar.ggenericstructure.ginfrastructure.GARObject;

import org.artop.ecuc.gautosar.initializers.AbstractGenerateModuleConfiguration;
import org.eclipse.emf.ecore.EClass;

import autosar40.ecucdescription.EcucAddInfoParamValue;
import autosar40.ecucdescription.EcucInstanceReferenceValue;
import autosar40.ecucdescription.EcucNumericalParamValue;
import autosar40.ecucdescription.EcucReferenceValue;
import autosar40.ecucdescription.EcucTextualParamValue;
import autosar40.genericstructure.generaltemplateclasses.anyinstanceref.AnyInstanceRef;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.NumericalValueVariationPoint;
import autosar40.util.Autosar40Factory;

public class GenerateModuleConfiguration extends AbstractGenerateModuleConfiguration {

	public GenerateModuleConfiguration(GModuleConfiguration initialModuleConfiguration) {
		super(initialModuleConfiguration);
	}

	public GenerateModuleConfiguration() {
		super(null);
	}

	@Override
	protected GARObject createInstance(EClass eClass) {
		return (GARObject) Autosar40Factory.eINSTANCE.create(eClass);
	}

	@Override
	protected EClass getDescription(EClass definition) {
		return DefinitionDescriptionMap40.getDescription(definition);
	}

	@Override
	protected Object getParameterValue(GParameterValue parameterValue) {
		if (parameterValue instanceof EcucNumericalParamValue) {
			return ((EcucNumericalParamValue) parameterValue).getValue();
		}

		if (parameterValue instanceof EcucTextualParamValue) {
			return ((EcucTextualParamValue) parameterValue).getValue();
		}

		if (parameterValue instanceof EcucAddInfoParamValue) {
			return ((EcucAddInfoParamValue) parameterValue).getValue();
		}

		return null;
	}

	@Override
	protected void setParameterValue(GParameterValue parameterValue, Object value) {
		if (parameterValue instanceof EcucNumericalParamValue) {
			((EcucNumericalParamValue) parameterValue).setValue((NumericalValueVariationPoint) value);
		}

		if (parameterValue instanceof EcucTextualParamValue) {
			((EcucTextualParamValue) parameterValue).setValue((String) value);
		}

		if (parameterValue instanceof EcucAddInfoParamValue) {
			((EcucAddInfoParamValue) parameterValue).setValue((DocumentationBlock) value);
		}
	}

	@Override
	protected Object getReferenceValue(GConfigReferenceValue referenceValue) {
		if (referenceValue instanceof EcucReferenceValue) {
			return ((EcucReferenceValue) referenceValue).getValue();
		}

		if (referenceValue instanceof EcucInstanceReferenceValue) {
			return ((EcucInstanceReferenceValue) referenceValue).getValue();
		}

		return null;
	}

	@Override
	protected void setReferenceValue(GConfigReferenceValue referenceValue, Object value) {
		if (referenceValue instanceof EcucReferenceValue) {
			((EcucReferenceValue) referenceValue).setValue((Identifiable) value);
		}

		if (referenceValue instanceof EcucInstanceReferenceValue) {
			((EcucInstanceReferenceValue) referenceValue).setValue((AnyInstanceRef) value);
		}
	}

}
