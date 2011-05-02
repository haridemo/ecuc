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

import gautosar.gecucdescription.GModuleConfiguration;
import gautosar.gecucdescription.GecucdescriptionPackage;
import gautosar.gecucparameterdef.GModuleDef;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;

import java.util.Collections;
import java.util.Set;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ModuleDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.CompositeEcucRichType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichModuleDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.factory.IEcucRichTypeHierarchyVisitor;
import org.eclipse.core.runtime.Assert;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.xtend.typesystem.Type;

public class RichModuleDefTypeImpl extends AbstractCompositeEcucRichTypeImpl implements RichModuleDefType {

	public RichModuleDefTypeImpl(EcucContext context, GModuleDef moduleDef) {
		super(context, moduleDef);
	}

	public EClass getEcucValueType() {
		return GecucdescriptionPackage.eINSTANCE.getGModuleConfiguration();
	}

	@Override
	public boolean isInstance(Object target) {
		// model must be named MODULE-CONFIGURATION
		// and must contain an REF to this definition
		/*
		 * <MODULE-CONFIGURATION UUID="DCE:412708e8-6c0f-6b7b-b2ad-368a38ec4552"> <SHORT-NAME>GeensysCom</SHORT-NAME>
		 * <LONG-NAME> <L-4 L="FOR-ALL">GeensysCom</L-4> </LONG-NAME> <DEFINITION-REF
		 * DEST="MODULE-DEF">/ARRoot/Com</DEFINITION-REF>
		 */
		if (target instanceof GModuleConfiguration) {
			GModuleDef moduleDef = ((GModuleConfiguration) target).gGetDefinition();
			if (moduleDef == getEcucTypeDef()) {
				return true;
			}
		}
		return false;
	}

	@Override
	protected Set<? extends Type> internalGetSuperTypes() {
		return Collections.singleton(getContext().getMetaModel().getTypeForName(ModuleDefType.TYPE_NAME));
	}

	@Override
	public void accept(IEcucRichTypeHierarchyVisitor visitor) {
		Assert.isNotNull(visitor);

		super.accept(visitor);
		visitor.visit(this);
	}

	@Override
	public void setParentType(CompositeEcucRichType parentType) {
		throw new UnsupportedOperationException();
	}

	@Override
	public Object newInstance() {
		Object moduleConfiguration = super.newInstance();
		if (moduleConfiguration != null) {
			GIdentifiable moduleDef = getEcucTypeDef();
			if (moduleConfiguration instanceof GModuleConfiguration && moduleDef instanceof GModuleDef) {
				((GModuleConfiguration) moduleConfiguration).gSetShortName(((GModuleDef) moduleDef).gGetShortName());
				((GModuleConfiguration) moduleConfiguration).gSetDefinition(((GModuleDef) moduleDef));
			}
		}
		return moduleConfiguration;
	}
}
