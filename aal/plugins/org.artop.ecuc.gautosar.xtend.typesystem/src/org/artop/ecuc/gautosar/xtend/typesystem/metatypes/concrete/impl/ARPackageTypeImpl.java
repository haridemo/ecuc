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

import gautosar.gecucdescription.GModuleConfiguration;
import gautosar.gecucdescription.GecucdescriptionPackage;
import gautosar.ggenericstructure.ginfrastructure.GARPackage;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GinfrastructurePackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ARObjectType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ModuleDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.concrete.ARPackageType;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.internal.xtend.type.baseimpl.PropertyImpl;
import org.eclipse.sphinx.emf.util.AbstractFilteringEList;
import org.eclipse.xtend.typesystem.Feature;
import org.eclipse.xtend.typesystem.Type;

public class ARPackageTypeImpl extends AbstractEcucConcreteMetaTypeImpl implements ARPackageType {

	public ARPackageTypeImpl(final EcucContext context) {
		this(context, TYPE_NAME);
	}

	private ARPackageTypeImpl(final EcucContext confContext, final String name) {
		super(confContext, name);
	}

	public EClass getEcucType() {
		return GinfrastructurePackage.eINSTANCE.getGARPackage();
	}

	@Override
	protected void addBaseFeatures() {
		super.addBaseFeatures();
		addFeature(createModulesProperty());
	}

	/**
	 * @return the attribute 'eContents' of type string with the implementation of an oaw property that is able to fetch
	 *         the direct child items
	 */
	protected Feature createModulesProperty() {
		return new PropertyImpl(this, "modules", getTypeSystem().getListType(getTypeSystem().getTypeForName(ModuleDefType.TYPE_NAME))) { //$NON-NLS-1$
			public Object get(Object target) {
				if (target instanceof GARPackage) {
					@SuppressWarnings("serial")
					List<GPackageableElement> elements = new AbstractFilteringEList<GPackageableElement>((GARPackage) target, ((EObject) target)
							.eClass().getEStructuralFeature("elements")) { //$NON-NLS-1$

						@Override
						protected boolean accept(GPackageableElement element) {
							return element instanceof GModuleConfiguration;
						}
					};

					return elements;
				}
				return Collections.emptyList();
			}
		};
	}

	@Override
	protected final List<EObject> internalEContents(EObject object) {
		List<EObject> contents = new ArrayList<EObject>();
		contents.addAll(EcoreUtil.<EObject> getObjectsByType(((GARPackage) object).gGetElements(),
				GecucdescriptionPackage.eINSTANCE.getGModuleConfiguration()));
		return contents;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public boolean isInstance(final Object target) {
		return target instanceof GARPackage;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	protected Set<? extends Type> internalGetSuperTypes() {
		// FIXME
		return Collections.singleton(getContext().getMetaModel().getTypeForName(ARObjectType.TYPE_NAME));
	}
}
