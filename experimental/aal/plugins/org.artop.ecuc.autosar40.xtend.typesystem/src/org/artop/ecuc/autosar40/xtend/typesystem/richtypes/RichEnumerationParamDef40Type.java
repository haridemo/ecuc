package org.artop.ecuc.autosar40.xtend.typesystem.richtypes;

import gautosar.gecucparameterdef.GEnumerationParamDef;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.IRichEnumerationParamDefType;
import org.eclipse.internal.xtend.type.baseimpl.OperationImpl;
import org.eclipse.internal.xtend.type.baseimpl.StaticPropertyImpl;

public class RichEnumerationParamDef40Type extends RichTextualParamDef40Type implements IRichEnumerationParamDefType {

	public RichEnumerationParamDef40Type(EcucContext context, GEnumerationParamDef enumerationParamDef) {
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
