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

import gautosar.gecucdescription.GContainer;
import gautosar.gecucdescription.GReferenceValue;
import gautosar.gecucdescription.GecucdescriptionPackage;
import gautosar.gecucparameterdef.GParamConfContainerDef;
import gautosar.gecucparameterdef.GReferenceDef;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;

import java.util.Collections;
import java.util.Set;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ParamConfContainerDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ReferenceDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichReferenceDefType;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.xtend.typesystem.Type;

public class RichReferenceDefTypeImpl extends AbstractRichConfigReferenceTypeImpl implements RichReferenceDefType {

	protected GParamConfContainerDef destinationTypeDef;

	public RichReferenceDefTypeImpl(EcucContext context, GReferenceDef referenceDef, GParamConfContainerDef destinationTypeDef) {
		super(context, referenceDef);
		this.destinationTypeDef = destinationTypeDef;
	}

	public EClass getEcucValueType() {
		return GecucdescriptionPackage.eINSTANCE.getGReferenceValue();
	}

	@Override
	protected Set<? extends Type> internalGetSuperTypes() {
		return Collections.singleton(getContext().getMetaModel().getTypeForName(ReferenceDefType.TYPE_NAME));
	}

	@Override
	protected Object internalGet(Object target) {
		GReferenceValue value = (GReferenceValue) target;
		if (value.gGetDefinition() == getEcucTypeDef()) {
			GIdentifiable valueValue = value.gGetValue();
			if (valueValue instanceof GContainer) {
				if (((GContainer) valueValue).gGetDefinition() == destinationTypeDef) {
					return valueValue;
				}
			}
		}
		return null;
	}

	@Override
	protected Type getValueType() {
		Type valueType = null;
		if (destinationTypeDef != null) {
			valueType = getContext().getMetaModel().getTypeForName(getTypeName(destinationTypeDef));
		}
		if (valueType == null) {
			valueType = getContext().getMetaModel().getTypeForName(ParamConfContainerDefType.TYPE_NAME);
		}
		return valueType;
	}
}