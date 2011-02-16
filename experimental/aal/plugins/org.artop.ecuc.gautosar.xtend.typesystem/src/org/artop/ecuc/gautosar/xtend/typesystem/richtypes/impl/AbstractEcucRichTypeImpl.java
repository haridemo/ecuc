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

import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.impl.AbstractEcucMetaTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.EcucRichType;

public abstract class AbstractEcucRichTypeImpl extends AbstractEcucMetaTypeImpl implements EcucRichType {

	private GIdentifiable ecucTypeDef;

	public AbstractEcucRichTypeImpl(EcucContext context, GIdentifiable ecucTypeDef) {
		this(context, ecucTypeDef, null);
	}

	public AbstractEcucRichTypeImpl(EcucContext context, GIdentifiable ecucTypeDef, String typeNameSuffix) {
		super(context, getTypeName(ecucTypeDef, typeNameSuffix));
		this.ecucTypeDef = ecucTypeDef;
	}

	private static String getTypeName(GIdentifiable ecucTypeDef, String typeNameSuffix) {
		String typeName = getTypeName(ecucTypeDef);
		if (typeNameSuffix != null) {
			return typeName.concat(typeNameSuffix);
		}
		return typeName;
	}

	public GIdentifiable getEcucTypeDef() {
		return ecucTypeDef;
	}
}
