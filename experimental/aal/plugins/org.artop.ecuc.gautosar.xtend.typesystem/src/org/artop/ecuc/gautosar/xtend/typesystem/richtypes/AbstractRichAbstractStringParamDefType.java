package org.artop.ecuc.gautosar.xtend.typesystem.richtypes;

import gautosar.gecucparameterdef.GAbstractStringParamDef;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.eclipse.xtend.typesystem.Type;

public abstract class AbstractRichAbstractStringParamDefType extends AbstractRichConfigParameterType {

	public AbstractRichAbstractStringParamDefType(EcucContext context, GAbstractStringParamDef abstractStringParamDef) {
		super(context, abstractStringParamDef);
	}

	@Override
	protected Type getValueType() {
		return getTypeSystem().getStringType();
	}
}
