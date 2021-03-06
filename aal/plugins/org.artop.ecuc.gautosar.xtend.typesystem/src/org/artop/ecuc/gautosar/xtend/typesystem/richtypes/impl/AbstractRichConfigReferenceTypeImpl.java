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
import gautosar.gecucdescription.GReferenceValue;
import gautosar.gecucparameterdef.GConfigReference;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;

import java.util.Collections;
import java.util.Set;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.internal.messages.Messages;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ConfigReferenceType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.CompositeEcucRichType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichConfigReferenceType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.factory.IEcucRichTypeHierarchyVisitor;
import org.eclipse.core.runtime.Assert;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.internal.xtend.type.baseimpl.OperationImpl;
import org.eclipse.internal.xtend.type.baseimpl.PropertyImpl;
import org.eclipse.xtend.typesystem.Property;
import org.eclipse.xtend.typesystem.Type;

public abstract class AbstractRichConfigReferenceTypeImpl extends AbstractCompositeEcucRichTypeImpl implements RichConfigReferenceType {

	public AbstractRichConfigReferenceTypeImpl(EcucContext context, GConfigReference configReference) {
		super(context, configReference);
	}

	@Override
	protected void addBaseFeatures() {
		super.addBaseFeatures();

		addFeature(new PropertyImpl(this, "definition", this) { //$NON-NLS-1$
			public Object get(Object target) {
				if (target instanceof GConfigReferenceValue) {
					GConfigReferenceValue gTarget = (GConfigReferenceValue) target;
					return gTarget.gGetDefinition();
				}
				return "";//$NON-NLS-1$
			}
		});

		addFeature(new OperationImpl(this, "isConfigured", getTypeSystem().getBooleanType(), new Type[0]) { //$NON-NLS-1$
			@Override
			protected Object evaluateInternal(Object target, Object[] params) {
				return internalIsSet(target);
			}

			@Override
			public String getDocumentation() {
				return Messages.doc_RichConfigReferenceType_isConfigured;
			}
		});
	}

	@Override
	protected Property createShortNameFeature() {
		return new PropertyImpl(this, "shortName", getTypeSystem().getStringType()) { //$NON-NLS-1$
			public Object get(Object target) {
				if (target instanceof GReferenceValue) {
					GReferenceValue referenceValue = (GReferenceValue) target;
					GConfigReference configReference = referenceValue.gGetDefinition();
					if (configReference != null) {
						return configReference.gGetShortName();
					}
				}
				return null;
			}
		};
	}

	protected abstract Type getValueType();

	public void addValueAccessorFeatures() {
		Type valueType = getValueType();
		addFeature(new PropertyImpl(this, "value", valueType) { //$NON-NLS-1$
			public Object get(Object target) {
				return internalGet(target);
			}

			@Override
			public void set(Object target, Object newValue) {
				internalSet(target, newValue);
			}
		});
		addFeature(new OperationImpl(this, "setValue", getTypeSystem().getVoidType(), valueType) { //$NON-NLS-1$
			@Override
			protected Object evaluateInternal(Object target, Object[] params) {
				internalSet(target, params != null && params.length == 1 ? params[0] : null);
				return null;
			}
		});
	}

	protected abstract Object internalGet(Object target);

	protected void internalSet(Object target, Object value) {
		((GReferenceValue) target).gSetValue((GIdentifiable) value);
	}

	/**
	 * Checks if specified <code>target</code> elements has been set or not and if its value is proxy or not.
	 * 
	 * @param target
	 *            The Reference Value whose set state must be checked.
	 * @return <ul>
	 *         <li><code><b>true</b>&nbsp;&nbsp;</code> if target value is not <code>null</code> nor proxy;</li>
	 *         <li><code><b>false</b>&nbsp;</code> otherwise.</li>
	 *         </ul>
	 */
	protected boolean internalIsSet(Object target) {
		Object obj = internalGet(target);
		if (obj instanceof EObject) {
			return !((EObject) obj).eIsProxy();
		}
		return obj != null;
	}

	@Override
	public boolean isInstance(Object target) {
		if (target instanceof GReferenceValue) {
			GConfigReference referenceDef = ((GReferenceValue) target).gGetDefinition();
			if (referenceDef == getEcucTypeDef()) {
				return true;
			}
		}
		return false;
	}

	@Override
	protected Set<? extends Type> internalGetSuperTypes() {
		return Collections.singleton(getContext().getMetaModel().getTypeForName(ConfigReferenceType.TYPE_NAME));
	}

	@Override
	public void accept(IEcucRichTypeHierarchyVisitor visitor) {
		Assert.isNotNull(visitor);

		super.accept(visitor);
		visitor.visit(this);
	}

	@Override
	public void addChildType(CompositeEcucRichType childType) {
		throw new UnsupportedOperationException();
	}

	@Override
	public Object newInstance() {
		Object configReferenceValue = super.newInstance();
		if (configReferenceValue != null) {
			GIdentifiable referenceDef = getEcucTypeDef();
			if (configReferenceValue instanceof GConfigReferenceValue && referenceDef instanceof GConfigReference) {
				((GConfigReferenceValue) configReferenceValue).gSetDefinition((GConfigReference) referenceDef);
			}
		}
		return configReferenceValue;
	}
}
