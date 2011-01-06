package org.artop.ecuc.gautosar.xtend.typesystem.richtypes;

import gautosar.gecucdescription.GStringValue;
import gautosar.gecucdescription.GecucdescriptionPackage;
import gautosar.gecucparameterdef.GAbstractStringParamDef;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.eclipse.emf.ecore.EClass;

public class RichStringParamDefType extends AbstractRichAbstractStringParamDefType {

	public RichStringParamDefType(EcucContext context, GAbstractStringParamDef stringParamDef) {
		super(context, stringParamDef);
	}

	@Override
	protected EClass getParameterValueType() {
		return GecucdescriptionPackage.eINSTANCE.getGStringValue();
	}

	@Override
	protected Object internalGet(Object target) {
		return ((GStringValue) target).gGetValue();
	}

	@Override
	protected void internalSet(Object target, Object value) {
		((GStringValue) target).gSetValue((String) value);
	}
}
