package org.artop.ecuc.gautosar.xtend.typesystem.richtypes.impl;

import gautosar.gecucdescription.GStringValue;
import gautosar.gecucdescription.GecucdescriptionPackage;
import gautosar.gecucparameterdef.GAbstractStringParamDef;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichStringParamDefType;
import org.eclipse.emf.ecore.EClass;

public class RichStringParamDefTypeImpl extends AbstractRichAbstractStringParamDefTypeImpl implements RichStringParamDefType {

	public RichStringParamDefTypeImpl(EcucContext context, GAbstractStringParamDef stringParamDef) {
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
