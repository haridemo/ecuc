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

import gautosar.gecucdescription.GFloatValue;
import gautosar.gecucdescription.GecucdescriptionPackage;
import gautosar.gecucparameterdef.GFloatParamDef;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichFloatParamDefType;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.xtend.typesystem.Type;

public class RichFloatParamDefTypeImpl extends AbstractRichConfigParameterTypeImpl implements RichFloatParamDefType {

	public RichFloatParamDefTypeImpl(EcucContext context, GFloatParamDef floatParamDef) {
		super(context, floatParamDef);
	}

	public EClass getEcucType() {
		return GecucdescriptionPackage.eINSTANCE.getGFloatValue();
	}

	@Override
	protected Type getValueType() {
		return getTypeSystem().getRealType();
	}

	@Override
	protected Object internalGet(Object target) {
		return ((GFloatValue) target).gGetValue();
	}

	@Override
	protected void internalSet(Object target, Object value) {
		((GFloatValue) target).gSetValue((Double) value);
	}

	@Override
	protected boolean internalIsSet(Object target) {
		return ((GFloatValue) target).gIsSetValue();
	}
}
