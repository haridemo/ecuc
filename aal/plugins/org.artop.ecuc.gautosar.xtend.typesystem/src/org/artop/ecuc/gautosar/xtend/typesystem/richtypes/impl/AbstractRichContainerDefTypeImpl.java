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
package org.artop.ecuc.gautosar.xtend.typesystem.richtypes.impl;

import gautosar.gecucdescription.GConfigReferenceValue;
import gautosar.gecucdescription.GContainer;
import gautosar.gecucparameterdef.GContainerDef;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;

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

		addFeature(new PropertyImpl(this, "definition", this) { //$NON-NLS-1$
			public Object get(Object target) {
				if (target instanceof GContainer) {
					GContainer gTarget = (GContainer) target;
					return gTarget.gGetDefinition();
				}
				return "";//$NON-NLS-1$
			}
		});

		Type typeForName = getContext().getMetaModel().getTypeForName(ContainerDefType.TYPE_NAME);
		addFeature(new PropertyImpl(this, "referencingContainers", getTypeSystem().getListType(typeForName)) { //$NON-NLS-1$
			/*
			 * The 'referencingContainers' operation retrieves inverse references to the specified target Container and
			 * returns the parent Container of each ReferenceValue referencing this target Container.
			 */
			public Object get(Object target) {
				// The referencing Containers to return
				Collection<GContainer> containers = new HashSet<GContainer>();
				if (target instanceof EObject) {
					// Get inverse references (proxy references included)
					Collection<Setting> inverseReferences = EObjectUtil.getInverseReferences((EObject) target, true);
					for (Setting inverseReference : inverseReferences) {
						EObject eObject = inverseReference.getEObject();
						// Check that inverse reference object is not a proxy and is a Reference Value
						if (!eObject.eIsProxy() && eObject instanceof GConfigReferenceValue) {
							// After having retrieved ReferenceValue, get its parent Container
							GConfigReferenceValue configReferenceValue = (GConfigReferenceValue) eObject;
							EObject eContainer = configReferenceValue.eContainer();
							// Exclude Container which are proxy; exclude 'target' also
							if (!eContainer.eIsProxy() && eContainer != target) {
								if (eContainer instanceof GContainer) {
									containers.add((GContainer) eContainer);
								}
							}
						}
					}
				}
				return containers;
			}
		});
	}

	@Override
	public void accept(IEcucRichTypeHierarchyVisitor visitor) {
		Assert.isNotNull(visitor);

		super.accept(visitor);
		visitor.visit(this);
	}

	@Override
	public Object newInstance() {
		Object container = super.newInstance();
		if (container != null) {
			GIdentifiable containerDef = getEcucTypeDef();
			if (container instanceof GContainer && containerDef instanceof GContainerDef) {
				((GContainer) container).gSetShortName(((GContainerDef) containerDef).gGetShortName());
				((GContainer) container).gSetDefinition((GContainerDef) containerDef);
			}
		}
		return container;
	}
}
