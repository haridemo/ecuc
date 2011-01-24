package org.artop.ecuc.gautosar.xtend.typesystem.richtypes.impl;

import gautosar.gecucdescription.GFloatValue;
import gautosar.gecucdescription.GecucdescriptionPackage;
import gautosar.gecucparameterdef.GFloatParamDef;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichFloatParamDefType;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.xtend.typesystem.Type;

public class RichFloatParamDefTypeImpl extends AbstractRichConfigParameterTypeImpl implements RichFloatParamDefType {

	public RichFloatParamDefTypeImpl(EcucContext context, GFloatParamDef floatParamDef) {
		super(context, floatParamDef);
	}

	@Override
	protected EClass getParameterValueType() {
		return GecucdescriptionPackage.eINSTANCE.getGFloatValue();
	}

	@Override
	protected Type getValueType() {
		return getTypeSystem().getRealType();
	}

	@Override
	protected Object internalGet(Object target) {
		return ((GFloatValue) target).gGetValue();
	}

	@Override
	protected void internalSet(Object target, Object value) {
		((GFloatValue) target).gSetValue((Double) value);
	}
}
