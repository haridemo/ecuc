package org.artop.ecuc.autosar40.xtend.typesystem.richtypes;

import gautosar.gecucparameterdef.GConfigParameter;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.AbstractRichConfigParameterType;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.xtend.typesystem.Type;

import autosar40.ecucdescription.EcucTextualParamValue;
import autosar40.ecucdescription.EcucdescriptionPackage;

public class RichTextualParamDef40Type extends AbstractRichConfigParameterType {

	public RichTextualParamDef40Type(EcucContext context, GConfigParameter configParameter) {
		super(context, configParameter);
	}

	@Override
	protected EClass getParameterValueType() {
		return EcucdescriptionPackage.eINSTANCE.getEcucTextualParamValue();
	}

	@Override
	protected Type getValueType() {
		return getTypeSystem().getStringType();
	}

	@Override
	protected Object internalGet(Object target) {
		return ((EcucTextualParamValue) target).getValue();
	}

	@Override
	protected void internalSet(Object target, Object value) {
		((EcucTextualParamValue) target).setValue((String) value);
	}
}
