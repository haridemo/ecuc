package org.artop.ecuc.autosar40.xtend.typesystem.richtypes;

import gautosar.gecucparameterdef.GConfigParameter;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.AbstractRichConfigParameterType;
import org.eclipse.emf.ecore.EClass;

import autosar40.ecucdescription.EcucNumericalParamValue;
import autosar40.ecucdescription.EcucdescriptionPackage;
import autosar40.genericstructure.varianthandling.NumericalValueVariationPoint;
import autosar40.genericstructure.varianthandling.VarianthandlingFactory;

public abstract class AbstractRichNumericalParamDef40Type extends AbstractRichConfigParameterType {

	public AbstractRichNumericalParamDef40Type(EcucContext context, GConfigParameter configParameter) {
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

}
