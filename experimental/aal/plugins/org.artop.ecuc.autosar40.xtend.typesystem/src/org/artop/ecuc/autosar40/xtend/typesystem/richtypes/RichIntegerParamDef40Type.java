package org.artop.ecuc.autosar40.xtend.typesystem.richtypes;

import gautosar.gecucparameterdef.GIntegerParamDef;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.eclipse.xtend.typesystem.Type;

public class RichIntegerParamDef40Type extends AbstractRichNumericalParamDef40Type {

	public RichIntegerParamDef40Type(EcucContext context, GIntegerParamDef integerParamDef) {
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
