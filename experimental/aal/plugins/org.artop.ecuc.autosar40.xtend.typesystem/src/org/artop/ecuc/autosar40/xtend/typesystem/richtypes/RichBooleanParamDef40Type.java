package org.artop.ecuc.autosar40.xtend.typesystem.richtypes;

import gautosar.gecucdescription.GBooleanValue;
import gautosar.gecucdescription.GecucdescriptionPackage;
import gautosar.gecucparameterdef.GBooleanParamDef;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichBooleanParamDefType;
import org.eclipse.emf.ecore.EClass;

public class RichBooleanParamDef40Type extends RichBooleanParamDefType {

	public RichBooleanParamDef40Type(EcucContext context, GBooleanParamDef booleanParamDef) {
		super(context, booleanParamDef);
	}

	@Override
	protected EClass getParameterValueType() {
		// TODO Adapt to AUTOSAR 4.0
		return GecucdescriptionPackage.eINSTANCE.getGBooleanValue();
	}

	@Override
	protected Object internalGet(Object target) {
		// TODO Adapt to AUTOSAR 4.0
		return ((GBooleanValue) target).gGetValue();
	}

	@Override
	protected void internalSet(Object target, Object value) {
		// TODO Adapt to AUTOSAR 4.0
		((GBooleanValue) target).gSetValue((Boolean) value);
	}
}
