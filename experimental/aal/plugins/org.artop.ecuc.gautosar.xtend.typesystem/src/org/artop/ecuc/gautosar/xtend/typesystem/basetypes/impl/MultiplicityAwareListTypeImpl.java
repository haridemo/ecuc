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
package org.artop.ecuc.gautosar.xtend.typesystem.basetypes.impl;

import java.util.Collections;
import java.util.Set;

import org.artop.ecuc.gautosar.xtend.typesystem.basetypes.MultiplicityAwareListType;
import org.eclipse.internal.xtend.type.baseimpl.PropertyImpl;
import org.eclipse.internal.xtend.type.baseimpl.types.ListTypeImpl;
import org.eclipse.xtend.expression.TypeSystem;
import org.eclipse.xtend.typesystem.Feature;
import org.eclipse.xtend.typesystem.Type;

public class MultiplicityAwareListTypeImpl extends ListTypeImpl implements MultiplicityAwareListType {

	public MultiplicityAwareListTypeImpl(Type innerType, TypeSystem ts, String name) {
		super(innerType, ts, name);
	}

	@Override
	public boolean isInstance(Object o) {
		return o instanceof AbstractMultiplicityAwareFilteringEList;
	}

	@Override
	public Feature[] getContributedFeatures() {
		return new Feature[] { new PropertyImpl(this, "lowerMultiplicity", getTypeSystem().getIntegerType()) { //$NON-NLS-1$
					public Object get(Object target) {
						if (target instanceof AbstractMultiplicityAwareFilteringEList) {
							AbstractMultiplicityAwareFilteringEList<?> multiplicityAwareList = (AbstractMultiplicityAwareFilteringEList<?>) target;
							return multiplicityAwareList.getLowerMultiplicity();
						}
						return AbstractMultiplicityAwareFilteringEList.NO_MULTIPLICITY;
					}
				}, new PropertyImpl(this, "upperMultiplicity", getTypeSystem().getIntegerType()) { //$NON-NLS-1$
					public Object get(Object target) {
						if (target instanceof AbstractMultiplicityAwareFilteringEList) {
							AbstractMultiplicityAwareFilteringEList<?> multiplicityAwareList = (AbstractMultiplicityAwareFilteringEList<?>) target;
							return multiplicityAwareList.getUpperMultiplicity();
						}
						return AbstractMultiplicityAwareFilteringEList.NO_MULTIPLICITY;
					}
				} };
	}

	@Override
	public Set<Type> getSuperTypes() {
		return Collections.singleton(getTypeSystem().getListType(getInnerType()));
	}
}
