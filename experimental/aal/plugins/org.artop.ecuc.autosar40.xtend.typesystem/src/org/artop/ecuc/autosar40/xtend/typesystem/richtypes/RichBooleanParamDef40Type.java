package org.artop.ecuc.autosar40.xtend.typesystem.richtypes;

import gautosar.gecucparameterdef.GBooleanParamDef;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.eclipse.xtend.typesystem.Type;

public class RichBooleanParamDef40Type extends AbstractRichNumericalParamDef40Type {

	public RichBooleanParamDef40Type(EcucContext context, GBooleanParamDef booleanParamDef) {
		super(context, booleanParamDef);
	}

	@Override
	protected Object convertFromEcucValue(String text) {
		return "1".equals(text); //$NON-NLS-1$
	}

	@Override
	protected String convertToEcucValue(Object object) {
		return (Boolean) object ? "1" : "0"; //$NON-NLS-1$ //$NON-NLS-2$
	}

	@Override
	protected Type getValueType() {
		return getTypeSystem().getBooleanType();
	}
}
