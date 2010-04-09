/**
 * <copyright>
 * 
 * Copyright (c) Tata Elxsi Ltd and others.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of the Artop Software License Based on Released
 * AUTOSAR Material (ASLR) which accompanies this distribution, and is available
 * at http://www.artop.org/aslr.html
 * 
 * Contributors: 
 *     Tata Elxsi Ltd, India - Initial API and implementation
 * 
 * </copyright>
 */

package org.artop.aal.moduleconfiguration.initializer;

/**
 * The interface for initializing the module configuration
 * from definition object
 * 
 * @author 
 *
 */
public interface IConfigurationGeneration
{
    
    /**
     * Function for generating the description of the definition object
     * @param definitionObject the definition object
     * @param parentObject the parent description node
     * @return the configuration description object
     */
    Object generateECUConfiguration(Object definitionObject, 
                                    Object parentObject);
    
    /**
     * Function for generating the description of the definition object
     * @param definitionObject the definition object
     * @param parentObject the parent description node
     * @param shortName the short name of the configuration to be given
     * @return the configuration description object
     */
    Object generateECUConfiguration(Object definitionObject,
                                    Object parentObject, 
                                    String shortName);
    
    /**
     * Function for generating the description of the definition object
     * @param definitionObject the definition object
     * @param parentObject the parent description node
     * @param multiplicity number of instance to be created
     */
    void generateECUConfiguration(Object definitionObject, 
                                  Object parentObject, 
                                  int multiplicity);
}
