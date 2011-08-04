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
package org.artop.ecuc.autosar3x.initializers;

import gautosar.gecucdescription.GConfigReferenceValue;
import gautosar.gecucdescription.GModuleConfiguration;
import gautosar.gecucdescription.GParameterValue;
import gautosar.gecucparameterdef.GConfigParameter;
import gautosar.ggenericstructure.ginfrastructure.GARObject;

import java.math.BigInteger;

import org.artop.ecuc.gautosar.initializers.AbstractGenerateModuleConfiguration;
import org.eclipse.core.runtime.Assert;
import org.eclipse.emf.ecore.EClass;

import autosar3x.ecucdescription.BooleanValue;
import autosar3x.ecucdescription.EnumerationValue;
import autosar3x.ecucdescription.FloatValue;
import autosar3x.ecucdescription.FunctionNameValue;
import autosar3x.ecucdescription.InstanceReferenceValue;
import autosar3x.ecucdescription.IntegerValue;
import autosar3x.ecucdescription.ParameterValue;
import autosar3x.ecucdescription.ReferenceValue;
import autosar3x.ecucdescription.StringValue;
import autosar3x.ecucdescription.instanceref.InstanceReferenceValueValue;
import autosar3x.ecucparameterdef.BooleanParamDef;
import autosar3x.ecucparameterdef.ConfigParameter;
import autosar3x.ecucparameterdef.EnumerationParamDef;
import autosar3x.ecucparameterdef.FloatParamDef;
import autosar3x.ecucparameterdef.FunctionNameDef;
import autosar3x.ecucparameterdef.IntegerParamDef;
import autosar3x.ecucparameterdef.StringParamDef;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.util.Autosar3xFactory;

public class GenerateModuleConfiguration extends AbstractGenerateModuleConfiguration {

	public GenerateModuleConfiguration(GModuleConfiguration initialModuleConfiguration) {
		super(initialModuleConfiguration);
	}

	public GenerateModuleConfiguration() {
		super(null);
	}

	@Override
	protected GARObject createInstance(EClass eClass) {
		return (GARObject) Autosar3xFactory.eINSTANCE.create(eClass);
	}

	@Override
	protected EClass getDescription(EClass definition) {
		return DefinitionDescriptionMap3x.getDescription(definition);
	}

	// TODO Should we take care of isSetValue ??
	@Override
	protected Object getParameterValue(GParameterValue parameterValue) {
		if (parameterValue instanceof BooleanValue) {
			return ((BooleanValue) parameterValue).getValue();
		}
		if (parameterValue instanceof IntegerValue) {
			return ((IntegerValue) parameterValue).getValue();
		}
		if (parameterValue instanceof FloatValue) {
			return ((FloatValue) parameterValue).getValue();
		}
		if (parameterValue instanceof EnumerationValue) {
			return ((EnumerationValue) parameterValue).getValue();
		}
		if (parameterValue instanceof BooleanValue) {
			return ((BooleanValue) parameterValue).getValue();
		}
		if (parameterValue instanceof StringValue) {
			return ((StringValue) parameterValue).getValue();
		}
		if (parameterValue instanceof FunctionNameValue) {
			return ((FunctionNameValue) parameterValue).getValue();
		}

		return null;
	}

	@Override
	protected void setParameterValue(GParameterValue parameterValue, Object value) {
		if (parameterValue instanceof BooleanValue) {
			((BooleanValue) parameterValue).setValue((Boolean) value);
		}
		if (parameterValue instanceof IntegerValue) {
			((IntegerValue) parameterValue).setValue((BigInteger) value);
		}
		if (parameterValue instanceof FloatValue) {
			((FloatValue) parameterValue).setValue((Double) value);
		}
		if (parameterValue instanceof EnumerationValue) {
			((EnumerationValue) parameterValue).setValue((String) value);
		}
		if (parameterValue instanceof BooleanValue) {
			((BooleanValue) parameterValue).setValue((Boolean) value);
		}
		if (parameterValue instanceof StringValue) {
			((StringValue) parameterValue).setValue((String) value);
		}
		if (parameterValue instanceof FunctionNameValue) {
			((FunctionNameValue) parameterValue).setValue((String) value);
		}
	}

	@Override
	protected Object getReferenceValue(GConfigReferenceValue referenceValue) {
		if (referenceValue instanceof ReferenceValue) {
			return ((ReferenceValue) referenceValue).getValue();
		}
		if (referenceValue instanceof InstanceReferenceValue) {
			return ((InstanceReferenceValue) referenceValue).getValue();
		}

		return null;
	}

	@Override
	protected void setReferenceValue(GConfigReferenceValue referenceValue, Object value) {
		if (referenceValue instanceof ReferenceValue) {
			((ReferenceValue) referenceValue).setValue((Identifiable) value);
		}
		if (referenceValue instanceof InstanceReferenceValue) {
			((InstanceReferenceValue) referenceValue).setValue((InstanceReferenceValueValue) value);
		}
	}

	@Override
	protected Object getParamDefDefaultValue(GConfigParameter parameterDef) {
		if (parameterDef instanceof BooleanParamDef) {
			return ((BooleanParamDef) parameterDef).getDefaultValue();
		}
		if (parameterDef instanceof IntegerParamDef) {
			return ((IntegerParamDef) parameterDef).getDefaultValue();
		}
		if (parameterDef instanceof FloatParamDef) {
			return ((FloatParamDef) parameterDef).getDefaultValue();
		}
		if (parameterDef instanceof EnumerationParamDef) {
			return ((EnumerationParamDef) parameterDef).getDefaultValue();
		}
		if (parameterDef instanceof StringParamDef) {
			return ((StringParamDef) parameterDef).getDefaultValue();
		}
		if (parameterDef instanceof FunctionNameDef) {
			return ((FunctionNameDef) parameterDef).getDefaultValue();
		}

		return null;
	}

	@Override
	protected void setParameterWithDefaultValue(GParameterValue parameterValue, GConfigParameter parameterDef) {
		Assert.isNotNull(parameterValue);
		Assert.isNotNull(parameterDef);

		if (parameterValue instanceof ParameterValue && parameterDef instanceof ConfigParameter) {
			Object defaultValue = getParamDefDefaultValue(parameterDef);
			if (defaultValue != null) {
				setParameterValue(parameterValue, defaultValue);
			}
		}
	}
}
