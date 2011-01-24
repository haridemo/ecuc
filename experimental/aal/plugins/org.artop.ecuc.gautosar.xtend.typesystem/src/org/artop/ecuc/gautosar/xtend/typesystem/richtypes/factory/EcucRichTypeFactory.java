package org.artop.ecuc.gautosar.xtend.typesystem.richtypes.factory;

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

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import org.artop.aal.common.resource.AutosarURIFactory;
import org.artop.ecl.emf.util.EObjectUtil;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.CompositeEcucRichType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.EcucRichType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichBooleanParamDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichChoiceContainerDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichChoiceReferenceDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichConfigParameterType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichConfigReferenceType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichEnumerationParamDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichFloatParamDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichFunctionNameDefType;
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
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.impl.RichFunctionNameDefTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.impl.RichIntegerParamDefTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.impl.RichLinkerSymbolDefTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.impl.RichModuleDefTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.impl.RichParamConfContainerDefTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.impl.RichReferenceDefTypeImpl;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.impl.RichStringParamDefTypeImpl;
import org.eclipse.xtend.typesystem.Type;

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
			rootType.accept(new AddChildAccessorFeaturesVisitor());
			rootType.accept(new AddParentAccessorFeaturesVisitor());
			rootType.accept(new AddConfigReferenceValueAccessorFeaturesVisitor());
		}
	}

	protected void createRichModuleDefTypes() {
		for (GModuleDef moduleDef : EObjectUtil.getAllInstancesOf(context.getModuleDefModelDescriptor(), GModuleDef.class, false)) {
			// TODO Surround with appropriate tracing option
			long start = System.currentTimeMillis();
			int typesBefore = types.size();

			RichModuleDefType rich = createRichModuleDefType(moduleDef);
			registerType(rich, moduleDef);

			createCompositeRichTypes(rich, moduleDef);

			// TODO Surround with appropriate tracing option
			long stop = System.currentTimeMillis();
			System.out
					.println("Created " + (types.size() - typesBefore) + " types in " + (stop - start) + "ms for " + AutosarURIFactory.getAbsoluteQualifiedName(moduleDef)); //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
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
				throw new UnsupportedOperationException("ContainerDef type " + containerDef.eClass().getName() + " currently not supported!"); //$NON-NLS-1$ //$NON-NLS-2$
			}
			registerType(containerDefType, containerDef);
			parentType.addChildType(containerDefType);

			createCompositeRichTypes(containerDefType, containerDef);
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
		} else if (parameter instanceof GStringParamDef) {
			configParameterType = createRichStringParamDefType(parameter);
		} else if (parameter instanceof GLinkerSymbolDef) {
			configParameterType = createRichLinkerSymbolDefType(parameter);
		} else if (parameter instanceof GFunctionNameDef) {
			configParameterType = createRichFunctionNameDefType(parameter);
		} else if (parameter instanceof GEnumerationParamDef) {
			RichEnumerationParamDefType enumerationParamDefType = createEnumerationParamDefType((GEnumerationParamDef) parameter);
			for (GEnumerationLiteralDef literal : ((GEnumerationParamDef) parameter).gGetLiterals()) {
				enumerationParamDefType.addLiteral(literal.gGetShortName());
			}
			configParameterType = enumerationParamDefType;
		} else {
			throw new UnsupportedOperationException("ConfigParameter type '" + parameter.eClass().getName() + "' not supported yet!"); //$NON-NLS-1$ //$NON-NLS-2$
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
			System.err.println("ConfigReference type '" + reference.eClass().getName() + "' not supported yet!"); //$NON-NLS-1$ //$NON-NLS-2$
		} else if (reference instanceof GForeignReferenceDef) {
			// TODO Provide support for GForeignReferenceDef
			// configReferenceType.add(new RichForeignReferenceDefType(context, reference,
			// getRichTypeName(reference));
			System.err.println("ConfigReference type '" + reference.eClass().getName() + "' not supported yet!"); //$NON-NLS-1$ //$NON-NLS-2$
		} else if (reference instanceof GInstanceReferenceDef) {
			// TODO Provide support for GInstanceReferenceDef
			// configReferenceType.add(new RichInstanceReferenceDefType(context, reference,
			// getRichTypeName(reference));
			System.err.println("ConfigReference type '" + reference.eClass().getName() + "' not supported yet!"); //$NON-NLS-1$ //$NON-NLS-2$
		} else if (reference instanceof GChoiceReferenceDef) {
			GChoiceReferenceDef choiceReferenceDef = (GChoiceReferenceDef) reference;
			for (GParamConfContainerDef destination : choiceReferenceDef.gGetDestinations()) {
				configReferenceTypes.add(createRichChoiceReferenceDefType(choiceReferenceDef, destination));
			}
		} else {
			throw new UnsupportedOperationException("ConfigReference type '" + reference.eClass().getName() + "' not supported yet!"); //$NON-NLS-1$ //$NON-NLS-2$
		}
		return configReferenceTypes;
	}

	protected RichReferenceDefType createRichReferenceDefType(GReferenceDef referenceDef) {
		return new RichReferenceDefTypeImpl(context, referenceDef, referenceDef.gGetDestination());
	}

	protected RichChoiceReferenceDefType createRichChoiceReferenceDefType(GChoiceReferenceDef choiceReferenceDef, GParamConfContainerDef destination) {
		return new RichChoiceReferenceDefTypeImpl(context, choiceReferenceDef, destination);
	}

	protected void registerType(EcucRichType type, GIdentifiable identifiable) {
		Type previousType = types.put(type.getName(), type);
		if (previousType != null) {
			throw new IllegalStateException("Type name conflict: " + type.getName()); //$NON-NLS-1$
		}
		if (type instanceof RichModuleDefType) {
			rootTypes.add((RichModuleDefType) type);
		}
	}
}
