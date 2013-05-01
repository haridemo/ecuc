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
package org.artop.ecuc.autosar3x.initializers;

import org.artop.ecuc.gautosar.initializers.DefinitionDescriptionMap;
import org.eclipse.emf.ecore.EClass;

import autosar3x.ecucdescription.EcucdescriptionPackage;
import autosar3x.ecucparameterdef.EcucparameterdefPackage;

public class DefinitionDescriptionMap3x extends DefinitionDescriptionMap {

	/**
	 * Map for keeping the definition and description values for AUTOSAR Release 3.x
	 */
	static {
		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getModuleDef(), EcucdescriptionPackage.eINSTANCE.getModuleConfiguration());
		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getParamConfContainerDef(), EcucdescriptionPackage.eINSTANCE.getContainer());
		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getBooleanParamDef(), EcucdescriptionPackage.eINSTANCE.getBooleanValue());
		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getEnumerationParamDef(),
				EcucdescriptionPackage.eINSTANCE.getEnumerationValue());
		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getFloatParamDef(), EcucdescriptionPackage.eINSTANCE.getFloatValue());
		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getIntegerParamDef(), EcucdescriptionPackage.eINSTANCE.getIntegerValue());
		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getStringParamDef(), EcucdescriptionPackage.eINSTANCE.getStringValue());
		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getFunctionNameDef(), EcucdescriptionPackage.eINSTANCE.getFunctionNameValue());
		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getReferenceParamDef(), EcucdescriptionPackage.eINSTANCE.getReferenceValue());
		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getLinkerSymbolDef(), EcucdescriptionPackage.eINSTANCE.getLinkerSymbolValue());
		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getDerivedStringParamDef(), EcucdescriptionPackage.eINSTANCE.getStringValue());
		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getDerivedIntegerParamDef(),
				EcucdescriptionPackage.eINSTANCE.getIntegerValue());
		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getDerivedFloatParamDef(), EcucdescriptionPackage.eINSTANCE.getFloatValue());
		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getDerivedEnumerationParamDef(),
				EcucdescriptionPackage.eINSTANCE.getEnumerationValue());
		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getDerivedBooleanParamDef(),
				EcucdescriptionPackage.eINSTANCE.getBooleanValue());
		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getSymbolicNameReferenceParamDef(),
				EcucdescriptionPackage.eINSTANCE.getReferenceValue());
		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getChoiceContainerDef(), EcucdescriptionPackage.eINSTANCE.getContainer());
		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getChoiceReferenceParamDef(),
				EcucdescriptionPackage.eINSTANCE.getReferenceValue());
		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getConfigReference(),
				EcucdescriptionPackage.eINSTANCE.getConfigReferenceValue());
		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getForeignReferenceParamDef(),
				EcucdescriptionPackage.eINSTANCE.getReferenceValue());
		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getInstanceReferenceParamDef(),
				EcucdescriptionPackage.eINSTANCE.getInstanceReferenceValue());
		definitionDescriptionMap.put(EcucparameterdefPackage.eINSTANCE.getReferenceParamDef(), EcucdescriptionPackage.eINSTANCE.getReferenceValue());
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
