package org.artop.ecuc.gautosar.xtend.typesystem.richtypes.impl;

import gautosar.gecucparameterdef.GAbstractStringParamDef;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichAbstractStringParamDefType;
import org.eclipse.xtend.typesystem.Type;

public abstract class AbstractRichAbstractStringParamDefTypeImpl extends AbstractRichConfigParameterTypeImpl implements
		RichAbstractStringParamDefType {

	public AbstractRichAbstractStringParamDefTypeImpl(EcucContext context, GAbstractStringParamDef abstractStringParamDef) {
		super(context, abstractStringParamDef);
	}

	@Override
	protected Type getValueType() {
		return getTypeSystem().getStringType();
	}
}
