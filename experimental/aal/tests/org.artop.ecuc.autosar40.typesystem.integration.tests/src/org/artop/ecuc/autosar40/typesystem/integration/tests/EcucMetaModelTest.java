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

public class EcucMetaModelTest extends AbstractEcucIntegrationTestCase {

	// Test Model Objects uri fragments
	private static final String URI_FRAGMENT_EPC_CAR = "/EPC/Car?type=EcucModuleConfigurationValues";//$NON-NLS-1$
	private static final String URI_FRAGMENT_EPC_CAR_GENERALINFO = "/EPC/Car/GeneralInfo?type=EcucContainerValue";//$NON-NLS-1$
	private static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REFERENCE_VALUES_0_ENGINE_TYPE_CHOICE_GASOLINE = "/EPC/Car/GeneralInfo/@referenceValues.0?type=EcucReferenceValue";//$NON-NLS-1$
	private static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_PARAMETER_VALUES_0_VEHICLE_NAME = "/EPC/Car/GeneralInfo/@parameterValues.0?type=EcucTextualParamValue";//$NON-NLS-1$
	private static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_PARAMETER_VALUES_1_SERIAL_NUMBER = "/EPC/Car/GeneralInfo/@parameterValues.1?type=EcucNumericalParamValue";//$NON-NLS-1$
	private static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_PARAMETER_VALUES_2_MANUFACTURER = "/EPC/Car/GeneralInfo/@parameterValues.2?type=EcucTextualParamValue";//$NON-NLS-1$
	private static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_PARAMETER_VALUES_3_YEAR = "/EPC/Car/GeneralInfo/@parameterValues.3?type=EcucNumericalParamValue";//$NON-NLS-1$
	private static final String URI_FRAGMENT_EPC_CAR_ENGINE = "/EPC/Car/Engine?type=EcucContainerValue";//$NON-NLS-1$
	private static final String URI_FRAGMENT_EPC_CAR_ENGINE_TYPE = "/EPC/Car/Engine/Type?type=EcucContainerValue";//$NON-NLS-1$
	private static final String URI_FRAGMENT_EPC_CAR_ENGINE_TYPE_GASOLINE_PARAMETER_VALUES_2_SPARK_PLUG_MODEL = "/EPC/Car/Engine/Type/Gasoline/@parameterValues.2?type=EcucTextualParamValue";//$NON-NLS-1$
	private static final String URI_FRAGMENT_EPC_CAR_ENGINE_TYPE_GASOLINE_PARAMETER_VALUES_1_SPARK_PLUG_VOLTAGE = "/EPC/Car/Engine/Type/Gasoline/@parameterValues.1?type=EcucNumericalParamValue";//$NON-NLS-1$
	private static final String URI_FRAGMENT_EPC_CAR_ENGINE_TYPE_GASOLINE_PARAMETER_VALUES_0_SPARK_PLUG_NUMBER = "/EPC/Car/Engine/Type/Gasoline/@parameterValues.0?type=EcucNumericalParamValue";//$NON-NLS-1$
	private static final String URI_FRAGMENT_EPC_CAR_ENGINE_TYPE_GASOLINE = "/EPC/Car/Engine/Type/Gasoline?type=EcucContainerValue";//$NON-NLS-1$
	private static final String URI_FRAGMENT_EPC_CAR_ENGINE_PARAMETER_VALUES_0_ENGINETYPE = "/EPC/Car/Engine/@parameterValues.0?type=EcucTextualParamValue";//$NON-NLS-1$
	private static final String URI_FRAGMENT_EPC_CAR_ENGINE_PARAMETER_VALUES_1_AUTOMATIC = "/EPC/Car/Engine/@parameterValues.1?type=EcucNumericalParamValue";//$NON-NLS-1$

	// Type Qualified Names definitions
	private static final String METATYPE_AR_CONFIG_REFERENCE_TYPE = "AR::ConfigReferenceType";//$NON-NLS-1$
	private static final String METATYPE_AR_CONFIG_PARAMETER_TYPE = "AR::ConfigParameterType";//$NON-NLS-1$
	private static final String METATYPE_AR_CHOICE_REFERENCE_DEF_TYPE = "AR::ChoiceReferenceDefType";//$NON-NLS-1$
	private static final String METATYPE_AR_CONTAINER_DEF_TYPE = "AR::ContainerDefType";//$NON-NLS-1$
	private static final String METATYPE_AR_MODULE_DEF_TYPE = "AR::ModuleDefType";//$NON-NLS-1$
	private static final String METATYPE_AR_PARAM_CONF_CONTAINER_DEF_TYPE = "AR::ParamConfContainerDefType";//$NON-NLS-1$
	private static final String METATYPE_AR_CHOICE_CONTAINER_DEF_TYPE = "AR::ChoiceContainerDefType";//$NON-NLS-1$
	private static final String METATYPE_AR_REFERENCE_DEF_TYPE = "AR::ReferenceDefType";//$NON-NLS-1$
	private static final String METATYPE_AR_AUTOSAR_TYPE = "AR::AUTOSARType";//$NON-NLS-1$
	private static final String METATYPE_AR_AR_PACKAGE_TYPE = "AR::ARPackageType";//$NON-NLS-1$
	private static final String METATYPE_AR_AR_OBJECT_TYPE = "AR::ARObjectType";//$NON-NLS-1$
	private static final String RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_DIESEL_MAX_COUPLE = "EPD::Vehicle::Engine::Type::Diesel::MaxCouple";//$NON-NLS-1$
	private static final String RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_DIESEL = "EPD::Vehicle::Engine::Type::Diesel";//$NON-NLS-1$
	private static final String RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_DIESEL_DIESEL_FILTER_MODEL = "EPD::Vehicle::Engine::Type::Diesel::DieselFilterModel";//$NON-NLS-1$
	private static final String RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE_SPARK_PLUG_MODEL = "EPD::Vehicle::Engine::Type::Gasoline::SparkPlugModel";//$NON-NLS-1$
	private static final String RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE_SPARK_PLUG_NUMBER = "EPD::Vehicle::Engine::Type::Gasoline::SparkPlugNumber";//$NON-NLS-1$
	private static final String RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE_SPARK_PLUG_VOLTAGE = "EPD::Vehicle::Engine::Type::Gasoline::SparkPlugVoltage";//$NON-NLS-1$
	private static final String RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE = "EPD::Vehicle::Engine::Type::Gasoline";//$NON-NLS-1$
	private static final String RICH_TYPE_EPD_VEHICLE_ENGINE_AUTOMATIC = "EPD::Vehicle::Engine::Automatic";//$NON-NLS-1$
	private static final String RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE = "EPD::Vehicle::Engine::Type";//$NON-NLS-1$
	private static final String RICH_TYPE_EPD_VEHICLE_ENGINE_ENGINETYPE = "EPD::Vehicle::Engine::EngineType";//$NON-NLS-1$
	private static final String RICH_TYPE_EPD_VEHICLE_ENGINE = "EPD::Vehicle::Engine";//$NON-NLS-1$
	private static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_VEHICLE_NAME = "EPD::Vehicle::GeneralInfo::VehicleName";//$NON-NLS-1$
	private static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_ENGINE_TYPE_CHOICE_GASOLINE = "EPD::Vehicle::GeneralInfo::EngineTypeChoice_Gasoline";//$NON-NLS-1$
	private static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_ENGINE_TYPE_CHOICE_DIESEL = "EPD::Vehicle::GeneralInfo::EngineTypeChoice_Diesel";//$NON-NLS-1$
	private static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_YEAR = "EPD::Vehicle::GeneralInfo::Year";//$NON-NLS-1$
	private static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_SERIAL_NUMBER = "EPD::Vehicle::GeneralInfo::SerialNumber";//$NON-NLS-1$
	private static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO = "EPD::Vehicle::GeneralInfo";//$NON-NLS-1$
	private static final String RICH_TYPE_EPD_VEHICLE = "EPD::Vehicle";//$NON-NLS-1$
	private static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_MANUFACTURER = "EPD::Vehicle::GeneralInfo::Manufacturer";//$NON-NLS-1$

	// Error message Definitions
	private static final String TYPE_IS_MISSING = "type {0} is missing"; //$NON-NLS-1$
	private static final String TYPE_NOT_RETURNED_FOR_OBJECT = "Expected type : {0} for Object :{1} is not returned by EcucMetaModel";//$NON-NLS-1$
	private static final String OBJECT_NOT_FOUND_IN_MODEL = "Object pointed by URI fragment : {0} cannot be found in model";//$NON-NLS-1$
	private static final String TYPE_RETURNED_NOT_EQUALS_TO_EXPECTED = "Type returned :{0} is not equal to expected type :{1}";//$NON-NLS-1$

	// EcucMetaModel Type system global instance
	private EcucMetaModel ecucMetaModel;

	// Module configuration resource
	private Resource moduleConfResource;

	@Override
	protected void setUp() throws Exception {
		// long start = System.currentTimeMillis();
		super.setUp();
		// System.out.println("Super.setUp time : "+start-System.currentTimeMillis());
		IFile moduleDefFile = refWks.xPandAutosar40Project.getFile(EcucTestReferenceWorkspace.XPAND_AUTOSAR_40_AR_FILE_PATH_VEHICLE);
		IModelDescriptor moduleDefModelDescriptor = ModelDescriptorRegistry.INSTANCE.getModel(moduleDefFile);
		assertNotNull(moduleDefModelDescriptor);
		ecucMetaModel = (EcucMetaModel) Platform.getAdapterManager().loadAdapter(moduleDefModelDescriptor, EcucMetaModel.class.getName());
		assertNotNull(ecucMetaModel);
		moduleConfResource = EcorePlatformUtil.getResource(refWks.xPandAutosar40Project
				.getFile(EcucTestReferenceWorkspace.XPAND_AUTOSAR_40_AR_FILE_PATH_CAR_CONFIGURATION));
		assertNotNull(moduleConfResource);
	}

	/**
	 * Asserts that the expected type with qualified name expectedTypeName is registered by ecucMetaModel
	 * 
	 * @param expectedTypeName
	 *            The qualified name of the expected type
	 */
	private void assertExistsTypeInEcucMetaModel(String expectedTypeName) {
		assertNotNull(NLS.bind(TYPE_IS_MISSING, expectedTypeName), ecucMetaModel.getTypeForName(expectedTypeName));
	}

	/**
	 * Asserts that the type return by ecucMetaModel for the object defined in module configuration pointed by the given
	 * targetUriFragment exists and is equal to the expected Type
	 * 
	 * @param targetUriFragment
	 *            The uri fragment of the object inside
	 *            /org.artop.ecuc.examples.autosar40.codegen.xpand/bsw.config/Car_Configuration.arxml test resource
	 * @param expectedTypeName
	 *            The qualified name of the expected type
	 */
	private void assertReturnedEcucMetaModelTypeEquals(String targetUriFragment, String expectedTypeName) {

		EObject target = moduleConfResource.getEObject(targetUriFragment);
		// Check if object is found in model
		assertNotNull(NLS.bind(OBJECT_NOT_FOUND_IN_MODEL, targetUriFragment), target);
		Type type = ecucMetaModel.getType(target);
		// Check if one type is returned for target object
		assertNotNull(NLS.bind(TYPE_NOT_RETURNED_FOR_OBJECT, new String[] { expectedTypeName, targetUriFragment }), type);
		// check if returned type is equals to expected type
		assertEquals(NLS.bind(TYPE_RETURNED_NOT_EQUALS_TO_EXPECTED, new String[] { type.getName(), expectedTypeName }), expectedTypeName,
				type.getName());
	}

	/**
	 * 
	 */
	public void testEcucMetaModelGeneratedTypes() {
		// Check for expected types in ecucMetaModel

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
		assertExistsTypeInEcucMetaModel(RICH_TYPE_EPD_VEHICLE_ENGINE_ENGINETYPE);
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
	public void testEcucMetaModelReturnedTypeForEObjectInModuleConfiguration() {

		assertReturnedEcucMetaModelTypeEquals(URI_FRAGMENT_EPC_CAR, RICH_TYPE_EPD_VEHICLE);
		assertReturnedEcucMetaModelTypeEquals(URI_FRAGMENT_EPC_CAR_ENGINE, RICH_TYPE_EPD_VEHICLE_ENGINE);
		// TODO Investigate reasons of test failure : No type returned by EcucMetaModel for this target object
		assertReturnedEcucMetaModelTypeEquals(URI_FRAGMENT_EPC_CAR_ENGINE_PARAMETER_VALUES_0_ENGINETYPE, RICH_TYPE_EPD_VEHICLE_ENGINE_ENGINETYPE);
		assertReturnedEcucMetaModelTypeEquals(URI_FRAGMENT_EPC_CAR_ENGINE_PARAMETER_VALUES_1_AUTOMATIC, RICH_TYPE_EPD_VEHICLE_ENGINE_AUTOMATIC);
		assertReturnedEcucMetaModelTypeEquals(URI_FRAGMENT_EPC_CAR_ENGINE_TYPE, RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE);
		assertReturnedEcucMetaModelTypeEquals(URI_FRAGMENT_EPC_CAR_ENGINE_TYPE_GASOLINE, RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE);
		assertReturnedEcucMetaModelTypeEquals(URI_FRAGMENT_EPC_CAR_ENGINE_TYPE_GASOLINE_PARAMETER_VALUES_0_SPARK_PLUG_NUMBER,
				RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE_SPARK_PLUG_NUMBER);
		assertReturnedEcucMetaModelTypeEquals(URI_FRAGMENT_EPC_CAR_ENGINE_TYPE_GASOLINE_PARAMETER_VALUES_1_SPARK_PLUG_VOLTAGE,
				RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE_SPARK_PLUG_VOLTAGE);
		assertReturnedEcucMetaModelTypeEquals(URI_FRAGMENT_EPC_CAR_ENGINE_TYPE_GASOLINE_PARAMETER_VALUES_2_SPARK_PLUG_MODEL,
				RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE_SPARK_PLUG_MODEL);
		assertReturnedEcucMetaModelTypeEquals(URI_FRAGMENT_EPC_CAR_GENERALINFO, RICH_TYPE_EPD_VEHICLE_GENERAL_INFO);
		assertReturnedEcucMetaModelTypeEquals(URI_FRAGMENT_EPC_CAR_GENERAL_INFO_PARAMETER_VALUES_1_SERIAL_NUMBER,
				RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_SERIAL_NUMBER);
		assertReturnedEcucMetaModelTypeEquals(URI_FRAGMENT_EPC_CAR_GENERAL_INFO_PARAMETER_VALUES_3_YEAR, RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_YEAR);
		// TODO Investigate reasons of test failure : returned type by EcucMetaModel is not the expected one
		assertReturnedEcucMetaModelTypeEquals(URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REFERENCE_VALUES_0_ENGINE_TYPE_CHOICE_GASOLINE,
				RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_ENGINE_TYPE_CHOICE_GASOLINE);
		assertReturnedEcucMetaModelTypeEquals(URI_FRAGMENT_EPC_CAR_GENERAL_INFO_PARAMETER_VALUES_0_VEHICLE_NAME,
				RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_VEHICLE_NAME);
		assertReturnedEcucMetaModelTypeEquals(URI_FRAGMENT_EPC_CAR_GENERAL_INFO_PARAMETER_VALUES_2_MANUFACTURER,
				RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_MANUFACTURER);
	}
}
