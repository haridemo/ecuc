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

import gautosar.gecucparameterdef.GChoiceReferenceDef;
import gautosar.gecucparameterdef.GParamConfContainerDef;

import java.util.Collections;
import java.util.Set;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ChoiceReferenceDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichChoiceReferenceDefType;
import org.eclipse.xtend.typesystem.Type;

public class RichChoiceReferenceDefTypeImpl extends AbstractRichConfigReferenceTypeImpl implements RichChoiceReferenceDefType {

	public RichChoiceReferenceDefTypeImpl(EcucContext context, GChoiceReferenceDef choiceReferenceDef, GParamConfContainerDef valueTypeDef) {
		super(context, choiceReferenceDef, getTypeNameSuffix(valueTypeDef), valueTypeDef);
	}

	private static String getTypeNameSuffix(GParamConfContainerDef valueTypeDef) {
		return "_" + valueTypeDef.gGetShortName(); //$NON-NLS-1$
	}

	@Override
	protected Set<? extends Type> internalGetSuperTypes() {
		return Collections.singleton(getContext().getMetaModel().getTypeForName(ChoiceReferenceDefType.TYPE_NAME));
	}
}
