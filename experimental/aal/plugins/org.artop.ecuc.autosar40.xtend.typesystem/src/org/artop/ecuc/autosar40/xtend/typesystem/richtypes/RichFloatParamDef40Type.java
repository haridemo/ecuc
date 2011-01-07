package org.artop.ecuc.autosar40.xtend.typesystem.richtypes;

import gautosar.gecucdescription.GFloatValue;
import gautosar.gecucdescription.GecucdescriptionPackage;
import gautosar.gecucparameterdef.GFloatParamDef;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichFloatParamDefType;
import org.eclipse.emf.ecore.EClass;

public class RichFloatParamDef40Type extends RichFloatParamDefType {

	public RichFloatParamDef40Type(EcucContext context, GFloatParamDef floatParamDef) {
		super(context, floatParamDef);
	}

	@Override
	protected EClass getParameterValueType() {
		// TODO Adapt to AUTOSAR 4.0
		return GecucdescriptionPackage.eINSTANCE.getGFloatValue();
	}

	@Override
	protected Object internalGet(Object target) {
		// TODO Adapt to AUTOSAR 4.0
		return ((GFloatValue) target).gGetValue();
	}

	@Override
	protected void internalSet(Object target, Object value) {
		// TODO Adapt to AUTOSAR 4.0
		((GFloatValue) target).gSetValue((Double) value);
	}
}
