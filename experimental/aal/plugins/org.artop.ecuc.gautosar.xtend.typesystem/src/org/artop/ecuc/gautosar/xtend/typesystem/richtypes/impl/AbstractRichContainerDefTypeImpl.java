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

import gautosar.gecucdescription.GConfigReferenceValue;
import gautosar.gecucdescription.GContainer;
import gautosar.gecucparameterdef.GContainerDef;

import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ContainerDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichContainerDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.factory.IEcucRichTypeHierarchyVisitor;
import org.eclipse.core.runtime.Assert;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature.Setting;
import org.eclipse.internal.xtend.type.baseimpl.PropertyImpl;
import org.eclipse.sphinx.emf.util.EObjectUtil;
import org.eclipse.xtend.typesystem.Type;

public abstract class AbstractRichContainerDefTypeImpl extends AbstractCompositeEcucRichTypeImpl implements RichContainerDefType {

	public AbstractRichContainerDefTypeImpl(EcucContext context, GContainerDef containerDef) {
		super(context, containerDef);
	}

	@Override
	public boolean isInstance(Object target) {
		/*
		 * <CONTAINER UUID="DCE:c8f7b57b-2986-647e-98f6-4e65a566ef81"> <SHORT-NAME>ComConfig</SHORT-NAME>
		 * <DEFINITION-REF DEST="PARAM-CONF-CONTAINER-DEF">/ARRoot/Com/ComConfig</DEFINITION-REF>
		 */
		if (target instanceof GContainer) {
			GContainerDef containerDef = ((GContainer) target).gGetDefinition();
			if (containerDef == getEcucTypeDef()) {
				return true;
			}
		}
		return false;
	}

	@Override
	protected Set<? extends Type> internalGetSuperTypes() {
		return Collections.singleton(getContext().getMetaModel().getTypeForName(ContainerDefType.TYPE_NAME));
	}

	@Override
	protected void addBaseFeatures() {
		super.addBaseFeatures();
		addFeature(new PropertyImpl(this,
				"referencingContainers", getTypeSystem().getListType(getContext().getMetaModel().getTypeForName(ContainerDefType.TYPE_NAME))) { //$NON-NLS-1$
			public Object get(Object target) {
				if (target instanceof EObject) {
					Collection<Setting> inverseReferences = EObjectUtil.getInverseReferences((EObject) target, false);
					Collection<GContainer> containers = new HashSet<GContainer>();
					for (Setting inverseReference : inverseReferences) {
						EObject eObject = inverseReference.getEObject();
						if (eObject instanceof GConfigReferenceValue) {
							GConfigReferenceValue configReferenceValue = (GConfigReferenceValue) eObject;
							EObject eContainer = configReferenceValue.eContainer();
							if (eContainer instanceof GContainer) {
								containers.add((GContainer) eContainer);
							}
						}
					}
					return containers;
				}
				return Collections.emptyList();
			}

		});
	}

	@Override
	public void accept(IEcucRichTypeHierarchyVisitor visitor) {
		Assert.isNotNull(visitor);

		super.accept(visitor);
		visitor.visit(this);
	}
}
