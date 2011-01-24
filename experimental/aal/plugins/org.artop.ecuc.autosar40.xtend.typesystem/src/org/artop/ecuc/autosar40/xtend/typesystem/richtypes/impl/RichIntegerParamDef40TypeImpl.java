package org.artop.ecuc.autosar40.xtend.typesystem.richtypes.impl;

import gautosar.gecucparameterdef.GIntegerParamDef;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichIntegerParamDefType;
import org.eclipse.xtend.typesystem.Type;

public class RichIntegerParamDef40TypeImpl extends AbstractRichNumericalParamDef40TypeImpl implements RichIntegerParamDefType {

	public RichIntegerParamDef40TypeImpl(EcucContext context, GIntegerParamDef integerParamDef) {
		super(context, integerParamDef);
	}

	@Override
	protected Object convertFromEcucValue(String text) {
		return Integer.parseInt(text);
	}

	@Override
	protected Type getValueType() {
		return getTypeSystem().getIntegerType();
	}
}
