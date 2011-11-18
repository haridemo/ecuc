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
import gautosar.gecucparameterdef.GChoiceReferenceDef;
import gautosar.gecucparameterdef.GParamConfContainerDef;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;

import java.util.Collection;
import java.util.Collections;
import java.util.Set;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.internal.Activator;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ChoiceReferenceDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ParamConfContainerDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichChoiceReferenceDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichParamConfContainerDefType;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.internal.xtend.type.baseimpl.PropertyImpl;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;
import org.eclipse.xtend.typesystem.Type;

public class RichChoiceReferenceDefTypeImpl extends AbstractRichConfigReferenceTypeImpl implements RichChoiceReferenceDefType {

	protected Collection<GParamConfContainerDef> destinationTypeDefs;

	public RichChoiceReferenceDefTypeImpl(EcucContext context, GChoiceReferenceDef choiceReferenceDef) {
		this(context, choiceReferenceDef, choiceReferenceDef.gGetDestinations());
	}

	public RichChoiceReferenceDefTypeImpl(EcucContext context, GChoiceReferenceDef choiceReferenceDef,
			Collection<GParamConfContainerDef> destinationTypeDefs) {
		super(context, choiceReferenceDef);
		this.destinationTypeDefs = destinationTypeDefs;
	}

	public EClass getEcucValueType() {
		return GecucdescriptionPackage.eINSTANCE.getGReferenceValue();
	}

	@Override
	protected Set<? extends Type> internalGetSuperTypes() {
		return Collections.singleton(getContext().getMetaModel().getTypeForName(ChoiceReferenceDefType.TYPE_NAME));
	}

	@Override
	protected Type getValueType() {
		return getContext().getMetaModel().getTypeForName(ParamConfContainerDefType.TYPE_NAME);
	}

	@Override
	public void addValueAccessorFeatures() {
		super.addValueAccessorFeatures();
		for (GParamConfContainerDef destinationTypeDef : destinationTypeDefs) {
			// Do not add property for proxy destinationTypeDef
			if (!destinationTypeDef.eIsProxy()) {
				String propertyValueName = "value_" + destinationTypeDef.gGetShortName(); //$NON-NLS-1$

				addFeature(new PropertyImpl(this, propertyValueName, getContext().getMetaModel().getTypeForName(getTypeName(destinationTypeDef))) {

					public Object get(Object target) {
						Type returnType = getReturnType();
						if (returnType instanceof RichParamConfContainerDefType) {
							RichParamConfContainerDefType richType = (RichParamConfContainerDefType) returnType;
							GIdentifiable destinationTypeDef = richType.getEcucTypeDef();
							if (destinationTypeDef instanceof GParamConfContainerDef) {
								return internalGet(target, (GParamConfContainerDef) destinationTypeDef);
							}
						}
						return null;
					}

					@Override
					public void set(Object target, Object newValue) {
						internalSet(target, newValue);
					}
				});
			} else {
				PlatformLogUtil.logAsWarning(Activator.getDefault(), "Unresolved proxy object: " + destinationTypeDef.toString()); //$NON-NLS-1$
			}
		}
	}

	protected Object internalGet(Object target, GParamConfContainerDef destinationTypeDef) {
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
	protected Object internalGet(Object target) {
		GReferenceValue value = (GReferenceValue) target;
		if (value.gGetDefinition() == getEcucTypeDef()) {
			GIdentifiable valueValue = value.gGetValue();
			if (valueValue instanceof GContainer) {
				if (destinationTypeDefs.contains(((GContainer) valueValue).gGetDefinition())) {
					return valueValue;
				}
			}
		}
		return null;
	}

	@Override
	public boolean isAbstract() {
		return false;
	}
}
