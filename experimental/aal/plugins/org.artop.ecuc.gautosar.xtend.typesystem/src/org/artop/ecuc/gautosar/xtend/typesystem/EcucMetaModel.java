package org.artop.ecuc.gautosar.xtend.typesystem;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.artop.ecl.platform.util.PlatformLogUtil;
import org.artop.ecuc.gautosar.xtend.typesystem.internal.Activator;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ARObjectType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ARPackageType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.AUTOSARType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ChoiceContainerDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ChoiceReferenceDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ConfigParameterType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ConfigReferenceType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ContainerDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ModuleDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ParamConfContainerDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ReferenceDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.factory.EcucRichTypeFactory;
import org.eclipse.core.runtime.Assert;
import org.eclipse.xtend.expression.TypeSystem;
import org.eclipse.xtend.typesystem.MetaModel;
import org.eclipse.xtend.typesystem.Type;

public class EcucMetaModel implements MetaModel {

	private EcucContext context;

	private List<Type> metaTypes;
	private Map<String, Type> types;
	private EcucRichTypeFactory typeFactory;

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
		// Try to find matching type that is a rich type first; try to find
		// matching meta type only when no such exists
		for (Type type : getTypes().values()) {
			if (!metaTypes.contains(type)) {
				if (type.isInstance(target)) {
					return type;
				}
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

	/*
	 * (non-Javadoc)
	 * @see org.eclipse.xtend.typesystem.MetaModel#getTypeForName(java.lang.String)
	 */
	public Type getTypeForName(String typeName) {
		return getTypes().get(typeName);
	}

	/*
	 * (non-Javadoc)
	 * @see org.eclipse.xtend.typesystem.MetaModel#getKnownTypes()
	 */
	public Set<? extends Type> getKnownTypes() {
		return Collections.unmodifiableSet(new HashSet<Type>(getTypes().values()));
	}

	protected Map<String, Type> getTypes() {
		if (types == null) {
			metaTypes = new ArrayList<Type>();
			types = new HashMap<String, Type>();
			typeFactory = new EcucRichTypeFactory(context, types);
			createTypes();
		}
		return Collections.unmodifiableMap(types);
	}

	protected void createTypes() {

		// TODO Surround with appropriate tracing option
		long start = System.currentTimeMillis();
		createCounter++;

		// First define the meta types
		createMetaTypes();

		// Then create rich types for all module definitions and their respective contents in context model
		try {
			typeFactory.createRichTypeHierarchy();
		} catch (Exception ex) {
			PlatformLogUtil.logAsError(Activator.getPlugin(), ex);
		}

		// TODO Surround with appropriate tracing option
		long stop = System.currentTimeMillis();
		System.out.println("Created " + types.size() + " types in " + (stop - start) + "ms (#run " + createCounter + ")"); //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$ //$NON-NLS-4$
	}

	/**
	 * Creates the meta types for the BSW configuration type system. Enables model nodes to be identified as AUTOSAR
	 * top-level structure type (i.e., AUTOSAR, ARPackage, etc.), BMD-related type (i.e., ModuleDef,
	 * ParamConfContainerDef, etc.), or just any other AUTOSAR type (i.e., ARObject).
	 */
	protected void createMetaTypes() {
		// Create meta types and register them; order does matter!
		// XXX How does order matter?
		registerType(new ARObjectType(context));
		registerType(new ContainerDefType(context));
		registerType(new ParamConfContainerDefType(context));
		registerType(new ChoiceContainerDefType(context));
		registerType(new ConfigParameterType(context));
		registerType(new ConfigReferenceType(context));
		registerType(new ReferenceDefType(context));
		registerType(new ChoiceReferenceDefType(context));
		registerType(new ModuleDefType(context));
		registerType(new ARPackageType(context));
		registerType(new AUTOSARType(context));
	}

	protected void registerType(Type type) {
		types.put(type.getName(), type);
		metaTypes.add(0, type);
	}
}
