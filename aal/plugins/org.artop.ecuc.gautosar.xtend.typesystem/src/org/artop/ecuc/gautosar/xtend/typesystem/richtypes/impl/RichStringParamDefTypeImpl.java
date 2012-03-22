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

import gautosar.gecucdescription.GStringValue;
import gautosar.gecucdescription.GecucdescriptionPackage;
import gautosar.gecucparameterdef.GAbstractStringParamDef;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichStringParamDefType;
import org.eclipse.emf.ecore.EClass;

public class RichStringParamDefTypeImpl extends AbstractRichAbstractStringParamDefTypeImpl implements RichStringParamDefType {

	public RichStringParamDefTypeImpl(EcucContext context, GAbstractStringParamDef stringParamDef) {
		super(context, stringParamDef);
	}

	public EClass getEcucType() {
		return GecucdescriptionPackage.eINSTANCE.getGStringValue();
	}

	@Override
	protected Object internalGet(Object target) {
		return ((GStringValue) target).gGetValue();
	}

	@Override
	protected void internalSet(Object target, Object value) {
		((GStringValue) target).gSetValue((String) value);
	}

	@Override
	protected boolean internalIsSet(Object target) {
		return ((GStringValue) target).gIsSetValue();
	}
}
