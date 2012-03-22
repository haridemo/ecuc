/**
 * <copyright>
 * 
 * Copyright (c) See4sys and others.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of the Artop Software License Based on AUTOSAR
 * Released Material (ASLR) which accompanies this distribution, and is
 * available at http://www.artop.org/aslr.html
 * 
 * Contributors: 
 *     See4sys - Initial API and implementation
 * 
 * </copyright>
 */
package org.artop.ecuc.gautosar.xtend.typesystem.richtypes.impl;

import gautosar.gecucdescription.GIntegerValue;
import gautosar.gecucdescription.GecucdescriptionPackage;
import gautosar.gecucparameterdef.GIntegerParamDef;

import java.math.BigInteger;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichIntegerParamDefType;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.xtend.typesystem.Type;

public class RichIntegerParamDefTypeImpl extends AbstractRichConfigParameterTypeImpl implements RichIntegerParamDefType {

	public RichIntegerParamDefTypeImpl(EcucContext context, GIntegerParamDef integerParamDef) {
		super(context, integerParamDef);
	}

	public EClass getEcucType() {
		return GecucdescriptionPackage.eINSTANCE.getGIntegerValue();
	}

	@Override
	protected Type getValueType() {
		// FIXME Provide dedicated type for BigInteger and use it here
		return getTypeSystem().getIntegerType();
	}

	@Override
	protected Object internalGet(Object target) {
		// FIXME Provide dedicated type for BigInteger and remove BigInteger/Integer conversion
		BigInteger value = ((GIntegerValue) target).gGetValue();
		if (value.bitLength() > 32) {
			throw new IllegalStateException("BigInteger numbers with more than 32 bits not supported yet!"); //$NON-NLS-1$
		}
		return value.intValue();
	}

	@Override
	protected void internalSet(Object target, Object value) {
		// FIXME Provide dedicated type for BigInteger and remove BigInteger/Integer conversion
		((GIntegerValue) target).gSetValue(BigInteger.valueOf((Integer) value));
	}

	@Override
	protected boolean internalIsSet(Object target) {
		return ((GIntegerValue) target).gIsSetValue();
	}
}
