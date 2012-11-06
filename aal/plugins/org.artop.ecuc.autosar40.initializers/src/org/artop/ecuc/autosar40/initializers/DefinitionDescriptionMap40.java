/**
 * <copyright>
 * 
 * Copyright (c) See4sys, Tata Elxsi and others.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of the Artop Software License Based on AUTOSAR
 * Released Material (ASLR) which accompanies this distribution, and is
 * available at http://www.artop.org/aslr.html
 * 
 * Contributors: 
 *     Tata Elxsi - Initial API and implementation
 *     See4sys - API and implementation.
 * 
 * </copyright>
 */
package org.artop.ecuc.autosar40.initializers;

import org.artop.ecuc.gautosar.initializers.DefinitionDescriptionMap;
import org.eclipse.emf.ecore.EClass;

import autosar40.ecucdescription.EcucdescriptionPackage;
import autosar40.ecucparameterdef.EcucparameterdefPackage;

public class DefinitionDescriptionMap40 extends DefinitionDescriptionMap {
	/**
	 * Map for keeping the definition and description values for AUTOSAR Release 4.0
	 */
	static {
		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getEcucModuleDef(),
				EcucdescriptionPackage.eINSTANCE.getEcucModuleConfigurationValues());
		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getEcucParamConfContainerDef(),
				EcucdescriptionPackage.eINSTANCE.getEcucContainerValue());
		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getEcucChoiceContainerDef(),
				EcucdescriptionPackage.eINSTANCE.getEcucContainerValue());

		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getEcucReferenceDef(),
				EcucdescriptionPackage.eINSTANCE.getEcucReferenceValue());
		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getEcucForeignReferenceDef(),
				EcucdescriptionPackage.eINSTANCE.getEcucReferenceValue());
		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getEcucInstanceReferenceDef(),
				EcucdescriptionPackage.eINSTANCE.getEcucInstanceReferenceValue());
		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getEcucSymbolicNameReferenceDef(),
				EcucdescriptionPackage.eINSTANCE.getEcucReferenceValue());
		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getEcucChoiceReferenceDef(),
				EcucdescriptionPackage.eINSTANCE.getEcucReferenceValue());

		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getEcucAddInfoParamDef(),
				EcucdescriptionPackage.eINSTANCE.getEcucAddInfoParamValue());
		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getEcucMultilineStringParamDef(),
				EcucdescriptionPackage.eINSTANCE.getEcucTextualParamValue());
		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getEcucStringParamDef(),
				EcucdescriptionPackage.eINSTANCE.getEcucTextualParamValue());
		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getEcucBooleanParamDef(),
				EcucdescriptionPackage.eINSTANCE.getEcucNumericalParamValue());
		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getEcucFloatParamDef(),
				EcucdescriptionPackage.eINSTANCE.getEcucNumericalParamValue());
		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getEcucIntegerParamDef(),
				EcucdescriptionPackage.eINSTANCE.getEcucNumericalParamValue());
		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getEcucEnumerationParamDef(),
				EcucdescriptionPackage.eINSTANCE.getEcucTextualParamValue());
		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getEcucFunctionNameDef(),
				EcucdescriptionPackage.eINSTANCE.getEcucTextualParamValue());
		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getEcucLinkerSymbolDef(),
				EcucdescriptionPackage.eINSTANCE.getEcucTextualParamValue());
	}

	/**
	 * For getting the description node EClass for a particular definition node.
	 * 
	 * @param definition
	 *            The EClass of the definition node.
	 */
	public static EClass getDescription(EClass definition) {
		if (definitionDescriptionMap.containsKey(definition)) {
			return definitionDescriptionMap.get(definition);
		}
		return null;
	}

}
