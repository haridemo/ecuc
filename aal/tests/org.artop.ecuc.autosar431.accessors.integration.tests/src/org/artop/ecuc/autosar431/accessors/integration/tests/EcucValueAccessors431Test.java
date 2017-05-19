/**
 * <copyright>
 *
 * Copyright (c) itemis and others.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of the Artop Software License Based on AUTOSAR
 * Released Material (ASLR) which accompanies this distribution, and is
 * available at http://www.artop.org/aslr.html
 *
 * Contributors:
 *     itemis - Initial API and implementation
 *
 * </copyright>
 */
package org.artop.ecuc.autosar431.accessors.integration.tests;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;

import org.artop.ecuc.accessorgen.testutils.integration.referenceworkspace.AbstractEcucValueAccessorsIntegrationTestCase;
import org.artop.ecuc.accessorgen.testutils.integration.referenceworkspace.EcucValueAccessorsTestReferenceWorkspaceDescriptor;
import org.artop.ecuc.autosar431.accessors.Adc;
import org.artop.ecuc.autosar431.accessors.Adc.AdcConfigSet;
import org.artop.ecuc.autosar431.accessors.Adc.AdcConfigSet.AdcHwUnit;
import org.artop.ecuc.autosar431.accessors.Adc.AdcConfigSet.AdcHwUnit.AdcChannel;
import org.artop.ecuc.autosar431.accessors.Adc.AdcConfigSet.AdcHwUnit.AdcGroup;
import org.artop.ecuc.autosar431.accessors.BswM;
import org.artop.ecuc.autosar431.accessors.BswM.BswMConfig;
import org.artop.ecuc.autosar431.accessors.BswM.BswMConfig.BswMArbitration;
import org.artop.ecuc.autosar431.accessors.BswM.BswMConfig.BswMArbitration.BswMModeCondition;
import org.artop.ecuc.autosar431.accessors.BswM.BswMConfig.BswMArbitration.BswMModeCondition.BswMConditionValue;
import org.artop.ecuc.autosar431.accessors.BswM.BswMConfig.BswMArbitration.BswMModeCondition.BswMConditionValue.BswMBswMode;
import org.artop.ecuc.autosar431.accessors.BswM.BswMConfig.BswMDataTypeMappingSets;
import org.artop.ecuc.autosar431.accessors.BswM.BswMGeneral;
import org.artop.ecuc.autosar431.accessors.BswM.BswMGeneral.BswMUserIncludeFiles;
import org.artop.ecuc.autosar431.accessors.CanSM;
import org.artop.ecuc.autosar431.accessors.CanSM.CanSMConfiguration;
import org.artop.ecuc.autosar431.accessors.CanSM.CanSMConfiguration.CanSMManagerNetwork;
import org.artop.ecuc.autosar431.accessors.CanSM.CanSMGeneral;
import org.artop.ecuc.autosar431.accessors.EcuC.EcucPartitionCollection.EcucPartition;
import org.artop.ecuc.autosar431.accessors.NvM;
import org.artop.ecuc.autosar431.accessors.NvM.NvMBlockDescriptor;
import org.artop.ecuc.autosar431.accessors.NvM.NvMBlockDescriptor.NvMBlockCrcType;
import org.artop.ecuc.autosar431.accessors.NvM.NvMCommon;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.sphinx.emf.util.WorkspaceTransactionUtil;
import org.eclipse.xtext.xbase.lib.Functions.Function1;
import org.eclipse.xtext.xbase.lib.IterableExtensions;

import autosar40.ecucdescription.EcucContainerValue;
import autosar40.ecucdescription.EcucModuleConfigurationValues;
import autosar40.ecucdescription.EcucdescriptionFactory;
import autosar40.ecucparameterdef.EcucContainerDef;
import gautosar.gecucdescription.GContainer;
import gautosar.gecucparameterdef.GContainerDef;

@SuppressWarnings("nls")
public class EcucValueAccessors431Test extends AbstractEcucValueAccessorsIntegrationTestCase {

	/*
	 * *********************************************************** ****** Accessor's from a module configuration object
	 * ****** ***********************************************************
	 */

	/*
	 * Test equals methods
	 */
	public void testEcucValueAccessorsEquals() {
		EObject adcModuleConfiguration = getConfigurationObject(
				EcucValueAccessorsTestReferenceWorkspaceDescriptor.URI_FRAGMENT_ADC_MODULE_CONFIGURATION);
		EObject nvmModuleConfiguration = getConfigurationObject(
				EcucValueAccessorsTestReferenceWorkspaceDescriptor.URI_FRAGMENT_NVM_MODULE_CONFIGURATION);
		assertTrue(adcModuleConfiguration instanceof EcucModuleConfigurationValues);
		assertTrue(nvmModuleConfiguration instanceof EcucModuleConfigurationValues);

		Adc adc = new Adc((EcucModuleConfigurationValues) adcModuleConfiguration);
		Adc anotherAdc = new Adc((EcucModuleConfigurationValues) adcModuleConfiguration);
		final NvM nvm = new NvM((EcucModuleConfigurationValues) nvmModuleConfiguration);

		assertTrue(adc.equals(anotherAdc));
		assertTrue(adc.equals(adc));
		assertFalse(adc.equals(adcModuleConfiguration));
		assertFalse(adc.equals(nvm));
	}

	/*
	 * 10_1_1 GModuleConfiguration short name
	 */
	public void testGModuleConfigurationShortNameAccessors() {
		EObject adcModuleConfiguration = getConfigurationObject(
				EcucValueAccessorsTestReferenceWorkspaceDescriptor.URI_FRAGMENT_ADC_MODULE_CONFIGURATION);
		assertTrue(adcModuleConfiguration instanceof EcucModuleConfigurationValues);
		Adc adc = new Adc((EcucModuleConfigurationValues) adcModuleConfiguration);
		assertTrue("AdcValues".equals(adc.getShortName())); //$NON-NLS-1$
	}

	/*
	 * 10_1_5 Getting a container from a module configuration
	 */
	public void testContaierGetterFromModuleConfiguration() {
		EObject adcModuleConfiguration = getConfigurationObject(
				EcucValueAccessorsTestReferenceWorkspaceDescriptor.URI_FRAGMENT_ADC_MODULE_CONFIGURATION);
		assertTrue(adcModuleConfiguration instanceof EcucModuleConfigurationValues);
		Adc adc = new Adc((EcucModuleConfigurationValues) adcModuleConfiguration);
		AdcConfigSet adcConfigSet = adc.getAdcConfigSet();
		assertNotNull(adcConfigSet);
	}

	/*
	 * 10_1_6 Getting a many container from a module configuration
	 */
	public void testManyContaierGetterFromModuleConfiguration() {
		EObject adcModuleConfiguration = getConfigurationObject(
				EcucValueAccessorsTestReferenceWorkspaceDescriptor.URI_FRAGMENT_ADC_MODULE_CONFIGURATION);
		assertTrue(adcModuleConfiguration instanceof EcucModuleConfigurationValues);
		Adc adc = new Adc((EcucModuleConfigurationValues) adcModuleConfiguration);
		AdcConfigSet adcConfigSet = adc.getAdcConfigSet();
		assertNotNull(adcConfigSet);

		List<AdcHwUnit> adcHwUnits = adcConfigSet.getAdcHwUnits();
		assertNotNull(adcHwUnits);
		assertTrue(!adcHwUnits.isEmpty());
	}

	/*
	 * *********************************************************** ****** Setting a containerValue from a module
	 * configuration ***********************************************************
	 */

	/*
	 * 10_1_5 Test ContainerValue setter
	 */
	public void testContainerValueSetterAccessors() {
		EObject nvmModuleConfiguration = getConfigurationObject(
				EcucValueAccessorsTestReferenceWorkspaceDescriptor.URI_FRAGMENT_NVM_MODULE_CONFIGURATION);
		assertTrue(nvmModuleConfiguration instanceof EcucModuleConfigurationValues);

		final NvM nvm = new NvM((EcucModuleConfigurationValues) nvmModuleConfiguration);

		Runnable runnable = new Runnable() {
			public void run() {
				EcucContainerValue nvMCommonContainer = EcucdescriptionFactory.eINSTANCE.createEcucContainerValue();
				nvMCommonContainer.setShortName("nvMCommonContainer");
				NvMCommon nvMCommon = new NvMCommon(nvMCommonContainer);
				nvm.setNvMCommon(nvMCommon);
			}
		};

		try {
			WorkspaceTransactionUtil.executeInWriteTransaction(getRefWks().editingDomain4x, runnable, "Setting ContainerValue");
			NvMCommon nvMCommon = nvm.getNvMCommon();
			assertNotNull(nvMCommon);
		} catch (OperationCanceledException ex) {

		} catch (ExecutionException ex) {
			fail(ex.getLocalizedMessage());
		}
	}

	/*
	 * 10_1_6 Test Adding a ContainerValue in a ModuleConfiguration (ContainerValue that is many)
	 */
	public void testAddingContainerValueMany() {
		final EObject nvmModuleConfiguration = getConfigurationObject(
				EcucValueAccessorsTestReferenceWorkspaceDescriptor.URI_FRAGMENT_NVM_MODULE_CONFIGURATION);
		assertTrue(nvmModuleConfiguration instanceof EcucModuleConfigurationValues);

		final NvM nvm = new NvM((EcucModuleConfigurationValues) nvmModuleConfiguration);

		Runnable runnable = new Runnable() {
			public void run() {
				List<NvMBlockDescriptor> nvMBlockDescriptors = nvm.getNvMBlockDescriptors();
				assertNotNull(nvMBlockDescriptors);
				assertTrue(!nvMBlockDescriptors.isEmpty());
				int oldSize = nvMBlockDescriptors.size();

				EcucContainerValue containerValue = EcucdescriptionFactory.eINSTANCE.createEcucContainerValue();
				containerValue.setShortName("NvMBlockDescriptor2");
				NvMBlockDescriptor nvMBlockDescriptor = new NvMBlockDescriptor(containerValue);
				nvMBlockDescriptors.add(nvMBlockDescriptor);

				nvMBlockDescriptors = nvm.getNvMBlockDescriptors();
				assertTrue(nvMBlockDescriptors.size() == oldSize + 1);

				boolean inDelegatingList = false;
				boolean definitionIsSet = false;
				for (EcucContainerValue ecucContainerValue : ((EcucModuleConfigurationValues) nvmModuleConfiguration).getContainers()) {
					if ("NvMBlockDescriptor2".equals(ecucContainerValue.getShortName())) {
						inDelegatingList = true;
						EcucContainerDef definition = ecucContainerValue.getDefinition();
						if (definition != null && "NvMBlockDescriptor".equals(definition.getShortName())) {
							definitionIsSet = true;
						}
						break;
					}
				}
				assertTrue(inDelegatingList);
				assertTrue(definitionIsSet);
			}
		};

		try {
			WorkspaceTransactionUtil.executeInWriteTransaction(getRefWks().editingDomain4x, runnable, "Adding ContainerValue");
		} catch (OperationCanceledException ex) {

		} catch (ExecutionException ex) {
			fail(ex.getLocalizedMessage());
		}
	}

	/*
	 * *********************************************************** ****** ParameterValues Accessor's
	 * ************************** ***********************************************************
	 */

	/*
	 * 34_1_5 Integer Parameter Value
	 */
	public void testIntegerParameterValueGetterAccessors() {
		EObject adcModuleConfiguration = getConfigurationObject(
				EcucValueAccessorsTestReferenceWorkspaceDescriptor.URI_FRAGMENT_ADC_MODULE_CONFIGURATION);
		assertTrue(adcModuleConfiguration instanceof EcucModuleConfigurationValues);

		Adc adc = new Adc((EcucModuleConfigurationValues) adcModuleConfiguration);
		AdcConfigSet adcConfigSet = adc.getAdcConfigSet();
		assertNotNull(adcConfigSet);

		List<AdcHwUnit> adcHwUnits = adcConfigSet.getAdcHwUnits();
		assertNotNull(adcHwUnits);
		assertTrue(!adcHwUnits.isEmpty());
		AdcHwUnit adcHwUnit = adcHwUnits.get(0);
		assertNotNull(adcHwUnit);

		BigInteger adcPrescale = adcHwUnit.getAdcPrescale();
		assertTrue(new BigInteger("13").compareTo(adcPrescale) == 0);
	}

	public void testIntegerParameterValueSetterAccessors() {
		EObject adcModuleConfiguration = getConfigurationObject(
				EcucValueAccessorsTestReferenceWorkspaceDescriptor.URI_FRAGMENT_ADC_MODULE_CONFIGURATION);
		assertTrue(adcModuleConfiguration instanceof EcucModuleConfigurationValues);

		Adc adc = new Adc((EcucModuleConfigurationValues) adcModuleConfiguration);
		AdcConfigSet adcConfigSet = adc.getAdcConfigSet();
		assertNotNull(adcConfigSet);

		List<AdcHwUnit> adcHwUnits = adcConfigSet.getAdcHwUnits();
		assertNotNull(adcHwUnits);
		assertTrue(!adcHwUnits.isEmpty());
		final AdcHwUnit adcHwUnit = adcHwUnits.get(0);
		assertNotNull(adcHwUnit);

		// Gets the old paramValue value
		BigInteger adcPrescale = adcHwUnit.getAdcPrescale();
		assertTrue(new BigInteger("13").compareTo(adcPrescale) == 0);

		// Sets the new paramValue value
		Runnable runnable = new Runnable() {
			public void run() {
				adcHwUnit.setAdcPrescale(new BigInteger("15"));
			}
		};

		try {
			WorkspaceTransactionUtil.executeInWriteTransaction(getRefWks().editingDomain4x, runnable, "Setting Integer ParameterValue Value");
			adcPrescale = adcHwUnit.getAdcPrescale();
			assertTrue(new BigInteger("15").compareTo(adcPrescale) == 0);
		} catch (OperationCanceledException ex) {

		} catch (ExecutionException ex) {
			fail(ex.getLocalizedMessage());
		}
	}

	/*
	 * 31_1_5 Boolean Parameter Value
	 */
	public void testBooleanParameterValueGetterAccessors() {
		EObject nvmModuleConfiguration = getConfigurationObject(
				EcucValueAccessorsTestReferenceWorkspaceDescriptor.URI_FRAGMENT_NVM_MODULE_CONFIGURATION);
		assertTrue(nvmModuleConfiguration instanceof EcucModuleConfigurationValues);

		NvM nvm = new NvM((EcucModuleConfigurationValues) nvmModuleConfiguration);
		List<NvMBlockDescriptor> nvMBlockDescriptors = nvm.getNvMBlockDescriptors();
		assertNotNull(nvMBlockDescriptors);
		assertTrue(!nvMBlockDescriptors.isEmpty());

		NvMBlockDescriptor nvMBlockDescriptor = nvMBlockDescriptors.get(0);
		assertNotNull(nvMBlockDescriptor);
		Boolean nvMBlockUseCrc = nvMBlockDescriptor.getNvMBlockUseCrc();
		assertTrue(nvMBlockUseCrc == Boolean.TRUE);
	}

	public void testBooleanParameterValueSetterAccessors() {
		EObject nvmModuleConfiguration = getConfigurationObject(
				EcucValueAccessorsTestReferenceWorkspaceDescriptor.URI_FRAGMENT_NVM_MODULE_CONFIGURATION);
		assertTrue(nvmModuleConfiguration instanceof EcucModuleConfigurationValues);

		NvM nvm = new NvM((EcucModuleConfigurationValues) nvmModuleConfiguration);
		List<NvMBlockDescriptor> nvMBlockDescriptors = nvm.getNvMBlockDescriptors();
		assertNotNull(nvMBlockDescriptors);
		assertTrue(!nvMBlockDescriptors.isEmpty());

		final NvMBlockDescriptor nvMBlockDescriptor = nvMBlockDescriptors.get(0);
		assertNotNull(nvMBlockDescriptor);

		// Gets the old paramValue value
		Boolean nvMBlockUseCrc = nvMBlockDescriptor.getNvMBlockUseCrc();
		assertTrue(nvMBlockUseCrc == Boolean.TRUE);

		// Sets the new paramValue value
		Runnable runnable = new Runnable() {
			public void run() {
				nvMBlockDescriptor.setNvMBlockUseCrc(Boolean.FALSE);
			}
		};

		try {
			WorkspaceTransactionUtil.executeInWriteTransaction(getRefWks().editingDomain4x, runnable, "Setting Boolean ParameterValue Value");
			nvMBlockUseCrc = nvMBlockDescriptor.getNvMBlockUseCrc();
			assertTrue(nvMBlockUseCrc == Boolean.FALSE);
		} catch (OperationCanceledException ex) {

		} catch (ExecutionException ex) {
			fail(ex.getLocalizedMessage());
		}
	}

	/*
	 * 32_1_5 Enumeration Parameter Value
	 */
	public void testEnumerationParameterValueGetterAccessors() {
		EObject nvmModuleConfiguration = getConfigurationObject(
				EcucValueAccessorsTestReferenceWorkspaceDescriptor.URI_FRAGMENT_NVM_MODULE_CONFIGURATION);
		assertTrue(nvmModuleConfiguration instanceof EcucModuleConfigurationValues);

		NvM nvm = new NvM((EcucModuleConfigurationValues) nvmModuleConfiguration);
		List<NvMBlockDescriptor> nvMBlockDescriptors = nvm.getNvMBlockDescriptors();
		assertNotNull(nvMBlockDescriptors);
		assertTrue(!nvMBlockDescriptors.isEmpty());

		NvMBlockDescriptor nvMBlockDescriptor = nvMBlockDescriptors.get(0);
		assertNotNull(nvMBlockDescriptor);

		NvMBlockCrcType nvMBlockCrcType = nvMBlockDescriptor.getNvMBlockCrcType();
		assertNotNull(nvMBlockCrcType);
		assertTrue("NVM_CRC16".equals(nvMBlockCrcType.name())); //$NON-NLS-1$
	}

	public void testEnumerationParameterValueSetterAccessors() {
		EObject nvmModuleConfiguration = getConfigurationObject(
				EcucValueAccessorsTestReferenceWorkspaceDescriptor.URI_FRAGMENT_NVM_MODULE_CONFIGURATION);
		assertTrue(nvmModuleConfiguration instanceof EcucModuleConfigurationValues);

		NvM nvm = new NvM((EcucModuleConfigurationValues) nvmModuleConfiguration);
		List<NvMBlockDescriptor> nvMBlockDescriptors = nvm.getNvMBlockDescriptors();
		assertNotNull(nvMBlockDescriptors);
		assertTrue(!nvMBlockDescriptors.isEmpty());

		final NvMBlockDescriptor nvMBlockDescriptor = nvMBlockDescriptors.get(0);
		assertNotNull(nvMBlockDescriptor);

		// Gets the old paramValue value
		NvMBlockCrcType nvMBlockCrcType = nvMBlockDescriptor.getNvMBlockCrcType();
		assertNotNull(nvMBlockCrcType);
		assertTrue("NVM_CRC16".equals(nvMBlockCrcType.name())); //$NON-NLS-1$

		// Sets the new paramValue value
		Runnable runnable = new Runnable() {
			public void run() {
				nvMBlockDescriptor.setNvMBlockCrcType(NvMBlockCrcType.NVM_CRC32);
			}
		};

		try {
			WorkspaceTransactionUtil.executeInWriteTransaction(getRefWks().editingDomain4x, runnable, "Setting Enumeration ParameterValue Value");
			nvMBlockCrcType = nvMBlockDescriptor.getNvMBlockCrcType();
			assertTrue("NVM_CRC32".equals(nvMBlockCrcType.name())); //$NON-NLS-1$
		} catch (OperationCanceledException ex) {

		} catch (ExecutionException ex) {
			fail(ex.getLocalizedMessage());
		}
	}

	/*
	 * 35_1_5 Textual Parameter Value
	 */
	public void testTextualParameterValueGetterAccessors() {
		EObject bswModuleConfiguration = getConfigurationObject(
				EcucValueAccessorsTestReferenceWorkspaceDescriptor.URI_FRAGMENT_BSW_MODULE_CONFIGURATION);
		assertTrue(bswModuleConfiguration instanceof EcucModuleConfigurationValues);

		BswM bswM = new BswM((EcucModuleConfigurationValues) bswModuleConfiguration);
		List<BswMConfig> bswMConfigs = bswM.getBswMConfigs();
		assertNotNull(bswMConfigs);
		assertTrue(!bswMConfigs.isEmpty());

		BswMConfig bswMConfig = bswMConfigs.get(0);
		assertNotNull(bswMConfig);
		BswMArbitration bswMArbitration = bswMConfig.getBswMArbitration();
		assertNotNull(bswMArbitration);
		List<BswMModeCondition> bswMModeConditions = bswMArbitration.getBswMModeConditions();
		assertNotNull(bswMModeConditions);
		assertTrue(!bswMModeConditions.isEmpty());
		BswMModeCondition bswMModeCondition = bswMModeConditions.get(0);
		assertNotNull(bswMModeCondition);
		BswMConditionValue bswMConditionValue = bswMModeCondition.getBswMConditionValue();
		assertNotNull(bswMConditionValue);
		BswMBswMode bswMBswMode = bswMConditionValue.getBswMBswMode();
		assertNotNull(bswMBswMode);
		String bswMBswRequestedMode = bswMBswMode.getBswMBswRequestedMode();
		assertTrue("Whatever a mode is".equals(bswMBswRequestedMode));
	}

	public void testTextualParameterValueSetterAccessors() {
		EObject bswModuleConfiguration = getConfigurationObject(
				EcucValueAccessorsTestReferenceWorkspaceDescriptor.URI_FRAGMENT_BSW_MODULE_CONFIGURATION);
		assertTrue(bswModuleConfiguration instanceof EcucModuleConfigurationValues);

		BswM bswM = new BswM((EcucModuleConfigurationValues) bswModuleConfiguration);
		List<BswMConfig> bswMConfigs = bswM.getBswMConfigs();
		assertNotNull(bswMConfigs);
		assertTrue(!bswMConfigs.isEmpty());

		BswMConfig bswMConfig = bswMConfigs.get(0);
		assertNotNull(bswMConfig);
		BswMArbitration bswMArbitration = bswMConfig.getBswMArbitration();
		assertNotNull(bswMArbitration);
		List<BswMModeCondition> bswMModeConditions = bswMArbitration.getBswMModeConditions();
		assertNotNull(bswMModeConditions);
		assertTrue(!bswMModeConditions.isEmpty());
		BswMModeCondition bswMModeCondition = bswMModeConditions.get(0);
		assertNotNull(bswMModeCondition);
		BswMConditionValue bswMConditionValue = bswMModeCondition.getBswMConditionValue();
		assertNotNull(bswMConditionValue);
		final BswMBswMode bswMBswMode = bswMConditionValue.getBswMBswMode();
		assertNotNull(bswMBswMode);
		// Gets the old paramValue value
		String bswMBswRequestedMode = bswMBswMode.getBswMBswRequestedMode();
		assertTrue("Whatever a mode is".equals(bswMBswRequestedMode));

		// Sets the new paramValue value
		Runnable runnable = new Runnable() {
			public void run() {
				bswMBswMode.setBswMBswRequestedMode("test String...");
			}
		};

		try {
			WorkspaceTransactionUtil.executeInWriteTransaction(getRefWks().editingDomain4x, runnable, "Setting Textual ParameterValue Value");
			bswMBswRequestedMode = bswMBswMode.getBswMBswRequestedMode();
			assertTrue("test String...".equals(bswMBswRequestedMode));
		} catch (OperationCanceledException ex) {

		} catch (ExecutionException ex) {
			fail(ex.getLocalizedMessage());
		}
	}

	/*
	 * Test setting a parameterValue that does not exist yet
	 */
	public void testParameterValueNotExistingSetterAccessors() {
		EObject nvmModuleConfiguration = getConfigurationObject(
				EcucValueAccessorsTestReferenceWorkspaceDescriptor.URI_FRAGMENT_NVM_MODULE_CONFIGURATION);
		assertTrue(nvmModuleConfiguration instanceof EcucModuleConfigurationValues);

		NvM nvm = new NvM((EcucModuleConfigurationValues) nvmModuleConfiguration);
		List<NvMBlockDescriptor> nvMBlockDescriptors = nvm.getNvMBlockDescriptors();
		assertNotNull(nvMBlockDescriptors);
		assertTrue(!nvMBlockDescriptors.isEmpty());

		final NvMBlockDescriptor nvMBlockDescriptor = nvMBlockDescriptors.get(0);
		assertNotNull(nvMBlockDescriptor);

		// Gets the old paramValue value
		BigInteger nvMNvBlockBaseNumber = nvMBlockDescriptor.getNvMNvBlockBaseNumber();
		assertTrue(nvMNvBlockBaseNumber == null);

		// Sets the new paramValue value
		Runnable runnable = new Runnable() {
			public void run() {
				nvMBlockDescriptor.setNvMNvBlockBaseNumber(new BigInteger("11"));
			}
		};

		try {
			WorkspaceTransactionUtil.executeInWriteTransaction(getRefWks().editingDomain4x, runnable, "Setting Integer ParameterValue Value");
			nvMNvBlockBaseNumber = nvMBlockDescriptor.getNvMNvBlockBaseNumber();
			assertTrue(new BigInteger("11").compareTo(nvMNvBlockBaseNumber) == 0);
		} catch (OperationCanceledException ex) {

		} catch (ExecutionException ex) {
			fail(ex.getLocalizedMessage());
		}
	}

	/*
	 * Textual parameter many cases
	 */
	public void testTextualParameterValueManyAccessors() {
		EObject bswModuleConfiguration = getConfigurationObject(
				EcucValueAccessorsTestReferenceWorkspaceDescriptor.URI_FRAGMENT_BSW_MODULE_CONFIGURATION);
		assertTrue(bswModuleConfiguration instanceof EcucModuleConfigurationValues);

		BswM bswM = new BswM((EcucModuleConfigurationValues) bswModuleConfiguration);
		BswMGeneral bswMGeneral = bswM.getBswMGeneral();
		assertNotNull(bswMGeneral);
		final BswMUserIncludeFiles bswMUserIncludeFiles = bswMGeneral.getBswMUserIncludeFiles();
		assertNotNull(bswMUserIncludeFiles);
		List<String> values = bswMUserIncludeFiles.getBswMUserIncludeFiles();
		assertTrue(!values.isEmpty());
		int oldSize = values.size();

		Runnable runnable = new Runnable() {
			public void run() {
				bswMUserIncludeFiles.getBswMUserIncludeFiles().add("test");
			}
		};

		try {
			WorkspaceTransactionUtil.executeInWriteTransaction(getRefWks().editingDomain4x, runnable, "Adding ParameterValue Value");
			values = bswMUserIncludeFiles.getBswMUserIncludeFiles();
			assertTrue(values.size() == oldSize + 1);
		} catch (OperationCanceledException ex) {

		} catch (ExecutionException ex) {
			fail(ex.getLocalizedMessage());
		}
	}

	/*
	 * *********************************************************** ****** ReferenceValues Accessor's
	 * ************************** ***********************************************************
	 */

	/*
	 * 44_1_5 ReferenceValue accessor's
	 */
	public void testReferenceValueAccessors() {
		EObject bswModuleConfiguration = getConfigurationObject(
				EcucValueAccessorsTestReferenceWorkspaceDescriptor.URI_FRAGMENT_BSW_MODULE_CONFIGURATION);
		assertTrue(bswModuleConfiguration instanceof EcucModuleConfigurationValues);

		BswM bswM = new BswM((EcucModuleConfigurationValues) bswModuleConfiguration);
		List<BswMConfig> bswMConfigs = bswM.getBswMConfigs();
		assertNotNull(bswMConfigs);
		assertTrue(!bswMConfigs.isEmpty());
		final BswMConfig bswMConfig = bswMConfigs.get(0);
		assertNotNull(bswMConfig);

		EcucPartition bswMPartitionRef = bswMConfig.getBswMPartitionRef();
		assertTrue(bswMPartitionRef == null);

		final EObject ecucPartitionContainerValue = getConfigurationObject(
				EcucValueAccessorsTestReferenceWorkspaceDescriptor.URI_FRAGMENT_ECUC_PARTITION_MODULE_CONFIGURATION);
		assertTrue(ecucPartitionContainerValue instanceof EcucContainerValue);

		Runnable runnable = new Runnable() {
			public void run() {
				bswMConfig.setBswMPartitionRef(new EcucPartition((EcucContainerValue) ecucPartitionContainerValue));
			}
		};

		try {
			WorkspaceTransactionUtil.executeInWriteTransaction(getRefWks().editingDomain4x, runnable, "Setting ReferenceValue Value");
			bswMPartitionRef = bswMConfig.getBswMPartitionRef();
			assertNotNull(bswMPartitionRef);
		} catch (OperationCanceledException ex) {

		} catch (ExecutionException ex) {
			fail(ex.getLocalizedMessage());
		}
	}

	public void testReferenceValueAccessorsMany() {
		EObject adcModuleConfiguration = getConfigurationObject(
				EcucValueAccessorsTestReferenceWorkspaceDescriptor.URI_FRAGMENT_ADC_MODULE_CONFIGURATION);
		assertTrue(adcModuleConfiguration instanceof EcucModuleConfigurationValues);
		Adc adc = new Adc((EcucModuleConfigurationValues) adcModuleConfiguration);
		AdcConfigSet adcConfigSet = adc.getAdcConfigSet();
		assertNotNull(adcConfigSet);

		List<AdcHwUnit> adcHwUnits = adcConfigSet.getAdcHwUnits();
		assertNotNull(adcHwUnits);
		assertTrue(!adcHwUnits.isEmpty());
		AdcHwUnit adcHwUnit = adcHwUnits.get(0);
		assertNotNull(adcHwUnit);

		List<AdcGroup> adcGroups = adcHwUnit.getAdcGroups();
		assertNotNull(adcGroups);
		assertTrue(!adcGroups.isEmpty());
		final AdcGroup adcGroup = adcGroups.get(0);
		assertNotNull(adcGroup);

		final List<AdcChannel> adcGroupDefinitions = adcGroup.getAdcGroupDefinitions();
		assertNotNull(adcGroupDefinitions);
		assertTrue(!adcGroupDefinitions.isEmpty());

		int oldSize = adcGroupDefinitions.size();

		Runnable runnable = new Runnable() {
			public void run() {
				EObject adcChanel2 = getConfigurationObject(
						EcucValueAccessorsTestReferenceWorkspaceDescriptor.URI_FRAGMENT_ADC_CHANNEL2_CONTAINER_VALUE);
				assertTrue(adcChanel2 instanceof EcucContainerValue);
				adcGroupDefinitions.add(new AdcChannel((EcucContainerValue) adcChanel2));
			}
		};

		try {
			WorkspaceTransactionUtil.executeInWriteTransaction(getRefWks().editingDomain4x, runnable, "Adding ReferenceValue Value");
			assertTrue(adcGroupDefinitions.size() == oldSize + 1);
		} catch (OperationCanceledException ex) {

		} catch (ExecutionException ex) {
			fail(ex.getLocalizedMessage());
		}
	}

	public void testSortBy() {
		EObject adcModuleConfiguration = getConfigurationObject(
				EcucValueAccessorsTestReferenceWorkspaceDescriptor.URI_FRAGMENT_ADC_MODULE_CONFIGURATION);
		assertTrue(adcModuleConfiguration instanceof EcucModuleConfigurationValues);
		Adc adc = new Adc((EcucModuleConfigurationValues) adcModuleConfiguration);

		Adc.AdcConfigSet adcConfigSet = adc.getAdcConfigSet();
		List<Adc.AdcConfigSet.AdcHwUnit> adcHwUnits = adcConfigSet.getAdcHwUnits();
		Adc.AdcConfigSet.AdcHwUnit adcHwUnit = adcHwUnits.get(0);
		final List<Adc.AdcConfigSet.AdcHwUnit.AdcChannel> adcChannels = adcHwUnit.getAdcChannels();

		final Function1<Adc.AdcConfigSet.AdcHwUnit.AdcChannel, String> function = new Function1<Adc.AdcConfigSet.AdcHwUnit.AdcChannel, String>() {
			public String apply(final Adc.AdcConfigSet.AdcHwUnit.AdcChannel adcChannel) {
				return adcChannel.getShortName();
			}
		};

		IterableExtensions.<Adc.AdcConfigSet.AdcHwUnit.AdcChannel, String> sortBy(adcChannels, function);
	}

	/*
	 * *********************************************************** ****** SubContainer Accessor's
	 * ************************** ***********************************************************
	 */
	public void testSetSubContainer() {
		EObject bswModuleConfiguration = getConfigurationObject(
				EcucValueAccessorsTestReferenceWorkspaceDescriptor.URI_FRAGMENT_BSW_MODULE_CONFIGURATION);
		assertTrue(bswModuleConfiguration instanceof EcucModuleConfigurationValues);

		BswM bswM = new BswM((EcucModuleConfigurationValues) bswModuleConfiguration);
		List<BswMConfig> bswMConfigs = bswM.getBswMConfigs();
		assertNotNull(bswMConfigs);
		assertTrue(!bswMConfigs.isEmpty());

		final BswMConfig bswMConfig = bswMConfigs.get(0);
		assertNotNull(bswMConfig);

		Runnable runnable = new Runnable() {
			public void run() {
				EcucContainerValue containerValue = EcucdescriptionFactory.eINSTANCE.createEcucContainerValue();
				containerValue.setShortName("test");
				bswMConfig.setBswMDataTypeMappingSets(new BswMDataTypeMappingSets(containerValue));
			}
		};

		try {
			WorkspaceTransactionUtil.executeInWriteTransaction(getRefWks().editingDomain4x, runnable, "Setting SubContainer");
			BswMDataTypeMappingSets bswMDataTypeMappingSets = bswMConfig.getBswMDataTypeMappingSets();
			assertNotNull(bswMDataTypeMappingSets);
			GContainer target = bswMDataTypeMappingSets.getTarget();
			assertNotNull(target);
			GContainerDef definition = target.gGetDefinition();
			assertTrue(definition != null && "BswMDataTypeMappingSets".equals(definition.gGetShortName())); //$NON-NLS-1$
		} catch (OperationCanceledException ex) {

		} catch (ExecutionException ex) {
			fail(ex.getLocalizedMessage());
		}
	}

	public void testAddSubContainer() {
		EObject canSMModuleConfiguration = getConfigurationObject(
				EcucValueAccessorsTestReferenceWorkspaceDescriptor.URI_FRAGMENT_CANSM_MODULE_CONFIGURATION);
		assertTrue(canSMModuleConfiguration instanceof EcucModuleConfigurationValues);

		final CanSM canSM = new CanSM((EcucModuleConfigurationValues) canSMModuleConfiguration);
		final CanSMGeneral canSMGeneral = new CanSMGeneral(EcucdescriptionFactory.eINSTANCE.createEcucContainerValue());
		final CanSMConfiguration canSMConfiguration = new CanSMConfiguration(EcucdescriptionFactory.eINSTANCE.createEcucContainerValue());
		final CanSMManagerNetwork canSMManagerNetwork = new CanSMManagerNetwork(EcucdescriptionFactory.eINSTANCE.createEcucContainerValue());

		Runnable runnable = new Runnable() {
			public void run() {
				canSM.setCanSMGeneral(canSMGeneral);
				canSM.getCanSMGeneral().setShortName("CanSMGeneral0");
				canSM.getCanSMGeneral().setCanSMDevErrorDetect(true);
				canSM.getCanSMGeneral().setCanSMIcomSupport(false);
				canSM.getCanSMGeneral().setCanSMMainFunctionTimePeriod(new BigDecimal("0.05"));
				canSM.setCanSMConfiguration(canSMConfiguration);
				canSM.getCanSMConfiguration().setShortName("CanSMConfiguration0");
				canSM.getCanSMConfiguration().getCanSMManagerNetworks().add(canSMManagerNetwork);
				canSM.getCanSMConfiguration().getCanSMManagerNetworks().get(0).setCanSMBorCounterL1ToL2(new BigInteger("100"));
			}
		};

		try {
			WorkspaceTransactionUtil.executeInWriteTransaction(getRefWks().editingDomain4x, runnable, "Setting SubContainer");
			assertFalse(canSM.getCanSMConfiguration().getCanSMManagerNetworks().isEmpty());
		} catch (OperationCanceledException ex) {

		} catch (ExecutionException ex) {
			fail(ex.getLocalizedMessage());
		}
	}
}
