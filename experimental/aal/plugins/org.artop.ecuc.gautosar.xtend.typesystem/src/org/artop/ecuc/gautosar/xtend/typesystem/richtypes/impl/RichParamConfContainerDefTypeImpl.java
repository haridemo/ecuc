package org.artop.ecuc.gautosar.xtend.typesystem.richtypes.impl;

import gautosar.gecucparameterdef.GParamConfContainerDef;

import java.util.Collections;
import java.util.Set;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ParamConfContainerDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichParamConfContainerDefType;
import org.eclipse.xtend.typesystem.Type;

public class RichParamConfContainerDefTypeImpl extends AbstractRichContainerDefTypeImpl implements RichParamConfContainerDefType {

	public RichParamConfContainerDefTypeImpl(EcucContext context, GParamConfContainerDef paramConfContainerDef) {
		super(context, paramConfContainerDef);
	}

	@Override
	protected Set<? extends Type> internalGetSuperTypes() {
		return Collections.singleton(getContext().getMetaModel().getTypeForName(ParamConfContainerDefType.TYPE_NAME));
	}
}
