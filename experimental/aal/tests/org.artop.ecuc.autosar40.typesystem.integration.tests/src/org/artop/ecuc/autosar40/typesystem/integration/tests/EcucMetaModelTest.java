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

import java.util.List;

import org.artop.aal.common.resource.AutosarURIFactory;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichBooleanParamDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichChoiceContainerDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichChoiceReferenceDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichEnumerationParamDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichFloatParamDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichIntegerParamDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichModuleDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichParamConfContainerDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichStringParamDefType;
import org.artop.ecuc.testutils.integration.referenceworkspace.AbstractEcucIntegrationTestCase;
import org.artop.ecuc.testutils.integration.referenceworkspace.EcucTestReferenceWorkspace;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtend.typesystem.Property;
import org.eclipse.xtend.typesystem.Type;

import autosar40.ecucdescription.EcucContainerValue;
import autosar40.ecucdescription.EcucNumericalParamValue;
import autosar40.ecucparameterdef.EcucBooleanParamDef;
import autosar40.ecucparameterdef.EcucChoiceContainerDef;
import autosar40.ecucparameterdef.EcucChoiceReferenceDef;
import autosar40.ecucparameterdef.EcucEnumerationParamDef;
import autosar40.ecucparameterdef.EcucFloatParamDef;
import autosar40.ecucparameterdef.EcucIntegerParamDef;
import autosar40.ecucparameterdef.EcucModuleDef;
import autosar40.ecucparameterdef.EcucParamConfContainerDef;
import autosar40.ecucparameterdef.EcucStringParamDef;

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
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER_FIRSTNAME);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER_LASTNAME);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_REVISIONS);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_REVISIONS_REVISIONDATE);
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
		// assertReturnedEcucMetaModelTypeNameEquals(
		// EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REFERENCE_VALUES_0_ENGINE_TYPE_CHOICE_GASOLINE,
		// EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_ENGINE_TYPE_CHOICE_GASOLINE);
		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_PARAMETER_VALUES_0_VEHICLE_NAME,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_VEHICLE_NAME);
		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_PARAMETER_VALUES_2_MANUFACTURER,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_MANUFACTURER);
		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS);
		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FIRSTHAND,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FIRSTHAND_PARAMETER_VALUES_0_FIRSTNAME,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER_FIRSTNAME);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FIRSTHAND_PARAMETER_VALUES_1_LASTNAME,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER_LASTNAME);

		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_SECONDHAND,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_SECONDHAND_PARAMETER_VALUES_0_FIRSTNAME,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER_FIRSTNAME);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_SECONDHAND_PARAMETER_VALUES_1_LASTNAME,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER_LASTNAME);

		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_THIRDHAND,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_THIRDHAND_PARAMETER_VALUES_0_FIRSTNAME,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER_FIRSTNAME);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_THIRDHAND_PARAMETER_VALUES_1_LASTNAME,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER_LASTNAME);
		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FOURTHHAND,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FOURTHHAND_PARAMETER_VALUES_0_FIRSTNAME,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER_FIRSTNAME);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FOURTHHAND_PARAMETER_VALUES_1_LASTNAME,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER_LASTNAME);
		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FIFTHAND,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FIFTHAND_PARAMETER_VALUES_0_FIRSTNAME,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER_FIRSTNAME);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FIFTHAND_PARAMETER_VALUES_1_LASTNAME,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER_LASTNAME);
		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REVISIONS,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_REVISIONS);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REVISIONS_PARAMETER_VALUES_0_DATE_20071215,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_REVISIONS_REVISIONDATE);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REVISIONS_PARAMETER_VALUES_1_DATE_20080106,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_REVISIONS_REVISIONDATE);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REVISIONS_PARAMETER_VALUES_2_DATE_20080605,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_REVISIONS_REVISIONDATE);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REVISIONS_PARAMETER_VALUES_3_DATE_20090707,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_REVISIONS_REVISIONDATE);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REVISIONS_PARAMETER_VALUES_4_DATE_20100918,
				EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_REVISIONS_REVISIONDATE);
	}

	// Tests On Module
	public void testModuleDef() {
		/** 1_1 Check Rich type consistency */
		EObject carObject = getConfigurationObject(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR);
		Type vehiculeType = ecucMetaModel.getTypeForName(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE);
		assertTrue(vehiculeType instanceof RichModuleDefType);
		RichModuleDefType vehiculeRichType = (RichModuleDefType) vehiculeType;
		assertTrue(vehiculeRichType.getEcucTypeDef() instanceof EcucModuleDef);

		/** 1_2 Get shortname **/
		Property shortNameProperty = vehiculeRichType.getProperty("shortName"); //$NON-NLS-1$
		assertNotNull(shortNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), shortNameProperty.getReturnType());
		Object shortName = shortNameProperty.get(carObject);
		assertTrue(shortName instanceof String);
		assertEquals("Car", shortName); //$NON-NLS-1$

		// TODO Investigate reasons of test failure
		// /** 1_3 Get absoluteQualifiedName**/
		//		Property absoluteQualifiedNameProperty = vehiculeRichType.getProperty("absoluteQualifiedName"); //$NON-NLS-1$
		// assertNotNull(absoluteQualifiedNameProperty);
		// assertEquals(ecucMetaModel.getTypeSystem().getStringType(), absoluteQualifiedNameProperty.getReturnType());
		// Object absoluteQualifiedName = absoluteQualifiedNameProperty.get(carObject);
		// assertTrue(absoluteQualifiedName instanceof String);
		// assertEquals(AutosarURIFactory.getAbsoluteQualifiedName(carObject), absoluteQualifiedName);

		/** 1_4 Get EcucContainerValue of module definition **/
		Property engineProperty = vehiculeRichType.getProperty("Engine"); //$NON-NLS-1$
		assertNotNull(engineProperty);
		assertEquals(ecucMetaModel.getTypeForName(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_ENGINE), engineProperty.getReturnType());
		Object engineObject = engineProperty.get(carObject);
		assertTrue(engineObject instanceof EcucContainerValue);
		assertEquals(getConfigurationObject(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_ENGINE), engineObject);
	}

	// Tests On Containers
	// Containers
	// RichParamConfContainerDefType.java
	// RichChoiceContainerDefType.java
	public void testParamConfContainerDef() {
		/** 2_1 Check Rich type consistency **/
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

		// /** 2_2 Get absoluteQualifiedName of ParamConfContainerDef **/
		//		Property absoluteQualifiedNameProperty = engineRichType.getProperty("absoluteQualifiedName"); //$NON-NLS-1$
		// assertNotNull(absoluteQualifiedNameProperty);
		// assertEquals(ecucMetaModel.getTypeSystem().getStringType(), absoluteQualifiedNameProperty.getReturnType());
		// Object absoluteQualifiedName = absoluteQualifiedNameProperty.get(engineObject);
		// assertTrue(absoluteQualifiedName instanceof String);
		// assertEquals(AutosarURIFactory.getAbsoluteQualifiedName(engineObject), absoluteQualifiedName);

		/** 2_3 Get EnumerationParamDef **/
		Property engineTypeProperty = engineRichType.getProperty("EngineType"); //$NON-NLS-1$
		assertNotNull(engineTypeProperty);
		assertEquals(ecucMetaModel.getTypeForName(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_ENGINE_ENGINETYPE),
				engineTypeProperty.getReturnType());
		Object engineTypeObject = engineTypeProperty.get(engineObject);
		assertTrue(engineTypeObject instanceof EcucNumericalParamValue);
		assertEquals(getConfigurationObject(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_ENGINE_PARAMETER_VALUES_0_ENGINETYPE), engineTypeObject);

		/** 2_4 Get BooleanParamDef **/
		Property automaticProperty = engineRichType.getProperty("Automatic"); //$NON-NLS-1$
		assertNotNull(automaticProperty);
		assertEquals(ecucMetaModel.getTypeForName(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_ENGINE_AUTOMATIC),
				automaticProperty.getReturnType());
		Object automaticObject = automaticProperty.get(engineObject);
		assertTrue(automaticObject instanceof EcucNumericalParamValue);
		assertEquals(getConfigurationObject(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_ENGINE_PARAMETER_VALUES_1_AUTOMATIC), automaticObject);

		/** 2_5 Get ChoiceContainerDef **/
		Property typeProperty = engineRichType.getProperty("Type"); //$NON-NLS-1$
		assertNotNull(typeProperty);
		assertEquals(ecucMetaModel.getTypeForName(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE), typeProperty.getReturnType());
		Object typeObject = typeProperty.get(engineObject);
		assertTrue(typeObject instanceof EcucContainerValue);
		assertEquals(getConfigurationObject(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_ENGINE_TYPE), typeObject);

		/** 2_6 Get and Check Multiplicity on [0 .. 1] parameter container **/
		/** Get Multiplicity on Container **/
		Property lowerMultiplicityProperty = engineRichType.getProperty("lowerMultiplicity"); //$NON-NLS-1$
		assertNotNull(lowerMultiplicityProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), lowerMultiplicityProperty.getReturnType());
		Object lowerMultiplicityObject = lowerMultiplicityProperty.get(engineObject);
		assertTrue(lowerMultiplicityObject instanceof String);
		assertEquals(lowerMultiplicityObject, "0"); //$NON-NLS-1$

		Property upperMultiplicityProperty = engineRichType.getProperty("upperMultiplicity"); //$NON-NLS-1$
		assertNotNull(upperMultiplicityProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), upperMultiplicityProperty.getReturnType());
		Object upperMultiplicityObject = upperMultiplicityProperty.get(engineObject);
		assertTrue(upperMultiplicityObject instanceof String);
		assertEquals(upperMultiplicityObject, "1"); //$NON-NLS-1$
		/** 2_7 Get Multiplicity and Check on [n .. n] parameter container **/
		/* Not yet implemented in Example Model */
		/********************************************************************/
		// we retrieve types necessary for testing
		Type ownerType = ecucMetaModel.getTypeForName(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER);
		assertTrue(ownerType instanceof RichParamConfContainerDefType);
		RichParamConfContainerDefType ownerRichType = (RichParamConfContainerDefType) ownerType;
		assertTrue(ownerRichType.getEcucTypeDef() instanceof EcucParamConfContainerDef);
		Type ownersType = ecucMetaModel.getTypeForName(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS);
		assertTrue(ownersType instanceof RichParamConfContainerDefType);
		RichParamConfContainerDefType ownersRichType = (RichParamConfContainerDefType) ownersType;
		assertTrue(ownersRichType.getEcucTypeDef() instanceof EcucParamConfContainerDef);

		/** 2_8 Get Multiplicity and Check on [n .. *] parameter container **/
		/** Check Multiplicity is respected by getting childContainers **/
		EObject ownersObject = getConfigurationObject(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS);
		Property ownersProperty = ownersRichType.getProperty("Owners"); //$NON-NLS-1$
		assertNotNull(ownersProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getListType(ownerType), ownersProperty.getReturnType());
		Object ownersList = ownersProperty.get(ownersObject);
		assertNotNull(ownersList);
		assertTrue(ownersList instanceof List<?>);
		/** Get Multiplicity on Container **/
		EObject ownerFirstHandObject = getConfigurationObject(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FIFTHAND);
		lowerMultiplicityProperty = ownerRichType.getProperty("lowerMultiplicity"); //$NON-NLS-1$
		assertNotNull(lowerMultiplicityProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), lowerMultiplicityProperty.getReturnType());
		lowerMultiplicityObject = lowerMultiplicityProperty.get(ownerFirstHandObject);
		assertTrue(lowerMultiplicityObject instanceof String);
		assertEquals(lowerMultiplicityObject, "0"); //$NON-NLS-1$

		upperMultiplicityProperty = ownerRichType.getProperty("upperMultiplicity"); //$NON-NLS-1$
		assertNotNull(upperMultiplicityProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), upperMultiplicityProperty.getReturnType());
		upperMultiplicityObject = upperMultiplicityProperty.get(ownerFirstHandObject);
		assertTrue(upperMultiplicityObject instanceof String);
		assertEquals(upperMultiplicityObject, "*"); //$NON-NLS-1$
	}

	// 3_ChoiceContainer
	public void testChoiceContainerDef() {
		EObject typeObject = getConfigurationObject(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_ENGINE_TYPE);
		Type typeType = ecucMetaModel.getTypeForName(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE);
		assertTrue(typeType instanceof RichChoiceContainerDefType);
		RichChoiceContainerDefType typeRichType = (RichChoiceContainerDefType) typeType;
		assertTrue(typeRichType.getEcucTypeDef() instanceof EcucChoiceContainerDef);

		/** 3_1 Get shortName of ParamConfContainerDef **/
		Property shortNameProperty = typeRichType.getProperty("shortName"); //$NON-NLS-1$
		assertNotNull(shortNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), shortNameProperty.getReturnType());
		Object shortName = shortNameProperty.get(typeObject);
		assertTrue(shortName instanceof String);
		assertEquals("Type", shortName); //$NON-NLS-1$

		/** 3_2 Get absoluteQualifiedName of ParamConfContainerDef **/
		Property absoluteQualifiedNameProperty = typeRichType.getProperty("absoluteQualifiedName"); //$NON-NLS-1$
		assertNotNull(absoluteQualifiedNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), absoluteQualifiedNameProperty.getReturnType());
		Object absoluteQualifiedName = absoluteQualifiedNameProperty.get(typeObject);
		assertTrue(absoluteQualifiedName instanceof String);
		assertEquals(AutosarURIFactory.getAbsoluteQualifiedName(typeObject), absoluteQualifiedName);
		/** 3_3 get Value **/
		Property gasolineProperty = typeRichType.getProperty("Gasoline"); //$NON-NLS-1$
		assertNotNull(gasolineProperty);
		assertEquals(ecucMetaModel.getTypeForName(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE),
				gasolineProperty.getReturnType());
		Object gasoline = absoluteQualifiedNameProperty.get(typeObject);
		assertTrue(gasoline instanceof EcucParamConfContainerDef);
		assertEquals(getConfigurationObject(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_ENGINE_TYPE_GASOLINE), gasoline);
	}

	// 3_Parameter
	// 3_1 Boolean Parameter
	public void testBooleanParameterDef() {
		EObject automaticObject = getConfigurationObject(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_ENGINE_PARAMETER_VALUES_1_AUTOMATIC);
		Type automaticType = ecucMetaModel.getTypeForName(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_ENGINE_AUTOMATIC);

		/** 3_1_1 Check Rich type consistency **/
		assertTrue(automaticType instanceof RichBooleanParamDefType);
		RichBooleanParamDefType automaticRichType = (RichBooleanParamDefType) automaticType;
		assertTrue(automaticRichType.getEcucTypeDef() instanceof EcucBooleanParamDef);

		/** 3_1_2 Get shortName **/
		Property shortNameProperty = automaticRichType.getProperty("shortName"); //$NON-NLS-1$
		assertNotNull(shortNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), shortNameProperty.getReturnType());
		Object shortName = shortNameProperty.get(automaticObject);
		assertTrue(shortName instanceof String);
		assertEquals(automaticRichType.getSimpleName(), shortName);

		// /** 3_1_3 Get absoluteQualifiedName **/
		//		Property absoluteQualifiedNameProperty = automaticRichType.getProperty("absoluteQualifiedName"); //$NON-NLS-1$
		// assertNotNull(absoluteQualifiedNameProperty);
		// assertEquals(ecucMetaModel.getTypeSystem().getStringType(), absoluteQualifiedNameProperty.getReturnType());
		// Object absoluteQualifiedName = absoluteQualifiedNameProperty.get(automaticObject);
		// assertTrue(absoluteQualifiedName instanceof String);
		// assertEquals(AutosarURIFactory.getAbsoluteQualifiedName(automaticObject), absoluteQualifiedName);

		/** 3_1_4 Get Value **/
		Property valueProperty = automaticRichType.getProperty("value"); //$NON-NLS-1$
		assertNotNull(valueProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getBooleanType(), valueProperty.getReturnType());
		Object value = valueProperty.get(automaticObject);
		assertTrue(value instanceof Boolean);
		assertFalse((Boolean) value);

		/** 3_1_5 check exists **/
		Property existsProperty = automaticRichType.getProperty("exists"); //$NON-NLS-1$
		assertNotNull(existsProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getBooleanType(), existsProperty.getReturnType());
		value = existsProperty.get(automaticObject);
		assertTrue(value instanceof Boolean);
		assertTrue((Boolean) value);

		/** 3_1_6 check is_configured **/
		Property isConfiguredProperty = automaticRichType.getProperty("is_configured"); //$NON-NLS-1$
		assertNotNull(isConfiguredProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getBooleanType(), isConfiguredProperty.getReturnType());
		value = isConfiguredProperty.get(automaticObject);
		assertTrue(value instanceof Boolean);
		assertTrue((Boolean) value);

	}

	// Tests On Parameters
	// RichBooleanParamDefType.java
	// RichIntegerParamDefType.java
	// RichFloatParamDefType.java
	// RichStringParamDefType.java
	// RichFunctionNameDefType.java
	// RichLinkerSymbolDefType.java
	// MultilineStringParam => n/a in 3.x
	// EnumerationParameter
	// AddInfoParameter => n/a in 3.x

	// 3_2 Integer Parameter
	public void testIntegerParameterDef() {
		EObject serialNumberObject = getConfigurationObject(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_PARAMETER_VALUES_1_SERIAL_NUMBER);
		Type serialNumberType = ecucMetaModel.getTypeForName(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_SERIAL_NUMBER);

		/** 3_2_1 Check Rich type consistency **/
		assertTrue(serialNumberType instanceof RichIntegerParamDefType);
		RichIntegerParamDefType serialNumberRichType = (RichIntegerParamDefType) serialNumberType;
		assertTrue(serialNumberRichType.getEcucTypeDef() instanceof EcucIntegerParamDef);

		/** 3_2_2 Get shortName **/
		Property shortNameProperty = serialNumberRichType.getProperty("shortName"); //$NON-NLS-1$
		assertNotNull(shortNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), shortNameProperty.getReturnType());
		Object shortName = shortNameProperty.get(serialNumberObject);
		assertTrue(shortName instanceof String);
		assertEquals(serialNumberRichType.getSimpleName(), shortName);

		// /** 3_2_3 Get absoluteQualifiedName **/
		//		Property absoluteQualifiedNameProperty = serialNumberRichType.getProperty("absoluteQualifiedName"); //$NON-NLS-1$
		// assertNotNull(absoluteQualifiedNameProperty);
		// assertEquals(ecucMetaModel.getTypeSystem().getStringType(), absoluteQualifiedNameProperty.getReturnType());
		// Object absoluteQualifiedName = absoluteQualifiedNameProperty.get(serialNumberObject);
		// assertTrue(absoluteQualifiedName instanceof String);
		// assertEquals(AutosarURIFactory.getAbsoluteQualifiedName(serialNumberObject), absoluteQualifiedName);

		/** 3_2_4 Get value of integer parameter value **/
		Property valueProperty = serialNumberRichType.getProperty("value"); //$NON-NLS-1$
		assertNotNull(valueProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getIntegerType(), valueProperty.getReturnType());
		Object value = valueProperty.get(serialNumberObject);
		assertTrue(value instanceof Integer);
		assertTrue(((Integer) value).intValue() == 879055672);

		/** 3_2_5 check exists **/
		Property existsProperty = serialNumberRichType.getProperty("exists"); //$NON-NLS-1$
		assertNotNull(existsProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getBooleanType(), existsProperty.getReturnType());
		value = existsProperty.get(serialNumberObject);
		assertTrue(value instanceof Boolean);
		assertTrue((Boolean) value);

		/** 3_2_6 check is_configured **/
		Property isConfiguredProperty = serialNumberRichType.getProperty("is_configured"); //$NON-NLS-1$
		assertNotNull(isConfiguredProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getBooleanType(), isConfiguredProperty.getReturnType());
		value = isConfiguredProperty.get(serialNumberObject);
		assertTrue(value instanceof Boolean);
		assertTrue((Boolean) value);
	}

	// 3_3 Float Parameter
	public void testFloatParameterDef() {
		EObject sparkPlugVoltageObject = getConfigurationObject(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_ENGINE_TYPE_GASOLINE_PARAMETER_VALUES_1_SPARK_PLUG_VOLTAGE);
		Type sparkPlugVoltageType = ecucMetaModel
				.getTypeForName(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE_SPARK_PLUG_VOLTAGE);

		/** 3_3_1 Check Rich type consistency **/
		assertTrue(sparkPlugVoltageType instanceof RichFloatParamDefType);
		RichFloatParamDefType sparkPlugVoltageRichType = (RichFloatParamDefType) sparkPlugVoltageType;
		assertTrue(sparkPlugVoltageRichType.getEcucTypeDef() instanceof EcucFloatParamDef);

		/** 3_3_2 Get shortName **/
		Property shortNameProperty = sparkPlugVoltageRichType.getProperty("shortName"); //$NON-NLS-1$
		assertNotNull(shortNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), shortNameProperty.getReturnType());
		Object shortName = shortNameProperty.get(sparkPlugVoltageObject);
		assertTrue(shortName instanceof String);
		assertEquals(sparkPlugVoltageRichType.getSimpleName(), shortName);

		// /** 3_3_3 Get absoluteQualifiedName **/
		//		Property absoluteQualifiedNameProperty = sparkPlugVoltageRichType.getProperty("absoluteQualifiedName"); //$NON-NLS-1$
		// assertNotNull(absoluteQualifiedNameProperty);
		// assertEquals(ecucMetaModel.getTypeSystem().getStringType(), absoluteQualifiedNameProperty.getReturnType());
		// Object absoluteQualifiedName = absoluteQualifiedNameProperty.get(sparkPlugVoltageObject);
		// assertTrue(absoluteQualifiedName instanceof String);
		// assertEquals(AutosarURIFactory.getAbsoluteQualifiedName(sparkPlugVoltageObject), absoluteQualifiedName);

		/** 3_3_4 Get value **/
		Property valueProperty = sparkPlugVoltageRichType.getProperty("value"); //$NON-NLS-1$
		assertNotNull(valueProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getRealType(), valueProperty.getReturnType());
		Object value = valueProperty.get(sparkPlugVoltageObject);
		assertTrue(value instanceof Double);
		assertTrue(((Double) value).doubleValue() == 4.45);

		/** 3_3_5 check exists **/
		Property existsProperty = sparkPlugVoltageRichType.getProperty("exists"); //$NON-NLS-1$
		assertNotNull(existsProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getBooleanType(), existsProperty.getReturnType());
		value = existsProperty.get(sparkPlugVoltageObject);
		assertTrue(value instanceof Boolean);
		assertTrue((Boolean) value);

		/** 3_3_6 check is_configured **/
		Property isConfiguredProperty = sparkPlugVoltageRichType.getProperty("is_configured"); //$NON-NLS-1$
		assertNotNull(isConfiguredProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getBooleanType(), isConfiguredProperty.getReturnType());
		value = isConfiguredProperty.get(sparkPlugVoltageObject);
		assertTrue(value instanceof Boolean);
		assertTrue((Boolean) value);
	}

	// 3_4 String Parameter
	public void testStringParameterDef() {
		EObject vehicleNameObject = getConfigurationObject(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_PARAMETER_VALUES_0_VEHICLE_NAME);
		Type vehicleNameType = ecucMetaModel.getTypeForName(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_VEHICLE_NAME);

		/** 3_4_1 Check Rich type consistency **/
		assertTrue(vehicleNameType instanceof RichStringParamDefType);
		RichStringParamDefType vehicleNameRichType = (RichStringParamDefType) vehicleNameType;
		assertTrue(vehicleNameRichType.getEcucTypeDef() instanceof EcucStringParamDef);

		/** 3_4_2 Get shortName **/
		Property shortNameProperty = vehicleNameRichType.getProperty("shortName"); //$NON-NLS-1$
		assertNotNull(shortNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), shortNameProperty.getReturnType());
		Object shortName = shortNameProperty.get(vehicleNameObject);
		assertTrue(shortName instanceof String);
		assertEquals(vehicleNameRichType.getSimpleName(), shortName);

		/** 3_4_3 Get absoluteQualifiedName **/
		Property absoluteQualifiedNameProperty = vehicleNameRichType.getProperty("absoluteQualifiedName"); //$NON-NLS-1$
		assertNotNull(absoluteQualifiedNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), absoluteQualifiedNameProperty.getReturnType());
		Object absoluteQualifiedName = absoluteQualifiedNameProperty.get(vehicleNameObject);
		assertTrue(absoluteQualifiedName instanceof String);
		assertEquals(AutosarURIFactory.getAbsoluteQualifiedName(vehicleNameObject), absoluteQualifiedName);

		/** 3_4_4 Get value **/
		Property valueProperty = vehicleNameRichType.getProperty("value"); //$NON-NLS-1$
		assertNotNull(valueProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), valueProperty.getReturnType());
		Object value = valueProperty.get(vehicleNameObject);
		assertTrue(value instanceof String);
		assertEquals((String) value, "Saxo"); //$NON-NLS-1$

		/** 3_4_5 check exists **/
		Property existsProperty = vehicleNameRichType.getProperty("exists"); //$NON-NLS-1$
		assertNotNull(existsProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getBooleanType(), existsProperty.getReturnType());
		value = existsProperty.get(vehicleNameObject);
		assertTrue(value instanceof Boolean);
		assertTrue((Boolean) value);

		/** 3_4_6 check is_configured **/
		Property isConfiguredProperty = vehicleNameRichType.getProperty("is_configured"); //$NON-NLS-1$
		assertNotNull(isConfiguredProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getBooleanType(), isConfiguredProperty.getReturnType());
		value = isConfiguredProperty.get(vehicleNameObject);
		assertTrue(value instanceof Boolean);
		assertTrue((Boolean) value);
	}

	// 3_5 Enumeration Parameter
	public void testEnumerationParameterDef() {
		EObject engineTypeObject = getConfigurationObject(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_ENGINE_PARAMETER_VALUES_0_ENGINETYPE);
		Type engineTypeType = ecucMetaModel.getTypeForName(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_ENGINE_ENGINETYPE);

		/** 3_5_1 Check Rich type consistency **/
		assertTrue(engineTypeType instanceof RichEnumerationParamDefType);
		RichEnumerationParamDefType engineTypeRichType = (RichEnumerationParamDefType) engineTypeType;
		assertTrue(engineTypeRichType.getEcucTypeDef() instanceof EcucEnumerationParamDef);

		/** 3_5_2 Get shortName **/
		Property shortNameProperty = engineTypeRichType.getProperty("shortName"); //$NON-NLS-1$
		assertNotNull(shortNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), shortNameProperty.getReturnType());
		Object shortName = shortNameProperty.get(engineTypeObject);
		assertTrue(shortName instanceof String);
		assertEquals(engineTypeRichType.getSimpleName(), shortName);

		/** 3_5_3 Get absoluteQualifiedName **/
		Property absoluteQualifiedNameProperty = engineTypeRichType.getProperty("absoluteQualifiedName"); //$NON-NLS-1$
		assertNotNull(absoluteQualifiedNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), absoluteQualifiedNameProperty.getReturnType());
		Object absoluteQualifiedName = absoluteQualifiedNameProperty.get(engineTypeObject);
		assertTrue(absoluteQualifiedName instanceof String);
		assertEquals(AutosarURIFactory.getAbsoluteQualifiedName(engineTypeObject), absoluteQualifiedName);

		/** 3_5_4 Get value **/
		Property valueProperty = engineTypeRichType.getProperty("value"); //$NON-NLS-1$
		assertNotNull(valueProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), valueProperty.getReturnType());
		Object value = valueProperty.get(engineTypeObject);
		assertTrue(value instanceof String);
		assertEquals((String) value, "Gasoline"); //$NON-NLS-1$
	}

	// 3_6 FunctionName Parameter
	public void testFunctionNameDef() {
		// RichFunctionNameDefType.java
		/* Not yet implemented */
	}

	// 3_7 LinkerSymbol Parameter
	public void testLinkerSymbolDef() {
		// RichLinkerSymbolDefType.java
		/* Not yet implemented */
	}

	// 3_8 MultilineString Parameter
	public void testMultilineStringParamDef() {
		// MultilineStringParam => n/a in 3.x
		/* Not yet implemented */
	}

	// 3_9 AddInfo Parameter
	public void testAddInfoParameterDef() {
		// AddInfoParameter => n/a in 3.x
		/* Not yet implemented */
	}

	// 4_Reference
	// 4_1 ChoiceReference
	public void testChoiceReferenceDef() {
		EObject engineTypeChoiceObject = getConfigurationObject(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REFERENCE_VALUES_0_ENGINE_TYPE_CHOICE_GASOLINE);
		Type engineTypeChoiceType = ecucMetaModel
				.getTypeForName(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_ENGINE_TYPE_CHOICE_GASOLINE);

		/** 4_1_1 Check Rich type consistency **/
		assertTrue(engineTypeChoiceType instanceof RichChoiceReferenceDefType);
		RichChoiceReferenceDefType engineTypeChoiceRichType = (RichChoiceReferenceDefType) engineTypeChoiceType;
		assertTrue(engineTypeChoiceRichType.getEcucTypeDef() instanceof EcucChoiceReferenceDef);

		/** 4_1_2 Get shortName **/
		Property shortNameProperty = engineTypeChoiceRichType.getProperty("shortName"); //$NON-NLS-1$
		assertNotNull(shortNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), shortNameProperty.getReturnType());
		Object shortName = shortNameProperty.get(engineTypeChoiceObject);
		assertTrue(shortName instanceof String);
		assertEquals(engineTypeChoiceRichType.getSimpleName(), shortName);

		/** 4_1_3 Get absoluteQualifiedName **/
		Property absoluteQualifiedNameProperty = engineTypeChoiceRichType.getProperty("absoluteQualifiedName"); //$NON-NLS-1$
		assertNotNull(absoluteQualifiedNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), absoluteQualifiedNameProperty.getReturnType());
		Object absoluteQualifiedName = absoluteQualifiedNameProperty.get(engineTypeChoiceObject);
		assertTrue(absoluteQualifiedName instanceof String);
		assertEquals(AutosarURIFactory.getAbsoluteQualifiedName(engineTypeChoiceObject), absoluteQualifiedName);

		/** 4_1_4 Get value **/
		Property valueProperty = engineTypeChoiceRichType.getProperty("value"); //$NON-NLS-1$
		assertNotNull(valueProperty);
		assertEquals(ecucMetaModel.getTypeForName(EcucTestReferenceWorkspace.RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE),
				valueProperty.getReturnType());
		Object value = valueProperty.get(engineTypeChoiceObject);
		assertTrue(value instanceof EcucContainerValue);
		assertEquals(value, getConfigurationObject(EcucTestReferenceWorkspace.URI_FRAGMENT_EPC_CAR_ENGINE_TYPE_GASOLINE));

	}

	// 4_2 ChoiceReference
	public void testSymbolicNameReferenceDef() {
		/* Not yet implemented */
	}

	// 4_3 ChoiceReference
	public void testForeignReferenceDef() {
		/* Not yet implemented */
	}

	// 4_4 ChoiceReference
	public void testInstanceReferenceDef() {
		/* Not yet implemented */
	}

}
