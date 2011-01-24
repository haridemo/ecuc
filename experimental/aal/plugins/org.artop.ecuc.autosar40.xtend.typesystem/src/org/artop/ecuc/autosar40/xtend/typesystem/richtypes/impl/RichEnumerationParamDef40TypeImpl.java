package org.artop.ecuc.autosar40.xtend.typesystem.richtypes.impl;

import gautosar.gecucparameterdef.GEnumerationParamDef;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichEnumerationParamDefType;
import org.eclipse.internal.xtend.type.baseimpl.OperationImpl;
import org.eclipse.internal.xtend.type.baseimpl.StaticPropertyImpl;

public class RichEnumerationParamDef40TypeImpl extends RichTextualParamDef40TypeImpl implements RichEnumerationParamDefType {

	public RichEnumerationParamDef40TypeImpl(EcucContext context, GEnumerationParamDef enumerationParamDef) {
		super(context, enumerationParamDef);
	}

	public void addLiteral(final String shortName) {
		addFeature(new StaticPropertyImpl(this, shortName.toUpperCase(), getTypeSystem().getStringType()) {
			public Object get() {
				return shortName;
			}
		});
		addFeature(new OperationImpl(this, "is" + shortName.toUpperCase(), getTypeSystem().getBooleanType()) { //$NON-NLS-1$
			@Override
			protected Object evaluateInternal(Object target, Object[] params) {
				Object value = internalGet(target);
				return value != null && value.equals(shortName);
			}
		});
	}
}
