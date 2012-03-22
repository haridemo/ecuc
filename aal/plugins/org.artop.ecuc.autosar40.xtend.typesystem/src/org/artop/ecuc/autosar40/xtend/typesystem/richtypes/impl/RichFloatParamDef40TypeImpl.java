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
		try {
			return Double.parseDouble(text);
		} catch (NumberFormatException ex) {
			// Fail Silent, it's on the behave of the validation to inform the Configurator about an unset value in the
			// model.
		}
		return null;
	}

	@Override
	protected Type getValueType() {
		return getTypeSystem().getRealType();
	}
}
