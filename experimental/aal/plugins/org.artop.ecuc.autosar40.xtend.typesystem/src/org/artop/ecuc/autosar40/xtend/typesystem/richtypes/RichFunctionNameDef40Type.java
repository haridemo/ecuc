package org.artop.ecuc.autosar40.xtend.typesystem.richtypes;

import gautosar.gecucdescription.GFunctionNameValue;
import gautosar.gecucdescription.GecucdescriptionPackage;
import gautosar.gecucparameterdef.GFunctionNameDef;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichFunctionNameDefType;
import org.eclipse.emf.ecore.EClass;

public class RichFunctionNameDef40Type extends RichFunctionNameDefType {

	public RichFunctionNameDef40Type(EcucContext context, GFunctionNameDef functionNameDef) {
		super(context, functionNameDef);
	}

	@Override
	protected EClass getParameterValueType() {
		// TODO Adapt to AUTOSAR 4.0
		return GecucdescriptionPackage.eINSTANCE.getGFunctionNameValue();
	}

	@Override
	protected Object internalGet(Object target) {
		// TODO Adapt to AUTOSAR 4.0
		return ((GFunctionNameValue) target).gGetValue();
	}

	@Override
	protected void internalSet(Object target, Object value) {
		// TODO Adapt to AUTOSAR 4.0
		((GFunctionNameValue) target).gSetValue((String) value);
	}
}
