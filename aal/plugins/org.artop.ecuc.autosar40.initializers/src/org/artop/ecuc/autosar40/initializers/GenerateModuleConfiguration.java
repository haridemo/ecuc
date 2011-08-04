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
import gautosar.gecucparameterdef.GConfigParameter;
import gautosar.ggenericstructure.ginfrastructure.GARObject;

import org.artop.ecuc.gautosar.initializers.AbstractGenerateModuleConfiguration;
import org.eclipse.core.runtime.Assert;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;

import autosar40.ecucdescription.EcucAddInfoParamValue;
import autosar40.ecucdescription.EcucInstanceReferenceValue;
import autosar40.ecucdescription.EcucNumericalParamValue;
import autosar40.ecucdescription.EcucParameterValue;
import autosar40.ecucdescription.EcucReferenceValue;
import autosar40.ecucdescription.EcucTextualParamValue;
import autosar40.ecucparameterdef.EcucBooleanParamDef;
import autosar40.ecucparameterdef.EcucEnumerationParamDef;
import autosar40.ecucparameterdef.EcucFloatParamDef;
import autosar40.ecucparameterdef.EcucFunctionNameDef;
import autosar40.ecucparameterdef.EcucFunctionNameDefConditional;
import autosar40.ecucparameterdef.EcucIntegerParamDef;
import autosar40.ecucparameterdef.EcucLinkerSymbolDef;
import autosar40.ecucparameterdef.EcucLinkerSymbolDefConditional;
import autosar40.ecucparameterdef.EcucParameterDef;
import autosar40.ecucparameterdef.EcucStringParamDef;
import autosar40.ecucparameterdef.EcucStringParamDefConditional;
import autosar40.genericstructure.generaltemplateclasses.anyinstanceref.AnyInstanceRef;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.BooleanValueVariationPoint;
import autosar40.genericstructure.varianthandling.FloatValueVariationPoint;
import autosar40.genericstructure.varianthandling.NumericalValueVariationPoint;
import autosar40.genericstructure.varianthandling.UnlimitedIntegerValueVariationPoint;
import autosar40.genericstructure.varianthandling.VarianthandlingFactory;
import autosar40.genericstructure.varianthandling.VariationPoint;
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

	@Override
	protected Object getParamDefDefaultValue(GConfigParameter parameterDef) {
		if (parameterDef instanceof EcucBooleanParamDef) {
			return ((EcucBooleanParamDef) parameterDef).getDefaultValue();
		}
		if (parameterDef instanceof EcucEnumerationParamDef) {
			return ((EcucEnumerationParamDef) parameterDef).getDefaultValue();
		}
		if (parameterDef instanceof EcucFloatParamDef) {
			return ((EcucFloatParamDef) parameterDef).getDefaultValue();
		}
		if (parameterDef instanceof EcucIntegerParamDef) {
			return ((EcucIntegerParamDef) parameterDef).getDefaultValue();
		}
		if (parameterDef instanceof EcucFunctionNameDef) {
			EList<EcucFunctionNameDefConditional> functionNameDefVariants = ((EcucFunctionNameDef) parameterDef).getEcucFunctionNameDefVariants();
			if (functionNameDefVariants != null) {
				for (EcucFunctionNameDefConditional functionNameDefConditional : functionNameDefVariants) {
					VariationPoint variationPoint = functionNameDefConditional.getVariationPoint();
					// If variationPoint not null and variationPoint.getSwSyscond() null then the model is invalid
					if (variationPoint == null) {
						return functionNameDefConditional.getDefaultValue();
					}
					if (variationPoint.getSwSyscond() == null) {
						return functionNameDefConditional.getDefaultValue();
					}
				}
			}
		}
		if (parameterDef instanceof EcucLinkerSymbolDef) {
			EList<EcucLinkerSymbolDefConditional> functionNameDefVariants = ((EcucLinkerSymbolDef) parameterDef).getEcucLinkerSymbolDefVariants();
			if (functionNameDefVariants != null) {
				for (EcucLinkerSymbolDefConditional functionNameDefConditional : functionNameDefVariants) {
					VariationPoint variationPoint = functionNameDefConditional.getVariationPoint();
					// If variationPoint not null and variationPoint.getSwSyscond() null then the model is invalid
					if (variationPoint == null) {
						return functionNameDefConditional.getDefaultValue();
					}
					if (variationPoint.getSwSyscond() == null) {
						return functionNameDefConditional.getDefaultValue();
					}
				}
			}
		}
		if (parameterDef instanceof EcucStringParamDef) {
			EList<EcucStringParamDefConditional> functionNameDefVariants = ((EcucStringParamDef) parameterDef).getEcucStringParamDefVariants();
			if (functionNameDefVariants != null) {
				for (EcucStringParamDefConditional functionNameDefConditional : functionNameDefVariants) {
					VariationPoint variationPoint = functionNameDefConditional.getVariationPoint();
					// If variationPoint not null and variationPoint.getSwSyscond() null then the model is invalid
					if (variationPoint == null) {
						return functionNameDefConditional.getDefaultValue();
					}
					if (variationPoint.getSwSyscond() == null) {
						return functionNameDefConditional.getDefaultValue();
					}
				}
			}
		}
		return null;
	}

	@Override
	protected void setParameterWithDefaultValue(GParameterValue parameterValue, GConfigParameter parameterDef) {
		Assert.isNotNull(parameterValue);
		Assert.isNotNull(parameterDef);

		if (parameterValue instanceof EcucParameterValue && parameterDef instanceof EcucParameterDef) {
			Object defaultValue = getParamDefDefaultValue(parameterDef);
			if (defaultValue != null) {
				NumericalValueVariationPoint numericalValueVariationPoint = VarianthandlingFactory.eINSTANCE.createNumericalValueVariationPoint();
				if (parameterDef instanceof EcucBooleanParamDef && defaultValue instanceof BooleanValueVariationPoint) {
					numericalValueVariationPoint.setMixedText(((BooleanValueVariationPoint) defaultValue).getMixedText());
					setParameterValue(parameterValue, numericalValueVariationPoint);
				} else if (parameterDef instanceof EcucFloatParamDef && defaultValue instanceof FloatValueVariationPoint) {
					numericalValueVariationPoint.setMixedText(((FloatValueVariationPoint) defaultValue).getMixedText());
					setParameterValue(parameterValue, numericalValueVariationPoint);
				} else if (parameterDef instanceof EcucIntegerParamDef && defaultValue instanceof UnlimitedIntegerValueVariationPoint) {
					numericalValueVariationPoint.setMixedText(((UnlimitedIntegerValueVariationPoint) defaultValue).getMixedText());
					setParameterValue(parameterValue, numericalValueVariationPoint);
				} else if (parameterDef instanceof EcucEnumerationParamDef) {
					setParameterValue(parameterValue, defaultValue.toString());
				} else if (parameterDef instanceof EcucFunctionNameDef) {
					setParameterValue(parameterValue, defaultValue.toString());
				} else if (parameterDef instanceof EcucLinkerSymbolDef) {
					setParameterValue(parameterValue, defaultValue.toString());
				} else if (parameterDef instanceof EcucStringParamDef) {
					setParameterValue(parameterValue, defaultValue.toString());
				}
			}
		}
	}
}
