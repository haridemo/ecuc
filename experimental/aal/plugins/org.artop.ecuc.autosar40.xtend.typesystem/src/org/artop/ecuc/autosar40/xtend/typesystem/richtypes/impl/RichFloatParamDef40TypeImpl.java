package org.artop.ecuc.autosar40.xtend.typesystem.richtypes.impl;

import gautosar.gecucparameterdef.GFloatParamDef;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichFloatParamDefType;
import org.eclipse.xtend.typesystem.Type;

public class RichFloatParamDef40TypeImpl extends AbstractRichNumericalParamDef40TypeImpl implements RichFloatParamDefType {

	public RichFloatParamDef40TypeImpl(EcucContext context, GFloatParamDef floatParamDef) {
		super(context, floatParamDef);
	}

	@Override
	protected Object convertFromEcucValue(String text) {
		return Double.parseDouble(text);
	}

	@Override
	protected Type getValueType() {
		return getTypeSystem().getRealType();
	}
}
