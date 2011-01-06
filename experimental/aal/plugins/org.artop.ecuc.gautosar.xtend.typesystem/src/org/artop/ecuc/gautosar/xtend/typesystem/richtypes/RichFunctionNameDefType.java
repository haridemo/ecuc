package org.artop.ecuc.gautosar.xtend.typesystem.richtypes;

import gautosar.gecucdescription.GFunctionNameValue;
import gautosar.gecucdescription.GecucdescriptionPackage;
import gautosar.gecucparameterdef.GFunctionNameDef;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.eclipse.emf.ecore.EClass;

public class RichFunctionNameDefType extends AbstractRichAbstractStringParamDefType {

	public RichFunctionNameDefType(EcucContext context, GFunctionNameDef functionNameDef) {
		super(context, functionNameDef);
	}

	@Override
	protected EClass getParameterValueType() {
		return GecucdescriptionPackage.eINSTANCE.getGFunctionNameValue();
	}

	@Override
	protected Object internalGet(Object target) {
		return ((GFunctionNameValue) target).gGetValue();
	}

	@Override
	protected void internalSet(Object target, Object value) {
		((GFunctionNameValue) target).gSetValue((String) value);
	}
}
