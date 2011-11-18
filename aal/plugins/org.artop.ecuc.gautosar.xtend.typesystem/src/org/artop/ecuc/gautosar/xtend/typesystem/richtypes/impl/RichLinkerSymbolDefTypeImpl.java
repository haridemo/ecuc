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

import gautosar.gecucdescription.GLinkerSymbolValue;
import gautosar.gecucdescription.GecucdescriptionPackage;
import gautosar.gecucparameterdef.GLinkerSymbolDef;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichLinkerSymbolDefType;
import org.eclipse.emf.ecore.EClass;

public class RichLinkerSymbolDefTypeImpl extends AbstractRichAbstractStringParamDefTypeImpl implements RichLinkerSymbolDefType {

	public RichLinkerSymbolDefTypeImpl(EcucContext context, GLinkerSymbolDef linkerSymbolDef) {
		super(context, linkerSymbolDef);
	}

	public EClass getEcucValueType() {
		return GecucdescriptionPackage.eINSTANCE.getGLinkerSymbolValue();
	}

	@Override
	protected Object internalGet(Object target) {
		return ((GLinkerSymbolValue) target).gGetValue();
	}

	@Override
	protected void internalSet(Object target, Object value) {
		((GLinkerSymbolValue) target).gSetValue((String) value);
	}

	@Override
	protected boolean internalIsSet(Object target) {
		return ((GLinkerSymbolValue) target).gIsSetValue();
	}

	@Override
	public boolean isAbstract() {
		return false;
	}
}
