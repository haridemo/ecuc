package org.artop.ecuc.autosar40.xtend.typesystem.richtypes;

import gautosar.gecucdescription.GLinkerSymbolValue;
import gautosar.gecucdescription.GecucdescriptionPackage;
import gautosar.gecucparameterdef.GLinkerSymbolDef;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichLinkerSymbolDefType;
import org.eclipse.emf.ecore.EClass;

public class RichLinkerSymbolDef40Type extends RichLinkerSymbolDefType {

	public RichLinkerSymbolDef40Type(EcucContext context, GLinkerSymbolDef linkerSymbolDef) {
		super(context, linkerSymbolDef);
	}

	@Override
	protected EClass getParameterValueType() {
		// TODO Adapt to AUTOSAR 4.0
		return GecucdescriptionPackage.eINSTANCE.getGLinkerSymbolValue();
	}

	@Override
	protected Object internalGet(Object target) {
		// TODO Adapt to AUTOSAR 4.0
		return ((GLinkerSymbolValue) target).gGetValue();
	}

	@Override
	protected void internalSet(Object target, Object value) {
		// TODO Adapt to AUTOSAR 4.0
		((GLinkerSymbolValue) target).gSetValue((String) value);
	}
}
