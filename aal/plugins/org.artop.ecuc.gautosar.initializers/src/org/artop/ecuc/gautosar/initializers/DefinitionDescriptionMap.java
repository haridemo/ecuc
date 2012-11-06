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
