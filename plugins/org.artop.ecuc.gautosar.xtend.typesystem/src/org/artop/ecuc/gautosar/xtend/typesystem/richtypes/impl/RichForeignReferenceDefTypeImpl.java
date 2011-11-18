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

import gautosar.gecucdescription.GReferenceValue;
import gautosar.gecucdescription.GecucdescriptionPackage;
import gautosar.gecucparameterdef.GForeignReferenceDef;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;

import java.util.Collections;
import java.util.Set;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ForeignReferenceDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichForeignReferenceDefType;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.util.ExtendedMetaData;
import org.eclipse.internal.xtend.expression.parser.SyntaxConstants;
import org.eclipse.sphinx.emf.model.IModelDescriptor;
import org.eclipse.xtend.typesystem.Type;

public class RichForeignReferenceDefTypeImpl extends AbstractRichConfigReferenceTypeImpl implements RichForeignReferenceDefType {

	protected String destinationType;

	public RichForeignReferenceDefTypeImpl(EcucContext context, GForeignReferenceDef foreignReferenceDef) {
		this(context, foreignReferenceDef, foreignReferenceDef.gGetDestinationType());
	}

	public RichForeignReferenceDefTypeImpl(EcucContext context, GForeignReferenceDef foreignReferenceDef, String destinationType) {
		super(context, foreignReferenceDef);
		this.destinationType = foreignReferenceDef.gGetDestinationType();
	}

	public EClass getEcucValueType() {
		return GecucdescriptionPackage.eINSTANCE.getGReferenceValue();
	}

	@Override
	protected Set<? extends Type> internalGetSuperTypes() {
		return Collections.singleton(getContext().getMetaModel().getTypeForName(ForeignReferenceDefType.TYPE_NAME));
	}

	@Override
	protected Object internalGet(Object target) {
		GReferenceValue referenceValue = (GReferenceValue) target;
		if (referenceValue.gGetDefinition() == getEcucTypeDef()) {
			GIdentifiable referenceValueValue = referenceValue.gGetValue();
			if (ExtendedMetaData.INSTANCE.getName(referenceValueValue.eClass()).equals(destinationType)) {
				return referenceValueValue;
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

	@Override
	public boolean isAbstract() {
		return false;
	}
}