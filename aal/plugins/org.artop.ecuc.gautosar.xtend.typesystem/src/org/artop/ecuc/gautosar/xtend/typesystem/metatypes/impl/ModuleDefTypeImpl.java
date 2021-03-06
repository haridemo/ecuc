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
package org.artop.ecuc.gautosar.xtend.typesystem.metatypes.impl;

import gautosar.gecucdescription.GModuleConfiguration;
import gautosar.gecucparameterdef.GModuleDef;

import java.util.Collections;
import java.util.Set;

import org.artop.aal.common.resource.AutosarURIFactory;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ARObjectType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ModuleDefType;
import org.eclipse.internal.xtend.type.baseimpl.PropertyImpl;
import org.eclipse.xtend.typesystem.Type;

public class ModuleDefTypeImpl extends AbstractEcucMetaTypeImpl implements ModuleDefType {

	public ModuleDefTypeImpl(final EcucContext context) {
		this(context, ModuleDefType.TYPE_NAME);
	}

	private ModuleDefTypeImpl(EcucContext context, String typeName) {
		super(context, typeName);
	}

	@Override
	protected void addBaseFeatures() {
		super.addBaseFeatures();
		addFeature(new PropertyImpl(this, "unresolvedDefinition", getTypeSystem().getStringType()) { //$NON-NLS-1$
			public Object get(Object target) {
				if (target instanceof GModuleConfiguration) {
					GModuleDef moduleDef = ((GModuleConfiguration) target).gGetDefinition();
					if (moduleDef.eIsProxy()) {
						return AutosarURIFactory.getAbsoluteQualifiedName(moduleDef);
					}
				}
				return null;
			}
		});
	}

	@Override
	public boolean isInstance(Object target) {
		return target instanceof GModuleConfiguration;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	protected Set<? extends Type> internalGetSuperTypes() {
		return Collections.singleton(getContext().getMetaModel().getTypeForName(ARObjectType.TYPE_NAME));
	}
}
