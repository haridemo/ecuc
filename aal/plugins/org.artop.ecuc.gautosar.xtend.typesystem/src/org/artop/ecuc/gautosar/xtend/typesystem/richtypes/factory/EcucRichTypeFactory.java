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
package org.artop.ecuc.gautosar.xtend.typesystem.richtypes.factory;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.internal.Activator;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.CompositeEcucRichType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.EcucRichType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichBooleanParamDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichChoiceContainerDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichChoiceReferenceDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichConfigParameterType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichConfigReferenceType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichEnumerationParamDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichFloatParamDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichForeignReferenceDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichFunctionNameDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichInstanceReferenceDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichIntegerParamDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichLinkerSymbolDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichModuleDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichParamConfContainerDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichReferenceDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichStringParamDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.impl.RichBooleanParamDefTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.impl.RichChoiceContainerDefTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.impl.RichChoiceReferenceDefTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.impl.RichEnumerationParamDefTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.impl.RichFloatParamDefTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.impl.RichForeignReferenceDefTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.impl.RichFunctionNameDefTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.impl.RichInstanceReferenceDefTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.impl.RichIntegerParamDefTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.impl.RichLinkerSymbolDefTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.impl.RichModuleDefTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.impl.RichParamConfContainerDefTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.impl.RichReferenceDefTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.impl.RichStringParamDefTypeImpl;
import org.eclipse.sphinx.emf.util.EObjectUtil;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;
import org.eclipse.xtend.typesystem.Type;

import gautosar.gecucparameterdef.GBooleanParamDef;
import gautosar.gecucparameterdef.GChoiceContainerDef;
import gautosar.gecucparameterdef.GChoiceReferenceDef;
import gautosar.gecucparameterdef.GConfigParameter;
import gautosar.gecucparameterdef.GConfigReference;
import gautosar.gecucparameterdef.GContainerDef;
import gautosar.gecucparameterdef.GEnumerationLiteralDef;
import gautosar.gecucparameterdef.GEnumerationParamDef;
import gautosar.gecucparameterdef.GFloatParamDef;
import gautosar.gecucparameterdef.GForeignReferenceDef;
import gautosar.gecucparameterdef.GFunctionNameDef;
import gautosar.gecucparameterdef.GInstanceReferenceDef;
import gautosar.gecucparameterdef.GIntegerParamDef;
import gautosar.gecucparameterdef.GLinkerSymbolDef;
import gautosar.gecucparameterdef.GModuleDef;
import gautosar.gecucparameterdef.GParamConfContainerDef;
import gautosar.gecucparameterdef.GReferenceDef;
import gautosar.gecucparameterdef.GStringParamDef;
import gautosar.gecucparameterdef.GSymbolicNameReferenceDef;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;

public class EcucRichTypeFactory implements IRichTypeFactory {

	protected EcucContext context;
	protected Map<String, Type> types;
	protected List<RichModuleDefType> rootTypes;

	public EcucRichTypeFactory(EcucContext context, Map<String, Type> types) {
		this.context = context;
		this.types = types;
		rootTypes = new ArrayList<RichModuleDefType>();
	}

	public void createRichTypeHierarchy() {
		createRichModuleDefTypes();

		for (RichModuleDefType rootType : rootTypes) {
			rootType.accept(createAddChildAccessorFeaturesVisitor());
			rootType.accept(createAddParentAccessorFeaturesVisitor());
			rootType.accept(new AddConfigReferenceValueAccessorFeaturesVisitor());
		}
	}

	protected IEcucRichTypeHierarchyVisitor createAddChildAccessorFeaturesVisitor() {
		return new AddChildAccessorFeaturesVisitor();
	}

	protected IEcucRichTypeHierarchyVisitor createAddParentAccessorFeaturesVisitor() {
		return new AddParentAccessorFeaturesVisitor();
	}

	protected void createRichModuleDefTypes() {
		for (GModuleDef moduleDef : EObjectUtil.getAllInstancesOf(context.getModuleDefModelDescriptor(), GModuleDef.class, false)) {
			RichModuleDefType rich = createRichModuleDefType(moduleDef);
			registerType(rich, moduleDef);
			createCompositeRichTypes(rich, moduleDef);
		}
	}

	protected RichModuleDefType createRichModuleDefType(GModuleDef moduleDef) {
		return new RichModuleDefTypeImpl(context, moduleDef);
	}

	protected void createCompositeRichTypes(CompositeEcucRichType parentType, GIdentifiable identifiable) {
		List<? extends GContainerDef> containerDefs = Collections.emptyList();
		if (identifiable instanceof GModuleDef) {
			containerDefs = ((GModuleDef) identifiable).gGetContainers();
		} else if (identifiable instanceof GParamConfContainerDef) {
			containerDefs = ((GParamConfContainerDef) identifiable).gGetSubContainers();
		} else if (identifiable instanceof GChoiceContainerDef) {
			containerDefs = ((GChoiceContainerDef) identifiable).gGetChoices();
		}

		for (GContainerDef containerDef : containerDefs) {
			CompositeEcucRichType containerDefType = null;
			if (containerDef instanceof GParamConfContainerDef) {
				containerDefType = createRichParamConfContainerDefType(containerDef);
			} else if (containerDef instanceof GChoiceContainerDef) {
				containerDefType = createRichChoiceContainerDefType(containerDef);
			} else {
				PlatformLogUtil.logAsWarning(Activator.getPlugin(),
						"ContainerDef type " + containerDef.eClass().getName() + " currently not supported!"); //$NON-NLS-1$ //$NON-NLS-2$
			}
			if (containerDefType != null) {
				registerType(containerDefType, containerDef);
				parentType.addChildType(containerDefType);
				createCompositeRichTypes(containerDefType, containerDef);
			}
		}

		if (identifiable instanceof GParamConfContainerDef) {
			for (GConfigParameter parameter : ((GParamConfContainerDef) identifiable).gGetParameters()) {
				RichConfigParameterType configParameterType = createConfigParameterType(parameter);
				if (configParameterType != null) {
					registerType(configParameterType, parameter);
					parentType.addChildType(configParameterType);
				}
			}
			for (GConfigReference reference : ((GParamConfContainerDef) identifiable).gGetReferences()) {
				for (RichConfigReferenceType configReferenceType : createConfigReferenceTypes(reference)) {
					if (configReferenceType != null) {
						registerType(configReferenceType, reference);
						parentType.addChildType(configReferenceType);
					}
				}
			}
		}
	}

	protected RichParamConfContainerDefType createRichParamConfContainerDefType(GContainerDef containerDef) {
		return new RichParamConfContainerDefTypeImpl(context, (GParamConfContainerDef) containerDef);
	}

	protected RichChoiceContainerDefType createRichChoiceContainerDefType(GContainerDef containerDef) {
		return new RichChoiceContainerDefTypeImpl(context, (GChoiceContainerDef) containerDef);
	}

	protected RichConfigParameterType createConfigParameterType(GConfigParameter parameter) {
		RichConfigParameterType configParameterType = null;
		if (parameter instanceof GIntegerParamDef) {
			configParameterType = createRichIntegerParamDefType(parameter);
		} else if (parameter instanceof GFloatParamDef) {
			configParameterType = createRichFloatParamDefType(parameter);
		} else if (parameter instanceof GBooleanParamDef) {
			configParameterType = createRichBooleanParamDefType(parameter);
		} else if (parameter instanceof GFunctionNameDef) {
			configParameterType = createRichFunctionNameDefType(parameter);
		} else if (parameter instanceof GLinkerSymbolDef) {
			configParameterType = createRichLinkerSymbolDefType(parameter);
		} else if (parameter instanceof GStringParamDef) {
			configParameterType = createRichStringParamDefType(parameter);
		} else if (parameter instanceof GEnumerationParamDef) {
			RichEnumerationParamDefType enumerationParamDefType = createEnumerationParamDefType((GEnumerationParamDef) parameter);
			for (GEnumerationLiteralDef literal : ((GEnumerationParamDef) parameter).gGetLiterals()) {
				enumerationParamDefType.addLiteral(literal.gGetShortName());
			}
			configParameterType = enumerationParamDefType;
		} else {
			PlatformLogUtil.logAsWarning(Activator.getPlugin(), "ConfigParameter type '" + parameter.eClass().getName() + "' not supported yet!"); //$NON-NLS-1$ //$NON-NLS-2$
		}
		return configParameterType;
	}

	protected RichIntegerParamDefType createRichIntegerParamDefType(GConfigParameter parameter) {
		return new RichIntegerParamDefTypeImpl(context, (GIntegerParamDef) parameter);
	}

	protected RichFloatParamDefType createRichFloatParamDefType(GConfigParameter parameter) {
		return new RichFloatParamDefTypeImpl(context, (GFloatParamDef) parameter);
	}

	protected RichBooleanParamDefType createRichBooleanParamDefType(GConfigParameter parameter) {
		return new RichBooleanParamDefTypeImpl(context, (GBooleanParamDef) parameter);
	}

	protected RichStringParamDefType createRichStringParamDefType(GConfigParameter parameter) {
		return new RichStringParamDefTypeImpl(context, (GStringParamDef) parameter);
	}

	protected RichLinkerSymbolDefType createRichLinkerSymbolDefType(GConfigParameter parameter) {
		return new RichLinkerSymbolDefTypeImpl(context, (GLinkerSymbolDef) parameter);
	}

	protected RichFunctionNameDefType createRichFunctionNameDefType(GConfigParameter parameter) {
		return new RichFunctionNameDefTypeImpl(context, (GFunctionNameDef) parameter);
	}

	protected RichEnumerationParamDefType createEnumerationParamDefType(GEnumerationParamDef parameterDef) {
		return new RichEnumerationParamDefTypeImpl(context, parameterDef);
	}

	protected List<RichConfigReferenceType> createConfigReferenceTypes(GConfigReference reference) {
		List<RichConfigReferenceType> configReferenceTypes = new ArrayList<RichConfigReferenceType>();
		if (reference instanceof GReferenceDef) {
			GReferenceDef referenceDef = (GReferenceDef) reference;
			configReferenceTypes.add(createRichReferenceDefType(referenceDef));
		} else if (reference instanceof GSymbolicNameReferenceDef) {
			// TODO Provide support for GSymbolicNameReferenceDef
			// configReferenceType.add(new RichSymbolicNameReferenceDefType(context, reference,
			// getRichTypeName(reference));
			PlatformLogUtil.logAsWarning(Activator.getPlugin(), "ConfigReference type '" + reference.eClass().getName() + "' not supported yet!"); //$NON-NLS-1$ //$NON-NLS-2$
		} else if (reference instanceof GForeignReferenceDef) {
			GForeignReferenceDef foreignReferenceDef = (GForeignReferenceDef) reference;
			configReferenceTypes.add(createRichForeignReferenceDefType(foreignReferenceDef));
		} else if (reference instanceof GInstanceReferenceDef) {
			GInstanceReferenceDef instanceReferenceDef = (GInstanceReferenceDef) reference;
			configReferenceTypes.add(createRichInstanceReferenceDefType(instanceReferenceDef));
		} else if (reference instanceof GChoiceReferenceDef) {
			GChoiceReferenceDef choiceReferenceDef = (GChoiceReferenceDef) reference;
			configReferenceTypes.add(createRichChoiceReferenceDefType(choiceReferenceDef));
		} else {
			PlatformLogUtil.logAsWarning(Activator.getPlugin(), "ConfigReference type '" + reference.eClass().getName() + "' not supported yet!"); //$NON-NLS-1$ //$NON-NLS-2$
		}
		return configReferenceTypes;
	}

	protected RichForeignReferenceDefType createRichForeignReferenceDefType(GForeignReferenceDef foreignReferenceDef) {
		return new RichForeignReferenceDefTypeImpl(context, foreignReferenceDef);
	}

	protected RichInstanceReferenceDefType createRichInstanceReferenceDefType(GInstanceReferenceDef instanceReferenceDef) {
		return new RichInstanceReferenceDefTypeImpl(context, instanceReferenceDef);
	}

	protected RichReferenceDefType createRichReferenceDefType(GReferenceDef referenceDef) {
		return new RichReferenceDefTypeImpl(context, referenceDef);
	}

	protected RichChoiceReferenceDefType createRichChoiceReferenceDefType(GChoiceReferenceDef choiceReferenceDef) {
		return new RichChoiceReferenceDefTypeImpl(context, choiceReferenceDef);
	}

	protected void registerType(EcucRichType type, GIdentifiable identifiable) {
		Type previousType = types.put(type.getName(), type);
		if (previousType != null) {
			PlatformLogUtil.logAsError(Activator.getPlugin(),
					new IllegalStateException("Type name conflict: " + type.getName() + " Please adjust your Model !")); //$NON-NLS-1$ //$NON-NLS-2$
		}
		if (type instanceof RichModuleDefType) {
			rootTypes.add((RichModuleDefType) type);
		}
	}
}
