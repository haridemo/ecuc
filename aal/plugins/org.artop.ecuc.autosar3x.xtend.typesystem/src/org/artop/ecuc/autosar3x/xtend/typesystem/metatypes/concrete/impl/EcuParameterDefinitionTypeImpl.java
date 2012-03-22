/**
 * <copyright>
 * 
 * Copyright (c) itemis and others.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of the Artop Software License Based on AUTOSAR
 * Released Material (ASLR) which accompanies this distribution, and is
 * available at http://www.artop.org/aslr.html
 * 
 * Contributors: 
 *     itemis - Initial API and implementation
 * 
 * </copyright>
 */
package org.artop.ecuc.autosar3x.xtend.typesystem.metatypes.concrete.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;

import org.artop.ecuc.autosar3x.xtend.typesystem.metatypes.concrete.EcuParameterDefinitionType;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ARObjectType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ModuleDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.concrete.impl.AbstractEcucConcreteMetaTypeImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.internal.xtend.type.baseimpl.PropertyImpl;
import org.eclipse.xtend.typesystem.Feature;
import org.eclipse.xtend.typesystem.Type;

import autosar3x.ecucparameterdef.EcuParameterDefinition;
import autosar3x.ecucparameterdef.EcucparameterdefPackage;

public class EcuParameterDefinitionTypeImpl extends AbstractEcucConcreteMetaTypeImpl implements EcuParameterDefinitionType {

	public EcuParameterDefinitionTypeImpl(final EcucContext context) {
		this(context, EcuParameterDefinitionType.TYPE_NAME);
	}

	private EcuParameterDefinitionTypeImpl(final EcucContext confContext, final String name) {
		super(confContext, name);
	}

	public EClass getEcucType() {
		return EcucparameterdefPackage.eINSTANCE.getEcuParameterDefinition();
	}

	@Override
	protected void addBaseFeatures() {
		super.addBaseFeatures();
		addFeature(createModulesProperty());
	}

	private Feature createModulesProperty() {
		return new PropertyImpl(this, "modules", getTypeSystem().getListType(getTypeSystem().getTypeForName(ModuleDefType.TYPE_NAME))) { //$NON-NLS-1$
			public Object get(Object target) {
				if (target instanceof EcuParameterDefinition) {
					return ((EcuParameterDefinition) target).getModules();
				}
				return Collections.emptyList();
			}
		};
	}

	@Override
	protected List<EObject> internalEContents(EObject object) {
		List<EObject> contents = new ArrayList<EObject>();
		contents.addAll(((EcuParameterDefinition) object).getModules());
		return contents;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public boolean isInstance(final Object target) {
		return target instanceof EcuParameterDefinition;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	protected Set<? extends Type> internalGetSuperTypes() {
		return Collections.singleton(getContext().getMetaModel().getTypeForName(ARObjectType.TYPE_NAME));
	}
}
