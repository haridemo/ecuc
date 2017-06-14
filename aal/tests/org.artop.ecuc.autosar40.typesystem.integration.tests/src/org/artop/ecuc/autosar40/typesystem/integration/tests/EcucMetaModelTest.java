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

import java.math.BigDecimal;
import java.util.List;

import org.artop.aal.common.resource.AutosarURIFactory;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ARObjectType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ChoiceContainerDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ChoiceReferenceDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ConfigParameterType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ConfigReferenceType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ContainerDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ModuleDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ParamConfContainerDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ReferenceDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.concrete.ARPackageType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.concrete.AUTOSARType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichBooleanParamDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichChoiceContainerDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichChoiceReferenceDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichConfigReferenceType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichEnumerationParamDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichFloatParamDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichIntegerParamDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichModuleDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichParamConfContainerDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichStringParamDefType;
import org.artop.ecuc.testutils.integration.referenceworkspace.AbstractEcucIntegrationTestCase;
import org.artop.ecuc.testutils.integration.referenceworkspace.EcucTestReferenceWorkspaceDescriptor;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.sphinx.emf.util.WorkspaceEditingDomainUtil;
import org.eclipse.sphinx.emf.util.WorkspaceTransactionUtil;
import org.eclipse.xtend.typesystem.Operation;
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
import autosar40.ecucparameterdef.EcucReferenceDef;
import autosar40.ecucparameterdef.EcucStringParamDef;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;

public class EcucMetaModelTest extends AbstractEcucIntegrationTestCase {

	/** 0_1 Test if the types defined in module definition are registered in EcucMetaModel */
	public void testEcucMetaModelGeneratedTypes() {
		/** Check for expected types in ecucMetaModel **/

		/** MetaTypes **/
		assertExistsTypeInEcucMetaModel(ARObjectType.TYPE_NAME);
		assertExistsTypeInEcucMetaModel(ARPackageType.TYPE_NAME);
		assertExistsTypeInEcucMetaModel(AUTOSARType.TYPE_NAME);
		assertExistsTypeInEcucMetaModel(ReferenceDefType.TYPE_NAME);
		assertExistsTypeInEcucMetaModel(ChoiceContainerDefType.TYPE_NAME);
		assertExistsTypeInEcucMetaModel(ParamConfContainerDefType.TYPE_NAME);
		assertExistsTypeInEcucMetaModel(ModuleDefType.TYPE_NAME);
		assertExistsTypeInEcucMetaModel(ContainerDefType.TYPE_NAME);
		assertExistsTypeInEcucMetaModel(ChoiceReferenceDefType.TYPE_NAME);
		assertExistsTypeInEcucMetaModel(ConfigParameterType.TYPE_NAME);
		assertExistsTypeInEcucMetaModel(ConfigReferenceType.TYPE_NAME);

		/** From EPD package **/
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_MANUFACTURER);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_SERIAL_NUMBER);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_YEAR);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_VEHICLE_NAME);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_CURRENT_OWNER);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_FINITION_LEVEL);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_FIRSTHAND);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER_FIRSTNAME);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER_LASTNAME);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_REVISIONS);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_REVISIONS_REVISIONDATE);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_ENGINE);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_ENGINE_ENGINETYPE);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_ENGINE_AUTOMATIC);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE_SPARK_PLUG_VOLTAGE);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE_SPARK_PLUG_NUMBER);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE_SPARK_PLUG_MODEL);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_DIESEL_DIESEL_FILTER_MODEL);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_DIESEL);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_DIESEL_MAX_COUPLE);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_OPTIONS);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_OPTIONS_FINITION_LEVELS);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_OPTIONS_FINITION_LEVELS_HIGH);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_OPTIONS_FINITION_LEVELS_LOW);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_OPTIONS_FINITION_LEVELS_MEDIUM);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_ATTRIBUTES);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_ATTRIBUTES_AVAILABLECOLORS);
		assertExistsTypeInEcucMetaModel(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_ATTRIBUTES_AVAILABLECOLORS_CHARCOAL);
		/** FIXME Review Test model and adapt test accordingly **/
		// assertExistsTypeInEcucMetaModel(EcucTestRefWorkspaceInfo.RICH_TYPE_EPD_ATTRIBUTES_AVAILABLECOLORS_CORNFLOWERBLUE);
		// assertExistsTypeInEcucMetaModel(EcucTestRefWorkspaceInfo.RICH_TYPE_EPD_ATTRIBUTES_AVAILABLECOLORS_GOLD);
		// assertExistsTypeInEcucMetaModel(EcucTestRefWorkspaceInfo.RICH_TYPE_EPD_ATTRIBUTES_AVAILABLECOLORS_HOTPINK);
		// assertExistsTypeInEcucMetaModel(EcucTestRefWorkspaceInfo.RICH_TYPE_EPD_ATTRIBUTES_AVAILABLECOLORS_NAVYBLUE);
		// assertExistsTypeInEcucMetaModel(EcucTestRefWorkspaceInfo.RICH_TYPE_EPD_ATTRIBUTES_AVAILABLECOLORS_PAPAYAWHIP);
		// assertExistsTypeInEcucMetaModel(EcucTestRefWorkspaceInfo.RICH_TYPE_EPD_ATTRIBUTES_AVAILABLECOLORS_SALSARED);
		// assertExistsTypeInEcucMetaModel(EcucTestRefWorkspaceInfo.RICH_TYPE_EPD_ATTRIBUTES_AVAILABLECOLORS_SILVER);
	}

	/**
	 * 0_2 Test if the types defined in module definition are retrieved for corresponding objects in module
	 * configuration
	 */
	public void testEcucMetaModelReturnedTypeForEObjectInModuleConfiguration() {

		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE);
		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_ENGINE,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_ENGINE);
		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_ENGINE_PARAMETER_VALUES_0_ENGINETYPE,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_ENGINE_ENGINETYPE);
		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_ENGINE_PARAMETER_VALUES_1_AUTOMATIC,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_ENGINE_AUTOMATIC);
		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_ENGINE_TYPE,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE);
		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_ENGINE_TYPE_GASOLINE,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_ENGINE_TYPE_GASOLINE_PARAMETER_VALUES_0_SPARK_PLUG_NUMBER,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE_SPARK_PLUG_NUMBER);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_ENGINE_TYPE_GASOLINE_PARAMETER_VALUES_1_SPARK_PLUG_VOLTAGE,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE_SPARK_PLUG_VOLTAGE);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_ENGINE_TYPE_GASOLINE_PARAMETER_VALUES_2_SPARK_PLUG_MODEL,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE_SPARK_PLUG_MODEL);
		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_PARAMETER_VALUES_1_SERIAL_NUMBER,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_SERIAL_NUMBER);
		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_PARAMETER_VALUES_3_YEAR,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_YEAR);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REFERENCE_VALUES_0_FINITION_LEVEL,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_FINITION_LEVEL);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REFERENCE_VALUES_1_CURRENT_OWNER,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_CURRENT_OWNER);
		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REFERENCE_VALUES_2_FIRSTHAND,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_FIRSTHAND);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_PARAMETER_VALUES_0_VEHICLE_NAME,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_VEHICLE_NAME);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_PARAMETER_VALUES_2_MANUFACTURER,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_MANUFACTURER);
		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS);
		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FIRSTHAND,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FIRSTHAND_PARAMETER_VALUES_0_LASTNAME,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER_LASTNAME);

		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_SECONDHAND,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_SECONDHAND_PARAMETER_VALUES_0_LASTNAME,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER_LASTNAME);

		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_THIRDHAND,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_THIRDHAND_PARAMETER_VALUES_0_FIRSTNAME,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER_FIRSTNAME);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_THIRDHAND_PARAMETER_VALUES_1_LASTNAME,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER_LASTNAME);
		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FOURTHHAND,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FOURTHHAND_PARAMETER_VALUES_0_FIRSTNAME,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER_FIRSTNAME);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FOURTHHAND_PARAMETER_VALUES_1_LASTNAME,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER_LASTNAME);
		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FIFTHAND,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FIFTHAND_PARAMETER_VALUES_0_FIRSTNAME,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER_FIRSTNAME);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FIFTHAND_PARAMETER_VALUES_1_LASTNAME,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER_LASTNAME);
		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REVISIONS,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_REVISIONS);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REVISIONS_PARAMETER_VALUES_0_DATE_20071215,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_REVISIONS_REVISIONDATE);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REVISIONS_PARAMETER_VALUES_1_DATE_20080106,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_REVISIONS_REVISIONDATE);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REVISIONS_PARAMETER_VALUES_2_DATE_20080605,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_REVISIONS_REVISIONDATE);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REVISIONS_PARAMETER_VALUES_3_DATE_20090707,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_REVISIONS_REVISIONDATE);
		assertReturnedEcucMetaModelTypeNameEquals(
				EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REVISIONS_PARAMETER_VALUES_4_DATE_20100918,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_REVISIONS_REVISIONDATE);
		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_OPTIONS,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_OPTIONS);
		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_OPTIONS_FINITION_LEVELS,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_OPTIONS_FINITION_LEVELS);
		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_OPTIONS_FINITION_LEVELS_HIGH,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_OPTIONS_FINITION_LEVELS_HIGH);
		assertReturnedEcucMetaModelTypeNameEquals(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_OPTIONS_FINITION_LEVELS_LOW,
				EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_OPTIONS_FINITION_LEVELS_LOW);

	}

	private void doTestGetExtension(final Object target, Type type) {
		/** This method will test operation setExtension and getExtension on the provided target **/
		/** Operation setExtension **/
		Assert.isTrue(target instanceof GIdentifiable);

		Runnable setExtensionRunnable = new Runnable() {
			public void run() {
				((GIdentifiable) target).gGetExtensions().put("KEY_1", "VALUE");
				((GIdentifiable) target).gGetExtensions().put("KEY_2", new Double(11.7));
			}
		};
		try {
			WorkspaceTransactionUtil.executeInWriteTransaction(WorkspaceEditingDomainUtil.getEditingDomain(target), setExtensionRunnable,
					"Test set extension");
		} catch (OperationCanceledException ex) {
			assertFalse("Failed executing transaction in test.", true);
		} catch (ExecutionException ex) {
			assertFalse("Failed executing transaction in test.", true);
		}

		/** Operation getExtension **/
		Operation getExtensionOperation = type.getOperation("getExtension", new Type[] { ecucMetaModel.getTypeSystem().getStringType() }); //$NON-NLS-1$
		assertNotNull(getExtensionOperation);
		assertEquals(ecucMetaModel.getTypeSystem().getObjectType(), getExtensionOperation.getReturnType());
		Object value = getExtensionOperation.evaluate(target, new Object[] { "KEY_1" });
		assertTrue(value instanceof String);
		assertEquals(value, "VALUE");

		value = getExtensionOperation.evaluate(target, new Object[] { "KEY_2" });
		assertTrue(value instanceof Double);
		assertEquals(value, 11.7);
	}

	/** 10_RichModuleDefType **/
	public void testRichModuleDefType() {
		/** Check Rich type consistency */
		final EObject carObject = getConfigurationObject(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR);
		Type vehiculeType = ecucMetaModel.getTypeForName(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE);
		assertTrue(vehiculeType instanceof RichModuleDefType);
		RichModuleDefType vehiculeRichType = (RichModuleDefType) vehiculeType;
		assertTrue(vehiculeRichType.getEcucTypeDef() instanceof EcucModuleDef);
		/********************************************************************/

		/** 10_1 Property shortname **/
		Property shortNameProperty = vehiculeRichType.getProperty("shortName"); //$NON-NLS-1$
		assertNotNull(shortNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), shortNameProperty.getReturnType());
		Object shortName = shortNameProperty.get(carObject);
		assertTrue(shortName instanceof String);
		assertEquals("Car", shortName); //$NON-NLS-1$
		/********************************************************************/

		/** 10_2 Property absoluteQualifiedName **/
		Property absoluteQualifiedNameProperty = vehiculeRichType.getProperty("absoluteQualifiedName"); //$NON-NLS-1$
		assertNotNull(absoluteQualifiedNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), absoluteQualifiedNameProperty.getReturnType());
		Object absoluteQualifiedName = absoluteQualifiedNameProperty.get(carObject);
		assertTrue(absoluteQualifiedName instanceof String);
		assertEquals(AutosarURIFactory.getAbsoluteQualifiedName(carObject), absoluteQualifiedName);
		/********************************************************************/

		/** 10_3 Property <GParamConfContainerDef.shortName> **/
		Property engineProperty = vehiculeRichType.getProperty("Engine"); //$NON-NLS-1$
		assertNotNull(engineProperty);
		assertEquals(ecucMetaModel.getTypeForName(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_ENGINE), engineProperty.getReturnType());
		Object engineObject = engineProperty.get(carObject);
		assertTrue(engineObject instanceof EcucContainerValue);
		assertEquals(getConfigurationObject(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_ENGINE), engineObject);
		/********************************************************************/

		/** 10_4 Property <Plural of GParamConfContainerDef.shortName> **/
		// Not yet available
		/********************************************************************/

		/** Operation getBswImplementationExtension **/
		Operation bswImplementationExtensionOperation = vehiculeRichType.getOperation("getImplementationExtension",
				new Type[] { ecucMetaModel.getTypeSystem().getStringType() });
		assertNotNull(bswImplementationExtensionOperation);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), bswImplementationExtensionOperation.getReturnType());
		String result = (String) bswImplementationExtensionOperation.evaluate(carObject, new Object[] { "BSW_IMPL_EXTENSION_KEY" });
		assertEquals("BSW_IMPL_EXTENSION_VALUE", result);

		doTestGetExtension(carObject, vehiculeRichType);
	}

	/** 2_RichContainerDefType **/

	/** 21_RichParamConfContainerDefType **/
	public void testRichParamConfContainerDefType() {
		/** ---------------------Test variables definition----------------------------- **/
		/** --Check engineRichType consistency-- **/
		EObject engineObject = getConfigurationObject(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_ENGINE);
		Type engineType = ecucMetaModel.getTypeForName(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_ENGINE);
		assertTrue(engineType instanceof RichParamConfContainerDefType);
		RichParamConfContainerDefType engineRichType = (RichParamConfContainerDefType) engineType;
		assertTrue(engineRichType.getEcucTypeDef() instanceof EcucParamConfContainerDef);
		/** -------------------------------------------------- **/
		/** --Check generalInfoRichType consistency-- **/
		EObject generalInfoObject = getConfigurationObject(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO);
		Type generalInfoType = ecucMetaModel.getTypeForName(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO);
		assertTrue(generalInfoType instanceof RichParamConfContainerDefType);
		RichParamConfContainerDefType generalInfoRichType = (RichParamConfContainerDefType) generalInfoType;
		assertTrue(generalInfoRichType.getEcucTypeDef() instanceof EcucParamConfContainerDef);
		/** -------------------------------------------------- **/
		/** --Check generalInfoOwnersRichType consistency-- **/
		EObject generalInfoOwnersObject = getConfigurationObject(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS);
		Type generalInfoOwnersType = ecucMetaModel.getTypeForName(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS);
		assertTrue(generalInfoOwnersType instanceof RichParamConfContainerDefType);
		RichParamConfContainerDefType generalInfoOwnersRichType = (RichParamConfContainerDefType) generalInfoOwnersType;
		assertTrue(generalInfoOwnersRichType.getEcucTypeDef() instanceof EcucParamConfContainerDef);
		/** -------------------------------------------------- **/
		/** --Check Rich type consistency-- **/
		EObject revisionsObject = getConfigurationObject(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REVISIONS);
		Type revisionsType = ecucMetaModel.getTypeForName(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_REVISIONS);
		assertTrue(revisionsType instanceof RichParamConfContainerDefType);
		RichParamConfContainerDefType revisionsRichType = (RichParamConfContainerDefType) revisionsType;
		assertTrue(revisionsRichType.getEcucTypeDef() instanceof EcucParamConfContainerDef);
		/** -------------------------------------------------- **/
		/** --Check generalInfoOwnersOwnerRichType consistency-- **/
		EObject fifthHandOwnerObject = getConfigurationObject(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FIFTHAND);
		Type generalInfoOwnersOwnerType = ecucMetaModel
				.getTypeForName(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER);
		assertTrue(generalInfoOwnersOwnerType instanceof RichParamConfContainerDefType);
		RichParamConfContainerDefType generalInfoOwnersOwnerRichType = (RichParamConfContainerDefType) generalInfoOwnersOwnerType;
		assertTrue(generalInfoOwnersRichType.getEcucTypeDef() instanceof EcucParamConfContainerDef);
		/** -------------------------------------------------- **/
		/** --------------------------------------------------------------------------- **/

		/** 21_1 Property shortName **/
		Property shortNameProperty = engineRichType.getProperty("shortName"); //$NON-NLS-1$
		assertNotNull(shortNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), shortNameProperty.getReturnType());
		Object shortName = shortNameProperty.get(engineObject);
		assertTrue(shortName instanceof String);
		assertEquals("Engine", shortName); //$NON-NLS-1$
		/********************************************************************/

		/** 21_2 Property absoluteQualifiedName **/
		Property absoluteQualifiedNameProperty = engineRichType.getProperty("absoluteQualifiedName"); //$NON-NLS-1$
		assertNotNull(absoluteQualifiedNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), absoluteQualifiedNameProperty.getReturnType());
		Object absoluteQualifiedName = absoluteQualifiedNameProperty.get(engineObject);
		assertTrue(absoluteQualifiedName instanceof String);
		assertEquals(AutosarURIFactory.getAbsoluteQualifiedName(engineObject), absoluteQualifiedName);
		/********************************************************************/

		/** 21_3#A 21_4#A multiplicity on RichParamConfContainerDefType with multiplicity [n..1] **/
		/** 21_3#A Property lowerMultiplicity **/
		Property lowerMultiplicityProperty = engineRichType.getProperty("lowerMultiplicity"); //$NON-NLS-1$
		assertNotNull(lowerMultiplicityProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getIntegerType(), lowerMultiplicityProperty.getReturnType());
		Object lowerMultiplicity = lowerMultiplicityProperty.get(engineObject);
		assertEquals(0, lowerMultiplicity);
		/********************************************************************/

		/** 21_4#A Property upperMultiplicity **/
		Property upperMultiplicityProperty = engineRichType.getProperty("upperMultiplicity"); //$NON-NLS-1$
		assertNotNull(upperMultiplicityProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getIntegerType(), upperMultiplicityProperty.getReturnType());
		Object upperMultiplicity = upperMultiplicityProperty.get(engineObject);
		assertEquals(1, upperMultiplicity);
		/********************************************************************/
		/****************************************************************************************/

		/** 21_3#B 21_4#B multiplicity on RichParamConfContainerDefType with multiplicity [n..n] **/
		// Not yet available
		/** 21_3#B Property lowerMultiplicity **/
		// Not yet available
		/********************************************************************/

		/** 21_4#B Property upperMultiplicity **/
		// Not yet available
		/********************************************************************/
		/****************************************************************************************/

		/** 21_5 Property definition **/
		// Not yet available
		/********************************************************************/

		/** 21_6 Property <GParamConfContainerDef.shortName> **/
		Property ownersProperty = generalInfoRichType.getProperty("Owners"); //$NON-NLS-1$
		assertNotNull(ownersProperty);
		assertEquals(ecucMetaModel.getTypeForName(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS),
				ownersProperty.getReturnType());
		Object ownersObject = ownersProperty.get(generalInfoObject);
		assertTrue(ownersObject instanceof EcucContainerValue);
		assertEquals(getConfigurationObject(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS), ownersObject);

		/** 21_7 property <Plural of GParamConfContainerDef.shortName> **/
		Property ownersOwnersProperty = generalInfoOwnersRichType.getProperty("Owners"); //$NON-NLS-1$
		assertNotNull(ownersOwnersProperty);
		/** FIXME Review this part of the test to ensure return type is MultiplicityAwareList of expected inner type */
		// assertEquals(
		// ecucMetaModel.getTypeSystem().getListType(
		// ecucMetaModel.getTypeForName(EcucTestRefWorkspaceInfo.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER)),
		// ownersOwnersProperty.getReturnType());
		Object ownersOwnersObject = ownersOwnersProperty.get(generalInfoOwnersObject);
		assertTrue(ownersOwnersObject instanceof List<?>);
		List<?> ownersOwnersList = (List<?>) ownersOwnersObject;
		assertTrue(ownersOwnersList.get(0) instanceof EcucContainerValue);
		List<EcucContainerValue> ownersOwnersEcucContainerValueList = (List<EcucContainerValue>) ownersOwnersObject;
		assertEquals(5, ownersOwnersEcucContainerValueList.size());
		assertTrue(ownersOwnersList
				.contains(getConfigurationObject(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FIRSTHAND)));
		assertTrue(ownersOwnersList
				.contains(getConfigurationObject(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_SECONDHAND)));
		assertTrue(ownersOwnersList
				.contains(getConfigurationObject(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_THIRDHAND)));
		assertTrue(ownersOwnersList
				.contains(getConfigurationObject(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FOURTHHAND)));
		assertTrue(ownersOwnersList
				.contains(getConfigurationObject(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FIFTHAND)));
		/********************************************************************/

		/** 21_8 property <GChoiceContainerDef.shortName> **/
		Property typeProperty = engineRichType.getProperty("Type"); //$NON-NLS-1$
		assertNotNull(typeProperty);
		assertEquals(ecucMetaModel.getTypeForName(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE),
				typeProperty.getReturnType());
		Object typeObject = typeProperty.get(engineObject);
		assertTrue(typeObject instanceof EcucContainerValue);
		assertEquals(getConfigurationObject(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_ENGINE_TYPE), typeObject);
		/********************************************************************/

		/** 21_9 Property <Plural of GChoiceContainerDef.shortName> **/
		// Not yet available
		/********************************************************************/

		/** 21_10 Property <GConfigParameter.shortName> **/
		Property automaticProperty = engineRichType.getProperty("Automatic"); //$NON-NLS-1$
		assertNotNull(automaticProperty);
		assertEquals(ecucMetaModel.getTypeForName(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_ENGINE_AUTOMATIC),
				automaticProperty.getReturnType());
		Object automaticObject = automaticProperty.get(engineObject);
		assertTrue(automaticObject instanceof EcucNumericalParamValue);
		assertEquals(getConfigurationObject(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_ENGINE_PARAMETER_VALUES_1_AUTOMATIC),
				automaticObject);
		/********************************************************************/

		/** 21_11 Property <Plural of GConfigParameter.shortName> **/
		/** FIXME review test according modification on test model */
		// Property revisionDatesProperty = revisionsRichType.getProperty("RevisionDates"); //$NON-NLS-1$
		// assertNotNull(revisionDatesProperty);
		// assertEquals(
		// ecucMetaModel.getTypeSystem().getListType(
		// ecucMetaModel.getTypeForName(EcucTestRefWorkspaceInfo.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_REVISIONS_REVISIONDATE)),
		// revisionDatesProperty.getReturnType());
		// Object revisionDatesObject = ownersOwnersProperty.get(revisionsObject);
		// assertTrue(revisionDatesObject instanceof List<?>);
		// List<?> revisionDatesList = (List<?>) revisionDatesObject;
		// assertTrue(revisionDatesList.get(0) instanceof EcucTextualParamValue);
		// List<EcucTextualParamValue> revisionDatesEcucTextualParamValueList = (List<EcucTextualParamValue>)
		// revisionDatesObject;
		// assertEquals(5, revisionDatesEcucTextualParamValueList.size());
		// assertTrue(revisionDatesEcucTextualParamValueList
		// .contains(getConfigurationObject(EcucTestRefWorkspaceInfo.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REVISIONS_PARAMETER_VALUES_0_DATE_20071215)));
		// assertTrue(revisionDatesEcucTextualParamValueList
		// .contains(getConfigurationObject(EcucTestRefWorkspaceInfo.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REVISIONS_PARAMETER_VALUES_1_DATE_20080106)));
		// assertTrue(revisionDatesEcucTextualParamValueList
		// .contains(getConfigurationObject(EcucTestRefWorkspaceInfo.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REVISIONS_PARAMETER_VALUES_2_DATE_20080605)));
		// assertTrue(revisionDatesEcucTextualParamValueList
		// .contains(getConfigurationObject(EcucTestRefWorkspaceInfo.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REVISIONS_PARAMETER_VALUES_3_DATE_20090707)));
		// assertTrue(revisionDatesEcucTextualParamValueList
		// .contains(getConfigurationObject(EcucTestRefWorkspaceInfo.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REVISIONS_PARAMETER_VALUES_4_DATE_20100918)));
		/********************************************************************/

		/** 21_12 Property <GConfigReference.shortName> **/
		/** FIXME Review Test accroding modification on Test model */
		// Property currentOwnerProperty = generalInfoRichType.getProperty("CurrentOwner"); //$NON-NLS-1$
		// assertNotNull(currentOwnerProperty);
		// assertEquals(ecucMetaModel.getTypeForName(EcucTestRefWorkspaceInfo.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_CURRENTOWNER),
		// currentOwnerProperty.getReturnType());
		// Object currentOwnerObject = currentOwnerProperty.get(engineObject);
		// assertTrue(currentOwnerObject instanceof EcucContainerValue);
		// assertEquals(getConfigurationObject(EcucTestRefWorkspaceInfo.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FIFTHAND),
		// currentOwnerObject);
		/********************************************************************/

		/** 21_13 Property <Plural of GConfigReference.shortName> **/
		// Not yet available
		/********************************************************************/

		/** 21_12 Property referencingContainers **/
		Property referencingContainersProperty = generalInfoOwnersOwnerRichType.getProperty("referencingContainers"); //$NON-NLS-1$
		assertNotNull(referencingContainersProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getListType(ecucMetaModel.getTypeForName(ContainerDefType.TYPE_NAME)),
				referencingContainersProperty.getReturnType());
		/** FIXME Review Test accroding modification on Test model */
		// Object referencingContainers = referencingContainersProperty.get(fifthHandOwnerObject);
		// assertTrue(referencingContainers instanceof List);
		// assertEquals(1, ((List<?>) referencingContainers).size());
		// assertTrue(((List<?>)
		// referencingContainers).contains(getConfigurationObject(EcucTestRefWorkspaceInfo.URI_FRAGMENT_EPC_CAR_GENERAL_INFO)));
		/********************************************************************/

		doTestGetExtension(engineObject, engineType);
	}

	/** 22_RichChoiceContainerDefType **/
	public void testRichChoiceContainerDefType() {
		/** ---------------------Test variables definition----------------------------- **/
		/** --Check engineRichType consistency-- **/
		EObject typeObject = getConfigurationObject(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_ENGINE_TYPE);
		Type typeType = ecucMetaModel.getTypeForName(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE);
		assertTrue(typeType instanceof RichChoiceContainerDefType);
		RichChoiceContainerDefType typeRichType = (RichChoiceContainerDefType) typeType;
		assertTrue(typeRichType.getEcucTypeDef() instanceof EcucChoiceContainerDef);
		/** -------------------------------------------------- **/
		/** --------------------------------------------------------------------------- **/

		/** 22_1 Property shortName **/
		Property shortNameProperty = typeRichType.getProperty("shortName"); //$NON-NLS-1$
		assertNotNull(shortNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), shortNameProperty.getReturnType());
		Object shortName = shortNameProperty.get(typeObject);
		assertTrue(shortName instanceof String);
		assertEquals("Type", shortName); //$NON-NLS-1$
		/********************************************************************/

		/** 22_2 Property absoluteQualifiedName **/
		Property absoluteQualifiedNameProperty = typeRichType.getProperty("absoluteQualifiedName"); //$NON-NLS-1$
		assertNotNull(absoluteQualifiedNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), absoluteQualifiedNameProperty.getReturnType());
		Object absoluteQualifiedName = absoluteQualifiedNameProperty.get(typeObject);
		assertTrue(absoluteQualifiedName instanceof String);
		assertEquals(AutosarURIFactory.getAbsoluteQualifiedName(typeObject), absoluteQualifiedName);
		/********************************************************************/

		/** 22_3#A 22_4#A multiplicity on RichParamConfContainerDefType with multiplicity [n..1] **/
		/** 22_3#A lowerMultiplicity **/
		Property lowerMultiplicityProperty = typeRichType.getProperty("lowerMultiplicity"); //$NON-NLS-1$
		assertNotNull(lowerMultiplicityProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getIntegerType(), lowerMultiplicityProperty.getReturnType());
		Object lowerMultiplicity = lowerMultiplicityProperty.get(typeObject);
		assertEquals(1, lowerMultiplicity);
		/********************************************************************/

		/** 22_4#A Property upperMultiplicity **/
		Property upperMultiplicityProperty = typeRichType.getProperty("upperMultiplicity"); //$NON-NLS-1$
		assertNotNull(upperMultiplicityProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getIntegerType(), upperMultiplicityProperty.getReturnType());
		Object upperMultiplicity = upperMultiplicityProperty.get(typeObject);
		assertEquals(1, upperMultiplicity);
		/********************************************************************/
		/****************************************************************************************/

		/** 22_3#B 21_4#B multiplicity on RichParamConfContainerDefType with multiplicity [n..n] **/
		// Not yet available
		/** 22_3#B Property lowerMultiplicity **/
		// Not yet available
		/********************************************************************/

		/** 22_4#B Property upperMultiplicity **/
		// Not yet available
		/********************************************************************/
		/****************************************************************************************/

		/** 22_5 Property definition **/
		// Not yet available
		/********************************************************************/

		/** 22_6 Property <GParamConfContainerDef.shortName> **/
		/** FIXME review test according modification on Test model */
		// Property gasolineProperty = typeRichType.getProperty("Gasoline"); //$NON-NLS-1$
		// assertNotNull(gasolineProperty);
		// assertEquals(ecucMetaModel.getTypeForName(EcucTestRefWorkspaceInfo.RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE),
		// gasolineProperty.getReturnType());
		// Object gasoline = gasolineProperty.get(typeObject);
		// assertTrue(gasoline instanceof EcucParamConfContainerDef);
		// assertEquals(getConfigurationObject(EcucTestRefWorkspaceInfo.URI_FRAGMENT_EPC_CAR_ENGINE_TYPE_GASOLINE),
		// gasoline);
		/********************************************************************/

		/** 22_7 Property <Plural of GParamConfContainerDef.shortName> **/
		// Not yet available
		/********************************************************************/

		/** 22_8 Property <GConfigParameter.shortName> **/
		// Not yet available
		/********************************************************************/

		/** 22_9 Property <Plural of GConfigParameter.shortName> **/
		// Not yet available
		/********************************************************************/

		/** 22_10 Property <GConfigReference.shortName> **/
		// Not yet available
		/********************************************************************/

		/** 22_11 Property <Plural of GConfigReference.shortName> **/
		// Not yet available
		/********************************************************************/

		doTestGetExtension(typeObject, typeType);
	}

	/** 3_RichConfigParameterType **/
	/** 31_RichBooleanParameterDefType **/
	public void testRichBooleanParameterDefType() {
		/** ---------------------Test variables definition----------------------------- **/
		/** --Check engineRichType consistency-- **/
		EObject automaticObject = getConfigurationObject(
				EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_ENGINE_PARAMETER_VALUES_1_AUTOMATIC);
		Type automaticType = ecucMetaModel.getTypeForName(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_ENGINE_AUTOMATIC);
		assertTrue(automaticType instanceof RichBooleanParamDefType);
		RichBooleanParamDefType automaticRichType = (RichBooleanParamDefType) automaticType;
		assertTrue(automaticRichType.getEcucTypeDef() instanceof EcucBooleanParamDef);
		/** -------------------------------------------------- **/
		/** --------------------------------------------------------------------------- **/

		/** 31_1_1 Property shortName **/
		Property shortNameProperty = automaticRichType.getProperty("shortName"); //$NON-NLS-1$
		assertNotNull(shortNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), shortNameProperty.getReturnType());
		Object shortName = shortNameProperty.get(automaticObject);
		assertTrue(shortName instanceof String);
		assertEquals(automaticRichType.getSimpleName(), shortName);
		/********************************************************************/

		/** 31_1_2 Property absoluteQualifiedName **/
		Property absoluteQualifiedNameProperty = automaticRichType.getProperty("absoluteQualifiedName"); //$NON-NLS-1$
		assertNotNull(absoluteQualifiedNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), absoluteQualifiedNameProperty.getReturnType());
		Object absoluteQualifiedName = absoluteQualifiedNameProperty.get(automaticObject);
		assertTrue(absoluteQualifiedName instanceof String);
		assertEquals(AutosarURIFactory.getAbsoluteQualifiedName(automaticObject), absoluteQualifiedName);
		/********************************************************************/

		/** 31_1_3#A 31_1_4#A multiplicity on RichParamConfContainerDefType with multiplicity [n..1] **/
		/** 31_1_3#A lowerMultiplicity **/
		Property lowerMultiplicityProperty = automaticRichType.getProperty("lowerMultiplicity"); //$NON-NLS-1$
		assertNotNull(lowerMultiplicityProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getIntegerType(), lowerMultiplicityProperty.getReturnType());
		Object lowerMultiplicity = lowerMultiplicityProperty.get(automaticObject);
		assertEquals(1, lowerMultiplicity);
		/********************************************************************/

		/** 31_1_4#A Property upperMultiplicity **/
		Property upperMultiplicityProperty = automaticRichType.getProperty("upperMultiplicity"); //$NON-NLS-1$
		assertNotNull(upperMultiplicityProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getIntegerType(), upperMultiplicityProperty.getReturnType());
		Object upperMultiplicity = upperMultiplicityProperty.get(automaticObject);
		assertEquals(1, upperMultiplicity);
		/********************************************************************/
		/****************************************************************************************/

		/** 31_1_3#B 31_1_4#B multiplicity on RichParamConfContainerDefType with multiplicity [n..n] **/
		// Not yet available
		/** 31_1_3#B Property lowerMultiplicity **/
		// Not yet available
		/********************************************************************/

		/** 31_1_4#B Property upperMultiplicity **/
		// Not yet available
		/********************************************************************/
		/****************************************************************************************/

		/** 31_1_5 Property definition **/
		// Not yet available
		/********************************************************************/

		/** 31_1_6 Property value **/
		Property valueProperty = automaticRichType.getProperty("value"); //$NON-NLS-1$
		assertNotNull(valueProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getBooleanType(), valueProperty.getReturnType());
		Object value = valueProperty.get(automaticObject);
		assertTrue(value instanceof Boolean);
		assertFalse((Boolean) value);
		/********************************************************************/

		/** 31_2_1 Operation is_configured **/
		Operation isConfiguredOperation = automaticRichType.getOperation("isConfigured", new Type[0]); //$NON-NLS-1$
		assertNotNull(isConfiguredOperation);
		assertEquals(ecucMetaModel.getTypeSystem().getBooleanType(), isConfiguredOperation.getReturnType());
		value = isConfiguredOperation.evaluate(automaticObject, null);
		assertTrue(value instanceof Boolean);
		assertTrue((Boolean) value);
		/********************************************************************/
	}

	/** 32_RichEnumerationParameterDefType **/
	public void testRichEnumerationParameterDefType() {
		/** ---------------------Test variables definition----------------------------- **/
		/** --Check engineRichType consistency-- **/
		EObject engineTypeObject = getConfigurationObject(
				EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_ENGINE_PARAMETER_VALUES_0_ENGINETYPE);
		Type engineTypeType = ecucMetaModel.getTypeForName(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_ENGINE_ENGINETYPE);
		assertTrue(engineTypeType instanceof RichEnumerationParamDefType);
		RichEnumerationParamDefType engineTypeRichType = (RichEnumerationParamDefType) engineTypeType;
		assertTrue(engineTypeRichType.getEcucTypeDef() instanceof EcucEnumerationParamDef);
		/** -------------------------------------------------- **/
		/** --------------------------------------------------------------------------- **/

		/** 32_1_1 Property shortName **/
		Property shortNameProperty = engineTypeRichType.getProperty("shortName"); //$NON-NLS-1$
		assertNotNull(shortNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), shortNameProperty.getReturnType());
		Object shortName = shortNameProperty.get(engineTypeObject);
		assertTrue(shortName instanceof String);
		assertEquals(engineTypeRichType.getSimpleName(), shortName);
		/********************************************************************/

		/** 32_1_2 Property absoluteQualifiedName **/
		Property absoluteQualifiedNameProperty = engineTypeRichType.getProperty("absoluteQualifiedName"); //$NON-NLS-1$
		assertNotNull(absoluteQualifiedNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), absoluteQualifiedNameProperty.getReturnType());
		Object absoluteQualifiedName = absoluteQualifiedNameProperty.get(engineTypeObject);
		assertTrue(absoluteQualifiedName instanceof String);
		assertEquals(AutosarURIFactory.getAbsoluteQualifiedName(engineTypeObject), absoluteQualifiedName);
		/********************************************************************/

		/** 32_1_3#A 32_1_4#A multiplicity on RichParamConfContainerDefType with multiplicity [n..1] **/
		/** 32_1_3#A lowerMultiplicity **/
		Property lowerMultiplicityProperty = engineTypeRichType.getProperty("lowerMultiplicity"); //$NON-NLS-1$
		assertNotNull(lowerMultiplicityProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getIntegerType(), lowerMultiplicityProperty.getReturnType());
		Object lowerMultiplicity = lowerMultiplicityProperty.get(engineTypeObject);
		assertEquals(1, lowerMultiplicity);
		/********************************************************************/

		/** 32_1_4#A Property upperMultiplicity **/
		Property upperMultiplicityProperty = engineTypeRichType.getProperty("upperMultiplicity"); //$NON-NLS-1$
		assertNotNull(upperMultiplicityProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getIntegerType(), upperMultiplicityProperty.getReturnType());
		Object upperMultiplicity = upperMultiplicityProperty.get(engineTypeObject);
		assertEquals(1, upperMultiplicity);
		/********************************************************************/
		/****************************************************************************************/

		/** 32_1_3#B 32_1_4#B multiplicity on RichParamConfContainerDefType with multiplicity [n..n] **/
		// Not yet available
		/** 32_1_3#B Property lowerMultiplicity **/
		// Not yet available
		/********************************************************************/

		/** 32_1_4#B Property upperMultiplicity **/
		// Not yet available
		/********************************************************************/
		/****************************************************************************************/

		/** 32_1_5 Property definition **/
		// Not yet available
		/********************************************************************/

		/** 32_1_6 Property value **/
		Property valueProperty = engineTypeRichType.getProperty("value"); //$NON-NLS-1$
		assertNotNull(valueProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), valueProperty.getReturnType());
		Object value = valueProperty.get(engineTypeObject);
		assertTrue(value instanceof String);
		assertEquals((String) value, "Gasoline"); //$NON-NLS-1$
		/********************************************************************/

		/** 32_2_1 Operation is_configured **/
		Operation isConfiguredOperation = engineTypeRichType.getOperation("isConfigured", new Type[0]);//$NON-NLS-1$
		assertNotNull(isConfiguredOperation);
		assertEquals(ecucMetaModel.getTypeSystem().getBooleanType(), isConfiguredOperation.getReturnType());
		value = isConfiguredOperation.evaluate(engineTypeObject, null);
		assertTrue(value instanceof Boolean);
		assertTrue((Boolean) value);
		/********************************************************************/
	}

	/** 33_RichFloatParameterDefType **/
	public void testRichFloatParameterDefType() {
		/** ---------------------Test variables definition----------------------------- **/
		/** --Check engineRichType consistency-- **/
		EObject sparkPlugVoltageObject = getConfigurationObject(
				EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_ENGINE_TYPE_GASOLINE_PARAMETER_VALUES_1_SPARK_PLUG_VOLTAGE);
		Type sparkPlugVoltageType = ecucMetaModel
				.getTypeForName(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE_SPARK_PLUG_VOLTAGE);
		assertTrue(sparkPlugVoltageType instanceof RichFloatParamDefType);
		RichFloatParamDefType sparkPlugVoltageRichType = (RichFloatParamDefType) sparkPlugVoltageType;
		assertTrue(sparkPlugVoltageRichType.getEcucTypeDef() instanceof EcucFloatParamDef);
		/** -------------------------------------------------- **/
		/** --------------------------------------------------------------------------- **/

		/** 33_1_1 Property shortName **/
		Property shortNameProperty = sparkPlugVoltageRichType.getProperty("shortName"); //$NON-NLS-1$
		assertNotNull(shortNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), shortNameProperty.getReturnType());
		Object shortName = shortNameProperty.get(sparkPlugVoltageObject);
		assertTrue(shortName instanceof String);
		assertEquals(sparkPlugVoltageRichType.getSimpleName(), shortName);
		/********************************************************************/

		/** 33_1_2 Property absoluteQualifiedName **/
		Property absoluteQualifiedNameProperty = sparkPlugVoltageRichType.getProperty("absoluteQualifiedName"); //$NON-NLS-1$
		assertNotNull(absoluteQualifiedNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), absoluteQualifiedNameProperty.getReturnType());
		Object absoluteQualifiedName = absoluteQualifiedNameProperty.get(sparkPlugVoltageObject);
		assertTrue(absoluteQualifiedName instanceof String);
		assertEquals(AutosarURIFactory.getAbsoluteQualifiedName(sparkPlugVoltageObject), absoluteQualifiedName);
		/********************************************************************/

		/** 33_1_3#A 33_1_4#A multiplicity on RichParamConfContainerDefType with multiplicity [n..1] **/
		/** 33_1_3#A lowerMultiplicity **/
		Property lowerMultiplicityProperty = sparkPlugVoltageRichType.getProperty("lowerMultiplicity"); //$NON-NLS-1$
		assertNotNull(lowerMultiplicityProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getIntegerType(), lowerMultiplicityProperty.getReturnType());
		Object lowerMultiplicity = lowerMultiplicityProperty.get(sparkPlugVoltageObject);
		assertEquals(1, lowerMultiplicity);
		/********************************************************************/

		/** 33_1_4#A Property upperMultiplicity **/
		Property upperMultiplicityProperty = sparkPlugVoltageRichType.getProperty("upperMultiplicity"); //$NON-NLS-1$
		assertNotNull(upperMultiplicityProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getIntegerType(), upperMultiplicityProperty.getReturnType());
		Object upperMultiplicity = upperMultiplicityProperty.get(sparkPlugVoltageObject);
		assertEquals(1, upperMultiplicity);
		/********************************************************************/
		/****************************************************************************************/

		/** 33_1_3#B 33_1_4#B multiplicity on RichParamConfContainerDefType with multiplicity [n..n] **/
		// Not yet available
		/** 33_1_3#B Property lowerMultiplicity **/
		// Not yet available
		/********************************************************************/

		/** 33_1_4#B Property upperMultiplicity **/
		// Not yet available
		/********************************************************************/
		/****************************************************************************************/

		/** 33_1_5 Property definition **/
		// Not yet available
		/********************************************************************/

		/** 33_1_6 Property value **/
		Property valueProperty = sparkPlugVoltageRichType.getProperty("value"); //$NON-NLS-1$
		assertNotNull(valueProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getRealType(), valueProperty.getReturnType());
		Object value = valueProperty.get(sparkPlugVoltageObject);
		assertTrue(value instanceof BigDecimal);
		assertTrue(((BigDecimal) value).doubleValue() == 4.45);
		/********************************************************************/

		/** 33_2_1 Operation is_configured **/
		Operation isConfiguredOperation = sparkPlugVoltageRichType.getOperation("isConfigured", new Type[0]);//$NON-NLS-1$
		assertNotNull(isConfiguredOperation);
		assertEquals(ecucMetaModel.getTypeSystem().getBooleanType(), isConfiguredOperation.getReturnType());
		value = isConfiguredOperation.evaluate(sparkPlugVoltageObject, null);
		assertTrue(value instanceof Boolean);
		assertTrue((Boolean) value);
		/********************************************************************/
	}

	/** 34_RichIntegerParameterDefType **/
	public void testRichIntegerParameterDefType() {
		/** ---------------------Test variables definition----------------------------- **/
		/** --Check engineRichType consistency-- **/
		EObject serialNumberObject = getConfigurationObject(
				EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_PARAMETER_VALUES_1_SERIAL_NUMBER);
		Type serialNumberType = ecucMetaModel.getTypeForName(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_SERIAL_NUMBER);
		assertTrue(serialNumberType instanceof RichIntegerParamDefType);
		RichIntegerParamDefType serialNumberRichType = (RichIntegerParamDefType) serialNumberType;
		assertTrue(serialNumberRichType.getEcucTypeDef() instanceof EcucIntegerParamDef);
		/** -------------------------------------------------- **/
		/** --------------------------------------------------------------------------- **/

		/** 34_1_1 Property shortName **/
		Property shortNameProperty = serialNumberRichType.getProperty("shortName"); //$NON-NLS-1$
		assertNotNull(shortNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), shortNameProperty.getReturnType());
		Object shortName = shortNameProperty.get(serialNumberObject);
		assertTrue(shortName instanceof String);
		assertEquals(serialNumberRichType.getSimpleName(), shortName);
		/********************************************************************/

		/** 34_1_2 Property absoluteQualifiedName **/
		Property absoluteQualifiedNameProperty = serialNumberRichType.getProperty("absoluteQualifiedName"); //$NON-NLS-1$
		assertNotNull(absoluteQualifiedNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), absoluteQualifiedNameProperty.getReturnType());
		Object absoluteQualifiedName = absoluteQualifiedNameProperty.get(serialNumberObject);
		assertTrue(absoluteQualifiedName instanceof String);
		assertEquals(AutosarURIFactory.getAbsoluteQualifiedName(serialNumberObject), absoluteQualifiedName);
		/********************************************************************/

		/** 34_1_3#A 34_1_4#A multiplicity on RichParamConfContainerDefType with multiplicity [n..1] **/
		/** 34_1_3#A lowerMultiplicity **/
		Property lowerMultiplicityProperty = serialNumberRichType.getProperty("lowerMultiplicity"); //$NON-NLS-1$
		assertNotNull(lowerMultiplicityProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getIntegerType(), lowerMultiplicityProperty.getReturnType());
		Object lowerMultiplicity = lowerMultiplicityProperty.get(serialNumberObject);
		assertEquals(1, lowerMultiplicity);
		/********************************************************************/

		/** 34_1_4#A Property upperMultiplicity **/
		Property upperMultiplicityProperty = serialNumberRichType.getProperty("upperMultiplicity"); //$NON-NLS-1$
		assertNotNull(upperMultiplicityProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getIntegerType(), upperMultiplicityProperty.getReturnType());
		Object upperMultiplicity = upperMultiplicityProperty.get(serialNumberObject);
		assertEquals(1, upperMultiplicity);
		/********************************************************************/
		/****************************************************************************************/

		/** 34_1_3#B 34_1_4#B multiplicity on RichParamConfContainerDefType with multiplicity [n..n] **/
		// Not yet available
		/** 34_1_3#B Property lowerMultiplicity **/
		// Not yet available
		/********************************************************************/

		/** 34_1_4#B Property upperMultiplicity **/
		// Not yet available
		/********************************************************************/
		/****************************************************************************************/

		/** 34_1_5 Property definition **/
		// Not yet available
		/********************************************************************/

		/** 34_1_6 Property value **/
		Property valueProperty = serialNumberRichType.getProperty("value"); //$NON-NLS-1$
		assertNotNull(valueProperty);
		System.out.println(">>> Value Property: " + valueProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getIntegerType(), valueProperty.getReturnType());
		Object value = valueProperty.get(serialNumberObject);
		System.out.println(">>> Value Type: " + value.getClass());
		assertTrue(value instanceof Long);
		assertTrue(((Long) value).intValue() == 879055672);
		/********************************************************************/

		/** 34_2_1 Operation is_configured **/
		Operation isConfiguredOperation = serialNumberRichType.getOperation("isConfigured", new Type[0]);//$NON-NLS-1$
		assertNotNull(isConfiguredOperation);
		assertEquals(ecucMetaModel.getTypeSystem().getBooleanType(), isConfiguredOperation.getReturnType());
		value = isConfiguredOperation.evaluate(serialNumberObject, null);
		assertTrue(value instanceof Boolean);
		assertTrue((Boolean) value);

		/********************************************************************/
	}

	/** 35_RichStringParameterDefType **/
	public void testRichStringParameterDefType() {
		/** ---------------------Test variables definition----------------------------- **/
		/** --Check engineRichType consistency-- **/
		EObject vehicleNameObject = getConfigurationObject(
				EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_PARAMETER_VALUES_0_VEHICLE_NAME);
		Type vehicleNameType = ecucMetaModel.getTypeForName(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_VEHICLE_NAME);
		assertTrue(vehicleNameType instanceof RichStringParamDefType);
		RichStringParamDefType vehicleNameRichType = (RichStringParamDefType) vehicleNameType;
		assertTrue(vehicleNameRichType.getEcucTypeDef() instanceof EcucStringParamDef);
		/** -------------------------------------------------- **/
		/** --------------------------------------------------------------------------- **/

		/** 35_1_1 Property shortName **/
		Property shortNameProperty = vehicleNameRichType.getProperty("shortName"); //$NON-NLS-1$
		assertNotNull(shortNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), shortNameProperty.getReturnType());
		Object shortName = shortNameProperty.get(vehicleNameObject);
		assertTrue(shortName instanceof String);
		assertEquals(vehicleNameRichType.getSimpleName(), shortName);
		/********************************************************************/

		/** 35_1_2 Property absoluteQualifiedName **/
		Property absoluteQualifiedNameProperty = vehicleNameRichType.getProperty("absoluteQualifiedName"); //$NON-NLS-1$
		assertNotNull(absoluteQualifiedNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), absoluteQualifiedNameProperty.getReturnType());
		Object absoluteQualifiedName = absoluteQualifiedNameProperty.get(vehicleNameObject);
		assertTrue(absoluteQualifiedName instanceof String);
		assertEquals(AutosarURIFactory.getAbsoluteQualifiedName(vehicleNameObject), absoluteQualifiedName);
		/********************************************************************/

		/** 35_1_3#A 35_1_4#A multiplicity on RichParamConfContainerDefType with multiplicity [n..1] **/
		/** 35_1_3#A lowerMultiplicity **/
		Property lowerMultiplicityProperty = vehicleNameRichType.getProperty("lowerMultiplicity"); //$NON-NLS-1$
		assertNotNull(lowerMultiplicityProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getIntegerType(), lowerMultiplicityProperty.getReturnType());
		Object lowerMultiplicity = lowerMultiplicityProperty.get(vehicleNameObject);
		assertEquals(1, lowerMultiplicity);
		/********************************************************************/

		/** 35_1_4#A Property upperMultiplicity **/
		Property upperMultiplicityProperty = vehicleNameRichType.getProperty("upperMultiplicity"); //$NON-NLS-1$
		assertNotNull(upperMultiplicityProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getIntegerType(), upperMultiplicityProperty.getReturnType());
		Object upperMultiplicity = upperMultiplicityProperty.get(vehicleNameObject);
		assertEquals(1, upperMultiplicity);
		/********************************************************************/
		/****************************************************************************************/

		/** 35_1_3#B 35_1_4#B multiplicity on RichParamConfContainerDefType with multiplicity [n..n] **/
		// Not yet available
		/** 35_1_3#B Property lowerMultiplicity **/
		// Not yet available
		/********************************************************************/

		/** 35_1_4#B Property upperMultiplicity **/
		// Not yet available
		/********************************************************************/
		/****************************************************************************************/

		/** 35_1_5 Property definition **/
		// Not yet available
		/********************************************************************/

		/** 35_1_6 Property value **/
		Property valueProperty = vehicleNameRichType.getProperty("value"); //$NON-NLS-1$
		assertNotNull(valueProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), valueProperty.getReturnType());
		Object value = valueProperty.get(vehicleNameObject);
		assertTrue(value instanceof String);
		assertEquals((String) value, "Saxo"); //$NON-NLS-1$
		/********************************************************************/

		/** 35_2_1 Operation is_configured **/
		Operation isConfiguredOperation = vehicleNameRichType.getOperation("isConfigured", new Type[0]);//$NON-NLS-1$
		assertNotNull(isConfiguredOperation);
		assertEquals(ecucMetaModel.getTypeSystem().getBooleanType(), isConfiguredOperation.getReturnType());
		value = isConfiguredOperation.evaluate(vehicleNameObject, null);
		assertTrue(value instanceof Boolean);
		assertTrue((Boolean) value);
		/********************************************************************/
	}

	/** 36_RichMultilineStringParamDefType **/
	public void testRichMultilineStringParamDefType() {
		/** 36_1_1 Property shortName **/
		// Not yet available
		/********************************************************************/

		/** 36_1_2 Property absoluteQualifiedName **/
		// Not yet available
		/********************************************************************/

		/** 36_1_3#A 36_1_4#A multiplicity on RichParamConfContainerDefType with multiplicity [n..1] **/
		/** 36_1_3#A lowerMultiplicity **/
		// Not yet available
		/********************************************************************/

		/** 36_1_4#A Property upperMultiplicity **/
		// Not yet available
		/********************************************************************/
		/****************************************************************************************/

		/** 36_1_3#B 36_1_4#B multiplicity on RichParamConfContainerDefType with multiplicity [n..n] **/
		// Not yet available
		/** 36_1_3#B Property lowerMultiplicity **/
		// Not yet available
		/********************************************************************/

		/** 36_1_4#B Property upperMultiplicity **/
		// Not yet available
		/********************************************************************/
		/****************************************************************************************/

		/** 36_1_5 Property definition **/
		// Not yet available
		/********************************************************************/

		/** 36_1_6 Property value **/
		// Not yet available
		/********************************************************************/

		/** 36_2_1 Operation is_configured **/
		// Not yet available
		/********************************************************************/
	}

	/** 37_RichAddInfoParameterDefType **/
	public void testRichAddInfoParameterDefType() {
		/** 37_1_1 Property shortName **/
		// Not yet available
		/********************************************************************/

		/** 37_1_2 Property absoluteQualifiedName **/
		// Not yet available
		/********************************************************************/

		/** 37_1_3#A 37_1_4#A multiplicity on RichParamConfContainerDefType with multiplicity [n..1] **/
		/** 37_1_3#A lowerMultiplicity **/
		// Not yet available
		/********************************************************************/

		/** 37_1_4#A Property upperMultiplicity **/
		// Not yet available
		/********************************************************************/
		/****************************************************************************************/

		/** 37_1_3#B 37_1_4#B multiplicity on RichParamConfContainerDefType with multiplicity [n..n] **/
		// Not yet available
		/** 37_1_3#B Property lowerMultiplicity **/
		// Not yet available
		/********************************************************************/

		/** 37_1_4#B Property upperMultiplicity **/
		// Not yet available
		/********************************************************************/
		/****************************************************************************************/

		/** 37_1_5 Property definition **/
		// Not yet available
		/********************************************************************/

		/** 37_1_6 Property value **/
		// Not yet available
		/********************************************************************/

		/** 37_2_1 Operation is_configured **/
		// Not yet available
		/********************************************************************/
	}

	/** 38_RichFunctionNameDefType **/
	public void testRichFunctionNameDefType() {
		/** 38_1_1 Property shortName **/
		// Not yet available
		/********************************************************************/

		/** 38_1_2 Property absoluteQualifiedName **/
		// Not yet available
		/********************************************************************/

		/** 38_1_3#A 38_1_4#A multiplicity on RichParamConfContainerDefType with multiplicity [n..1] **/
		/** 38_1_3#A lowerMultiplicity **/
		// Not yet available
		/********************************************************************/

		/** 38_1_4#A Property upperMultiplicity **/
		// Not yet available
		/********************************************************************/
		/****************************************************************************************/

		/** 38_1_3#B 38_1_4#B multiplicity on RichParamConfContainerDefType with multiplicity [n..n] **/
		// Not yet available
		/** 38_1_3#B Property lowerMultiplicity **/
		// Not yet available
		/********************************************************************/

		/** 38_1_4#B Property upperMultiplicity **/
		// Not yet available
		/********************************************************************/
		/****************************************************************************************/

		/** 38_1_5 Property definition **/
		// Not yet available
		/********************************************************************/

		/** 38_1_6 Property value **/
		// Not yet available
		/********************************************************************/

		/** 38_2_1 Operation is_configured **/
		// Not yet available
		/********************************************************************/
	}

	/** 39_RichLinkerSymbolDefType **/
	public void testRichLinkerSymbolDefType() {
		/** 39_1_1 Property shortName **/
		// Not yet available
		/********************************************************************/

		/** 39_1_2 Property absoluteQualifiedName **/
		// Not yet available
		/********************************************************************/

		/** 39_1_3#A 39_1_4#A multiplicity on RichParamConfContainerDefType with multiplicity [n..1] **/
		/** 39_1_3#A lowerMultiplicity **/
		// Not yet available
		/********************************************************************/

		/** 39_1_4#A Property upperMultiplicity **/
		// Not yet available
		/********************************************************************/
		/****************************************************************************************/

		/** 39_1_3#B 39_1_4#B multiplicity on RichParamConfContainerDefType with multiplicity [n..n] **/
		// Not yet available
		/** 39_1_3#B Property lowerMultiplicity **/
		// Not yet available
		/********************************************************************/

		/** 39_1_4#B Property upperMultiplicity **/
		// Not yet available
		/********************************************************************/
		/****************************************************************************************/

		/** 39_1_5 Property definition **/
		// Not yet available
		/********************************************************************/

		/** 39_1_6 Property value **/
		// Not yet available
		/********************************************************************/

		/** 39_2_1 Operation is_configured **/
		// Not yet available
		/********************************************************************/
	}

	/** 4_RichConfigReferenceType **/
	/** 41_RichChoiceReferenceDefType **/
	public void testRichChoiceReferenceDefType() {
		/** ---------------------Test variables definition----------------------------- **/
		/** --Check engineRichType consistency-- **/
		EObject finitionLevelObject = getConfigurationObject(
				EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REFERENCE_VALUES_0_FINITION_LEVEL);
		Type finitionLevelType = ecucMetaModel.getTypeForName(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_FINITION_LEVEL);
		assertTrue(finitionLevelType instanceof RichChoiceReferenceDefType);
		RichChoiceReferenceDefType finitionLevelRichType = (RichChoiceReferenceDefType) finitionLevelType;
		assertTrue(finitionLevelRichType.getEcucTypeDef() instanceof EcucChoiceReferenceDef);
		/** -------------------------------------------------- **/
		/** --------------------------------------------------------------------------- **/
		/** 41_1_1 Property shortName **/
		Property shortNameProperty = finitionLevelRichType.getProperty("shortName"); //$NON-NLS-1$
		assertNotNull(shortNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), shortNameProperty.getReturnType());
		Object shortName = shortNameProperty.get(finitionLevelObject);
		assertTrue(shortName instanceof String);
		assertEquals(finitionLevelRichType.getSimpleName(), shortName);
		/********************************************************************/

		/** 41_1_2 Property absoluteQualifiedName **/
		Property absoluteQualifiedNameProperty = finitionLevelRichType.getProperty("absoluteQualifiedName"); //$NON-NLS-1$
		assertNotNull(absoluteQualifiedNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), absoluteQualifiedNameProperty.getReturnType());
		Object absoluteQualifiedName = absoluteQualifiedNameProperty.get(finitionLevelObject);
		assertTrue(absoluteQualifiedName instanceof String);
		assertEquals(AutosarURIFactory.getAbsoluteQualifiedName(finitionLevelObject), absoluteQualifiedName);
		/********************************************************************/

		/** 41_1_3#A 41_1_4#A multiplicity on RichParamConfContainerDefType with multiplicity [n..1] **/
		/** 41_1_3#A lowerMultiplicity **/
		Property lowerMultiplicityProperty = finitionLevelRichType.getProperty("lowerMultiplicity"); //$NON-NLS-1$
		assertNotNull(lowerMultiplicityProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getIntegerType(), lowerMultiplicityProperty.getReturnType());
		Object lowerMultiplicity = lowerMultiplicityProperty.get(finitionLevelObject);
		assertEquals(1, lowerMultiplicity);
		/********************************************************************/

		/** 41_1_4#A Property upperMultiplicity **/
		Property upperMultiplicityProperty = finitionLevelRichType.getProperty("upperMultiplicity"); //$NON-NLS-1$
		assertNotNull(upperMultiplicityProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getIntegerType(), upperMultiplicityProperty.getReturnType());
		Object upperMultiplicity = lowerMultiplicityProperty.get(finitionLevelObject);
		assertEquals(1, upperMultiplicity);
		/********************************************************************/
		/****************************************************************************************/

		/** 41_1_3#B 41_1_4#B multiplicity on RichParamConfContainerDefType with multiplicity [n..n] **/
		// Not yet available
		/** 41_1_3#B Property lowerMultiplicity **/
		// Not yet available
		/********************************************************************/

		/** 41_1_4#B Property upperMultiplicity **/
		// Not yet available
		/********************************************************************/
		/****************************************************************************************/

		/** 41_1_5 Property definition **/
		// Not yet available
		/********************************************************************/

		/** 41_1_6 Property value **/
		Property valueProperty = finitionLevelRichType.getProperty("value"); //$NON-NLS-1$
		assertNotNull(valueProperty);
		assertEquals(ecucMetaModel.getTypeForName(ContainerDefType.TYPE_NAME), valueProperty.getReturnType());
		Object value = valueProperty.get(finitionLevelObject);
		assertTrue(value instanceof EcucContainerValue);
		assertEquals(getConfigurationObject(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_OPTIONS_FINITION_LEVELS_HIGH), value);
		/********************************************************************/

		/** 41_2_1 Operation is_configured **/
		Operation isConfiguredOperation = finitionLevelRichType.getOperation("isConfigured", new Type[0]);//$NON-NLS-1$
		assertNotNull(isConfiguredOperation);
		assertEquals(ecucMetaModel.getTypeSystem().getBooleanType(), isConfiguredOperation.getReturnType());
		value = isConfiguredOperation.evaluate(finitionLevelObject, null);
		assertTrue(value instanceof Boolean);
		assertTrue((Boolean) value);
		/********************************************************************/
	}

	/** 42_RichForeignReferenceDefType **/
	public void testRichForeignReferenceDefType() {
		/** 42_1_1 Property shortName **/
		// Not yet available
		/********************************************************************/

		/** 42_1_2 Property absoluteQualifiedName **/
		// Not yet available
		/********************************************************************/

		/** 42_1_3#A 42_1_4#A multiplicity on RichParamConfContainerDefType with multiplicity [n..1] **/
		/** 42_1_3#A lowerMultiplicity **/
		// Not yet available
		/********************************************************************/

		/** 42_1_4#A Property upperMultiplicity **/
		// Not yet available
		/********************************************************************/
		/****************************************************************************************/

		/** 42_1_3#B 42_1_4#B multiplicity on RichParamConfContainerDefType with multiplicity [n..n] **/
		// Not yet available
		/** 42_1_3#B Property lowerMultiplicity **/
		// Not yet available
		/********************************************************************/

		/** 42_1_4#B Property upperMultiplicity **/
		// Not yet available
		/********************************************************************/
		/****************************************************************************************/

		/** 42_1_5 Property definition **/
		// Not yet available
		/********************************************************************/

		/** 42_1_6 Property value **/
		// Not yet available
		/********************************************************************/

		/** 42_2_1 Operation is_configured **/
		// Not yet available
		/********************************************************************/
	}

	/** 43_RichInstanceReferenceDefType **/
	public void testRichInstanceReferenceDefType() {
		/** 43_1_1 Property shortName **/
		// Not yet available
		/********************************************************************/

		/** 43_1_2 Property absoluteQualifiedName **/
		// Not yet available
		/********************************************************************/

		/** 43_1_3#A 43_1_4#A multiplicity on RichParamConfContainerDefType with multiplicity [n..1] **/
		/** 43_1_3#A lowerMultiplicity **/
		// Not yet available
		/********************************************************************/

		/** 43_1_4#A Property upperMultiplicity **/
		// Not yet available
		/********************************************************************/
		/****************************************************************************************/

		/** 43_1_3#B 43_1_4#B multiplicity on RichParamConfContainerDefType with multiplicity [n..n] **/
		// Not yet available
		/** 43_1_3#B Property lowerMultiplicity **/
		// Not yet available
		/********************************************************************/

		/** 43_1_4#B Property upperMultiplicity **/
		// Not yet available
		/********************************************************************/
		/****************************************************************************************/

		/** 43_1_5 Property definition **/
		// Not yet available
		/********************************************************************/

		/** 43_1_6 Property value **/
		// Not yet available
		/********************************************************************/

		/** 43_2_1 Operation is_configured **/
		// Not yet available
		/********************************************************************/
	}

	/** 44_RichReferenceDefType **/
	public void testRichReferenceDefType() {
		/** ---------------------Test variables definition----------------------------- **/
		/** --Check engineRichType consistency-- **/
		EObject currentOwnerObject = getConfigurationObject(
				EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REFERENCE_VALUES_1_CURRENT_OWNER);
		Type currentOwnerType = ecucMetaModel.getTypeForName(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_CURRENT_OWNER);
		assertTrue(currentOwnerType instanceof RichConfigReferenceType);
		RichConfigReferenceType currentOwnerRichType = (RichConfigReferenceType) currentOwnerType;
		assertTrue(currentOwnerRichType.getEcucTypeDef() instanceof EcucReferenceDef);
		/** -------------------------------------------------- **/
		/** --------------------------------------------------------------------------- **/
		/** 44_1_1 Property shortName **/
		Property shortNameProperty = currentOwnerRichType.getProperty("shortName"); //$NON-NLS-1$
		assertNotNull(shortNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), shortNameProperty.getReturnType());
		Object shortName = shortNameProperty.get(currentOwnerObject);
		assertTrue(shortName instanceof String);
		assertEquals(currentOwnerRichType.getSimpleName(), shortName);
		/********************************************************************/

		/** 44_1_2 Property absoluteQualifiedName **/
		Property absoluteQualifiedNameProperty = currentOwnerRichType.getProperty("absoluteQualifiedName"); //$NON-NLS-1$
		assertNotNull(absoluteQualifiedNameProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getStringType(), absoluteQualifiedNameProperty.getReturnType());
		Object absoluteQualifiedName = absoluteQualifiedNameProperty.get(currentOwnerObject);
		assertTrue(absoluteQualifiedName instanceof String);
		assertEquals(AutosarURIFactory.getAbsoluteQualifiedName(currentOwnerObject), absoluteQualifiedName);
		/********************************************************************/

		/** 44_1_3#A 44_1_4#A multiplicity on RichParamConfContainerDefType with multiplicity [n..1] **/
		/** 44_1_3#A lowerMultiplicity **/
		Property lowerMultiplicityProperty = currentOwnerRichType.getProperty("lowerMultiplicity"); //$NON-NLS-1$
		assertNotNull(lowerMultiplicityProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getIntegerType(), lowerMultiplicityProperty.getReturnType());
		Object lowerMultiplicity = lowerMultiplicityProperty.get(currentOwnerObject);
		assertEquals(1, lowerMultiplicity);
		/********************************************************************/

		/** 44_1_4#A Property upperMultiplicity **/
		Property upperMultiplicityProperty = currentOwnerRichType.getProperty("upperMultiplicity"); //$NON-NLS-1$
		assertNotNull(upperMultiplicityProperty);
		assertEquals(ecucMetaModel.getTypeSystem().getIntegerType(), upperMultiplicityProperty.getReturnType());
		Object upperMultiplicity = lowerMultiplicityProperty.get(currentOwnerObject);
		assertEquals(1, upperMultiplicity);
		/********************************************************************/
		/****************************************************************************************/

		/** 44_1_3#B 44_1_4#B multiplicity on RichParamConfContainerDefType with multiplicity [n..n] **/
		// Not yet available
		/** 44_1_3#B Property lowerMultiplicity **/
		// Not yet available
		/********************************************************************/

		/** 44_1_4#B Property upperMultiplicity **/
		// Not yet available
		/********************************************************************/
		/****************************************************************************************/

		/** 44_1_5 Property definition **/
		// Not yet available
		/********************************************************************/

		/** 44_1_6 Property value **/
		Property valueProperty = currentOwnerRichType.getProperty("value"); //$NON-NLS-1$
		assertNotNull(valueProperty);
		// TODO define correct Destination type in Example model
		// assertEquals(ecucMetaModel.getTypeForName(ParamConfContainerDefType.TYPE_NAME),
		// valueProperty.getReturnType());
		Object value = valueProperty.get(currentOwnerObject);
		assertTrue(value instanceof EcucContainerValue);
		assertEquals(getConfigurationObject(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FIFTHAND), value);
		/********************************************************************/

		/** 44_2_1 Operation is_configured **/
		Operation isConfiguredOperation = currentOwnerRichType.getOperation("isConfigured", new Type[0]);//$NON-NLS-1$
		assertNotNull(isConfiguredOperation);
		assertEquals(ecucMetaModel.getTypeSystem().getBooleanType(), isConfiguredOperation.getReturnType());
		value = isConfiguredOperation.evaluate(currentOwnerObject, null);
		assertTrue(value instanceof Boolean);
		assertTrue((Boolean) value);
		/********************************************************************/

	}

	/** 44_RichReferenceDefType **/
	public void testRichReferenceDefType_alternateDestinationType() {
		// This will test the case when the definition of the reference value has a destination in a module def pointed.
		// to by the refined module def attribute. bug1678
		/** ---------------------Test variables definition----------------------------- **/
		/** --Check engineRichType consistency-- **/
		EObject currentOwnerObject = getConfigurationObject(
				EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REFERENCE_VALUES_3_PREVIOUS_OWNER);
		Type currentOwnerType = ecucMetaModel.getTypeForName(EcucTestReferenceWorkspaceDescriptor.RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_PREVIOUS_OWNER);
		assertTrue(currentOwnerType instanceof RichConfigReferenceType);
		RichConfigReferenceType currentOwnerRichType = (RichConfigReferenceType) currentOwnerType;
		assertTrue(currentOwnerRichType.getEcucTypeDef() instanceof EcucReferenceDef);

		/** 44_1_6 Property value **/
		Property valueProperty = currentOwnerRichType.getProperty("value"); //$NON-NLS-1$
		assertNotNull(valueProperty);
		// TODO define correct Destination type in Example model
		// assertEquals(ecucMetaModel.getTypeForName(ParamConfContainerDefType.TYPE_NAME),
		// valueProperty.getReturnType());
		Object value = valueProperty.get(currentOwnerObject);
		assertTrue(value instanceof EcucContainerValue);
		assertEquals(getConfigurationObject(EcucTestReferenceWorkspaceDescriptor.URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FIFTHAND), value);
		/********************************************************************/

	}

	/** 45_RichSymbolicNameReferenceType **/
	public void testRichSymbolicNameReferenceType() {
		/** 45_1_1 Property shortName **/
		// Not yet available
		/********************************************************************/

		/** 45_1_2 Property absoluteQualifiedName **/
		// Not yet available
		/********************************************************************/

		/** 45_1_3#A 45_1_4#A multiplicity on RichParamConfContainerDefType with multiplicity [n..1] **/
		/** 45_1_3#A lowerMultiplicity **/
		// Not yet available
		/********************************************************************/

		/** 45_1_4#A Property upperMultiplicity **/
		// Not yet available
		/********************************************************************/
		/****************************************************************************************/

		/** 45_1_3#B 45_1_4#B multiplicity on RichParamConfContainerDefType with multiplicity [n..n] **/
		// Not yet available
		/** 45_1_3#B Property lowerMultiplicity **/
		// Not yet available
		/********************************************************************/

		/** 45_1_4#B Property upperMultiplicity **/
		// Not yet available
		/********************************************************************/
		/****************************************************************************************/

		/** 45_1_5 Property definition **/
		// Not yet available
		/********************************************************************/

		/** 45_1_6 Property value **/
		// Not yet available
		/********************************************************************/

		/** 45_2_1 Operation is_configured **/
		// Not yet available
		/********************************************************************/
	}

}
