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
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.AbstractCompositeEcucRichType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.AbstractEcucRichType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.AbstractRichConfigParameterType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.AbstractRichConfigReferenceType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichBooleanParamDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichChoiceContainerDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichChoiceReferenceDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichEnumerationParamDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichFloatParamDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichFunctionNameDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichIntegerParamDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichLinkerSymbolDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichModuleDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichParamConfContainerDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichReferenceDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichStringParamDefType;
import org.eclipse.xtend.typesystem.Type;

public class EcucRichTypeFactory {

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

			RichModuleDefType rich = new RichModuleDefType(context, moduleDef);
			registerType(rich, moduleDef);

			createCompositeRichTypes(rich, moduleDef);

			// TODO Surround with appropriate tracing option
			long stop = System.currentTimeMillis();
			System.out
					.println("Created " + (types.size() - typesBefore) + " types in " + (stop - start) + "ms for " + AutosarURIFactory.getAbsoluteQualifiedName(moduleDef)); //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
		}

		// FIXME Make sure that AUTOSAR model gets loaded if no module defs could be found (or find a more appropriate
		// location to do so). Otherwise we end up in compile errors when the workbench has been started, the AUTOSAR
		// model in a BSW Platform project has not yet been loaded but the code generation templates and extensions get
		// built.
	}

	protected void createCompositeRichTypes(AbstractCompositeEcucRichType parentType, GIdentifiable identifiable) {
		List<? extends GContainerDef> containerDefs = Collections.emptyList();
		if (identifiable instanceof GModuleDef) {
			containerDefs = ((GModuleDef) identifiable).gGetContainers();
		} else if (identifiable instanceof GParamConfContainerDef) {
			containerDefs = ((GParamConfContainerDef) identifiable).gGetSubContainers();
		} else if (identifiable instanceof GChoiceContainerDef) {
			containerDefs = ((GChoiceContainerDef) identifiable).gGetChoices();
		}

		for (GContainerDef containerDef : containerDefs) {
			AbstractCompositeEcucRichType rich = null;
			if (containerDef instanceof GParamConfContainerDef) {
				rich = new RichParamConfContainerDefType(context, (GParamConfContainerDef) containerDef);
			} else if (containerDef instanceof GChoiceContainerDef) {
				rich = new RichChoiceContainerDefType(context, (GChoiceContainerDef) containerDef);
			} else {
				throw new UnsupportedOperationException("ContainerDef type " + containerDef.eClass().getName() + " currently not supported!"); //$NON-NLS-1$ //$NON-NLS-2$
			}
			registerType(rich, containerDef);
			parentType.addChildType(rich);

			createCompositeRichTypes(rich, containerDef);
		}

		if (identifiable instanceof GParamConfContainerDef) {
			for (GConfigParameter parameter : ((GParamConfContainerDef) identifiable).gGetParameters()) {
				AbstractRichConfigParameterType rich = createConfigParameterType(parameter);
				if (rich != null) {
					registerType(rich, parameter);
					parentType.addChildType(rich);
				}
			}
			for (GConfigReference reference : ((GParamConfContainerDef) identifiable).gGetReferences()) {
				for (AbstractRichConfigReferenceType rich : createConfigReferenceTypes(reference)) {
					if (rich != null) {
						registerType(rich, reference);
						parentType.addChildType(rich);
					}
				}
			}
		}
	}

	protected AbstractRichConfigParameterType createConfigParameterType(GConfigParameter parameter) {
		AbstractRichConfigParameterType configParameterType = null;
		if (parameter instanceof GIntegerParamDef) {
			configParameterType = new RichIntegerParamDefType(context, (GIntegerParamDef) parameter);
		} else if (parameter instanceof GEnumerationParamDef) {
			configParameterType = createEnumerationParamDefType((GEnumerationParamDef) parameter);
		} else if (parameter instanceof GFloatParamDef) {
			configParameterType = new RichFloatParamDefType(context, (GFloatParamDef) parameter);
		} else if (parameter instanceof GFunctionNameDef) {
			configParameterType = new RichFunctionNameDefType(context, (GFunctionNameDef) parameter);
		} else if (parameter instanceof GStringParamDef) {
			configParameterType = new RichStringParamDefType(context, (GStringParamDef) parameter);
		} else if (parameter instanceof GLinkerSymbolDef) {
			configParameterType = new RichLinkerSymbolDefType(context, (GLinkerSymbolDef) parameter);
		} else if (parameter instanceof GBooleanParamDef) {
			configParameterType = new RichBooleanParamDefType(context, (GBooleanParamDef) parameter);
		} else {
			throw new UnsupportedOperationException("ConfigParameter type '" + parameter.eClass().getName() + "' not supported yet!"); //$NON-NLS-1$ //$NON-NLS-2$
		}
		return configParameterType;
	}

	protected AbstractRichConfigParameterType createEnumerationParamDefType(GEnumerationParamDef parameterDef) {
		RichEnumerationParamDefType type = new RichEnumerationParamDefType(context, parameterDef);
		for (GEnumerationLiteralDef literal : parameterDef.gGetLiterals()) {
			type.addLiteral(literal.gGetShortName());
		}
		return type;
	}

	protected List<AbstractRichConfigReferenceType> createConfigReferenceTypes(GConfigReference reference) {
		List<AbstractRichConfigReferenceType> configReferenceTypes = new ArrayList<AbstractRichConfigReferenceType>();
		if (reference instanceof GChoiceReferenceDef) {
			GChoiceReferenceDef choiceReferenceDef = (GChoiceReferenceDef) reference;
			for (GParamConfContainerDef destination : choiceReferenceDef.gGetDestinations()) {
				configReferenceTypes.add(new RichChoiceReferenceDefType(context, choiceReferenceDef, destination));
			}
		} else if (reference instanceof GForeignReferenceDef) {
			// configReferenceType.add(new RichForeignReferenceDefType(context, reference,
			// getRichTypeName(reference));
			System.err.println("ConfigReference type '" + reference.eClass().getName() + "' not supported yet!"); //$NON-NLS-1$ //$NON-NLS-2$
		} else if (reference instanceof GInstanceReferenceDef) {
			// configReferenceType.add(new RichInstanceReferenceDefType(context, reference,
			// getRichTypeName(reference));
			System.err.println("ConfigReference type '" + reference.eClass().getName() + "' not supported yet!"); //$NON-NLS-1$ //$NON-NLS-2$
		} else if (reference instanceof GSymbolicNameReferenceDef) {
			// configReferenceType.add(new RichSymbolicNameReferenceDefType(context, reference,
			// getRichTypeName(reference));
			System.err.println("ConfigReference type '" + reference.eClass().getName() + "' not supported yet!"); //$NON-NLS-1$ //$NON-NLS-2$
		} else if (reference instanceof GReferenceDef) {
			GReferenceDef referenceDef = (GReferenceDef) reference;
			configReferenceTypes.add(new RichReferenceDefType(context, referenceDef, referenceDef.gGetDestination()));
		} else {
			throw new UnsupportedOperationException("ConfigReference type '" + reference.eClass().getName() + "' not supported yet!"); //$NON-NLS-1$ //$NON-NLS-2$
		}
		return configReferenceTypes;
	}

	protected void registerType(AbstractEcucRichType type, GIdentifiable identifiable) {
		Type previousType = types.put(type.getName(), type);
		if (previousType != null) {
			throw new IllegalStateException("Type name conflict: " + type.getName()); //$NON-NLS-1$
		}
		if (type instanceof RichModuleDefType) {
			rootTypes.add((RichModuleDefType) type);
		}

		// System.out.println("Created type " + type.getName());
	}
}
