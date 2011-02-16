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

import gautosar.gecucdescription.GBooleanValue;
import gautosar.gecucdescription.GecucdescriptionPackage;
import gautosar.gecucparameterdef.GBooleanParamDef;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichBooleanParamDefType;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.xtend.typesystem.Type;

public class RichBooleanParamDefTypeImpl extends AbstractRichConfigParameterTypeImpl implements RichBooleanParamDefType {

	public RichBooleanParamDefTypeImpl(EcucContext context, GBooleanParamDef booleanParamDef) {
		super(context, booleanParamDef);
	}

	@Override
	protected EClass getParameterValueType() {
		return GecucdescriptionPackage.eINSTANCE.getGBooleanValue();
	}

	@Override
	protected Type getValueType() {
		return getTypeSystem().getBooleanType();
	}

	@Override
	protected Object internalGet(Object target) {
		return ((GBooleanValue) target).gGetValue();
	}

	@Override
	protected void internalSet(Object target, Object value) {
		((GBooleanValue) target).gSetValue((Boolean) value);
	}

	// TODO generation GAutosar with iSet Markers
	@Override
	protected boolean internalIsSet(Object target) {
		return false;
	}
}
