/**
 * <copyright>
 * 
 * Copyright (c) See4sys, itemis and others.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of the Artop Software License Based on AUTOSAR
 * Released Material (ASLR) which accompanies this distribution, and is
 * available at http://www.artop.org/aslr.html
 * 
 * Contributors: 
 *     See4sys - Initial API and implementation
 *     itemis - API & fixed Bug 1582 https://www.artop.org/bugs/show_bug.cgi?id=1582
 * 
 * </copyright>
 */
package org.artop.ecuc.gautosar.xtend.typesystem.metatypes.concrete.impl;

import gautosar.ggenericstructure.ginfrastructure.GAUTOSAR;
import gautosar.ggenericstructure.ginfrastructure.GinfrastructurePackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ARObjectType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.concrete.ARPackageType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.concrete.AUTOSARType;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.internal.xtend.type.baseimpl.PropertyImpl;
import org.eclipse.xtend.typesystem.Feature;
import org.eclipse.xtend.typesystem.Type;

public class AUTOSARTypeImpl extends AbstractEcucConcreteMetaTypeImpl implements AUTOSARType {

	public AUTOSARTypeImpl(final EcucContext context) {
		this(context, AUTOSARType.TYPE_NAME);
	}

	private AUTOSARTypeImpl(final EcucContext confContext, final String name) {
		super(confContext, name);
	}

	public EClass getEcucType() {
		return GinfrastructurePackage.eINSTANCE.getGAUTOSAR();
	}

	@Override
	protected void addBaseFeatures() {
		super.addBaseFeatures();
		addFeature(createPackagesProperty());
	}

	private Feature createPackagesProperty() {
		return new PropertyImpl(this, "packages", getTypeSystem().getListType(getTypeSystem().getTypeForName(ARPackageType.TYPE_NAME))) { //$NON-NLS-1$
			public Object get(Object target) {
				if (target instanceof GAUTOSAR) {
					return ((GAUTOSAR) target).gGetArPackages();
				}
				return Collections.emptyList();
			}
		};
	}

	@Override
	protected List<EObject> internalEContents(EObject object) {
		List<EObject> contents = new ArrayList<EObject>();
		contents.addAll(((GAUTOSAR) object).gGetArPackages());
		return contents;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public boolean isInstance(final Object target) {
		return target instanceof GAUTOSAR;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	protected Set<? extends Type> internalGetSuperTypes() {
		return Collections.singleton(getContext().getMetaModel().getTypeForName(ARObjectType.TYPE_NAME));
	}
}
