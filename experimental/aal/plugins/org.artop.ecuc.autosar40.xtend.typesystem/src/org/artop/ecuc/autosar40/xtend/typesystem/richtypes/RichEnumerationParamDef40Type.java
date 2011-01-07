package org.artop.ecuc.autosar40.xtend.typesystem.richtypes;

import gautosar.gecucdescription.GEnumerationValue;
import gautosar.gecucdescription.GecucdescriptionPackage;
import gautosar.gecucparameterdef.GEnumerationParamDef;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichEnumerationParamDefType;
import org.eclipse.emf.ecore.EClass;

public class RichEnumerationParamDef40Type extends RichEnumerationParamDefType {

	public RichEnumerationParamDef40Type(EcucContext context, GEnumerationParamDef enumerationParamDef) {
		super(context, enumerationParamDef);
	}

	@Override
	protected EClass getParameterValueType() {
		// TODO Adapt to AUTOSAR 4.0
		return GecucdescriptionPackage.eINSTANCE.getGEnumerationValue();
	}

	@Override
	protected Object internalGet(Object target) {
		// TODO Adapt to AUTOSAR 4.0
		return ((GEnumerationValue) target).gGetValue();
	}

	@Override
	protected void internalSet(Object target, Object value) {
		// TODO Adapt to AUTOSAR 4.0
		((GEnumerationValue) target).gSetValue((String) value);
	}
}
