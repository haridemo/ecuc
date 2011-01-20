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

import gautosar.gecucdescription.GConfigReferenceValue;
import gautosar.gecucdescription.GContainer;
import gautosar.gecucdescription.GModuleConfiguration;
import gautosar.gecucdescription.GParameterValue;
import gautosar.gecucparameterdef.GConfigParameter;
import gautosar.gecucparameterdef.GConfigReference;
import gautosar.gecucparameterdef.GContainerDef;
import gautosar.gecucparameterdef.GModuleDef;
import gautosar.gecucparameterdef.GParamConfMultiplicity;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GARPackage;

import java.util.Collection;
import java.util.List;
import java.util.Vector;

import org.artop.aal.common.util.IdentifiableUtil;
import org.artop.ecl.emf.util.EObjectUtil;
import org.artop.ecl.emf.util.WorkspaceEditingDomainUtil;
import org.artop.ecl.emf.util.WorkspaceTransactionUtil;
import org.artop.ecl.platform.util.PlatformLogUtil;
import org.artop.ecuc.gautosar.initializers.internal.Activator;
import org.artop.ecuc.gautosar.initializers.util.ModuleConfigurationUtil;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.transaction.TransactionalEditingDomain;

/**
 * The class for initializing the configuration from the definition
 */
public abstract class AbstractGenerateModuleConfiguration implements IConfigurationGeneration {

	/**
	 * The initial module configuration object to be use and initialize.
	 */
	private GARObject initialModuleConfiguration;

	/**
	 * Creates an instance of the given EClass
	 */
	protected abstract GARObject createInstance(EClass eClass);

	/**
	 * Gets the description EClass (i.e the type of object to be create) of the given definition type.
	 * 
	 * @param definition
	 *            the definition type.
	 * @return the description EClass (i.e the type of object to be create) of the given definition type.
	 */
	protected abstract EClass getDescription(EClass definition);

	/**
	 * Gets the value of the given parameter value.
	 * 
	 * @param parameterValue
	 * @return the value of the given parameter value.
	 */
	protected abstract Object getParameterValue(GParameterValue parameterValue);

	/**
	 * Sets the value of the given parameter value.
	 * 
	 * @param parameterValue
	 * @param value
	 */
	protected abstract void setParameterValue(GParameterValue parameterValue, Object value);

	/**
	 * Gets the value of the given reference value.
	 * 
	 * @param parameterValue
	 * @return the value of the given reference value.
	 */
	protected abstract Object getReferenceValue(GConfigReferenceValue referenceValue);

	/**
	 * Sets the value of the given reference value.
	 * 
	 * @param referenceValue
	 * @param value
	 */
	protected abstract void setReferenceValue(GConfigReferenceValue referenceValue, Object value);

	/**
	 * Constructor of the class
	 */
	public AbstractGenerateModuleConfiguration(GModuleConfiguration initialModuleConfiguration) {
		this.initialModuleConfiguration = initialModuleConfiguration;
	}

	/**
	 * Default Constructor
	 */
	public AbstractGenerateModuleConfiguration() {
		this(null);
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
	public GModuleConfiguration generateECUConfiguration(GModuleDef definitionObject, GARPackage targetPackage) {
		return (GModuleConfiguration) generateConfiguration(0, definitionObject, targetPackage);
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
	private GARObject generateConfiguration(final int index, final GARObject definitionObject, final GARObject parentObject) {
		if (null != definitionObject && null != parentObject) {
			final TransactionalEditingDomain editingDomain = WorkspaceEditingDomainUtil.getEditingDomain(parentObject);

			final Runnable runnable = new Runnable() {
				int lowerMultiplicity = 0;
				int upperMultiplicity = 0;
				GARObject configurationObject = null;

				public void run() {
					do {
						/*
						 * Getting the lower and upper multiplicity if present for the object
						 */
						if (definitionObject instanceof GParamConfMultiplicity) {
							try {
								lowerMultiplicity = Integer.parseInt(((GParamConfMultiplicity) definitionObject).gGetLowerMultiplicityAsString());
							} catch (NumberFormatException e) {
								lowerMultiplicity = 0;
							}

							try {
								upperMultiplicity = Integer.parseInt(((GParamConfMultiplicity) definitionObject).gGetUpperMultiplicityAsString());
							} catch (NumberFormatException e) {
								upperMultiplicity = Integer.MAX_VALUE;
							}
						}

						EClass description = getDescription(definitionObject.eClass());
						if (description != null) {
							configurationObject = createInstance(description);
							boolean useGivenModuleConfigurationName = false;
							if (configurationObject instanceof GModuleConfiguration && initialModuleConfiguration != null) {
								configurationObject = initialModuleConfiguration;
								String shortName = ((GModuleConfiguration) initialModuleConfiguration).gGetShortName();
								if (shortName != null && !"".equals(shortName)) { //$NON-NLS-1$
									useGivenModuleConfigurationName = true;
								}
							}
							EStructuralFeature feature = ModuleConfigurationUtil.getEStructuralFeature(parentObject.eClass(), description);
							Object owner = parentObject;
							if (configurationObject.eContainer() != null) {
								owner = configurationObject.eContainer();
							}
							generateConfiguration(editingDomain, owner, feature, configurationObject, definitionObject);
							if (!useGivenModuleConfigurationName) {
								setShortName(definitionObject, configurationObject, upperMultiplicity, index);
							}
							lowerMultiplicity--;

							/*
							 * Checking for the possible child configuration and initialize if needed
							 */
							Collection<?> children = editingDomain.getChildren(definitionObject);

							if (children.size() > 0) {
								for (Object child : children) {
									generateConfiguration(index, (GARObject) child, configurationObject);
								}
							}
						}
					} while (lowerMultiplicity > 0);

					if (configurationObject != null) {
						initialModuleConfiguration = configurationObject;
					}
				}
			};

			if (editingDomain != null) {
				try {
					WorkspaceTransactionUtil.executeInWriteTransaction(editingDomain, runnable, "generate module configuration"); //$NON-NLS-1$
				} catch (OperationCanceledException ex) {

				} catch (ExecutionException ex) {
					PlatformLogUtil.logAsError(Activator.getPlugin(), ex);
				}
			}
		}
		return initialModuleConfiguration;
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
	private void setShortName(GARObject definitionObject, GARObject configurationObject, int upperMultiplicity, int index) {
		if (true == ModuleConfigurationUtil.isPropertyExist(configurationObject, ConfigurationConstants.PROPERTY_ID_SHORT_NAME)) {
			String name = ConfigurationConstants.EMPTY_STRING;
			/*
			 * Getting the short name of the definition object.
			 */
			name = getUniqueShortName(definitionObject, configurationObject, index);
			EStructuralFeature shortNameFeature = EObjectUtil.getEStructuralFeature(definitionObject, ConfigurationConstants.PROPERTY_ID_SHORT_NAME);
			if (name == null) {
				Object shortName = ModuleConfigurationUtil.getPropertyValue(definitionObject, shortNameFeature);
				if (null != shortName) {
					name = shortName.toString();
				}
				if (upperMultiplicity > 1) {
					name = name + index;
				}
			}

			/*
			 * Setting the short name of the configuration.
			 */
			ModuleConfigurationUtil.setPropertyValue(configurationObject, shortNameFeature, name);
		}
	}

	/**
	 * Function for generating the description of the definition object
	 * 
	 * @param editingDomain
	 *            the standard editing domain object
	 * @param owner
	 *            the parent description object
	 * @param feature
	 *            the feature
	 * @param configurationObject
	 *            the possible child
	 * @param definitionObject
	 *            the definition object
	 */
	private void generateConfiguration(TransactionalEditingDomain editingDomain, final Object owner, final EStructuralFeature feature,
			final GARObject configurationObject, final GARObject definitionObject) {
		Runnable runnable = new Runnable() {

			@SuppressWarnings("unchecked")
			public void run() {
				if (owner != null && feature != null && configurationObject != null) {
					/*
					 * Add configuration object to specify owner.
					 */
					if (feature.isMany()) {
						((List<Object>) ((EObject) owner).eGet(feature)).add(configurationObject);
					} else {
						((EObject) owner).eSet(feature, configurationObject);
					}

					/*
					 * Setting the definition of the configuration.
					 */
					if (true == ModuleConfigurationUtil.isPropertyExist(configurationObject, ConfigurationConstants.PROPERTY_ID_DEFINITION)) {
						EStructuralFeature definitionFeature = EObjectUtil.getEStructuralFeature(configurationObject,
								ConfigurationConstants.PROPERTY_ID_DEFINITION);
						ModuleConfigurationUtil.setPropertyValue(configurationObject, definitionFeature, definitionObject);
					}

					/*
					 * Setting the default value of the configuration.
					 */
					if (true == ModuleConfigurationUtil.isPropertyExist(definitionObject, ConfigurationConstants.PROPERTY_ID_DEFAULT_VALUE)) {
						EStructuralFeature defaultValueFeature = EObjectUtil.getEStructuralFeature(configurationObject,
								ConfigurationConstants.PROPERTY_ID_DEFAULT_VALUE);
						setDefaultValue(configurationObject, defaultValueFeature, definitionObject);
					}

					/*
					 * Setting UUID
					 */
					IdentifiableUtil.setUUID(configurationObject, IdentifiableUtil.generateUUID());
				}
			}
		};

		if (editingDomain != null) {
			try {
				WorkspaceTransactionUtil.executeInWriteTransaction(editingDomain, runnable, "Add Configuration Object"); //$NON-NLS-1$
			} catch (OperationCanceledException ex) {

			} catch (ExecutionException ex) {
				PlatformLogUtil.logAsError(Activator.getPlugin(), ex);
			}
		}
	}

	/**
	 * For setting the default value of the object
	 * 
	 * @param configurationObject
	 *            the description object
	 * @param feature
	 *            the feature
	 * @param definitionObject
	 *            the definition object
	 */
	private void setDefaultValue(GARObject configurationObject, EStructuralFeature feature, GARObject definitionObject) {
		Object propertyValue = null;
		propertyValue = ModuleConfigurationUtil.getPropertyValue(definitionObject, feature);
		if (null != propertyValue && null != feature) {
			ModuleConfigurationUtil.setPropertyValue(configurationObject, feature, propertyValue);
		}
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
	public GModuleConfiguration generateECUConfiguration(GModuleDef definitionObject, GARPackage targetPackage, String shortName) {
		return (GModuleConfiguration) generateConfiguration(definitionObject, targetPackage, shortName);
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
	private GARObject generateConfiguration(final GARObject definitionObject, final GARObject parentObject, final String shortName) {
		if (null != definitionObject && null != parentObject) {
			final TransactionalEditingDomain editingDomain = WorkspaceEditingDomainUtil.getEditingDomain(parentObject);

			final Runnable runnable = new Runnable() {
				GARObject configurationObject = null;

				public void run() {
					EClass description = getDescription(definitionObject.eClass());
					if (description != null) {
						/*
						 * Create a command parameter that contains an instance of new object to be create.
						 */
						configurationObject = createInstance(description);
						if (configurationObject instanceof GModuleConfiguration && initialModuleConfiguration != null) {
							configurationObject = initialModuleConfiguration;
						}
						EStructuralFeature feature = ModuleConfigurationUtil.getEStructuralFeature(parentObject.eClass(), description);
						Object owner = parentObject;
						if (configurationObject.eContainer() != null) {
							owner = configurationObject.eContainer();
						}

						/* Generating the configuration */
						generateConfiguration(editingDomain, owner, feature, configurationObject, definitionObject);

						/*
						 * Checking for the possible child configuration and initialize if needed.
						 */
						Collection<?> children = editingDomain.getChildren(definitionObject);

						if (children.size() > 0) {
							for (Object child : children) {
								generateConfiguration(0, (GARObject) child, configurationObject);
							}
						}
					}

					if (true == ModuleConfigurationUtil.isPropertyExist(configurationObject, ConfigurationConstants.PROPERTY_ID_SHORT_NAME)) {
						EStructuralFeature shortNameFeature = EObjectUtil.getEStructuralFeature(configurationObject,
								ConfigurationConstants.PROPERTY_ID_SHORT_NAME);
						ModuleConfigurationUtil.setPropertyValue(configurationObject, shortNameFeature, shortName);
					}

					if (configurationObject != null) {
						initialModuleConfiguration = configurationObject;
					}
				}
			};

			if (editingDomain != null) {
				try {
					WorkspaceTransactionUtil.executeInWriteTransaction(editingDomain, runnable, "Generate Module Configuration"); //$NON-NLS-1$
				} catch (OperationCanceledException ex) {

				} catch (ExecutionException ex) {
					PlatformLogUtil.logAsError(Activator.getPlugin(), ex);
				}
			}

		}
		return initialModuleConfiguration;
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
	public Iterable<GModuleConfiguration> generateECUConfigurations(GModuleDef definitionObject, GARPackage targetPackage, int multiplicity) {
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
	private Iterable<GModuleConfiguration> generateConfiguration(GARObject definitionObject, GARObject parentObject, int multiplicity) {
		Vector<GModuleConfiguration> iter = new Vector<GModuleConfiguration>();

		if (null != parentObject) {
			for (int index = 0; index < multiplicity; index++) {
				GARObject configurationObject = null;

				/*
				 * Checking the possible child descriptors of the node
				 */
				TransactionalEditingDomain editingDomain = WorkspaceEditingDomainUtil.getEditingDomain(parentObject);

				EClass description = getDescription(definitionObject.eClass());
				if (description != null) {
					/*
					 * Create a command parameter that contains an instance of the new object to be create
					 */
					configurationObject = createInstance(description);
					if (configurationObject instanceof GModuleConfiguration && initialModuleConfiguration != null) {
						configurationObject = initialModuleConfiguration;
					}
					EStructuralFeature feature = ModuleConfigurationUtil.getEStructuralFeature(parentObject.eClass(), description);
					Object owner = parentObject;
					if (configurationObject.eContainer() != null) {
						owner = configurationObject.eContainer();
					}
					generateConfiguration(editingDomain, owner, feature, configurationObject, definitionObject);

					/*
					 * Checking for the possible child configuration and initialize if needed
					 */
					Collection<?> children = editingDomain.getChildren(definitionObject);
					if (children.size() > 0) {
						for (Object child : children) {
							generateConfiguration(index, (GARObject) child, configurationObject);
						}
					}

					if (true == ModuleConfigurationUtil.isPropertyExist(configurationObject, ConfigurationConstants.PROPERTY_ID_SHORT_NAME)) {
						String shortName = getUniqueShortName(definitionObject, configurationObject, index);
						EStructuralFeature shortNameFeature = EObjectUtil.getEStructuralFeature(configurationObject,
								ConfigurationConstants.PROPERTY_ID_SHORT_NAME);
						ModuleConfigurationUtil.setPropertyValue(configurationObject, shortNameFeature, shortName);
					}
					iter.add((GModuleConfiguration) configurationObject);
				}
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
	private String getUniqueShortName(GARObject definitionObject, GARObject configurationObject, int index) {
		String name = ConfigurationConstants.EMPTY_STRING;
		EStructuralFeature shortNameFeature = EObjectUtil.getEStructuralFeature(definitionObject, ConfigurationConstants.PROPERTY_ID_SHORT_NAME);
		Object shortName = ModuleConfigurationUtil.getPropertyValue(definitionObject, shortNameFeature);

		if (null != shortName) {
			name = shortName.toString();
		}

		/* Checking the uniqueness of the name */
		TransactionalEditingDomain editingDomain = WorkspaceEditingDomainUtil.getEditingDomain(configurationObject);
		Object parentObject = editingDomain.getParent(configurationObject);
		Collection<?> children = editingDomain.getChildren(parentObject);
		int configIndex = children.size();

		for (Object childConfiguration : children) {
			String tempName = name + index;
			if (true == ModuleConfigurationUtil.isPropertyExist((GARObject) childConfiguration, ConfigurationConstants.PROPERTY_ID_SHORT_NAME)) {
				String currentName = ConfigurationConstants.EMPTY_STRING;
				shortName = ModuleConfigurationUtil.getPropertyValue((GARObject) childConfiguration, shortNameFeature);
				if (null != shortName) {
					currentName = shortName.toString();
				}

				if (null != currentName && true == currentName.equalsIgnoreCase(tempName)) {
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
	public Iterable<GModuleConfiguration> generateECUConfigurations(GModuleDef definitionObject, GARPackage targetPackage, String[] shortNames) {
		Vector<GModuleConfiguration> iter = new Vector<GModuleConfiguration>();
		/*
		 * Generate each description object with the given short name
		 */
		for (String shortName : shortNames) {
			GModuleConfiguration gModuleConfiguration = (GModuleConfiguration) generateConfiguration(definitionObject, targetPackage, shortName);
			iter.add(gModuleConfiguration);
		}
		return iter;
	}

	/**
	 * Initialize the given <code>moduleConfigurationToInitialize</code> module configuration with parameter and
	 * reference values of <code>moduleConfiguration</code> module configuration
	 */
	public GModuleConfiguration initializeModuleConfigurationValues(final GModuleConfiguration moduleConfigurationToInitialize,
			final GModuleConfiguration moduleConfiguration, final String preconfiguredRecommendedMarker) {
		Assert.isNotNull(moduleConfigurationToInitialize);
		Assert.isNotNull(moduleConfiguration);

		final TransactionalEditingDomain editingDomain = WorkspaceEditingDomainUtil.getEditingDomain(moduleConfigurationToInitialize);
		final Runnable runnable = new Runnable() {
			public void run() {
				for (GContainer container : moduleConfigurationToInitialize.gGetContainers()) {
					intializeConfigurationValues(container, preconfiguredRecommendedMarker);
				}
			}

			private void intializeConfigurationValues(GContainer container, String preconfiguredRecommendedMarker) {
				GContainerDef containerDef = container.gGetDefinition();
				GContainer moduleConfContainerValue = ModuleConfigurationUtil.getContainerFromDefinition(containerDef, moduleConfiguration);
				if (moduleConfContainerValue != null) {
					// initialize configuration parameter values
					for (GParameterValue parameterValue : moduleConfContainerValue.gGetParameterValues()) {
						initializeContainerValues(container, parameterValue, preconfiguredRecommendedMarker);
					}

					// initialize configuration reference values
					for (GConfigReferenceValue referenceValue : moduleConfContainerValue.gGetReferenceValues()) {
						initializeContainerValues(container, referenceValue, preconfiguredRecommendedMarker);
					}

					// iterate sub containers for initializing contained parameter and reference values
					for (GContainer subContainer : container.gGetSubContainers()) {
						intializeConfigurationValues(subContainer, preconfiguredRecommendedMarker);
					}
				}
			}
		};

		if (editingDomain != null) {
			try {
				WorkspaceTransactionUtil.executeInWriteTransaction(editingDomain, runnable, "Initialize Module Configuration"); //$NON-NLS-1$
			} catch (OperationCanceledException ex) {

			} catch (ExecutionException ex) {
				PlatformLogUtil.logAsError(Activator.getPlugin(), ex);
			}
		}

		return moduleConfigurationToInitialize;
	}

	/**
	 * Initialize the parameter or reference values of <code>containerValue</code> with
	 * <code>parameterReferenceValue</code> and add extension value to parameter or reference values.
	 * 
	 * @param containerValue
	 * @param parameterReferenceValue
	 * @param preconfiguredRecommendedMarker
	 * @param extensionValue
	 */
	private void initializeContainerValues(GContainer containerValue, GARObject parameterReferenceValue, String preconfiguredRecommendedMarker) {
		// parameterValue case
		if (parameterReferenceValue != null && parameterReferenceValue instanceof GParameterValue) {
			GConfigParameter parameterDef = ((GParameterValue) parameterReferenceValue).gGetDefinition();
			Object value = getParameterValue((GParameterValue) parameterReferenceValue);
			Object newValue = value;
			if (value != null) {
				if (value instanceof EObject) {
					newValue = EcoreUtil.copy((EObject) value);
				}
				// set the parameter value contained in containerDef
				for (GParameterValue containerParamValue : containerValue.gGetParameterValues()) {
					if (containerParamValue.gGetDefinition().equals(parameterDef)) {
						setParameterValue(containerParamValue, newValue);
						// mark the parameter value as preconfigured or recommended
						ModuleConfigurationUtil.markAsPreconfiguredRecommended(containerParamValue, preconfiguredRecommendedMarker);
						break;
					}
				}
			}
		}

		// referenceValue case
		if (parameterReferenceValue != null && parameterReferenceValue instanceof GConfigReferenceValue) {
			GConfigReference referenceDef = ((GConfigReferenceValue) parameterReferenceValue).gGetDefinition();
			Object value = getReferenceValue((GConfigReferenceValue) parameterReferenceValue);
			Object newValue = value;
			if (value != null) {
				if (value instanceof EObject) {
					newValue = EcoreUtil.copy((EObject) value);
				}
				// set the reference value contained in containerDef
				for (GConfigReferenceValue containerReferenceValue : containerValue.gGetReferenceValues()) {
					if (containerReferenceValue.gGetDefinition().equals(referenceDef)) {
						setReferenceValue(containerReferenceValue, newValue);
						// mark the reference value as preconfigured or recommended
						ModuleConfigurationUtil.markAsPreconfiguredRecommended(containerReferenceValue, preconfiguredRecommendedMarker);
						break;
					}
				}
			}
		}
	}

	/**
	 * Gets the initial module configuration to be initialize
	 * 
	 * @return the given initial module configuration
	 */
	public GARObject getInitialModuleConfiguration() {
		return initialModuleConfiguration;
	}

	/**
	 * Sets the initial module configuration value to be initialize
	 * 
	 * @param initialModuleConfiguration
	 *            a module configuration
	 */

	public void setInitialModuleConfiguration(GARObject initialModuleConfiguration) {
		this.initialModuleConfiguration = initialModuleConfiguration;
	}

}
