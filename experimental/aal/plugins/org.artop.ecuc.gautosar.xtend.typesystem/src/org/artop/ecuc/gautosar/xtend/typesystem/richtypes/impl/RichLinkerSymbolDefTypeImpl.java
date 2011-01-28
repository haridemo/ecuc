package org.artop.ecuc.gautosar.xtend.typesystem.richtypes.impl;

import gautosar.gecucdescription.GLinkerSymbolValue;
import gautosar.gecucdescription.GecucdescriptionPackage;
import gautosar.gecucparameterdef.GLinkerSymbolDef;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichLinkerSymbolDefType;
import org.eclipse.emf.ecore.EClass;

public class RichLinkerSymbolDefTypeImpl extends AbstractRichAbstractStringParamDefTypeImpl implements RichLinkerSymbolDefType {

	public RichLinkerSymbolDefTypeImpl(EcucContext context, GLinkerSymbolDef linkerSymbolDef) {
		super(context, linkerSymbolDef);
	}

	@Override
	protected EClass getParameterValueType() {
		return GecucdescriptionPackage.eINSTANCE.getGLinkerSymbolValue();
	}

	@Override
	protected Object internalGet(Object target) {
		return ((GLinkerSymbolValue) target).gGetValue();
	}

	@Override
	protected void internalSet(Object target, Object value) {
		((GLinkerSymbolValue) target).gSetValue((String) value);
	}
}