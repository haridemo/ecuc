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

import java.util.Collection;
import java.util.UUID;


import org.artop.ecl.emf.util.WorkspaceEditingDomainUtil;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.edit.command.CommandParameter;
import org.eclipse.emf.edit.command.CreateChildCommand;
import org.eclipse.emf.edit.provider.ComposedAdapterFactory;
import org.eclipse.emf.edit.provider.ItemPropertyDescriptor.PropertyValueWrapper;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.emf.edit.ui.provider.AdapterFactoryContentProvider;

import org.eclipse.ui.views.properties.IPropertyDescriptor;
import org.eclipse.ui.views.properties.IPropertySource;

/**
 * The class for initializing the configuration from the definition
 * 
 * @author
 */
public class GenerateModuleConfiguration implements IConfigurationGeneration {
    /**
     * Constructor of the class
     */
    public GenerateModuleConfiguration() {
    }
    
    /**
     * Function for generating the description of the definition object
     * 
     * @param moduleDef
     *            the definition object
     * @param parentNode
     *            the parent description node
     * @return the configuration description object
     */
    @SuppressWarnings("restriction")
    public Object generateECUConfiguration(Object definitionObject,
                                           Object parentObject) {
        EObject configurationObject = null;
        int lowerMultiplicity = 0;
        int upperMultiplicity = 0;
        int index = 0;

        /* Getting the lower and upper multiplicity if present for the object */
        if ((true == isPropertyExist(definitionObject,
                     ConfigurationConstants.PROPERTY_ID_LOWER_MULTIPLICITY)) 
                 && (true == isPropertyExist(definitionObject,
                    ConfigurationConstants.PROPERTY_ID_UPPER_MULTIPLICITY))) {
            lowerMultiplicity = getLowerMultiplicity(definitionObject);
            upperMultiplicity = getUpperMultiplicity(definitionObject);
        }
        
        if ((null != parentObject) && (definitionObject instanceof EObject)) {
            do {

                /* Getting the possible child descriptors */
                TransactionalEditingDomain editingDomain 
                                = WorkspaceEditingDomainUtil
                                            .getEditingDomain(parentObject);
                
                Collection<?> newChildDescriptors 
                                = editingDomain
                                            .getNewChildDescriptors(parentObject,
                                                                    null);
                
                String definitionName 
                                = ((EObject) definitionObject)
                                                            .eClass()
                                                            .getName();
                
                String descriptionName 
                                = DescriptionDefinitionMap
                                            .getDescriptionName(definitionName);
                
                for (Object childDescriptor : newChildDescriptors) {
                    
                    if (childDescriptor instanceof CommandParameter) {
                        CommandParameter commandParameter 
                                        = (CommandParameter) childDescriptor;
                        
                        if (commandParameter.value instanceof EObject) {
                            configurationObject 
                                        = (EObject) commandParameter.value;
                            
                            /* Initializing the configuration and 
                             * setting basic properties */
                            if (true == configurationObject
                                                       .eClass()
                                                       .getName()
                                                       .equalsIgnoreCase(
                                                             descriptionName)) {
                                generateConfiguration(definitionObject,
                                                      parentObject,
                                                      editingDomain,
                                                      commandParameter,
                                                      configurationObject);
                                
                                setShortName(definitionObject,
                                             configurationObject,
                                             upperMultiplicity,
                                             index);
                                lowerMultiplicity--;
                                index++;
                                
                                /* Checking for the possible child configuration 
                                 * and initialize if needed */
                                Collection<?> children 
                                            = editingDomain
                                                    .getChildren(definitionObject);
                                if (children.size() > 0) {
                                    for (Object child : children) {
                                        generateECUConfiguration(child,
                                                         configurationObject);
                                    }
                                }
                                
                                break;
                            }
                        }
                    }
                }
            }
            while (lowerMultiplicity > 0);
        }
        return configurationObject;
    }
    
    /**
     * For getting the lower multiplicity of the object
     * 
     * @param definitionObject
     *            the definition object from which the multiplicity to be get
     * @return the lower multiplicity of the object
     */
    private int getLowerMultiplicity(Object definitionObject) {
        Object lowerMultiplicity 
                    = getPropertyValue((EObject) definitionObject,
                                        ConfigurationConstants
                                                .PROPERTY_ID_LOWER_MULTIPLICITY);

        if (null != lowerMultiplicity) {
            String lowerMult = lowerMultiplicity.toString();
            if ((null != lowerMult) 
                    && (false == lowerMult
                                .equalsIgnoreCase(ConfigurationConstants
                                                              .EMPTY_STRING))) {
                return Integer.parseInt(lowerMult);
            }
        }
        return 0;
    }
    
    /**
     * For getting the upper multiplicity of the object
     * 
     * @param definitionObject
     *            the definition object from which the multiplicity to be get
     * @return the upper multiplicity of the object
     */
    private int getUpperMultiplicity(Object definitionObject) {
        Object upperMultiplicity 
                = getPropertyValue((EObject) definitionObject,
                                    ConfigurationConstants
                                            .PROPERTY_ID_UPPER_MULTIPLICITY);

        if (null != upperMultiplicity) {
            String upperMult = upperMultiplicity.toString();
            if (upperMult
                        .equalsIgnoreCase(ConfigurationConstants
                                                  .UPPER_MULTIPLICITY_MAX)) {
                return Integer.MAX_VALUE;
            }
            if ((null != upperMult) 
                    && (false == upperMult
                                    .equalsIgnoreCase(ConfigurationConstants
                                                            .EMPTY_STRING))) {
                return Integer.parseInt(upperMult);
            }
        }
        return 0;
    }
    
    /**
     * For setting the short name of the generated configuration object
     * @param definitionObject  
     *                  the corresponding definition object
     * @param configurationObject
     *                  the generated configuration object
     * @param upperMultiplicity 
     *                  the upper multiplicity of configuration object  
     * @param index 
     *              for generating unique short name
     */
    private void setShortName(Object definitionObject,
                              EObject configurationObject,
                              int upperMultiplicity,
                              int index) {
        if (true == isPropertyExist(configurationObject,
                                    ConfigurationConstants
                                                    .PROPERTY_ID_SHORT_NAME)) {
            String name = ConfigurationConstants.EMPTY_STRING;

            /* Getting the short name of the definition object */
            Object shortName = getPropertyValue((EObject) definitionObject,
                                                ConfigurationConstants
                                                        .PROPERTY_ID_SHORT_NAME);
            if (null != shortName) {
                name = shortName.toString();
            }
            if (upperMultiplicity > 1) {
                name = name + index;
            }
            name = getUniqueShortName(definitionObject,
                                      configurationObject,
                                      index);
            
            /* Setting the short name of the configuration */
            setPropertyValue(configurationObject,
                             name,
                             ConfigurationConstants.PROPERTY_ID_SHORT_NAME);
        }
    }
    
    /**
     * Function for generating the description of the definition object
     * 
     * @param definitionObject
     *            the definition object
     * @param parentObject
     *            the parent description object
     * @param editingDomain
     *            the standard editing domain object
     * @param commandParameter
     *            the command parameter
     * @param configurationObject
     *            the possible child
     */
    @SuppressWarnings("restriction")
    private void generateConfiguration(Object definitionObject,
                                       Object parentObject,
                                       TransactionalEditingDomain editingDomain,
                                       CommandParameter commandParameter,
                                       EObject configurationObject) {
        
        commandParameter.setOwner(parentObject);
        
        /* creating and setting the values of the new command 
         * parameter to execute */
        CommandParameter commandParameterToExecute 
                        = new CommandParameter(commandParameter.getOwner(),
                                               commandParameter.getFeature(),
                                               commandParameter.getCollection(),
                                               commandParameter.getIndex());
        commandParameterToExecute.value = commandParameter;
        Command command = editingDomain
                                   .createCommand(CreateChildCommand.class,
                                                  commandParameterToExecute);
        
        if ((null != command) && (true == command.canExecute())) {
            editingDomain.getCommandStack().execute(command);
        }
        
        /* Setting the definition of the configuration */
        if (true == isPropertyExist(configurationObject,
                                    ConfigurationConstants
                                                    .PROPERTY_ID_DEFINITION)) {
            setPropertyValue(configurationObject,
                             definitionObject,
                             ConfigurationConstants
                                                 .PROPERTY_ID_DEFINITION);
        }
        
        /* Setting the default value of the configuration */
        if (true == isPropertyExist(definitionObject,
                                    ConfigurationConstants
                                                .PROPERTY_ID_DEFAULT_VALUE)) {
            setDefaultValue(configurationObject, definitionObject);
        }
        
        /* Setting uuid */
        if (true == isPropertyExist(configurationObject,
                                    ConfigurationConstants.PROPERTY_ID_UUID)) {
            setPropertyValue(configurationObject,
                             UUID.randomUUID().toString(),
                             ConfigurationConstants.PROPERTY_ID_UUID);
        }
    }
    
    /**
     * For setting the default value of the object
     * 
     * @param configurationObject
     *            the description object
     * @param definitionObject
     *            the definition object
     */
    private void setDefaultValue(EObject configurationObject,
                                 Object definitionObject) {
        Object propertyValue = null;

        propertyValue = getPropertyValue((EObject) definitionObject,
                                         ConfigurationConstants
                                                 .PROPERTY_ID_DEFAULT_VALUE);
        if (null != propertyValue) {
            setPropertyValue(configurationObject,
                             propertyValue,
                             ConfigurationConstants.PROPERTY_ID_VALUE);
        }
    }
    
    /**
     * For setting the property value of the object
     * 
     * @param configurationObject
     *            the description object
     * @param valueObject
     *            the value to be set
     * @param propertyId
     *            the property id
     */
    private Object getPropertyValue(EObject configurationObject,
                                    String propertyId) {
        IPropertySource propertySource = getPropertySource(configurationObject);
        Object defaultValue = propertySource.getPropertyValue(propertyId);

        if (defaultValue instanceof PropertyValueWrapper) {
            defaultValue = ((PropertyValueWrapper) defaultValue)
                                                        .getEditableValue(this);
        }
        return defaultValue;
    }
    
    /**
     * For setting the property value of the object
     * 
     * @param configurationObject
     *            the description object
     * @param valueObject
     *            the value to be set
     * @param propertyId
     *            the property id
     */
    private void setPropertyValue(EObject configurationObject,
                                  Object valueObject,
                                  String propertyId) {
        IPropertySource propertySource = getPropertySource(configurationObject);

        if (false == propertySource.isPropertySet(propertyId)) {
            propertySource.setPropertyValue(propertyId, valueObject);
        }
    }

    /**
     * For getting the property source of the object
     * @param object the object
     * @return the property source of the object
     */
    private IPropertySource getPropertySource(Object object) {
        ComposedAdapterFactory composedAdapterFactory 
                = new ComposedAdapterFactory(ComposedAdapterFactory
                                                                 .Descriptor
                                                                 .Registry
                                                                 .INSTANCE);
        AdapterFactoryContentProvider adapterFactoryContentProvider 
                = new AdapterFactoryContentProvider(composedAdapterFactory);
        IPropertySource propertySource = adapterFactoryContentProvider
                                                  .getPropertySource(object);
        return propertySource;
    }
    
    /**
     * For checking a particular property exist for an object
     * 
     * @param object
     *            the object
     * @param propertyId
     *            the property to be checked
     * @return true if the property exist else false
     */
    private boolean isPropertyExist(Object object, String propertyId) {
        IPropertySource propertySource = getPropertySource(object);

        if (null != propertySource) {
            for (IPropertyDescriptor propertyDescriptor 
                                        : propertySource
                                                    .getPropertyDescriptors()) {
                if (true == propertyDescriptor
                                      .getId().toString()
                                      .equalsIgnoreCase(propertyId)){
                    return true;
                }
            }
        }
        return false;
    }
    
    /**
     * Function for generating the description of the definition object
     * 
     * @param definitionObject
     *            the definition object
     * @param parentObject
     *            the parent description node
     * @param shortName
     *            the short name of the configuration to be given
     * @return the configuration description object
     */
    @SuppressWarnings("restriction")
    public Object generateECUConfiguration(Object definitionObject,
                                           Object parentObject,
                                           String shortName) {
        EObject configurationObject = null;

        if (null != parentObject && definitionObject instanceof EObject) {

            /* Checking the possible child descriptors of the node */
            TransactionalEditingDomain editingDomain 
                                    = WorkspaceEditingDomainUtil
                                                .getEditingDomain(parentObject);
            Collection<?> newChildDescriptors 
                                    = editingDomain
                                            .getNewChildDescriptors(parentObject,
                                                                    null);
            String definitionName = ((EObject) definitionObject)
                                                                .eClass()
                                                                .getName();
            String descriptionName = DescriptionDefinitionMap
                                         .getDescriptionName(definitionName);
            for (Object childDescriptor : newChildDescriptors) {
                if (childDescriptor instanceof CommandParameter) {
                    CommandParameter commandParameter 
                                        = (CommandParameter) childDescriptor;
                    if (commandParameter.value instanceof EObject) {
                        configurationObject = (EObject) commandParameter.value;

                        /* Generating the configuration */
                        if (true == configurationObject
                                                       .eClass()
                                                       .getName()
                                                       .equalsIgnoreCase(
                                                             descriptionName)) {
                            generateConfiguration(definitionObject,
                                                  parentObject,
                                                  editingDomain,
                                                  commandParameter,
                                                  configurationObject);
                            break;
                        }
                    }
                }
            }

            if (true == isPropertyExist(configurationObject,
                                        ConfigurationConstants
                                                    .PROPERTY_ID_SHORT_NAME)) {
                setPropertyValue(configurationObject,
                                 shortName,
                                 ConfigurationConstants.PROPERTY_ID_SHORT_NAME);
            }
        }
        return configurationObject;
    }
    
    /**
     * Function for generating the description of the definition object
     * 
     * @param definitionObject
     *            the definition object
     * @param parentObject
     *            the parent description node
     * @param multiplicity
     *            number of instance to be created
     */
    @SuppressWarnings("restriction")
    public void generateECUConfiguration(Object definitionObject,
                                         Object parentObject,
                                         int multiplicity) {
        EObject configurationObject = null;

        if (null != parentObject && definitionObject instanceof EObject) {
            for (int index = 0; index < multiplicity; index++) {

                /* Checking the possible child descriptors of the node */
                TransactionalEditingDomain editingDomain 
                                = WorkspaceEditingDomainUtil
                                                .getEditingDomain(parentObject);
                
                Collection<?> newChildDescriptors 
                                = editingDomain
                                        .getNewChildDescriptors(parentObject,
                                                                null);
                String definitionName 
                                = ((EObject) definitionObject)
                                                            .eClass()
                                                            .getName();
                String descriptionName 
                                = DescriptionDefinitionMap
                                         .getDescriptionName(definitionName);

                for (Object childDescriptor : newChildDescriptors) {
                    if (childDescriptor instanceof CommandParameter) {
                        CommandParameter commandParameter 
                                        = (CommandParameter) childDescriptor;
                        if (commandParameter.value instanceof EObject) {
                            configurationObject = (EObject) commandParameter.value;
                            if (true 
                                    == configurationObject
                                                       .eClass()
                                                       .getName()
                                                       .equalsIgnoreCase(
                                                             descriptionName)) {
                                generateConfiguration(definitionObject,
                                                      parentObject,
                                                      editingDomain,
                                                      commandParameter,
                                                      configurationObject);
                                break;
                            }
                        }
                    }
                }
                
                if (true == isPropertyExist(configurationObject,
                                            ConfigurationConstants
                                                    .PROPERTY_ID_SHORT_NAME)) {
                    String shortName = getUniqueShortName(definitionObject,
                                                          configurationObject,
                                                          index);
                    setPropertyValue(configurationObject,
                                     shortName,
                                     ConfigurationConstants
                                                     .PROPERTY_ID_SHORT_NAME);
                }
            }
        }
    }
    
    /**
     * For getting the unique name for the object
     * 
     * @param definitionObject
     *            the definition object name
     * @param configurationObject
     *            the generated configuration object
     * @param index
     *            the index of the item
     * @return the name
     */
    @SuppressWarnings("restriction")
    private String getUniqueShortName(Object definitionObject,
                                      EObject configurationObject,
                                      int index) {
        String name = ConfigurationConstants.EMPTY_STRING;
        Object shortName 
                = getPropertyValue((EObject) definitionObject,
                                    ConfigurationConstants
                                                    .PROPERTY_ID_SHORT_NAME);

        if (null != shortName) {
            name = shortName.toString();
        }

        /* Getting the siblings and checking the uniqueness of the name */
        TransactionalEditingDomain editingDomain 
                = WorkspaceEditingDomainUtil
                                .getEditingDomain((Object) configurationObject);
        Object parentObject = editingDomain.getParent(configurationObject);
        Collection<?> children = editingDomain.getChildren(parentObject);
        int configIndex = children.size();

        for (Object childConfiguration : children) {
            String tempName = name + index;
            if (true == isPropertyExist(childConfiguration,
                                        ConfigurationConstants
                                                .PROPERTY_ID_SHORT_NAME)) {
                String currentName = ConfigurationConstants.EMPTY_STRING;
                shortName 
                        = getPropertyValue((EObject) childConfiguration,
                                           ConfigurationConstants
                                                   .PROPERTY_ID_SHORT_NAME);

                if (null != shortName) {
                    currentName = shortName.toString();
                }

                if ((null != currentName) 
                        && (true == currentName
                                             .equalsIgnoreCase(tempName))) {
                    index++;
                }
                configIndex--;
                if (0 == configIndex) {
                    return tempName;
                }
            }
        }
        
        return null;
    }
}
