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

import gautosar.gecucdescription.GInstanceReferenceValue;
import gautosar.gecucdescription.GecucdescriptionPackage;
import gautosar.gecucparameterdef.GConfigReference;
import gautosar.gecucparameterdef.GInstanceReferenceDef;

import java.util.Collections;
import java.util.Set;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.InstanceReferenceDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichInstanceReferenceDefType;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.util.ExtendedMetaData;
import org.eclipse.internal.xtend.expression.parser.SyntaxConstants;
import org.eclipse.sphinx.emf.model.IModelDescriptor;
import org.eclipse.sphinx.emf.util.EObjectUtil;
import org.eclipse.xtend.typesystem.Type;

public class RichInstanceReferenceDefTypeImpl extends AbstractRichConfigReferenceTypeImpl implements RichInstanceReferenceDefType {

	protected String destinationType;

	public RichInstanceReferenceDefTypeImpl(EcucContext context, GInstanceReferenceDef instanceReferenceDef) {
		this(context, instanceReferenceDef, instanceReferenceDef.gGetDestinationType());
	}

	public RichInstanceReferenceDefTypeImpl(EcucContext context, GInstanceReferenceDef instanceReferenceDef, String destinationType) {
		super(context, instanceReferenceDef);
		this.destinationType = instanceReferenceDef.gGetDestinationType();
	}

	public EClass getEcucType() {
		return GecucdescriptionPackage.eINSTANCE.getGInstanceReferenceValue();
	}

	@Override
	protected Set<? extends Type> internalGetSuperTypes() {
		return Collections.singleton(getContext().getMetaModel().getTypeForName(InstanceReferenceDefType.TYPE_NAME));
	}

	@Override
	public boolean isInstance(Object target) {
		if (target instanceof GInstanceReferenceValue) {
			GConfigReference referenceDef = ((GInstanceReferenceValue) target).gGetDefinition();
			if (referenceDef == getEcucTypeDef()) {
				return true;
			}
		}
		return false;
	}

	@Override
	protected Object internalGet(Object target) {
		GInstanceReferenceValue referenceValue = (GInstanceReferenceValue) target;
		if (referenceValue.gGetDefinition() == getEcucTypeDef()) {
			EStructuralFeature valueFeature = EObjectUtil.getEStructuralFeature(referenceValue, "value");
			if (valueFeature != null) {
				Object value = referenceValue.eGet(valueFeature);
				if (value != null && value instanceof EObject) {
					EObject referenceValueValue = (EObject) value;
					// Two possibilities here, the feature name is "value" for AR 2.1 et AR 3.x while for AR 4.x the
					// feature name is "target"
					EStructuralFeature valueValueFeature = EObjectUtil.getEStructuralFeature(referenceValueValue, "value");
					if (valueValueFeature == null) {
						valueValueFeature = EObjectUtil.getEStructuralFeature(referenceValueValue, "target");
					}
					if (valueValueFeature != null) {
						EObject instanceRef = (EObject) referenceValueValue.eGet(valueValueFeature);
						if (instanceRef != null) {
							// Handle both cases for AR 3.x and AR 4.x
							if (ExtendedMetaData.INSTANCE.getName(instanceRef.eClass()).equals(destinationType)
									|| instanceRef.eClass().getName().equals(destinationType)) {
								return instanceRef;
							}
						}
					}
				}
			}
		}
		return null;
	}

	@Override
	protected Type getValueType() {
		Type valueType = null;
		if (destinationType != null) {
			EcucContext context = getContext();
			if (context != null) {
				IModelDescriptor modelDescriptor = context.getModuleDefModelDescriptor();
				if (modelDescriptor != null) {
					EClassifier eClassifier = ExtendedMetaData.INSTANCE.getType(modelDescriptor.getMetaModelDescriptor().getRootEPackage(),
							destinationType);
					if (eClassifier != null) {
						// Call getTypeSystem().getTypeForName to get the chance to ask the EmfRegistryMEtaModel
						valueType = getContext().getTypeSystem().getTypeForName(getFullyQualifiedName(eClassifier));
					}
				}
			}
		}
		return valueType;
	}

	protected String getFullyQualifiedName(final ENamedElement ele) {
		return getFqnRec(ele.eContainer(), getElementName(ele));
	}

	protected String getElementName(ENamedElement ele) {
		return ele == null ? null : ele.getName();
	}

	protected String getFqnRec(final EObject ele, final String suffix) {
		if (ele == null || !(ele instanceof ENamedElement)) {
			return suffix;
		} else {
			return getFqnRec(ele.eContainer(), getElementName((ENamedElement) ele) + SyntaxConstants.NS_DELIM + suffix);
		}
	}
}