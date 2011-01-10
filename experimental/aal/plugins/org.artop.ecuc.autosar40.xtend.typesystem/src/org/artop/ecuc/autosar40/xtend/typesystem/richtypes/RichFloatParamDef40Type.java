package org.artop.ecuc.autosar40.xtend.typesystem.richtypes;

import gautosar.gecucparameterdef.GFloatParamDef;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.eclipse.xtend.typesystem.Type;

public class RichFloatParamDef40Type extends AbstractRichNumericalParamDef40Type {

	public RichFloatParamDef40Type(EcucContext context, GFloatParamDef floatParamDef) {
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
