package org.artop.ecuc.gautosar.xtend.typesystem.richtypes;

import gautosar.gecucdescription.GBooleanValue;
import gautosar.gecucdescription.GecucdescriptionPackage;
import gautosar.gecucparameterdef.GBooleanParamDef;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.xtend.typesystem.Type;

public class RichBooleanParamDefType extends AbstractRichConfigParameterType {

	public RichBooleanParamDefType(EcucContext context, GBooleanParamDef booleanParamDef) {
		super(context, booleanParamDef);
	}

	@Override
	protected EClass getParameterValueType() {
		return GecucdescriptionPackage.eINSTANCE.getGBooleanValue();
	}

	@Override
	protected Type getValueType() {
		return getTypeSystem().getBooleanType();
	}

	@Override
	protected Object internalGet(Object target) {
		return ((GBooleanValue) target).gGetValue();
	}

	@Override
	protected void internalSet(Object target, Object value) {
		((GBooleanValue) target).gSetValue((Boolean) value);
	}
}
