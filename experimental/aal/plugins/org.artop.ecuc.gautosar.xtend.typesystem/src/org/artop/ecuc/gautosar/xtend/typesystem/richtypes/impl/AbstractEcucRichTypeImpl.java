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

import org.artop.aal.common.resource.AutosarURIFactory;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.impl.AbstractEcucMetaTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.EcucRichType;
import org.eclipse.internal.xtend.type.baseimpl.PropertyImpl;
import org.eclipse.xtend.typesystem.Property;

public abstract class AbstractEcucRichTypeImpl extends AbstractEcucMetaTypeImpl implements EcucRichType {

	private GIdentifiable ecucTypeDef;

	public AbstractEcucRichTypeImpl(EcucContext context, GIdentifiable ecucTypeDef) {
		this(context, ecucTypeDef, null);
	}

	public AbstractEcucRichTypeImpl(EcucContext context, GIdentifiable ecucTypeDef, String typeNameSuffix) {
		super(context, getTypeName(ecucTypeDef, typeNameSuffix));
		this.ecucTypeDef = ecucTypeDef;
		addBaseFeatures();
	}

	private static String getTypeName(GIdentifiable ecucTypeDef, String typeNameSuffix) {
		String typeName = getTypeName(ecucTypeDef);
		if (typeNameSuffix != null) {
			return typeName.concat(typeNameSuffix);
		}
		return typeName;
	}

	protected void addBaseFeatures() {
		addFeature(createShortNameFeature());
		addFeature(new PropertyImpl(this, "absoluteQualifiedName", getTypeSystem().getStringType()) { //$NON-NLS-1$
			public Object get(Object target) {
				return AutosarURIFactory.getAbsoluteQualifiedName(target);
			}
		});
	}

	protected Property createShortNameFeature() {
		return new PropertyImpl(this, "shortName", getTypeSystem().getStringType()) { //$NON-NLS-1$
			public Object get(Object target) {
				if (target instanceof GIdentifiable) {
					return ((GIdentifiable) target).gGetShortName();
				}
				return null;
			}
		};
	}

	public GIdentifiable getEcucTypeDef() {
		return ecucTypeDef;
	}
}
