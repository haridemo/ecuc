package org.artop.ecuc.autosar40.typesystem.integration.tests;

import org.artop.ecl.emf.model.IModelDescriptor;
import org.artop.ecl.emf.model.ModelDescriptorRegistry;
import org.artop.ecl.emf.util.EcorePlatformUtil;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucMetaModel;
import org.artop.ecuc.testutils.integration.referenceworkspace.AbstractEcucIntegrationTestCase;
import org.artop.ecuc.testutils.integration.referenceworkspace.EcucTestReferenceWorkspace;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.Platform;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.osgi.util.NLS;
import org.eclipse.xtend.typesystem.Type;

public class TypeSystemTypesTest extends AbstractEcucIntegrationTestCase {

	// Type Qualified Names definitions
	private static final String METATYPE_AR_CONFIG_REFERENCE_TYPE = "AR::ConfigReferenceType";
	private static final String METATYPE_AR_CONFIG_PARAMETER_TYPE = "AR::ConfigParameterType";
	private static final String METATYPE_AR_CHOICE_REFERENCE_DEF_TYPE = "AR::ChoiceReferenceDefType";
	private static final String METATYPE_AR_CONTAINER_DEF_TYPE = "AR::ContainerDefType";
	private static final String METATYPE_AR_MODULE_DEF_TYPE = "AR::ModuleDefType";
	private static final String METATYPE_AR_PARAM_CONF_CONTAINER_DEF_TYPE = "AR::ParamConfContainerDefType";
	private static final String METATYPE_AR_CHOICE_CONTAINER_DEF_TYPE = "AR::ChoiceContainerDefType";
	private static final String METATYPE_AR_REFERENCE_DEF_TYPE = "AR::ReferenceDefType";
	private static final String METATYPE_AR_AUTOSAR_TYPE = "AR::AUTOSARType";
	private static final String METATYPE_AR_AR_PACKAGE_TYPE = "AR::ARPackageType";
	private static final String METATYPE_AR_AR_OBJECT_TYPE = "AR::ARObjectType";
	private static final String RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_DIESEL_MAX_COUPLE = "EPD::Vehicle::Engine::Type::Diesel::MaxCouple";
	private static final String RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_DIESEL = "EPD::Vehicle::Engine::Type::Diesel";
	private static final String RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_DIESEL_DIESEL_FILTER_MODEL = "EPD::Vehicle::Engine::Type::Diesel::DieselFilterModel";
	private static final String RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE_SPARK_PLUG_MODEL = "EPD::Vehicle::Engine::Type::Gasoline::SparkPlugModel";
	private static final String RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE_SPARK_PLUG_NUMBER = "EPD::Vehicle::Engine::Type::Gasoline::SparkPlugNumber";
	private static final String RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE_SPARK_PLUG_VOLTAGE = "EPD::Vehicle::Engine::Type::Gasoline::SparkPlugVoltage";
	private static final String RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE = "EPD::Vehicle::Engine::Type::Gasoline";
	private static final String RICH_TYPE_EPD_VEHICLE_ENGINE_AUTOMATIC = "EPD::Vehicle::Engine::Automatic";
	private static final String RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE = "EPD::Vehicle::Engine::Type";
	private static final String RICH_TYPE_EPD_VEHICLE_ENGINE_ENGINE_TYPE = "EPD::Vehicle::Engine::EngineType";
	private static final String RICH_TYPE_EPD_VEHICLE_ENGINE = "EPD::Vehicle::Engine";
	private static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_VEHICLE_NAME = "EPD::Vehicle::GeneralInfo::VehicleName";
	private static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_ENGINE_TYPE_CHOICE_GASOLINE = "EPD::Vehicle::GeneralInfo::EngineTypeChoice_Gasoline";
	private static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_ENGINE_TYPE_CHOICE_DIESEL = "EPD::Vehicle::GeneralInfo::EngineTypeChoice_Diesel";
	private static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_YEAR = "EPD::Vehicle::GeneralInfo::Year";
	private static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_SERIAL_NUMBER = "EPD::Vehicle::GeneralInfo::SerialNumber";
	private static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO = "EPD::Vehicle::GeneralInfo";
	private static final String RICH_TYPE_EPD_VEHICLE = "EPD::Vehicle";
	private static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_MANUFACTURER = "EPD::Vehicle::GeneralInfo::Manufacturer";
	// Error message Definitions
	private static final String TYPE_IS_MISSING = "type {0} is missing";

	// EcucMetaModel Type system global instance
	private EcucMetaModel ecucMetaModel;
	private Resource moduleConfResource;

	@Override
	protected void setUp() throws Exception {
		super.setUp();
		IFile moduleDefFile = refWks.xPandAutosar40Project
				.getFile(EcucTestReferenceWorkspace.XPAND_AUTOSAR_40_AR_FILE_PATH_VEHICLE);
		IModelDescriptor moduleDefModelDescriptor = ModelDescriptorRegistry.INSTANCE
				.getModel(moduleDefFile);
		assertNotNull(moduleDefModelDescriptor);
		ecucMetaModel = (EcucMetaModel) Platform.getAdapterManager()
				.loadAdapter(moduleDefModelDescriptor,
						EcucMetaModel.class.getName());
		assertNotNull(ecucMetaModel);
		moduleConfResource = EcorePlatformUtil
				.getResource(refWks.xPandAutosar40Project
						.getFile(EcucTestReferenceWorkspace.XPAND_AUTOSAR_40_AR_FILE_PATH_CAR_CONFIGURATION));
		assertNotNull(moduleConfResource);
	}

	private void assertExistsTypeInEcucMetaModel(String expectedTypeName) {
		assertNotNull(NLS.bind(TYPE_IS_MISSING, expectedTypeName),
				ecucMetaModel.getTypeForName(expectedTypeName));
	}

	private void assertReturnedEcucMetaModelTypeEquals(
			String targetUriFragment, String expectedTypeName) {

		EObject target = moduleConfResource.getEObject(targetUriFragment);
		assertNotNull("Object not found in model", target);
		Type type = ecucMetaModel.getType(target);
		assertNotNull(NLS.bind(TYPE_IS_MISSING, expectedTypeName), type);
		assertEquals(expectedTypeName, type.getName());
	}

	/**
	 * 
	 */
	public void testTypeGenerationtest() {
		// Check for expected types

		// MetaTypes
		assertExistsTypeInEcucMetaModel(METATYPE_AR_AR_OBJECT_TYPE);
		assertExistsTypeInEcucMetaModel(METATYPE_AR_AR_PACKAGE_TYPE);
		assertExistsTypeInEcucMetaModel(METATYPE_AR_AUTOSAR_TYPE);
		assertExistsTypeInEcucMetaModel(METATYPE_AR_REFERENCE_DEF_TYPE);
		assertExistsTypeInEcucMetaModel(METATYPE_AR_CHOICE_CONTAINER_DEF_TYPE);
		assertExistsTypeInEcucMetaModel(METATYPE_AR_PARAM_CONF_CONTAINER_DEF_TYPE);
		assertExistsTypeInEcucMetaModel(METATYPE_AR_MODULE_DEF_TYPE);
		assertExistsTypeInEcucMetaModel(METATYPE_AR_CONTAINER_DEF_TYPE);
		assertExistsTypeInEcucMetaModel(METATYPE_AR_CHOICE_REFERENCE_DEF_TYPE);
		assertExistsTypeInEcucMetaModel(METATYPE_AR_CONFIG_PARAMETER_TYPE);
		assertExistsTypeInEcucMetaModel(METATYPE_AR_CONFIG_REFERENCE_TYPE);

		// From EPD package
		assertExistsTypeInEcucMetaModel(RICH_TYPE_EPD_VEHICLE);
		assertExistsTypeInEcucMetaModel(RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_MANUFACTURER);
		assertExistsTypeInEcucMetaModel(RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_MANUFACTURER);
		assertExistsTypeInEcucMetaModel(RICH_TYPE_EPD_VEHICLE_GENERAL_INFO);
		assertExistsTypeInEcucMetaModel(RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_SERIAL_NUMBER);
		assertExistsTypeInEcucMetaModel(RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_YEAR);
		assertExistsTypeInEcucMetaModel(RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_ENGINE_TYPE_CHOICE_DIESEL);
		assertExistsTypeInEcucMetaModel(RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_ENGINE_TYPE_CHOICE_GASOLINE);
		assertExistsTypeInEcucMetaModel(RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_VEHICLE_NAME);
		assertExistsTypeInEcucMetaModel(RICH_TYPE_EPD_VEHICLE_ENGINE);
		assertExistsTypeInEcucMetaModel(RICH_TYPE_EPD_VEHICLE_ENGINE_ENGINE_TYPE);
		assertExistsTypeInEcucMetaModel(RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE);
		assertExistsTypeInEcucMetaModel(RICH_TYPE_EPD_VEHICLE_ENGINE_AUTOMATIC);
		assertExistsTypeInEcucMetaModel(RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE);
		assertExistsTypeInEcucMetaModel(RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE_SPARK_PLUG_VOLTAGE);
		assertExistsTypeInEcucMetaModel(RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE_SPARK_PLUG_NUMBER);
		assertExistsTypeInEcucMetaModel(RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE_SPARK_PLUG_MODEL);
		assertExistsTypeInEcucMetaModel(RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_DIESEL_DIESEL_FILTER_MODEL);
		assertExistsTypeInEcucMetaModel(RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_DIESEL);
		assertExistsTypeInEcucMetaModel(RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_DIESEL_MAX_COUPLE);
	}

	/**
	 * 
	 */
	public void testTypeConfigurationTest() {

		assertReturnedEcucMetaModelTypeEquals("/EPC/Car", RICH_TYPE_EPD_VEHICLE);
		assertReturnedEcucMetaModelTypeEquals("/EPC/Car/Engine",
				RICH_TYPE_EPD_VEHICLE_ENGINE);
		assertReturnedEcucMetaModelTypeEquals(
				"/EPC/Car/Engine/@parameterValues.0",
				RICH_TYPE_EPD_VEHICLE_ENGINE_AUTOMATIC);
		assertReturnedEcucMetaModelTypeEquals(
				"/EPC/Car/Engine/@parameterValues.1",
				RICH_TYPE_EPD_VEHICLE_ENGINE_ENGINE_TYPE);
		assertReturnedEcucMetaModelTypeEquals("/EPC/Car/Engine/Type",
				RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE);
		assertReturnedEcucMetaModelTypeEquals("/EPC/Car/Engine/Type/Gasoline",
				RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE);
		assertReturnedEcucMetaModelTypeEquals(
				"/EPC/Car/Engine/Type/Gasoline/@parameterValues.0",
				RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE_SPARK_PLUG_NUMBER);
		assertReturnedEcucMetaModelTypeEquals(
				"/EPC/Car/Engine/Type/Gasoline/@parameterValues.1",
				RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE_SPARK_PLUG_VOLTAGE);
		assertReturnedEcucMetaModelTypeEquals(
				"/EPC/Car/Engine/Type/Gasoline/@parameterValues.2",
				RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE_SPARK_PLUG_MODEL);
		assertReturnedEcucMetaModelTypeEquals("/EPC/Car/GeneralInfo",
				RICH_TYPE_EPD_VEHICLE_GENERAL_INFO);
		assertReturnedEcucMetaModelTypeEquals(
				"/EPC/Car/GeneralInfo/@parameterValues.0",
				RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_SERIAL_NUMBER);
		assertReturnedEcucMetaModelTypeEquals(
				"/EPC/Car/GeneralInfo/@parameterValues.1",
				RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_YEAR);
		assertReturnedEcucMetaModelTypeEquals(
				"/EPC/Car/GeneralInfo/@parameterValues.2",
				RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_ENGINE_TYPE_CHOICE_GASOLINE);
		assertReturnedEcucMetaModelTypeEquals(
				"/EPC/Car/GeneralInfo/@parameterValues.3",
				RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_VEHICLE_NAME);
		assertReturnedEcucMetaModelTypeEquals(
				"/EPC/Car/GeneralInfo/@parameterValues.4",
				RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_MANUFACTURER);
	}
}
