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
package org.artop.ecuc.autosar40.xtend.typesystem.richtypes.impl;

import gautosar.gecucparameterdef.GConfigParameter;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichFunctionNameDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichLinkerSymbolDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichStringParamDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.impl.AbstractRichConfigParameterTypeImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.xtend.typesystem.Type;

import autosar40.ecucdescription.EcucTextualParamValue;
import autosar40.ecucdescription.EcucdescriptionPackage;

public class RichTextualParamDef40TypeImpl extends AbstractRichConfigParameterTypeImpl implements RichStringParamDefType, RichLinkerSymbolDefType,
		RichFunctionNameDefType {

	public RichTextualParamDef40TypeImpl(EcucContext context, GConfigParameter configParameter) {
		super(context, configParameter);
	}

	@Override
	protected EClass getParameterValueType() {
		return EcucdescriptionPackage.eINSTANCE.getEcucTextualParamValue();
	}

	@Override
	protected Type getValueType() {
		return getTypeSystem().getStringType();
	}

	@Override
	protected Object internalGet(Object target) {
		return ((EcucTextualParamValue) target).getValue();
	}

	@Override
	protected void internalSet(Object target, Object value) {
		((EcucTextualParamValue) target).setValue((String) value);
	}

	@Override
	protected boolean internalIsSet(Object target) {
		return ((EcucTextualParamValue) target).isSetValue();
	}
}
