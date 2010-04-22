/**
 * <copyright>
 * 
 * Copyright (c) Tata Elxsi Ltd and others. All rights reserved.
 * This program and the accompanying materials are made available under the
 * terms of the Artop Software License Based on Released AUTOSAR Material (ASLR)
 * which accompanies this distribution, and is available at
 * http://www.artop.org/aslr.html 
 * 
 * Contributors:
 *      Tata Elxsi Ltd, India - Initial API and implementation
 *       
 * </copyright>
 */
package org.artop.ecuc.moduleconfiguration.initializer;

import gautosar.gecucdescription.GModuleConfiguration;
import gautosar.gecucparameterdef.GModuleDef;
import gautosar.gecucparameterdef.GParamConfMultiplicity;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GARPackage;

import java.util.Collection;
import java.util.UUID;
import java.util.Vector;

import org.artop.ecl.emf.util.WorkspaceEditingDomainUtil;
import org.eclipse.emf.common.command.Command;
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
     * @param definitionObject
     *            the module definition object
     * @param targetPackage
     *            the parent description node
     * @return configuration description object
     */
    public GModuleConfiguration generateECUConfiguration(
                                                     GModuleDef definitionObject,
                                                     GARPackage targetPackage) {
        return (GModuleConfiguration) generateConfiguration(0,
                                                            definitionObject,
                                                            targetPackage);
    }
    
    /**
     * Function for generating the description of the definition object
     * 
     * @param definitionObject
     *            the definition object
     * @param parentObject
     *            the parent description node
     * @return the description object
     */
    @SuppressWarnings("restriction")
    private GARObject generateConfiguration(int index,
                                            GARObject definitionObject,
                                            GARObject parentObject) {
        GARObject configurationObject = null;
        int lowerMultiplicity = 0;
        int upperMultiplicity = 0;
        
        /* Getting the lower and upper multiplicity if present for the object */
        if (definitionObject instanceof GParamConfMultiplicity) {
            try {
                lowerMultiplicity = Integer
                        .parseInt(((GParamConfMultiplicity) definitionObject)
                                  .gGetLowerMultiplicityAsString());
            }
            catch (NumberFormatException e) {
                lowerMultiplicity = 0;
            }
            
            try {
                upperMultiplicity = Integer
                    .parseInt(((GParamConfMultiplicity) definitionObject)
                                  .gGetUpperMultiplicityAsString());
            }
            catch (NumberFormatException e) {
                upperMultiplicity = Integer.MAX_VALUE;
            }
        }
        
        if ((null != parentObject) && (definitionObject instanceof GARObject)) {
            do {
                
                /* Getting the possible child descriptors */
                TransactionalEditingDomain editingDomain 
                    = WorkspaceEditingDomainUtil.getEditingDomain(parentObject);
                
                Collection<?> newChildDescriptors 
                        = editingDomain.getNewChildDescriptors(parentObject,
                                                               null);
                
                String definitionName = ((GARObject) definitionObject)
                                                                  .eClass()
                                                                  .getName();
                
                String descriptionName = DescriptionDefinitionMap
                                            .getDescriptionName(definitionName);
                
                for (Object childDescriptor : newChildDescriptors) {
                    
                    if (childDescriptor instanceof CommandParameter) {
                        CommandParameter commandParameter = (CommandParameter) 
                                                                childDescriptor;
                        
                        if (commandParameter.value instanceof GARObject) {
                            configurationObject = (GARObject) 
                                                    commandParameter.value;
                            
                            /*
                             * Initializing the configuration and setting basic
                             * properties
                             */
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
                                
                                /*
                                 * Checking for the possible child configuration
                                 * and initialize if needed
                                 */
                                Collection<?> children 
                                        = editingDomain
                                                .getChildren(definitionObject);
                                
                                if (children.size() > 0) {
                                    for (Object child : children) {
                                        generateConfiguration(
                                                          index,
                                                          (GARObject) child,
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
     * For setting the short name of the generated configuration object
     * 
     * @param definitionObject
     *            the corresponding definition object
     * @param configurationObject
     *            the generated configuration object
     * @param upperMultiplicity
     *            the upper multiplicity of configuration object
     * @param index
     *            for generating unique short name
     */
    private void setShortName(GARObject definitionObject,
                              GARObject configurationObject,
                              int upperMultiplicity,
                              int index) {
        if (true == isPropertyExist(configurationObject,
                                    ConfigurationConstants
                                        .PROPERTY_ID_SHORT_NAME)) {
            String name = ConfigurationConstants.EMPTY_STRING;
            
            /* Getting the short name of the definition object */
            Object shortName = getPropertyValue((GARObject) definitionObject,
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
    private void generateConfiguration(GARObject definitionObject,
                                       GARObject parentObject,
                                       TransactionalEditingDomain editingDomain,
                                       CommandParameter commandParameter,
                                       GARObject configurationObject) {
        
        commandParameter.setOwner(parentObject);
        
        /*
         * creating and setting the values of the new command parameter to
         * execute
         */
        CommandParameter commandParameterToExecute 
                = new CommandParameter(
                                       commandParameter.getOwner(),
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
    private void setDefaultValue(GARObject configurationObject,
                                 GARObject definitionObject) {
        Object propertyValue = null;
        
        propertyValue = getPropertyValue((GARObject) definitionObject,
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
    private Object getPropertyValue(GARObject configurationObject,
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
    private void setPropertyValue(GARObject configurationObject,
                                  Object valueObject,
                                  String propertyId) {
        IPropertySource propertySource = getPropertySource(configurationObject);
        
        if (false == propertySource.isPropertySet(propertyId)) {
            propertySource.setPropertyValue(propertyId, valueObject);
        }
    }
    
    /**
     * For getting the property source of the object
     * 
     * @param object
     *            the object
     * @return the property source of the object
     */
    private IPropertySource getPropertySource(GARObject object) {
        ComposedAdapterFactory composedAdapterFactory 
                = new ComposedAdapterFactory(ComposedAdapterFactory
                                             .Descriptor
                                             .Registry.INSTANCE);
        AdapterFactoryContentProvider adapterFactoryContentProvider 
                = new AdapterFactoryContentProvider(composedAdapterFactory);
        IPropertySource propertySource 
                = adapterFactoryContentProvider.getPropertySource(object);
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
    private boolean isPropertyExist(GARObject object, String propertyId) {
        IPropertySource propertySource = getPropertySource(object);
        
        if (null != propertySource) {
            
            for (IPropertyDescriptor propertyDescriptor 
                    : propertySource.getPropertyDescriptors()) {
                
                if (true == propertyDescriptor
                                          .getId()
                                          .toString()
                                          .equalsIgnoreCase(propertyId)) {
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
     * @param targetPackage
     *            the parent description node
     * @param shortName
     *            the short name of the configuration to be given
     * @return the configuration description object
     */
    public GModuleConfiguration generateECUConfiguration(GModuleDef definitionObject,
                                                         GARPackage targetPackage,
                                                         String shortName) {
        return (GModuleConfiguration) generateConfiguration(definitionObject,
                                                            targetPackage,
                                                            shortName);
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
     * @return the description object
     */
    @SuppressWarnings("restriction")
    private GARObject generateConfiguration(GARObject definitionObject,
                                            GARObject parentObject,
                                            String shortName) {
        GARObject configurationObject = null;
        
        if (null != parentObject && definitionObject instanceof GARObject) {
            
            /* Checking the possible child descriptors of the node */
            TransactionalEditingDomain editingDomain 
                    = WorkspaceEditingDomainUtil.getEditingDomain(parentObject);
            Collection<?> newChildDescriptors 
                    = editingDomain.getNewChildDescriptors(parentObject, null);
            String definitionName = ((GARObject) definitionObject)
                                                                  .eClass()
                                                                  .getName();
            String descriptionName = DescriptionDefinitionMap
                                         .getDescriptionName(definitionName);
            
            for (Object childDescriptor : newChildDescriptors) {
                
                if (childDescriptor instanceof CommandParameter) {
                    CommandParameter commandParameter = (CommandParameter) 
                                                            childDescriptor;
                    
                    if (commandParameter.value instanceof GARObject) {
                        configurationObject = (GARObject) commandParameter
                                                                        .value;
                        
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
                            
                            /*
                             * Checking for the possible child configuration 
                             * and initialize if needed
                             */
                            Collection<?> children 
                                    = editingDomain.getChildren(
                                                            definitionObject);
                            
                            if (children.size() > 0) {
                                for (Object child : children) {
                                    generateConfiguration(0,
                                                          (GARObject) child,
                                                          configurationObject);
                                }
                            }
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
     *            the module definition object
     * @param targetPackage
     *            the parent description node
     * @param multiplicity
     *            number of instance to be created
     * @return an iterable list of configuration description objects
     */
    public Iterable<GModuleConfiguration> generateECUConfigurations(
                                                    GModuleDef definitionObject,
                                                    GARPackage targetPackage,
                                                    int multiplicity) {
        return generateConfiguration(definitionObject, targetPackage, multiplicity);
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
     * @return an iterable list of configuration description objects
     */
    @SuppressWarnings("restriction")
    private Iterable<GModuleConfiguration> generateConfiguration(
                                                 GARObject definitionObject,
                                                 GARObject parentObject,
                                                 int multiplicity) {
        Vector<GModuleConfiguration> iter = new Vector<GModuleConfiguration>();
        
        
        if (null != parentObject && definitionObject instanceof GARObject) {
            for (int index = 0; index < multiplicity; index++) {
                GARObject configurationObject = null;
                
                /* Checking the possible child descriptors of the node */
                TransactionalEditingDomain editingDomain 
                        = WorkspaceEditingDomainUtil
                                .getEditingDomain(parentObject);
                
                Collection<?> newChildDescriptors 
                        = editingDomain.getNewChildDescriptors(parentObject,
                                                               null);
                String definitionName = ((GARObject) definitionObject)
                                                                  .eClass()
                                                                  .getName();
                String descriptionName = DescriptionDefinitionMap
                                                    .getDescriptionName(
                                                            definitionName);
                
                for (Object childDescriptor : newChildDescriptors) {
                    if (childDescriptor instanceof CommandParameter) {
                        CommandParameter commandParameter = (CommandParameter) 
                                                                childDescriptor;
                        if (commandParameter.value instanceof GARObject) {
                            configurationObject = (GARObject) commandParameter
                                                                        .value;
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
                                
                                /*
                                 * Checking for the possible child 
                                 * configuration and initialize if needed
                                 */
                                Collection<?> children 
                                        = editingDomain.getChildren(
                                                            definitionObject);
                                if (children.size() > 0) {
                                    for (Object child : children) {
                                        generateConfiguration(
                                                          index,
                                                          (GARObject) child,
                                                          configurationObject);
                                    }
                                }
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
                iter.add((GModuleConfiguration) configurationObject);
            }
        }
        return iter;
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
    private String getUniqueShortName(GARObject definitionObject,
                                      GARObject configurationObject,
                                      int index) {
        String name = ConfigurationConstants.EMPTY_STRING;
        Object shortName = getPropertyValue((GARObject) definitionObject,
                                            ConfigurationConstants
                                                .PROPERTY_ID_SHORT_NAME);
        
        if (null != shortName) {
            name = shortName.toString();
        }
        
        /* Getting the siblings and checking the uniqueness of the name */
        TransactionalEditingDomain editingDomain 
                = WorkspaceEditingDomainUtil.getEditingDomain(
                                                  (Object)configurationObject);
        Object parentObject = editingDomain.getParent(configurationObject);
        Collection<?> children = editingDomain.getChildren(parentObject);
        int configIndex = children.size();
        
        for (Object childConfiguration : children) {
            String tempName = name + index;
            if (true == isPropertyExist((GARObject) childConfiguration,
                                        ConfigurationConstants
                                            .PROPERTY_ID_SHORT_NAME)) {
                String currentName = ConfigurationConstants.EMPTY_STRING;
                shortName = getPropertyValue((GARObject) childConfiguration,
                                             ConfigurationConstants
                                                 .PROPERTY_ID_SHORT_NAME);
                
                if (null != shortName) {
                    currentName = shortName.toString();
                }
                
                if ((null != currentName) 
                        && (true == currentName.equalsIgnoreCase(tempName))) {
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
    public Iterable<GModuleConfiguration> generateECUConfigurations(
                                                    GModuleDef definitionObject,
                                                    GARPackage targetPackage,
                                                    String[] shortNames) {
        Vector<GModuleConfiguration> iter = new Vector<GModuleConfiguration>();

        /* Generate each description object with the given short name */
        for (int index = 0; index < shortNames.length; index++) {
            GModuleConfiguration gModuleConfiguration 
                    = (GModuleConfiguration) generateConfiguration(
                                                           definitionObject,
                                                           targetPackage,
                                                           shortNames[index]);
            iter.add(gModuleConfiguration);
        }
        return iter;
    }
    
}
