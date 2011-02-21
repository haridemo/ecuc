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

import gautosar.gecucparameterdef.GFloatParamDef;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichFloatParamDefType;
import org.eclipse.xtend.typesystem.Type;

public class RichFloatParamDef40TypeImpl extends AbstractRichNumericalParamDef40TypeImpl implements RichFloatParamDefType {

	public RichFloatParamDef40TypeImpl(EcucContext context, GFloatParamDef floatParamDef) {
		super(context, floatParamDef);
	}

	@Override
	protected Object convertFromEcucValue(String text) {
		return Double.parseDouble(text);
	}

	@Override
	protected Type getValueType() {
		return getTypeSystem().getRealType();
	}

	// TODO generation GAutosar with iSet Markers
	@Override
	protected boolean internalIsSet(Object target) {
		return false;
	}
}