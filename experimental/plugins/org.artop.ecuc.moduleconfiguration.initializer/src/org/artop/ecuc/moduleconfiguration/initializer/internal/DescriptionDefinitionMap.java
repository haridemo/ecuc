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
package org.artop.ecuc.moduleconfiguration.initializer.internal;

import java.util.HashMap;

/**
 * This class is used to keep the definition description map.
 * 
 * @author 
 */
public class DescriptionDefinitionMap {
    
    /**
     * Map for keeping the definition, description class names
     */
    private static HashMap<String, String> definitionDescriptionMap = 
                                                new HashMap<String, String>();
    
    /**
     * Constructor
     */
    private DescriptionDefinitionMap() {
    }
    
    /**
     * Map for keeping the definition and description values
     */
    static {
        definitionDescriptionMap.put("ARPackage", "ARPackage");
        definitionDescriptionMap.put("ModuleDef", "ModuleConfiguration");
        definitionDescriptionMap.put("ParamConfContainerDef", "Container");
        definitionDescriptionMap.put("BooleanParamDef", "BooleanValue");
        definitionDescriptionMap.put("EnumerationParamDef", "EnumerationValue");
        definitionDescriptionMap.put("FloatParamDef", "FloatValue");
        definitionDescriptionMap.put("IntegerParamDef", "IntegerValue");
        definitionDescriptionMap.put("StringParamDef", "StringValue");
        definitionDescriptionMap.put("FunctionNameDef", "FunctionNameValue");
        definitionDescriptionMap.put("ReferenceParamDef", "ReferenceValue");
        definitionDescriptionMap.put("LinkerSymbolDef", "LinkerSymbolValue");
        definitionDescriptionMap.put("DerivedStringParamDef", "StringValue");
        definitionDescriptionMap.put("DerivedIntegerParamDef", "IntegerValue");
        definitionDescriptionMap.put("DerivedFloatParamDef", "FloatValue");
        definitionDescriptionMap.put("DerivedEnumerationParamDef", 
                                     "EnumerationValue");
        definitionDescriptionMap.put("DerivedBooleanParamDef", "BooleanValue");
        definitionDescriptionMap.put("SymbolicNameReferenceParamDef", 
                                     "ReferenceValue");
        definitionDescriptionMap.put("ChoiceContainerDef", "Container");
        definitionDescriptionMap.put("ChoiceReferenceParamDef", 
                                     "ReferenceValue");
        definitionDescriptionMap.put("ConfigReference", "ConfigReferenceValue");
        definitionDescriptionMap.put("ForeignReferenceParamDef", 
                                     "ReferenceValue");
        definitionDescriptionMap.put("InstanceReferenceParamDef", 
                                     "InstanceReferenceValue");
        definitionDescriptionMap.put("ReferenceParamDef", "ReferenceValue");
        definitionDescriptionMap.put("Short Name", "Short Name");
        
    }
    
    /**
     * For getting the description node name for a particular 
     * definition node.
     * 
     * @param definitionName
     *            The name of the definition node.
     */
    public static String getDescriptionName(String definitionName) {
        if (definitionDescriptionMap.containsKey(definitionName)) {
            return definitionDescriptionMap.get(definitionName);
        }
        return ConfigurationConstants.EMPTY_STRING;
    }
    
}
