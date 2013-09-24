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
package org.artop.ecuc.gautosar.xtend.typesystem;

import gautosar.gecucdescription.GConfigReferenceValue;
import gautosar.gecucdescription.GContainer;
import gautosar.gecucdescription.GModuleConfiguration;
import gautosar.gecucdescription.GParameterValue;
import gautosar.ggenericstructure.ginfrastructure.GARObject;

import java.lang.management.ManagementFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.artop.ecuc.gautosar.xtend.typesystem.basetypes.MultiplicityAwareListType;
import org.artop.ecuc.gautosar.xtend.typesystem.basetypes.impl.MultiplicityAwareListTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.internal.Activator;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.concrete.impl.ARPackageTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.concrete.impl.AUTOSARTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.impl.ARObjectTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.impl.ChoiceContainerDefTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.impl.ChoiceReferenceDefTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.impl.ConfigParameterTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.impl.ConfigReferenceTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.impl.ContainerDefTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.impl.ForeignReferenceDefTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.impl.InstanceReferenceDefTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.impl.ModuleDefTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.impl.ParamConfContainerDefTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.impl.ReferenceDefTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.factory.EcucRichTypeFactory;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.factory.IRichTypeFactory;
import org.eclipse.core.runtime.Assert;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;
import org.eclipse.xtend.expression.TypeSystem;
import org.eclipse.xtend.typesystem.MetaModel;
import org.eclipse.xtend.typesystem.Type;

public class EcucMetaModel implements MetaModel {

	protected EcucContext context;

	// contains Meta Types
	protected List<Type> metaTypes;
	// contains Base Types and Rich Types
	protected Map<String, Type> types;

	/* for faster access for getTypeForName */
	private Map<String, Type> metaTypesForName;
	/* caching on access to getKnownTypes() */
	private Set<Type> knownTypes;
	/* union map of 'types' and 'metaTypesForName', lazy initialized in getTypes() */
	private Map<String, Type> allTypes;
	// additional cache to access the type for parameter values faster
	private Map<GARObject, Type> value2DefinitionType;

	// Debug only
	private static int createCounter = 0;

	public EcucMetaModel(EcucContext context) {
		Assert.isNotNull(context);

		this.context = context;
		context.setMetamodel(this);
	}

	/*
	 * (non-Javadoc)
	 * @see org.eclipse.xtend.typesystem.MetaModel#getTypeSystem()
	 */
	public TypeSystem getTypeSystem() {
		return context.getTypeSystem();
	}

	/*
	 * (non-Javadoc)
	 * @see org.eclipse.xtend.typesystem.MetaModel#setTypeSystem(org.eclipse.xtend .expression.TypeSystem)
	 */
	public void setTypeSystem(TypeSystem typeSystem) {
		context.setTypeSystem(typeSystem);
	}

	/*
	 * (non-Javadoc)
	 * @see org.eclipse.xtend.typesystem.MetaModel#getNamespaces()
	 */
	public Set<String> getNamespaces() {
		return context.getNamespaces();
	}

	/*
	 * (non-Javadoc)
	 * @see org.eclipse.xtend.typesystem.MetaModel#getType(java.lang.Object)
	 */
	public Type getType(Object target) {
		// Fast return, if type system does not handle this object!
		if (target == null || !(target instanceof GARObject)) {
			return null;
		}

		// ensure that types and metaTypes are initialized
		createTypes();

		// faster execution for config parameters
		final GARObject definition = getDefinition(target);
		if (definition != null) {
			Type type = value2DefinitionType.get(definition);
			if (type != null) {
				return type;
			}
		}
		// Try to find matching type that is a rich type first; try to find
		// matching meta type only when no such exists
		for (Type type : types.values()) {
			if (type.isInstance(target)) {
				if (definition != null) {
					// cache the type
					value2DefinitionType.put(definition, type);
				}
				return type;
			}
		}

		// Try to find matching meta type
		for (Type metaType : metaTypes) {
			if (metaType.isInstance(target)) {
				return metaType;
			}
		}

		return null;
	}

	/**
	 * Determines the definition for these target types:
	 * <ul>
	 * <li>GParameterValue
	 * <li>GConfigReferenceValue
	 * <li>GContainer
	 * <li>GParameterValue
	 * </ul>
	 * 
	 * @param target
	 *            Target object
	 * @return Definition for target, <code>null</code> for unhandled types
	 */
	private GARObject getDefinition(Object target) {
		if (target instanceof GParameterValue) {
			return ((GParameterValue) target).gGetDefinition();
		} else if (target instanceof GConfigReferenceValue) {
			return ((GConfigReferenceValue) target).gGetDefinition();
		} else if (target instanceof GContainer) {
			return ((GContainer) target).gGetDefinition();
		} else if (target instanceof GModuleConfiguration) {
			return ((GModuleConfiguration) target).gGetDefinition();
		}
		return null;
	}

	/*
	 * (non-Javadoc)
	 * @see org.eclipse.xtend.typesystem.MetaModel#getTypeForName(java.lang.String)
	 */
	public Type getTypeForName(String typeName) {
		createTypes(); // ensure initialization

		Type type = types.get(typeName);
		if (type == null) {
			type = metaTypesForName.get(typeName);
		}
		return type;
	}

	/*
	 * (non-Javadoc)
	 * @see org.eclipse.xtend.typesystem.MetaModel#getKnownTypes()
	 */
	public Set<? extends Type> getKnownTypes() {
		// ensure initialization
		createTypes();
		if (knownTypes == null) {
			knownTypes = new HashSet<Type>(types.values());
			knownTypes.addAll(metaTypes);
			knownTypes = Collections.unmodifiableSet(knownTypes);
		}
		return knownTypes;
	}

	protected Map<String, Type> getTypes() {
		createTypes();
		if (allTypes == null) {
			allTypes = new HashMap<String, Type>(types);
			for (Type metaType : metaTypes) {
				allTypes.put(metaType.getName(), metaType);
			}
			allTypes = Collections.unmodifiableMap(allTypes);
		}
		return allTypes;
	}

	protected void createTypes() {
		if (types != null) {
			return;
		}

		metaTypes = new ArrayList<Type>();
		metaTypesForName = new HashMap<String, Type>();
		types = new HashMap<String, Type>();
		value2DefinitionType = new HashMap<GARObject, Type>();

		// TODO Surround with appropriate tracing option
		long start = ManagementFactory.getThreadMXBean().getCurrentThreadCpuTime();
		createCounter++;

		// First define the base types
		createBaseTypes();

		// Second define the meta types
		createMetaTypes();

		// Then create rich types for all module definitions and their respective contents in context model
		try {
			IRichTypeFactory richTypeFactory = createRichTypeFactory();
			richTypeFactory.createRichTypeHierarchy();
		} catch (Exception ex) {
			PlatformLogUtil.logAsError(Activator.getPlugin(), ex);
		}

		// TODO Surround with appropriate tracing option
		long stop = ManagementFactory.getThreadMXBean().getCurrentThreadCpuTime();
		System.out.println("Created " + types.size() + " types in " + (stop - start) / 1000000 + " ms (#run " + createCounter + ")"); //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$ //$NON-NLS-4$
	}

	protected void createBaseTypes() {
		MultiplicityAwareListType baseType = new MultiplicityAwareListTypeImpl(getTypeSystem().getObjectType(), getTypeSystem(),
				MultiplicityAwareListType.TYPE_NAME);
		types.put(baseType.getName(), baseType);
	}

	/**
	 * Creates the meta types for the BSW configuration type system. Enables model nodes to be identified as AUTOSAR
	 * top-level structure type (i.e., AUTOSAR, ARPackage, etc.), BMD-related type (i.e., ModuleDef,
	 * ParamConfContainerDef, etc.), or just any other AUTOSAR type (i.e., ARObject).
	 */
	protected void createMetaTypes() {
		// Create meta types and register them; order does matter!
		registerType(new ARObjectTypeImpl(context));
		registerType(new ContainerDefTypeImpl(context));
		registerType(new ParamConfContainerDefTypeImpl(context));
		registerType(new ChoiceContainerDefTypeImpl(context));
		registerType(new ConfigParameterTypeImpl(context));
		registerType(new ConfigReferenceTypeImpl(context));
		registerType(new ReferenceDefTypeImpl(context));
		registerType(new ChoiceReferenceDefTypeImpl(context));
		registerType(new ForeignReferenceDefTypeImpl(context));
		registerType(new InstanceReferenceDefTypeImpl(context));
		registerType(new ModuleDefTypeImpl(context));
		registerType(new ARPackageTypeImpl(context));
		registerType(new AUTOSARTypeImpl(context));
	}

	protected IRichTypeFactory createRichTypeFactory() {
		return new EcucRichTypeFactory(context, types);
	}

	protected final void registerType(Type type) {
		metaTypesForName.put(type.getName(), type);
		metaTypes.add(0, type);
	}
}
