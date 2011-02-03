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

import org.artop.ecl.emf.util.WorkspaceEditingDomainUtil;
import org.artop.ecl.testutils.integration.AbstractReferenceWorkspace;
import org.artop.ecuc.testutils.integration.referenceworkspace.internal.Activator;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.emf.transaction.TransactionalEditingDomain;

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
	public static final String URI_FRAGMENT_EPC_CAR_GENERALINFO = "/EPC/Car/GeneralInfo?type=EcucContainerValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_REFERENCE_VALUES_0_ENGINE_TYPE_CHOICE_GASOLINE = "/EPC/Car/GeneralInfo/@referenceValues.0?type=EcucReferenceValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_PARAMETER_VALUES_0_VEHICLE_NAME = "/EPC/Car/GeneralInfo/@parameterValues.0?type=EcucTextualParamValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_PARAMETER_VALUES_1_SERIAL_NUMBER = "/EPC/Car/GeneralInfo/@parameterValues.1?type=EcucNumericalParamValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_PARAMETER_VALUES_2_MANUFACTURER = "/EPC/Car/GeneralInfo/@parameterValues.2?type=EcucTextualParamValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_GENERAL_INFO_PARAMETER_VALUES_3_YEAR = "/EPC/Car/GeneralInfo/@parameterValues.3?type=EcucNumericalParamValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_ENGINE = "/EPC/Car/Engine?type=EcucContainerValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_ENGINE_TYPE = "/EPC/Car/Engine/Type?type=EcucContainerValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_ENGINE_TYPE_GASOLINE_PARAMETER_VALUES_2_SPARK_PLUG_MODEL = "/EPC/Car/Engine/Type/Gasoline/@parameterValues.2?type=EcucTextualParamValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_ENGINE_TYPE_GASOLINE_PARAMETER_VALUES_1_SPARK_PLUG_VOLTAGE = "/EPC/Car/Engine/Type/Gasoline/@parameterValues.1?type=EcucNumericalParamValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_ENGINE_TYPE_GASOLINE_PARAMETER_VALUES_0_SPARK_PLUG_NUMBER = "/EPC/Car/Engine/Type/Gasoline/@parameterValues.0?type=EcucNumericalParamValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_ENGINE_TYPE_GASOLINE = "/EPC/Car/Engine/Type/Gasoline?type=EcucContainerValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_ENGINE_PARAMETER_VALUES_0_ENGINETYPE = "/EPC/Car/Engine/@parameterValues.0?type=EcucTextualParamValue";//$NON-NLS-1$
	public static final String URI_FRAGMENT_EPC_CAR_ENGINE_PARAMETER_VALUES_1_AUTOMATIC = "/EPC/Car/Engine/@parameterValues.1?type=EcucNumericalParamValue";//$NON-NLS-1$

	// Type Qualified Names definitions
	public static final String METATYPE_AR_CONFIG_REFERENCE_TYPE = "AR::ConfigReferenceType";//$NON-NLS-1$
	public static final String METATYPE_AR_CONFIG_PARAMETER_TYPE = "AR::ConfigParameterType";//$NON-NLS-1$
	public static final String METATYPE_AR_CHOICE_REFERENCE_DEF_TYPE = "AR::ChoiceReferenceDefType";//$NON-NLS-1$
	public static final String METATYPE_AR_CONTAINER_DEF_TYPE = "AR::ContainerDefType";//$NON-NLS-1$
	public static final String METATYPE_AR_MODULE_DEF_TYPE = "AR::ModuleDefType";//$NON-NLS-1$
	public static final String METATYPE_AR_PARAM_CONF_CONTAINER_DEF_TYPE = "AR::ParamConfContainerDefType";//$NON-NLS-1$
	public static final String METATYPE_AR_CHOICE_CONTAINER_DEF_TYPE = "AR::ChoiceContainerDefType";//$NON-NLS-1$
	public static final String METATYPE_AR_REFERENCE_DEF_TYPE = "AR::ReferenceDefType";//$NON-NLS-1$
	public static final String METATYPE_AR_AUTOSAR_TYPE = "AR::AUTOSARType";//$NON-NLS-1$
	public static final String METATYPE_AR_AR_PACKAGE_TYPE = "AR::ARPackageType";//$NON-NLS-1$
	public static final String METATYPE_AR_AR_OBJECT_TYPE = "AR::ARObjectType";//$NON-NLS-1$

	public static final String RICH_TYPE_EPD_VEHICLE = "EPD::Vehicle";//$NON-NLS-1$
	public static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO = "EPD::Vehicle::GeneralInfo";//$NON-NLS-1$
	public static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_ENGINE_TYPE_CHOICE_GASOLINE = "EPD::Vehicle::GeneralInfo::EngineTypeChoice_Gasoline";//$NON-NLS-1$
	public static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_ENGINE_TYPE_CHOICE_DIESEL = "EPD::Vehicle::GeneralInfo::EngineTypeChoice_Diesel";//$NON-NLS-1$
	public static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_VEHICLE_NAME = "EPD::Vehicle::GeneralInfo::VehicleName";//$NON-NLS-1$
	public static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_SERIAL_NUMBER = "EPD::Vehicle::GeneralInfo::SerialNumber";//$NON-NLS-1$
	public static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_MANUFACTURER = "EPD::Vehicle::GeneralInfo::Manufacturer";//$NON-NLS-1$
	public static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_YEAR = "EPD::Vehicle::GeneralInfo::Year";//$NON-NLS-1$
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