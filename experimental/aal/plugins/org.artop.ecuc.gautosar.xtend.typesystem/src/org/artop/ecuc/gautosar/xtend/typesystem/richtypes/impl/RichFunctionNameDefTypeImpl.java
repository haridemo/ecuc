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

import gautosar.gecucdescription.GFunctionNameValue;
import gautosar.gecucdescription.GecucdescriptionPackage;
import gautosar.gecucparameterdef.GFunctionNameDef;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichFunctionNameDefType;
import org.eclipse.emf.ecore.EClass;

public class RichFunctionNameDefTypeImpl extends AbstractRichAbstractStringParamDefTypeImpl implements RichFunctionNameDefType {

	public RichFunctionNameDefTypeImpl(EcucContext context, GFunctionNameDef functionNameDef) {
		super(context, functionNameDef);
	}

	@Override
	protected EClass getParameterValueType() {
		return GecucdescriptionPackage.eINSTANCE.getGFunctionNameValue();
	}

	@Override
	protected Object internalGet(Object target) {
		return ((GFunctionNameValue) target).gGetValue();
	}

	@Override
	protected void internalSet(Object target, Object value) {
		((GFunctionNameValue) target).gSetValue((String) value);
	}

	// TODO generationGAutosar with iSet Markers on GFunctionNameValue
	@Override
	protected boolean internalIsSet(Object target) {
		return false;
	}
}
