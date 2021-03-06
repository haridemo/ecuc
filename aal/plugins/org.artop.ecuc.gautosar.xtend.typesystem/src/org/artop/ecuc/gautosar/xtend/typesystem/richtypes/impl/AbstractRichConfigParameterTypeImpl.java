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

import gautosar.gecucdescription.GParameterValue;
import gautosar.gecucparameterdef.GConfigParameter;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;

import java.util.Collections;
import java.util.Set;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ConfigParameterType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.CompositeEcucRichType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichConfigParameterType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.factory.IEcucRichTypeHierarchyVisitor;
import org.eclipse.core.runtime.Assert;
import org.eclipse.internal.xtend.type.baseimpl.OperationImpl;
import org.eclipse.internal.xtend.type.baseimpl.PropertyImpl;
import org.eclipse.xtend.typesystem.Property;
import org.eclipse.xtend.typesystem.Type;

public abstract class AbstractRichConfigParameterTypeImpl extends AbstractCompositeEcucRichTypeImpl implements RichConfigParameterType {

	public AbstractRichConfigParameterTypeImpl(EcucContext context, GConfigParameter configParameter) {
		super(context, configParameter);
	}

	@Override
	protected void addBaseFeatures() {
		super.addBaseFeatures();
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
		addFeature(new OperationImpl(this, "isConfigured", getTypeSystem().getBooleanType(), new Type[0]) { //$NON-NLS-1$
			@Override
			protected Object evaluateInternal(Object target, Object[] params) {
				return internalIsSet(target);
			}
		});

		addFeature(new PropertyImpl(this, "definition", this) { //$NON-NLS-1$
			public Object get(Object target) {
				if (target instanceof GParameterValue) {
					GParameterValue gTarget = (GParameterValue) target;
					return gTarget.gGetDefinition();
				}
				return "";//$NON-NLS-1$
			}
		});
	}

	@Override
	protected Property createShortNameFeature() {
		return new PropertyImpl(this, "shortName", getTypeSystem().getStringType()) { //$NON-NLS-1$
			public Object get(Object target) {
				String typeName = getOwner().getName();
				int idx = typeName.lastIndexOf("::"); //$NON-NLS-1$
				if (idx != -1) {
					if (idx + 2 < typeName.length()) {
						return typeName.substring(idx + 2);
					}
					return ""; //$NON-NLS-1$
				}
				return typeName;
			}
		};
	}

	// XXX Shouldn't we add a definition match check here - just as there is in
	// AbstractRichConfigReferenceType.internalGet(Object)?
	protected abstract Object internalGet(Object target);

	protected abstract boolean internalIsSet(Object target);

	protected abstract void internalSet(Object target, Object value);

	protected abstract Type getValueType();

	@Override
	public boolean isInstance(Object target) {
		if (target instanceof GParameterValue && getEcucType().isInstance(target)) {
			GConfigParameter parameterDef = ((GParameterValue) target).gGetDefinition();
			if (parameterDef == getEcucTypeDef()) {
				return true;
			}
		}
		return false;
	}

	@Override
	protected Set<? extends Type> internalGetSuperTypes() {
		return Collections.singleton(getContext().getMetaModel().getTypeForName(ConfigParameterType.TYPE_NAME));
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
		Object parameterValue = super.newInstance();
		if (parameterValue != null) {
			GIdentifiable parameterDef = getEcucTypeDef();
			if (parameterValue instanceof GParameterValue && parameterDef instanceof GConfigParameter) {
				((GParameterValue) parameterValue).gSetDefinition((GConfigParameter) parameterDef);
			}
		}
		return parameterValue;
	}
}
