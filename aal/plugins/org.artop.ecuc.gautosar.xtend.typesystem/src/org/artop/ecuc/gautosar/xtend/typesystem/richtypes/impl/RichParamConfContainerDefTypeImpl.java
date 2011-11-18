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

import gautosar.gecucdescription.GecucdescriptionPackage;
import gautosar.gecucparameterdef.GParamConfContainerDef;

import java.util.Collections;
import java.util.Set;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ParamConfContainerDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichParamConfContainerDefType;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.xtend.typesystem.Type;

public class RichParamConfContainerDefTypeImpl extends AbstractRichContainerDefTypeImpl implements RichParamConfContainerDefType {

	public RichParamConfContainerDefTypeImpl(EcucContext context, GParamConfContainerDef paramConfContainerDef) {
		super(context, paramConfContainerDef);
	}

	public EClass getEcucValueType() {
		return GecucdescriptionPackage.eINSTANCE.getGContainer();
	}

	@Override
	protected Set<? extends Type> internalGetSuperTypes() {
		return Collections.singleton(getContext().getMetaModel().getTypeForName(ParamConfContainerDefType.TYPE_NAME));
	}

	@Override
	public boolean isAbstract() {
		return false;
	}
}
