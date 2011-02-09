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

import gautosar.gecucparameterdef.GBooleanParamDef;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichBooleanParamDefType;
import org.eclipse.xtend.typesystem.Type;

public class RichBooleanParamDef40TypeImpl extends AbstractRichNumericalParamDef40TypeImpl implements RichBooleanParamDefType {

	public RichBooleanParamDef40TypeImpl(EcucContext context, GBooleanParamDef booleanParamDef) {
		super(context, booleanParamDef);
	}

	@Override
	protected Object convertFromEcucValue(String text) {
		return "1".equals(text); //$NON-NLS-1$
	}

	@Override
	protected String convertToEcucValue(Object object) {
		return (Boolean) object ? "1" : "0"; //$NON-NLS-1$ //$NON-NLS-2$
	}

	@Override
	protected Type getValueType() {
		return getTypeSystem().getBooleanType();
	}
}
