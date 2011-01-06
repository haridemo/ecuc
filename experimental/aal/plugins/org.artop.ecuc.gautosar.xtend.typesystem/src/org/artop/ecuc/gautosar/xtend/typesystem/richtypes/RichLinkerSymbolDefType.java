package org.artop.ecuc.gautosar.xtend.typesystem.richtypes;

import gautosar.gecucdescription.GLinkerSymbolValue;
import gautosar.gecucdescription.GecucdescriptionPackage;
import gautosar.gecucparameterdef.GLinkerSymbolDef;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.eclipse.emf.ecore.EClass;

public class RichLinkerSymbolDefType extends AbstractRichAbstractStringParamDefType {

	public RichLinkerSymbolDefType(EcucContext context, GLinkerSymbolDef linkerSymbolDef) {
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
