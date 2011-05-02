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
package org.artop.ecuc.gautosar.xtend.typesystem.metatypes.impl;

import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;

import java.util.ArrayList;
import java.util.List;

import org.artop.aal.common.resource.AutosarURIFactory;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ARObjectType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.EcucMetaType;
import org.eclipse.core.runtime.Assert;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.internal.xtend.type.baseimpl.OperationImpl;
import org.eclipse.internal.xtend.type.baseimpl.PropertyImpl;
import org.eclipse.xtend.typesystem.AbstractTypeImpl;
import org.eclipse.xtend.typesystem.Feature;
import org.eclipse.xtend.typesystem.Property;
import org.eclipse.xtend.typesystem.Type;

/**
 * Abstract base class for all type implementations
 */
public abstract class AbstractEcucMetaTypeImpl extends AbstractTypeImpl implements EcucMetaType {

	protected static String getTypeName(GIdentifiable identifiable) {
		return getTypeName(AutosarURIFactory.getAbsoluteQualifiedName(identifiable));
	}

	protected static String getTypeName(String absoluteQualifiedName) {
		return absoluteQualifiedName.replaceFirst(AutosarURIFactory.AUTOSAR_ABSOLUTE_QUALIFIED_NAME_SEGMENT, "") //$NON-NLS-1$
				.replaceAll(AutosarURIFactory.SEGMENT_SEPARATOR, EcucMetaType.TYPE_NAME_SEGMENT_SEPARATOR);
	}

	private EcucContext context;
	private List<Feature> features;

	public AbstractEcucMetaTypeImpl(EcucContext context, String typeName) {
		super(context.getTypeSystem(), typeName);
		Assert.isNotNull(context.getMetaModel());
		Assert.isNotNull(context.getTypeSystem());

		this.context = context;

		registerNamespace(getNamespace());

		features = new ArrayList<Feature>(0);
		addBaseFeatures();
	}

	/*
	 * @see org.artop.ecuc.typesystem.metatypes.IARType#getNamespace()
	 */
	public String getNamespace() {
		String typeName = getName();
		int idx = typeName.lastIndexOf("::");//$NON-NLS-1$
		if (idx != -1) {
			return typeName.substring(0, idx);
		}
		return ""; //$NON-NLS-1$
	}

	/*
	 * @see org.artop.ecuc.typesystem.metatypes.IARType#getSimpleName()
	 */
	public String getSimpleName() {
		String typeName = getName();
		int idx = typeName.lastIndexOf("::"); //$NON-NLS-1$
		if (idx != -1) {
			if (idx + 2 < typeName.length()) {
				return typeName.substring(idx + 2);
			}
			return ""; //$NON-NLS-1$
		}
		return typeName;
	}

	/*
	 * @see org.artop.ecuc.typesystem.metatypes.IARType#getContext()
	 */
	public EcucContext getContext() {
		return context;
	}

	protected void addBaseFeatures() {
		addFeature(new PropertyImpl(this, "eContents", getTypeSystem().getListType(getTypeSystem().getTypeForName(ARObjectType.TYPE_NAME))) { //$NON-NLS-1$
			public Object get(Object target) {
				return internalEContents((EObject) target);
			}
		});
		addFeature(new PropertyImpl(this, "eAllContents", getTypeSystem().getListType(getTypeSystem().getTypeForName(ARObjectType.TYPE_NAME))) { //$NON-NLS-1$
			public Object get(Object target) {
				return internalEAllContents((EObject) target);
			}
		});
		addFeature(createShortNameFeature());
		addFeature(new PropertyImpl(this, "absoluteQualifiedName", getTypeSystem().getStringType()) { //$NON-NLS-1$
			public Object get(Object target) {
				return AutosarURIFactory.getAbsoluteQualifiedName(target);
			}
		});
		addFeature(createSetShortNameOperation());
	}

	protected Property createShortNameFeature() {
		return new PropertyImpl(this, "shortName", getTypeSystem().getStringType()) { //$NON-NLS-1$
			public Object get(Object target) {
				if (target instanceof GIdentifiable) {
					return ((GIdentifiable) target).gGetShortName();
				}
				return null;
			}
		};
	}

	protected OperationImpl createSetShortNameOperation() {
		return new OperationImpl(this, "setShortName", getTypeSystem().getVoidType(), getTypeSystem().getStringType()) { //$NON-NLS-1$
			@Override
			protected Object evaluateInternal(Object target, Object[] params) {
				internalSetShortName(target, params != null && params.length == 1 ? params[0] : null);
				return null;
			}
		};
	}

	protected void internalSetShortName(Object target, Object value) {
		if (target instanceof GIdentifiable && value instanceof String) {
			((GIdentifiable) target).gSetShortName((String) value);
		}
	}

	protected List<EObject> internalEContents(EObject object) {
		return null;
	}

	private List<EObject> internalEAllContents(EObject object) {
		List<EObject> allContents = new ArrayList<EObject>();
		List<EObject> contents = internalEContents(object);
		if (contents != null) {
			allContents.addAll(contents);
			for (EObject content : contents) {
				Type type = context.getMetaModel().getType(content);
				if (type instanceof AbstractEcucMetaTypeImpl) {
					allContents.addAll(((AbstractEcucMetaTypeImpl) type).internalEAllContents(content));
				}
			}
		}
		return allContents;
	}

	private void registerNamespace(String ns) {
		context.getNamespaces().add(ns);
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Feature[] getContributedFeatures() {
		return features.toArray(new Feature[] {});
	}

	/**
	 * {@inheritDoc}
	 */
	public void addFeature(final Feature feature) {
		features.add(feature);
	}

	/**
	 * {@inheritDoc}
	 */
	public boolean isInstance(Object o) {
		return false;
	}

	/**
	 * {@inheritDoc}
	 */
	public Object newInstance() {
		throw new UnsupportedOperationException();
	}
}
