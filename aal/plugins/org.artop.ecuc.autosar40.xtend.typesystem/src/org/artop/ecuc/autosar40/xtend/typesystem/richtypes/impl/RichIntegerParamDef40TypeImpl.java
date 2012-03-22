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

import gautosar.gecucparameterdef.GIntegerParamDef;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichIntegerParamDefType;
import org.eclipse.xtend.typesystem.Type;

public class RichIntegerParamDef40TypeImpl extends AbstractRichNumericalParamDef40TypeImpl implements RichIntegerParamDefType {

	public RichIntegerParamDef40TypeImpl(EcucContext context, GIntegerParamDef integerParamDef) {
		super(context, integerParamDef);
	}

	@Override
	protected Object convertFromEcucValue(String text) {
		try {
			return Integer.parseInt(text);
		} catch (Exception ex) {
			// Fail Silent, it's on the behave of the validation to inform the Configurator about an unset value in the
			// model.
		}
		return null;
	}

	@Override
	protected Type getValueType() {
		return getTypeSystem().getIntegerType();
	}
}
