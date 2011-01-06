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
package org.artop.ecuc.gautosar.initializers;

import java.util.HashMap;

import org.eclipse.emf.ecore.EClass;

/**
 * This class is used to keep the definition description map.
 */
public class DefinitionDescriptionMap {

	/**
	 * Map for keeping the definition, description EClass
	 */
	protected static HashMap<EClass, EClass> definitionDescriptionMap = new HashMap<EClass, EClass>();

	/**
	 * Constructor
	 */
	protected DefinitionDescriptionMap() {

	}

	/**
	 * Map for keeping the definition and description values
	 */
	static {
		/*
		 * GAUTOSAR types
		 */
		// FIXME: use EClass instead String
		//		definitionDescriptionMap.put("GARPackage", "GARPackage"); //$NON-NLS-1$//$NON-NLS-2$
		//		definitionDescriptionMap.put("GModuleDef", "GModuleConfiguration"); //$NON-NLS-1$//$NON-NLS-2$
		//		definitionDescriptionMap.put("GParamConfContainerDef", "GContainer"); //$NON-NLS-1$//$NON-NLS-2$
		//		definitionDescriptionMap.put("GReferenceDef", "GReferenceValue"); //$NON-NLS-1$//$NON-NLS-2$
		//		definitionDescriptionMap.put("GChoiceContainerDef", "GContainer"); //$NON-NLS-1$//$NON-NLS-2$
		//		definitionDescriptionMap.put("GConfigReference", "GConfigReferenceValue"); //$NON-NLS-1$//$NON-NLS-2$

		// FIXME: check if these are needed
		//definitionDescriptionMap.put("ARPackage", "ARPackage"); //$NON-NLS-1$//$NON-NLS-2$
		//definitionDescriptionMap.put("Short Name", "Short Name"); //$NON-NLS-1$//$NON-NLS-2$
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
