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
package org.artop.ecuc.testutils.integration.referenceworkspace;

import org.artop.ecuc.testutils.integration.referenceworkspace.internal.Activator;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.sphinx.emf.util.WorkspaceEditingDomainUtil;
import org.eclipse.sphinx.testutils.integration.AbstractReferenceWorkspace;

import autosar40.util.Autosar40ReleaseDescriptor;

/**
 * 
 */
@SuppressWarnings("nls")
public class EcucTestReferenceWorkspace extends AbstractReferenceWorkspace {

	protected static final String ECUC_TEST_REFERENCE_WORKSPACE_ARCHIVE_FILE_NAME = "referenceWorkspace.zip";

	/* ----- AUTOSAR 4.0 XPAND Project ----- */
	public static final String XPAND_AUTOSAR_40_PROJECT_NAME = "Autosar40XpandProject";
	public static final String XPAND_AUTOSAR_40_AR_FILE_PATH_VEHICLE = "/bsw.platform/Vehicle.arxml";
	public static final String XPAND_AUTOSAR_40_AR_FILE_PATH_CAR_CONFIGURATION = "/bsw.config/Car_Configuration.arxml";
	/* ----- Projects ----- */
	public IProject xPandAutosar40Project;

	/* ----- EditingDomains ----- */
	public TransactionalEditingDomain editingDomain40;

	// Test Model Objects uri fragments
	public static final String URI_FRAGMENT_EPC_CAR = "/EPC/Car?type=EcucModuleConfigurationValues";//$NON-NLS-1$

	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO = "/EPC/Car/GeneralInfo?type=EcucContainerValue";//$NON-NLS-1$

	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REFERENCE_VALUES_0_FINITION_LEVEL = "/EPC/Car/GeneralInfo/@referenceValues.0?type=EcucReferenceValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REFERENCE_VALUES_1_CURRENT_OWNER = "/EPC/Car/GeneralInfo/@referenceValues.1?type=EcucReferenceValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REFERENCE_VALUES_2_FIRSTHAND = "/EPC/Car/GeneralInfo/@referenceValues.2?type=EcucReferenceValue";//$NON-NLS-1$

	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_PARAMETER_VALUES_0_VEHICLE_NAME = "/EPC/Car/GeneralInfo/@parameterValues.0?type=EcucTextualParamValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_PARAMETER_VALUES_1_SERIAL_NUMBER = "/EPC/Car/GeneralInfo/@parameterValues.1?type=EcucNumericalParamValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_PARAMETER_VALUES_2_MANUFACTURER = "/EPC/Car/GeneralInfo/@parameterValues.2?type=EcucTextualParamValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_PARAMETER_VALUES_3_YEAR = "/EPC/Car/GeneralInfo/@parameterValues.3?type=EcucNumericalParamValue";//$NON-NLS-1$

	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS = "/EPC/Car/GeneralInfo/Owners?type=EcucContainerValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FIRSTHAND = "/EPC/Car/GeneralInfo/Owners/FirstHand?type=EcucContainerValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FIRSTHAND_PARAMETER_VALUES_0_LASTNAME = "/EPC/Car/GeneralInfo/Owners/FirstHand/@parameterValues.0?type=EcucTextualParamValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_SECONDHAND = "/EPC/Car/GeneralInfo/Owners/SecondHand?type=EcucContainerValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_SECONDHAND_PARAMETER_VALUES_0_LASTNAME = "/EPC/Car/GeneralInfo/Owners/SecondHand/@parameterValues.0?type=EcucTextualParamValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_THIRDHAND = "/EPC/Car/GeneralInfo/Owners/ThirdHand?type=EcucContainerValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_THIRDHAND_PARAMETER_VALUES_0_FIRSTNAME = "/EPC/Car/GeneralInfo/Owners/ThirdHand/@parameterValues.0?type=EcucTextualParamValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_THIRDHAND_PARAMETER_VALUES_1_LASTNAME = "/EPC/Car/GeneralInfo/Owners/ThirdHand/@parameterValues.1?type=EcucTextualParamValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FOURTHHAND = "/EPC/Car/GeneralInfo/Owners/FourthHand?type=EcucContainerValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FOURTHHAND_PARAMETER_VALUES_0_FIRSTNAME = "/EPC/Car/GeneralInfo/Owners/FourthHand/@parameterValues.0?type=EcucTextualParamValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FOURTHHAND_PARAMETER_VALUES_1_LASTNAME = "/EPC/Car/GeneralInfo/Owners/FourthHand/@parameterValues.1?type=EcucTextualParamValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FIFTHAND = "/EPC/Car/GeneralInfo/Owners/FifthHand?type=EcucContainerValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FIFTHAND_PARAMETER_VALUES_0_FIRSTNAME = "/EPC/Car/GeneralInfo/Owners/FifthHand/@parameterValues.0?type=EcucTextualParamValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_OWNERS_FIFTHAND_PARAMETER_VALUES_1_LASTNAME = "/EPC/Car/GeneralInfo/Owners/FifthHand/@parameterValues.1?type=EcucTextualParamValue";//$NON-NLS-1$

	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REVISIONS = "/EPC/Car/GeneralInfo/Revisions?type=EcucContainerValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REVISIONS_PARAMETER_VALUES_0_DATE_20071215 = "/EPC/Car/GeneralInfo/Revisions/@parameterValues.0?type=EcucTextualParamValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REVISIONS_PARAMETER_VALUES_1_DATE_20080106 = "/EPC/Car/GeneralInfo/Revisions/@parameterValues.1?type=EcucTextualParamValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REVISIONS_PARAMETER_VALUES_2_DATE_20080605 = "/EPC/Car/GeneralInfo/Revisions/@parameterValues.2?type=EcucTextualParamValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REVISIONS_PARAMETER_VALUES_3_DATE_20090707 = "/EPC/Car/GeneralInfo/Revisions/@parameterValues.3?type=EcucTextualParamValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REVISIONS_PARAMETER_VALUES_4_DATE_20100918 = "/EPC/Car/GeneralInfo/Revisions/@parameterValues.4?type=EcucTextualParamValue";//$NON-NLS-1$

	public static final String URI_FRAGMENT_EPC_CAR_ENGINE = "/EPC/Car/Engine?type=EcucContainerValue";//$NON-NLS-1$

	public static final String URI_FRAGMENT_EPC_CAR_ENGINE_PARAMETER_VALUES_0_ENGINETYPE = "/EPC/Car/Engine/@parameterValues.0?type=EcucTextualParamValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_ENGINE_PARAMETER_VALUES_1_AUTOMATIC = "/EPC/Car/Engine/@parameterValues.1?type=EcucNumericalParamValue";//$NON-NLS-1$

	public static final String URI_FRAGMENT_EPC_CAR_ENGINE_TYPE = "/EPC/Car/Engine/Type?type=EcucContainerValue";//$NON-NLS-1$

	public static final String URI_FRAGMENT_EPC_CAR_ENGINE_TYPE_GASOLINE = "/EPC/Car/Engine/Type/Gasoline?type=EcucContainerValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_ENGINE_TYPE_GASOLINE_PARAMETER_VALUES_0_SPARK_PLUG_NUMBER = "/EPC/Car/Engine/Type/Gasoline/@parameterValues.0?type=EcucNumericalParamValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_ENGINE_TYPE_GASOLINE_PARAMETER_VALUES_1_SPARK_PLUG_VOLTAGE = "/EPC/Car/Engine/Type/Gasoline/@parameterValues.1?type=EcucNumericalParamValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_ENGINE_TYPE_GASOLINE_PARAMETER_VALUES_2_SPARK_PLUG_MODEL = "/EPC/Car/Engine/Type/Gasoline/@parameterValues.2?type=EcucTextualParamValue";//$NON-NLS-1$

	public static final String URI_FRAGMENT_EPC_CAR_OPTIONS = "/EPC/Car/Options?type=EcucContainerValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_OPTIONS_FINITION_LEVELS = "/EPC/Car/Options/FinitionLevels?type=EcucContainerValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_OPTIONS_FINITION_LEVELS_HIGH = "/EPC/Car/Options/FinitionLevels/High?type=EcucContainerValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_OPTIONS_FINITION_LEVELS_LOW = "/EPC/Car/Options/FinitionLevels/Low?type=EcucContainerValue";//$NON-NLS-1$

	// Type Qualified Names definitions
	public static final String RICH_TYPE_EPD_VEHICLE = "EPD::Vehicle";//$NON-NLS-1$
	public static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO = "EPD::Vehicle::GeneralInfo";//$NON-NLS-1$

	public static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_CURRENT_OWNER = "EPD::Vehicle::GeneralInfo::CurrentOwner";//$NON-NLS-1$
	public static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_FINITION_LEVEL = "EPD::Vehicle::GeneralInfo::FinitionLevel";//$NON-NLS-1$
	public static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_FIRSTHAND = "EPD::Vehicle::GeneralInfo::FirstHand";//$NON-NLS-1$

	public static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_VEHICLE_NAME = "EPD::Vehicle::GeneralInfo::VehicleName";//$NON-NLS-1$
	public static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_SERIAL_NUMBER = "EPD::Vehicle::GeneralInfo::SerialNumber";//$NON-NLS-1$
	public static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_MANUFACTURER = "EPD::Vehicle::GeneralInfo::Manufacturer";//$NON-NLS-1$
	public static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_YEAR = "EPD::Vehicle::GeneralInfo::Year";//$NON-NLS-1$

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

	public static final String RICH_TYPE_EPD_VEHICLE_ENGINE = "EPD::Vehicle::Engine";//$NON-NLS-1$
	public static final String RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE = "EPD::Vehicle::Engine::Type";//$NON-NLS-1$
	public static final String RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE_SPARK_PLUG_MODEL = "EPD::Vehicle::Engine::Type::Gasoline::SparkPlugModel";//$NON-NLS-1$
	public static final String RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE_SPARK_PLUG_VOLTAGE = "EPD::Vehicle::Engine::Type::Gasoline::SparkPlugVoltage";//$NON-NLS-1$
	public static final String RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE_SPARK_PLUG_NUMBER = "EPD::Vehicle::Engine::Type::Gasoline::SparkPlugNumber";//$NON-NLS-1$
	public static final String RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_DIESEL_MAX_COUPLE = "EPD::Vehicle::Engine::Type::Diesel::MaxCouple";//$NON-NLS-1$
	public static final String RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_GASOLINE = "EPD::Vehicle::Engine::Type::Gasoline";//$NON-NLS-1$
	public static final String RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_DIESEL = "EPD::Vehicle::Engine::Type::Diesel";//$NON-NLS-1$
	public static final String RICH_TYPE_EPD_VEHICLE_ENGINE_TYPE_DIESEL_DIESEL_FILTER_MODEL = "EPD::Vehicle::Engine::Type::Diesel::DieselFilterModel";//$NON-NLS-1$
	public static final String RICH_TYPE_EPD_VEHICLE_ENGINE_ENGINETYPE = "EPD::Vehicle::Engine::EngineType";//$NON-NLS-1$
	public static final String RICH_TYPE_EPD_VEHICLE_ENGINE_AUTOMATIC = "EPD::Vehicle::Engine::Automatic";//$NON-NLS-1$

	public static final String RICH_TYPE_EPD_ATTRIBUTES = "EPD::Attributes";//$NON-NLS-1$
	public static final String RICH_TYPE_EPD_ATTRIBUTES_AVAILABLECOLORS = "EPD::Attributes::AvailableColors";//$NON-NLS-1$
	public static final String RICH_TYPE_EPD_ATTRIBUTES_AVAILABLECOLORS_CHARCOAL = "EPD::Attributes::AvailableColors::CharCoal";//$NON-NLS-1$
	public static final String RICH_TYPE_EPD_ATTRIBUTES_AVAILABLECOLORS_CORNFLOWERBLUE = "EPD::Attributes::AvailableColors::CornflowerBlue";//$NON-NLS-1$
	public static final String RICH_TYPE_EPD_ATTRIBUTES_AVAILABLECOLORS_GOLD = "EPD::Attributes::AvailableColors::Gold";//$NON-NLS-1$
	public static final String RICH_TYPE_EPD_ATTRIBUTES_AVAILABLECOLORS_HOTPINK = "EPD::Attributes::AvailableColors::HotPink";//$NON-NLS-1$
	public static final String RICH_TYPE_EPD_ATTRIBUTES_AVAILABLECOLORS_NAVYBLUE = "EPD::Attributes::AvailableColors::NavyBlue";//$NON-NLS-1$
	public static final String RICH_TYPE_EPD_ATTRIBUTES_AVAILABLECOLORS_PAPAYAWHIP = "EPD::Attributes::AvailableColors::PapayaWhip";//$NON-NLS-1$
	public static final String RICH_TYPE_EPD_ATTRIBUTES_AVAILABLECOLORS_SALSARED = "EPD::Attributes::AvailableColors::SalsaRed";//$NON-NLS-1$
	public static final String RICH_TYPE_EPD_ATTRIBUTES_AVAILABLECOLORS_SILVER = "EPD::Attributes::AvailableColors::silver";//$NON-NLS-1$
	// PropertyNamesDefiniton
	public static final String COMMON_TYPE_PROPERTY_SHORTNAME = "shortName";//$NON-NLS-1$
	public static final String COMMON_TYPE_PROPERTY_ABSOLUTE_QUALIFIED_NAME = "absoluteQualifiedName";//$NON-NLS-1$
	public static final String COMMON_TYPE_CONTAINER_PROPERTY_SIZE = "size";//$NON-NLS-1$
	public static final String COMMON_RICH_TYPE_PROPERTY_VALUE = "value";//$NON-NLS-1$
	public static final String TYPE_EPD_VEHICLE_PROPERTY_ENGINE = "Engine";//$NON-NLS-1$
	public static final String TYPE_EPD_VEHICLE_PROPERTY_GENERALINFO = "GeneraleInfo";//$NON-NLS-1$
	public static final String TYPE_EPD_VEHICLE_GENERAL_INFO_PROPERTY_ENGINETYPECHOICE = "EngineTypeChoice";//$NON-NLS-1$
	public static final String TYPE_EPD_VEHICLE_GENERAL_INFO_PROPERTY_MANUFACTURER = "Manufacturer";//$NON-NLS-1$
	public static final String TYPE_EPD_VEHICLE_GENERAL_INFO_PROPERTY_SERIALNUMBER = "SerialNumber";//$NON-NLS-1$
	public static final String TYPE_EPD_VEHICLE_GENERAL_INFO_PROPERTY_VEHICLENAME = "VehicleName";//$NON-NLS-1$
	public static final String TYPE_EPD_VEHICLE_GENERAL_INFO_PROPERTY_YEAR = "Year";//$NON-NLS-1$
	public static final String TYPE_EPD_VEHICLE_ENGINE_PROPERTY_AUTOMATIC = "Automatic";//$NON-NLS-1$
	public static final String TYPE_EPD_VEHICLE_ENGINE_PROPERTY_ENGINETYPE = "EngineType";//$NON-NLS-1$

	public EcucTestReferenceWorkspace(String[] referenceProjectNames) {
		super(referenceProjectNames);
	}

	public Plugin getReferenceWorkspacePlugin() {
		return Activator.getPlugin();
	}

	public String getReferenceWorkspaceArchiveFileName() {
		return ECUC_TEST_REFERENCE_WORKSPACE_ARCHIVE_FILE_NAME;
	}

	@Override
	public void initContentAccessors() {
		initReferenceProjectAccessors();
		initReferenceEditingDomainAccessors();
	}

	protected void initReferenceProjectAccessors() {
		xPandAutosar40Project = getReferenceProject(XPAND_AUTOSAR_40_PROJECT_NAME);
	}

	protected void initReferenceEditingDomainAccessors() {
		editingDomain40 = WorkspaceEditingDomainUtil.getEditingDomain(ResourcesPlugin.getWorkspace().getRoot(), Autosar40ReleaseDescriptor.INSTANCE);
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
}