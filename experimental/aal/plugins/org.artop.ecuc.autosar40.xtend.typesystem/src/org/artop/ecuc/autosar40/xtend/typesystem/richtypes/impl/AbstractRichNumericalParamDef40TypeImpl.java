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
package org.artop.ecuc.autosar40.xtend.typesystem.richtypes.impl;

import gautosar.gecucparameterdef.GConfigParameter;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichBooleanParamDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichFloatParamDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichIntegerParamDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.impl.AbstractRichConfigParameterTypeImpl;
import org.eclipse.core.runtime.Assert;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.FeatureMapUtil;

import autosar40.ecucdescription.EcucNumericalParamValue;
import autosar40.ecucdescription.EcucdescriptionPackage;
import autosar40.genericstructure.varianthandling.NumericalValueVariationPoint;
import autosar40.genericstructure.varianthandling.VarianthandlingFactory;

public abstract class AbstractRichNumericalParamDef40TypeImpl extends AbstractRichConfigParameterTypeImpl implements RichBooleanParamDefType,
		RichIntegerParamDefType, RichFloatParamDefType {

	public AbstractRichNumericalParamDef40TypeImpl(EcucContext context, GConfigParameter configParameter) {
		super(context, configParameter);
	}

	@Override
	protected EClass getParameterValueType() {
		return EcucdescriptionPackage.eINSTANCE.getEcucNumericalParamValue();
	}

	@Override
	protected Object internalGet(Object target) {
		NumericalValueVariationPoint numericalValueVariationPoint = ((EcucNumericalParamValue) target).getValue();
		if (numericalValueVariationPoint != null) {
			String text = numericalValueVariationPoint.getMixedText();
			return convertFromEcucValue(text);
		}
		return null;
	}

	@Override
	protected void internalSet(Object target, Object value) {
		NumericalValueVariationPoint numericalValueVariationPoint = ((EcucNumericalParamValue) target).getValue();
		if (numericalValueVariationPoint == null) {
			numericalValueVariationPoint = VarianthandlingFactory.eINSTANCE.createNumericalValueVariationPoint();
			((EcucNumericalParamValue) target).setValue(numericalValueVariationPoint);
		}
		numericalValueVariationPoint.setMixedText(convertToEcucValue(value));
	}

	protected abstract Object convertFromEcucValue(String text);

	protected String convertToEcucValue(Object object) {
		return object.toString();
	}

	protected boolean isSetMixedText(FeatureMap mixed) {
		Assert.isNotNull(mixed);

		Object textObject = mixed.get(org.eclipse.emf.ecore.xml.type.XMLTypePackage.eINSTANCE.getXMLTypeDocumentRoot_Text(), true);
		if (textObject instanceof FeatureMapUtil.FeatureEList<?>) {
			FeatureMapUtil.FeatureEList<?> featureEList = (FeatureMapUtil.FeatureEList<?>) textObject;
			if (featureEList.size() != 0) {
				Object text = featureEList.get(0);
				return text instanceof String;
			}
		}
		return false;
	}

	@Override
	protected boolean internalIsSet(Object target) {
		NumericalValueVariationPoint numericalValueVariationPoint = ((EcucNumericalParamValue) target).getValue();
		if (numericalValueVariationPoint != null) {
			return isSetMixedText(numericalValueVariationPoint.getMixed());
		}
		return false;
	}

}
