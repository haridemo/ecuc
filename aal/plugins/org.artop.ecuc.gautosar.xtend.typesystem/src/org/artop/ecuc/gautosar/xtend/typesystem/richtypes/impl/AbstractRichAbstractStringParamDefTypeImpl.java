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

import gautosar.gecucparameterdef.GAbstractStringParamDef;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichAbstractStringParamDefType;
import org.eclipse.xtend.typesystem.Type;

public abstract class AbstractRichAbstractStringParamDefTypeImpl extends AbstractRichConfigParameterTypeImpl implements
		RichAbstractStringParamDefType {

	public AbstractRichAbstractStringParamDefTypeImpl(EcucContext context, GAbstractStringParamDef abstractStringParamDef) {
		super(context, abstractStringParamDef);
	}

	@Override
	protected Type getValueType() {
		return getTypeSystem().getStringType();
	}
}
