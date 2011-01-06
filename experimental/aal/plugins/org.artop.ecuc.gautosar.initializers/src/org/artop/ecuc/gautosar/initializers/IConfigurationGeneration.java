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

import gautosar.gecucdescription.GModuleConfiguration;
import gautosar.gecucparameterdef.GModuleDef;
import gautosar.ggenericstructure.ginfrastructure.GARPackage;

/**
 * The interface for initializing the module configuration from definition object
 */
public interface IConfigurationGeneration {

	/**
	 * Function for generating the description of the definition object
	 * 
	 * @param definitionObject
	 *            the module definition object
	 * @param targetPackage
	 *            the parent description node
	 * @return the module configuration description object
	 */
	GModuleConfiguration generateECUConfiguration(GModuleDef definitionObject, GARPackage targetPackage);

	/**
	 * Function for generating the description of the definition object
	 * 
	 * @param definitionObject
	 *            the module definition object
	 * @param targetPackage
	 *            the parent description node
	 * @param shortName
	 *            the short name of the configuration to be given
	 * @return the configuration description object
	 */
	GModuleConfiguration generateECUConfiguration(GModuleDef definitionObject, GARPackage targetPackage, String shortName);

	/**
	 * Function for generating the description of the definition object
	 * 
	 * @param definitionObject
	 *            the module definition object
	 * @param targetPackage
	 *            the parent description node
	 * @param multiplicity
	 *            number of instances to be created
	 * @return an iterable list of configuration description objects
	 */
	Iterable<GModuleConfiguration> generateECUConfigurations(GModuleDef definitionObject, GARPackage targetPackage, int multiplicity);

	/**
	 * Function for generating the description of the definition object
	 * 
	 * @param definitionObject
	 *            the module definition object
	 * @param targetPackage
	 *            the parent description node
	 * @param shortNames
	 *            the short names of the configurations to be given
	 * @return an iterable list of configuration description objects
	 */
	Iterable<GModuleConfiguration> generateECUConfigurations(GModuleDef definitionObject, GARPackage targetPackage, String[] shortNames);

	/**
	 * Initialize module configuration with parameter and reference values of the given 'moduleConfiguration' module
	 * configuration.
	 * 
	 * @param moduleConfigurationToInitialize
	 *            the initial module definition object
	 * @param moduleConfiguration
	 *            the module definition object to be use for initializing values
	 * @return initialized module configuration
	 */
	GModuleConfiguration initializeModuleConfigurationValues(final GModuleConfiguration moduleConfigurationToInitialize,
			final GModuleConfiguration moduleConfiguration);

}
