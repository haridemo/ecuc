package org.artop.ecuc.testutils.integration.referenceworkspace;

import static org.osgi.framework.FrameworkUtil.getBundle;
import java.util.Arrays;
import java.util.HashSet;

import org.artop.aal.testutils.integration.referenceworkspace.IRefWorkspaceDescriptor;
import org.artop.ecuc.testutils.integration.referenceworkspace.internal.Activator;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.sphinx.testutils.integration.AbstractReferenceWorkspace;
import org.osgi.framework.Bundle;

import autosar40.util.Autosar40ReleaseDescriptor;

@SuppressWarnings("nls")
public class EcucTestReferenceWorkspaceDescriptor extends AbstractReferenceWorkspace implements IRefWorkspaceDescriptor {

	private static final String REFERENCE_WORKSPACE_NAME = "ecucReferenceWorkspace";

	private static final Path ARCHIVE_PATH = new Path("resources" + IPath.SEPARATOR + "input" + IPath.SEPARATOR + "referenceWorkspace.zip");

	protected static final String ECUC_TEST_REFERENCE_WORKSPACE_ARCHIVE_FILE_NAME = "referenceWorkspace.zip";

	/* ----- AUTOSAR 4.0 XPAND Project ----- */
	public static final String XPAND_AUTOSAR_40_PROJECT_NAME = "Autosar40XpandProject";
	public static final String XPAND_AUTOSAR_40_AR_FILE_PATH_VEHICLE = "/bsw.platform/Vehicle.arxml";
	public static final String XPAND_AUTOSAR_40_AR_FILE_PATH_CAR_CONFIGURATION = "/bsw.config/Car_Configuration.arxml";

	// Test Model Objects uri fragments
	public static final String URI_FRAGMENT_EPC_CAR = "/EPC/Car?type=EcucModuleConfigurationValues";

	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO = "/EPC/Car/GeneralInfo?type=EcucContainerValue";

	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REFERENCE_VALUES_0_FINITION_LEVEL = "/EPC/Car/GeneralInfo/@referenceValues.0?type=EcucReferenceValue";
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REFERENCE_VALUES_1_CURRENT_OWNER = "/EPC/Car/GeneralInfo/@referenceValues.1?type=EcucReferenceValue";
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REFERENCE_VALUES_2_FIRSTHAND = "/EPC/Car/GeneralInfo/@referenceValues.2?type=EcucReferenceValue";

	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_PARAMETER_VALUES_0_VEHICLE_NAME = "/EPC/Car/GeneralInfo/@parameterValues.0?type=EcucTextualParamValue";
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_PARAMETER_VALUES_1_SERIAL_NUMBER = "/EPC/Car/GeneralInfo/@parameterValues.1?type=EcucNumericalParamValue";
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_PARAMETER_VALUES_2_MANUFACTURER = "/EPC/Car/GeneralInfo/@parameterValues.2?type=EcucTextualParamValue";
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_PARAMETER_VALUES_3_YEAR = "/EPC/Car/GeneralInfo/@parameterValues.3?type=EcucNumericalParamValue";

	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS = "/EPC/Car/GeneralInfo/Owners?type=EcucContainerValue";
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FIRSTHAND = "/EPC/Car/GeneralInfo/Owners/FirstHand?type=EcucContainerValue";
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FIRSTHAND_PARAMETER_VALUES_0_LASTNAME = "/EPC/Car/GeneralInfo/Owners/FirstHand/@parameterValues.0?type=EcucTextualParamValue";
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_SECONDHAND = "/EPC/Car/GeneralInfo/Owners/SecondHand?type=EcucContainerValue";
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_SECONDHAND_PARAMETER_VALUES_0_LASTNAME = "/EPC/Car/GeneralInfo/Owners/SecondHand/@parameterValues.0?type=EcucTextualParamValue";
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_THIRDHAND = "/EPC/Car/GeneralInfo/Owners/ThirdHand?type=EcucContainerValue";
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_THIRDHAND_PARAMETER_VALUES_0_FIRSTNAME = "/EPC/Car/GeneralInfo/Owners/ThirdHand/@parameterValues.0?type=EcucTextualParamValue";
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_THIRDHAND_PARAMETER_VALUES_1_LASTNAME = "/EPC/Car/GeneralInfo/Owners/ThirdHand/@parameterValues.1?type=EcucTextualParamValue";
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FOURTHHAND = "/EPC/Car/GeneralInfo/Owners/FourthHand?type=EcucContainerValue";
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FOURTHHAND_PARAMETER_VALUES_0_FIRSTNAME = "/EPC/Car/GeneralInfo/Owners/FourthHand/@parameterValues.0?type=EcucTextualParamValue";
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FOURTHHAND_PARAMETER_VALUES_1_LASTNAME = "/EPC/Car/GeneralInfo/Owners/FourthHand/@parameterValues.1?type=EcucTextualParamValue";
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FIFTHAND = "/EPC/Car/GeneralInfo/Owners/FifthHand?type=EcucContainerValue";
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FIFTHAND_PARAMETER_VALUES_0_FIRSTNAME = "/EPC/Car/GeneralInfo/Owners/FifthHand/@parameterValues.0?type=EcucTextualParamValue";
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FIFTHAND_PARAMETER_VALUES_1_LASTNAME = "/EPC/Car/GeneralInfo/Owners/FifthHand/@parameterValues.1?type=EcucTextualParamValue";

	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REVISIONS = "/EPC/Car/GeneralInfo/Revisions?type=EcucContainerValue";
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REVISIONS_PARAMETER_VALUES_0_DATE_20071215 = "/EPC/Car/GeneralInfo/Revisions/@parameterValues.0?type=EcucTextualParamValue";
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REVISIONS_PARAMETER_VALUES_1_DATE_20080106 = "/EPC/Car/GeneralInfo/Revisions/@parameterValues.1?type=EcucTextualParamValue";
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REVISIONS_PARAMETER_VALUES_2_DATE_20080605 = "/EPC/Car/GeneralInfo/Revisions/@parameterValues.2?type=EcucTextualParamValue";
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REVISIONS_PARAMETER_VALUES_3_DATE_20090707 = "/EPC/Car/GeneralInfo/Revisions/@parameterValues.3?type=EcucTextualParamValue";
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REVISIONS_PARAMETER_VALUES_4_DATE_20100918 = "/EPC/Car/GeneralInfo/Revisions/@parameterValues.4?type=EcucTextualParamValue";

	public static final String URI_FRAGMENT_EPC_CAR_ENGINE = "/EPC/Car/Engine?type=EcucContainerValue";

	public static final String URI_FRAGMENT_EPC_CAR_ENGINE_PARAMETER_VALUES_0_ENGINETYPE = "/EPC/Car/Engine/@parameterValues.0?type=EcucTextualParamValue";
	public static final String URI_FRAGMENT_EPC_CAR_ENGINE_PARAMETER_VALUES_1_AUTOMATIC = "/EPC/Car/Engine/@parameterValues.1?type=EcucNumericalParamValue";

	public static final String URI_FRAGMENT_EPC_CAR_ENGINE_TYPE = "/EPC/Car/Engine/Type?type=EcucContainerValue";

	public static final String URI_FRAGMENT_EPC_CAR_ENGINE_TYPE_GASOLINE = "/EPC/Car/Engine/Type/Gasoline?type=EcucContainerValue";
	public static final String URI_FRAGMENT_EPC_CAR_ENGINE_TYPE_GASOLINE_PARAMETER_VALUES_0_SPARK_PLUG_NUMBER = "/EPC/Car/Engine/Type/Gasoline/@parameterValues.0?type=EcucNumericalParamValue";
	public static final String URI_FRAGMENT_EPC_CAR_ENGINE_TYPE_GASOLINE_PARAMETER_VALUES_1_SPARK_PLUG_VOLTAGE = "/EPC/Car/Engine/Type/Gasoline/@parameterValues.1?type=EcucNumericalParamValue";
	public static final String URI_FRAGMENT_EPC_CAR_ENGINE_TYPE_GASOLINE_PARAMETER_VALUES_2_SPARK_PLUG_MODEL = "/EPC/Car/Engine/Type/Gasoline/@parameterValues.2?type=EcucTextualParamValue";

	public static final String URI_FRAGMENT_EPC_CAR_OPTIONS = "/EPC/Car/Options?type=EcucContainerValue";
	public static final String URI_FRAGMENT_EPC_CAR_OPTIONS_FINITION_LEVELS = "/EPC/Car/Options/FinitionLevels?type=EcucContainerValue";
	public static final String URI_FRAGMENT_EPC_CAR_OPTIONS_FINITION_LEVELS_HIGH = "/EPC/Car/Options/FinitionLevels/High?type=EcucContainerValue";
	public static final String URI_FRAGMENT_EPC_CAR_OPTIONS_FINITION_LEVELS_LOW = "/EPC/Car/Options/FinitionLevels/Low?type=EcucContainerValue";

	// Type Qualified Names definitions
	public static final String RICH_TYPE_EPD_VEHICLE = "EPD::Vehicle";
	public static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO = "EPD::Vehicle::GeneralInfo";

	public static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_CURRENT_OWNER = "EPD::Vehicle::GeneralInfo::CurrentOwner";
	public static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_FINITION_LEVEL = "EPD::Vehicle::GeneralInfo::FinitionLevel";
	public static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_FIRSTHAND = "EPD::Vehicle::GeneralInfo::FirstHand";

	public static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_VEHICLE_NAME = "EPD::Vehicle::GeneralInfo::VehicleName";
	public static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_SERIAL_NUMBER = "EPD::Vehicle::GeneralInfo::SerialNumber";
	public static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_MANUFACTURER = "EPD::Vehicle::GeneralInfo::Manufacturer";
	public static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_YEAR = "EPD::Vehicle::GeneralInfo::Year";

	public static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_REVISIONS = "EPD::Vehicle::GeneralInfo::Revisons";
	public static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_REVISIONS_REVISIONDATE = "EPD::Vehicle::GeneralInfo::Revisons::RevisionDate";
	public static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_REVISIONS_OWNER_AT_THAT_TIME = "EPD::Vehicle::GeneralInfo::Revisons::OwnerAtThatTime";

	public static final String RICH_TYPE_EPD_VEHICLE_OPTIONS = "EPD::Vehicle::Options";
	public static final String RICH_TYPE_EPD_VEHICLE_OPTIONS_FINITION_LEVELS = "EPD::Vehicle::Options::FinitionLevels";
	public static final String RICH_TYPE_EPD_VEHICLE_OPTIONS_FINITION_LEVELS_HIGH = "EPD::Vehicle::Options::FinitionLevels::High";
	public static final String RICH_TYPE_EPD_VEHICLE_OPTIONS_FINITION_LEVELS_MEDIUM = "EPD::Vehicle::Options::FinitionLevels::Medium";
	public static final String RICH_TYPE_EPD_VEHICLE_OPTIONS_FINITION_LEVELS_LOW = "EPD::Vehicle::Options::FinitionLevels::Low";

	public static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS = "EPD::Vehicle::GeneralInfo::Owners";
	public static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER = "EPD::Vehicle::GeneralInfo::Owners::Owner";
	public static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER_FIRSTNAME = "EPD::Vehicle::GeneralInfo::Owners::Owner::FirstName";
	public static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_OWNERS_OWNER_LASTNAME = "EPD::Vehicle::GeneralInfo::Owners::Owner::LastName";

	public static final String RICH_TYPE_EPD_VEHICLE_ENGINE = "EPD::Vehicle::Engine";
	public static final String RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE = "EPD::Vehicle::Engine::Type";
	public static final String RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE_SPARK_PLUG_MODEL = "EPD::Vehicle::Engine::Type::Gasoline::SparkPlugModel";
	public static final String RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE_SPARK_PLUG_VOLTAGE = "EPD::Vehicle::Engine::Type::Gasoline::SparkPlugVoltage";
	public static final String RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE_SPARK_PLUG_NUMBER = "EPD::Vehicle::Engine::Type::Gasoline::SparkPlugNumber";
	public static final String RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_DIESEL_MAX_COUPLE = "EPD::Vehicle::Engine::Type::Diesel::MaxCouple";
	public static final String RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE = "EPD::Vehicle::Engine::Type::Gasoline";
	public static final String RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_DIESEL = "EPD::Vehicle::Engine::Type::Diesel";
	public static final String RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_DIESEL_DIESEL_FILTER_MODEL = "EPD::Vehicle::Engine::Type::Diesel::DieselFilterModel";
	public static final String RICH_TYPE_EPD_VEHICLE_ENGINE_ENGINETYPE = "EPD::Vehicle::Engine::EngineType";
	public static final String RICH_TYPE_EPD_VEHICLE_ENGINE_AUTOMATIC = "EPD::Vehicle::Engine::Automatic";

	public static final String RICH_TYPE_EPD_ATTRIBUTES = "EPD::Attributes";
	public static final String RICH_TYPE_EPD_ATTRIBUTES_AVAILABLECOLORS = "EPD::Attributes::AvailableColors";
	public static final String RICH_TYPE_EPD_ATTRIBUTES_AVAILABLECOLORS_CHARCOAL = "EPD::Attributes::AvailableColors::CharCoal";
	public static final String RICH_TYPE_EPD_ATTRIBUTES_AVAILABLECOLORS_CORNFLOWERBLUE = "EPD::Attributes::AvailableColors::CornflowerBlue";
	public static final String RICH_TYPE_EPD_ATTRIBUTES_AVAILABLECOLORS_GOLD = "EPD::Attributes::AvailableColors::Gold";
	public static final String RICH_TYPE_EPD_ATTRIBUTES_AVAILABLECOLORS_HOTPINK = "EPD::Attributes::AvailableColors::HotPink";
	public static final String RICH_TYPE_EPD_ATTRIBUTES_AVAILABLECOLORS_NAVYBLUE = "EPD::Attributes::AvailableColors::NavyBlue";
	public static final String RICH_TYPE_EPD_ATTRIBUTES_AVAILABLECOLORS_PAPAYAWHIP = "EPD::Attributes::AvailableColors::PapayaWhip";
	public static final String RICH_TYPE_EPD_ATTRIBUTES_AVAILABLECOLORS_SALSARED = "EPD::Attributes::AvailableColors::SalsaRed";
	public static final String RICH_TYPE_EPD_ATTRIBUTES_AVAILABLECOLORS_SILVER = "EPD::Attributes::AvailableColors::silver";
	// PropertyNamesDefiniton
	public static final String COMMON_TYPE_PROPERTY_SHORTNAME = "shortName";
	public static final String COMMON_TYPE_PROPERTY_ABSOLUTE_QUALIFIED_NAME = "absoluteQualifiedName";
	public static final String COMMON_TYPE_CONTAINER_PROPERTY_SIZE = "size";
	public static final String COMMON_RICH_TYPE_PROPERTY_VALUE = "value";
	public static final String TYPE_EPD_VEHICLE_PROPERTY_ENGINE = "Engine";
	public static final String TYPE_EPD_VEHICLE_PROPERTY_GENERALINFO = "GeneraleInfo";
	public static final String TYPE_EPD_VEHICLE_GENERAL_INFO_PROPERTY_ENGINETYPECHOICE = "EngineTypeChoice";
	public static final String TYPE_EPD_VEHICLE_GENERAL_INFO_PROPERTY_MANUFACTURER = "Manufacturer";
	public static final String TYPE_EPD_VEHICLE_GENERAL_INFO_PROPERTY_SERIALNUMBER = "SerialNumber";
	public static final String TYPE_EPD_VEHICLE_GENERAL_INFO_PROPERTY_VEHICLENAME = "VehicleName";
	public static final String TYPE_EPD_VEHICLE_GENERAL_INFO_PROPERTY_YEAR = "Year";
	public static final String TYPE_EPD_VEHICLE_ENGINE_PROPERTY_AUTOMATIC = "Automatic";
	public static final String TYPE_EPD_VEHICLE_ENGINE_PROPERTY_ENGINETYPE = "EngineType";

	public EcucTestReferenceWorkspaceDescriptor(String[] referenceProjectNames) {
		super(new HashSet<String>(Arrays.asList(referenceProjectNames)));
	}

	public Plugin getReferenceWorkspacePlugin() {
		return Activator.getPlugin();
	}

	public String getReferenceWorkspaceArchiveFileName() {
		return ECUC_TEST_REFERENCE_WORKSPACE_ARCHIVE_FILE_NAME;
	}

	@Override
	protected void initReferenceFileDescriptors() {
		addFileDescriptors(XPAND_AUTOSAR_40_PROJECT_NAME, new String[] { XPAND_AUTOSAR_40_AR_FILE_PATH_VEHICLE,
				XPAND_AUTOSAR_40_AR_FILE_PATH_CAR_CONFIGURATION }, Autosar40ReleaseDescriptor.INSTANCE);
	}

	@Override
	protected String[] getReferenceProjectsNames() {
		return new String[] { XPAND_AUTOSAR_40_PROJECT_NAME };
	}

	public String getName() {
		return REFERENCE_WORKSPACE_NAME;
	}

	public IPath getArchivePath() {
		return ARCHIVE_PATH;
	}

	public Bundle getSrcBundle() {
		return getBundle(EcucTestReferenceWorkspace.class);
	}
}
