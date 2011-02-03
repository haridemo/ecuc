/**
 * <copyright>
 * 
 * Copyright (c) See4sys and others.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of the Artop Software License Based on AUTOSAR
 * Released Material (ASLR) which accompanies this distribution, and is
 * available at http://www.artop.org/aslr.html
 * 
 * Contributors: 
 *     See4sys - Initial API and implementation
 * 
 * </copyright>
 */
package org.artop.ecuc.autosar40.typesystem.integration.tests;

import org.artop.aal.common.resource.AutosarURIFactory;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichBooleanParamDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichIntegerParamDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichModuleDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichParamConfContainerDefType;
import org.artop.ecuc.testutils.integration.referenceworkspace.AbstractEcucIntegrationTestCase;
import org.artop.ecuc.testutils.integration.referenceworkspace.EcucTestReferenceWorkspace;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtend.typesystem.Property;
import org.eclipse.xtend.typesystem.Type;

import autosar40.ecucdescription.EcucContainerValue;
import autosar40.ecucdescription.EcucNumericalParamValue;
import autosar40.ecucparameterdef.EcucBooleanParamDef;
import autosar40.ecucparameterdef.EcucIntegerParamDef;
import autosar40.ecucparameterdef.EcucModuleDef;
import autosar40.ecucparameterdef.EcucParamConfContainerDef;

public class EcucMetaModelTest extends AbstractEcucIntegrationTestCase {

	/** 0_1 Test if the types defined in module definition are registered in EcucMetaModel */
	public void testEcucMetaModelGeneratedTypes() {
		// Check for expected types in ecucMetaModel

		// MetaTypes
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspace.METATYPE_AR_AR_OBJECT_TYPE);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspace.METATYPE_AR_AR_PACKAGE_TYPE);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspace.METATYPE_AR_AUTOSAR_TYPE);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspace.METATYPE_AR_REFERENCE_DEF_TYPE);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspace.METATYPE_AR_CHOICE_CONTAINER_DEF_TYPE);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspace.METATYPE_AR_PARAM_CONF_CONTAINER_DEF_TYPE);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspace.METATYPE_AR_MODULE_DEF_TYPE);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspace.METATYPE_AR_CONTAINER_DEF_TYPE);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspace.METATYPE_AR_CHOICE_REFERENCE_DEF_TYPE);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspace.METATYPE_AR_CONFIG_PARAMETER_TYPE);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspace.METATYPE_AR_CONFIG_REFERENCE_TYPE);

		// From EPD package
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_MANUFACTURER);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_MANUFACTURER);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_SERIAL_NUMBER);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_YEAR);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_ENGINE_TYPE_CHOICE_DIESEL);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_ENGINE_TYPE_CHOICE_GASOLINE);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_VEHICLE_NAME);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_ENGINE);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_ENGINE_ENGINETYPE);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_ENGINE_AUTOMATIC);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE_SPARK_PLUG_VOLTAGE);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE_SPARK_PLUG_NUMBER);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE_SPARK_PLUG_MODEL);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_DIESEL_DIESEL_FILTER_MODEL);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_DIESEL);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_DIESEL_MAX_COUPLE);
	}

	/**
	 * 0_2 Test if the types defined in module definition are retrieved for corresponding objects in module
	 * configuration
	 */
	public void testEcucMetaModelReturnedTypeForEObjectInModuleConfiguration() {

		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR, EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE);
		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_ENGINE,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_ENGINE);
		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_ENGINE_PARAMETER_VALUES_0_ENGINETYPE,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_ENGINE_ENGINETYPE);
		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_ENGINE_PARAMETER_VALUES_1_AUTOMATIC,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_ENGINE_AUTOMATIC);
		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_ENGINE_TYPE,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE);
		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_ENGINE_TYPE_GASOLINE,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_ENGINE_TYPE_GASOLINE_PARAMETER_VALUES_0_SPARK_PLUG_NUMBER,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE_SPARK_PLUG_NUMBER);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_ENGINE_TYPE_GASOLINE_PARAMETER_VALUES_1_SPARK_PLUG_VOLTAGE,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE_SPARK_PLUG_VOLTAGE);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_ENGINE_TYPE_GASOLINE_PARAMETER_VALUES_2_SPARK_PLUG_MODEL,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE_SPARK_PLUG_MODEL);
		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_GENERALINFO,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO);
		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_PARAMETER_VALUES_1_SERIAL_NUMBER,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_SERIAL_NUMBER);
		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_PARAMETER_VALUES_3_YEAR,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_YEAR);
		// TODO Investigate reasons of test failure : returned type by EcucMetaModel is not the expected one
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REFERENCE_VALUES_0_ENGINE_TYPE_CHOICE_GASOLINE,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_ENGINE_TYPE_CHOICE_GASOLINE);
		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_PARAMETER_VALUES_0_VEHICLE_NAME,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_VEHICLE_NAME);
		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_PARAMETER_VALUES_2_MANUFACTURER,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_MANUFACTURER);
	}

	// Module

	// Containers
	// RichParamConfContainerDefType.java
	// RichChoiceContainerDefType.java

	// Parameters
	// RichBooleanParamDefType.java
	// RichIntegerParamDefType.java
	// RichFloatParamDefType.java
	// RichStringParamDefType.java
	// RichFunctionNameDefType.java
	// RichLinkerSymbolDefType.java
	// MultilineStringParam => n/a in 3.x
	// EnumerationParameter
	// AddInfoParameter => n/a in 3.x

	// References
	// RichReference
	// SymbolicNameReference
	// ForeignReference
	// InstanceReference
	// ChoiceReference

	// Tests On Module
	public void testGetPropertiesOnModuleContainerParamDef() {
		EObject carObject = getConfigurationObject(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR);
		Type vehiculeType = ecucMetaModel.getTypeForName(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE);
		assertTrue(vehiculeType instanceof RichModuleDefType);
		RichModuleDefType vehiculeRichType = (RichModuleDefType) vehiculeType;
		assertTrue(vehiculeRichType.getEcucTypeDef() instanceof EcucModuleDef);

		/** 1_1 Get shortName of container parameter definition value **/
		Property shortNameProperty = vehiculeRichType.getProperty("shortName"); //$NON-NLS-1$
		assertNotNull(shortNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), shortNameProperty.getReturnType());
		Object shortName = shortNameProperty.get(carObject);
		assertTrue(shortName instanceof String);
		assertEquals("Car", shortName); //$NON-NLS-1$

		/** 1_2 Get absoluteQualifiedName of container parameter definition value **/
		Property absoluteQualifiedNameProperty = vehiculeRichType.getProperty("absoluteQualifiedName"); //$NON-NLS-1$
		assertNotNull(absoluteQualifiedNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), absoluteQualifiedNameProperty.getReturnType());

		Object absoluteQualifiedName = absoluteQualifiedNameProperty.get(carObject);
		assertTrue(absoluteQualifiedName instanceof String);
		assertEquals(AutosarURIFactory.getAbsoluteQualifiedName(carObject), absoluteQualifiedName);

		/** 1_3 Get EcucContainerValue of container parameter definition value **/
		Property engineProperty = vehiculeRichType.getProperty("Engine"); //$NON-NLS-1$
		assertNotNull(engineProperty);
		assertEquals(ecucMetaModel.getTypeForName(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_ENGINE), engineProperty.getReturnType());
		Object engineObject = engineProperty.get(carObject);
		assertTrue(engineObject instanceof EcucContainerValue);
		assertEquals(getConfigurationObject(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_ENGINE), engineObject);
	}

	// Tests On Containers

	public void testGetPropertiesOnParamConfContainerDef() {
		EObject engineObject = getConfigurationObject(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_ENGINE);
		Type engineType = ecucMetaModel.getTypeForName(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_ENGINE);
		assertTrue(engineType instanceof RichParamConfContainerDefType);
		RichParamConfContainerDefType engineRichType = (RichParamConfContainerDefType) engineType;
		assertTrue(engineRichType.getEcucTypeDef() instanceof EcucParamConfContainerDef);

		/** 2_1 Get shortName of ParamConfContainerDef **/
		Property shortNameProperty = engineRichType.getProperty("shortName"); //$NON-NLS-1$
		assertNotNull(shortNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), shortNameProperty.getReturnType());
		Object shortName = shortNameProperty.get(engineObject);
		assertTrue(shortName instanceof String);
		assertEquals("Engine", shortName); //$NON-NLS-1$

		/** 2_2 Get absoluteQualifiedName of ParamConfContainerDef **/
		Property absoluteQualifiedNameProperty = engineRichType.getProperty("absoluteQualifiedName"); //$NON-NLS-1$
		assertNotNull(absoluteQualifiedNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), absoluteQualifiedNameProperty.getReturnType());
		Object absoluteQualifiedName = absoluteQualifiedNameProperty.get(engineObject);
		assertTrue(absoluteQualifiedName instanceof String);
		assertEquals(AutosarURIFactory.getAbsoluteQualifiedName(engineObject), absoluteQualifiedName);

		/** 2_3 Get EnumerationParamDef on ParamConfContainerDef **/
		Property engineTypeProperty = engineRichType.getProperty("EngineType"); //$NON-NLS-1$
		assertNotNull(engineTypeProperty);
		assertEquals(ecucMetaModel.getTypeForName(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_ENGINE_ENGINETYPE),
				engineTypeProperty.getReturnType());
		Object engineTypeObject = engineTypeProperty.get(engineObject);
		assertTrue(engineTypeObject instanceof EcucNumericalParamValue);
		assertEquals(getConfigurationObject(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_ENGINE_PARAMETER_VALUES_0_ENGINETYPE), engineTypeObject);

		/** 2_4 Get BooleanParamDef on ParamConfContainerDef **/
		Property automaticProperty = engineRichType.getProperty("Automatic"); //$NON-NLS-1$
		assertNotNull(automaticProperty);
		assertEquals(ecucMetaModel.getTypeForName(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_ENGINE_AUTOMATIC),
				automaticProperty.getReturnType());
		Object automaticObject = automaticProperty.get(engineObject);
		assertTrue(automaticObject instanceof EcucNumericalParamValue);
		assertEquals(getConfigurationObject(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_ENGINE_PARAMETER_VALUES_1_AUTOMATIC), automaticObject);

		/** 2_5 Get ChoiceContainerDef on ParamConfContainerDef **/
		Property typeProperty = engineRichType.getProperty("Type"); //$NON-NLS-1$
		assertNotNull(typeProperty);
		assertEquals(ecucMetaModel.getTypeForName(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE), typeProperty.getReturnType());
		Object typeObject = typeProperty.get(engineObject);
		assertTrue(typeObject instanceof EcucContainerValue);
		assertEquals(getConfigurationObject(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_ENGINE_TYPE), typeObject);

	}

	// Tests On Parameters

	public void testIntegerParameter() {
		EObject serialNumberObject = getConfigurationObject(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_PARAMETER_VALUES_1_SERIAL_NUMBER);
		Type serialNumberType = ecucMetaModel.getTypeForName(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_SERIAL_NUMBER);

		/** 3_8_0 Check consistency of boolean parameter value type and properties **/
		assertTrue(serialNumberType instanceof RichIntegerParamDefType);
		RichIntegerParamDefType serialNumberRichType = (RichIntegerParamDefType) serialNumberType;
		assertTrue(serialNumberRichType.getEcucTypeDef() instanceof EcucIntegerParamDef);

		Property shortNameProperty = serialNumberRichType.getProperty("shortName"); //$NON-NLS-1$
		assertNotNull(shortNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), shortNameProperty.getReturnType());

		Property absoluteQualifiedNameProperty = serialNumberRichType.getProperty("absoluteQualifiedName"); //$NON-NLS-1$
		assertNotNull(absoluteQualifiedNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), absoluteQualifiedNameProperty.getReturnType());

		Property valueProperty = serialNumberRichType.getProperty("value"); //$NON-NLS-1$
		assertNotNull(valueProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getIntegerType(), valueProperty.getReturnType());

		/** 3_8_1 Get shortName of boolean parameter value **/
		Object shortName = shortNameProperty.get(serialNumberObject);
		assertNull(shortName);

		/** 3_8_2 Get absoluteQualifiedName of boolean parameter value **/
		Object absoluteQualifiedName = absoluteQualifiedNameProperty.get(serialNumberObject);
		assertTrue(absoluteQualifiedName instanceof String);
		assertEquals(AutosarURIFactory.getAbsoluteQualifiedName(serialNumberObject), absoluteQualifiedName);

		/** 3_8_3 Get value of boolean parameter value **/
		Object value = valueProperty.get(serialNumberObject);
		assertTrue(value instanceof Integer);
		assertTrue(((Integer) value).intValue() == 879055672);
	}

	public void testBooleanParameter() {
		EObject automaticObject = getConfigurationObject(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_ENGINE_PARAMETER_VALUES_1_AUTOMATIC);
		Type automaticType = ecucMetaModel.getTypeForName(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_ENGINE_AUTOMATIC);

		/** 3_8_0 Check consistency of boolean parameter value type and properties **/
		assertTrue(automaticType instanceof RichBooleanParamDefType);
		RichBooleanParamDefType automaticRichType = (RichBooleanParamDefType) automaticType;
		assertTrue(automaticRichType.getEcucTypeDef() instanceof EcucBooleanParamDef);

		Property shortNameProperty = automaticRichType.getProperty("shortName"); //$NON-NLS-1$
		assertNotNull(shortNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), shortNameProperty.getReturnType());

		Property absoluteQualifiedNameProperty = automaticRichType.getProperty("absoluteQualifiedName"); //$NON-NLS-1$
		assertNotNull(absoluteQualifiedNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), absoluteQualifiedNameProperty.getReturnType());

		Property valueProperty = automaticRichType.getProperty("value"); //$NON-NLS-1$
		assertNotNull(valueProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getBooleanType(), valueProperty.getReturnType());

		/** 3_8_1 Get shortName of boolean parameter value **/
		Object shortName = shortNameProperty.get(automaticObject);
		assertNull(shortName);

		/** 3_8_2 Get absoluteQualifiedName of boolean parameter value **/
		Object absoluteQualifiedName = absoluteQualifiedNameProperty.get(automaticObject);
		assertTrue(absoluteQualifiedName instanceof String);
		assertEquals(AutosarURIFactory.getAbsoluteQualifiedName(automaticObject), absoluteQualifiedName);

		/** 3_8_3 Get value of boolean parameter value **/
		Object value = valueProperty.get(automaticObject);
		assertTrue(value instanceof Boolean);
		assertFalse((Boolean) value);
	}

	// /** 6_1 Get the a parameter value in a parent container of the current container **/
	// public void testGetParentContainerParameterValue() {
	// EObject expectedTargetParent =
	// moduleConfResource.getEObject(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_ENGINE);
	// EObject expectedTargetParentParameter = moduleConfResource
	// .getEObject(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_ENGINE_PARAMETER_VALUES_0_ENGINETYPE);
	//
	// // we retrieve parent property from target
	// Object retrievedParent = getRichTypePropertyValue(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_ENGINE_TYPE,
	// "parent");
	// assertNotNull(retrievedParent);
	// assertEquals(expectedTargetParent, retrievedParent);
	//
	// // We retrieve one parameter definition from parent of target element
	//		Object retrievedParameter = getPropertyValue((EObject) retrievedParent, "EngineType"); //$NON-NLS-1$
	// assertEquals(expectedTargetParentParameter, retrievedParameter);
	// }

}
