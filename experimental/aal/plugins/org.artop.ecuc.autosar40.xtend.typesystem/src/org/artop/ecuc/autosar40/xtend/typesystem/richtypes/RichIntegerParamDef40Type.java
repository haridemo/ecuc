package org.artop.ecuc.autosar40.xtend.typesystem.richtypes;

import gautosar.gecucdescription.GIntegerValue;
import gautosar.gecucdescription.GecucdescriptionPackage;
import gautosar.gecucparameterdef.GIntegerParamDef;

import java.math.BigInteger;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichIntegerParamDefType;
import org.eclipse.emf.ecore.EClass;

public class RichIntegerParamDef40Type extends RichIntegerParamDefType {

	public RichIntegerParamDef40Type(EcucContext context, GIntegerParamDef integerParamDef) {
		super(context, integerParamDef);
	}

	@Override
	protected EClass getParameterValueType() {
		// TODO Adapt to AUTOSAR 4.0
		return GecucdescriptionPackage.eINSTANCE.getGIntegerValue();
	}

	@Override
	protected Object internalGet(Object target) {
		// TODO Adapt to AUTOSAR 4.0
		// FIXME Provide dedicated type for BigInteger and remove BigInteger/Integer conversion
		BigInteger value = ((GIntegerValue) target).gGetValue();
		if (value.bitLength() > 32) {
			throw new IllegalStateException("BigInteger numbers with more than 32 bits not supported yet!"); //$NON-NLS-1$
		}
		return value.intValue();
	}

	@Override
	protected void internalSet(Object target, Object value) {
		// TODO Adapt to AUTOSAR 4.0
		// FIXME Provide dedicated type for BigInteger and remove BigInteger/Integer conversion
		((GIntegerValue) target).gSetValue(BigInteger.valueOf((Integer) value));
	}
}
