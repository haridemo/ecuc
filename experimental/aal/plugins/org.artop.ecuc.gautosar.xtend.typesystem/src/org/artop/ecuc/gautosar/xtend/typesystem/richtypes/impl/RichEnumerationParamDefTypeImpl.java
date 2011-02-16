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

import gautosar.gecucdescription.GEnumerationValue;
import gautosar.gecucdescription.GecucdescriptionPackage;
import gautosar.gecucparameterdef.GEnumerationParamDef;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichEnumerationParamDefType;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.internal.xtend.type.baseimpl.OperationImpl;
import org.eclipse.internal.xtend.type.baseimpl.StaticPropertyImpl;
import org.eclipse.xtend.typesystem.Type;

public class RichEnumerationParamDefTypeImpl extends AbstractRichConfigParameterTypeImpl implements RichEnumerationParamDefType {

	public RichEnumerationParamDefTypeImpl(EcucContext context, GEnumerationParamDef enumerationParamDef) {
		super(context, enumerationParamDef);
	}

	public void addLiteral(final String shortName) {
		addFeature(new StaticPropertyImpl(this, shortName.toUpperCase(), getTypeSystem().getStringType()) {
			public Object get() {
				return shortName;
			}
		});
		addFeature(new OperationImpl(this, "is" + shortName.toUpperCase(), getTypeSystem().getBooleanType()) { //$NON-NLS-1$
			@Override
			protected Object evaluateInternal(Object target, Object[] params) {
				Object value = internalGet(target);
				return value != null && value.equals(shortName);
			}
		});
	}

	@Override
	protected EClass getParameterValueType() {
		return GecucdescriptionPackage.eINSTANCE.getGEnumerationValue();
	}

	@Override
	protected Type getValueType() {
		return getTypeSystem().getStringType();
	}

	@Override
	protected Object internalGet(Object target) {
		return ((GEnumerationValue) target).gGetValue();
	}

	@Override
	protected void internalSet(Object target, Object value) {
		((GEnumerationValue) target).gSetValue((String) value);
	}

	// TODO generation GAutosar with iSet Markers
	@Override
	protected boolean internalIsSet(Object target) {
		return false;
	}
}
