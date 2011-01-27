package org.artop.ecuc.autosar40.typesystem.integration.tests;

import org.artop.ecl.emf.model.IModelDescriptor;
import org.artop.ecl.emf.model.ModelDescriptorRegistry;
import org.artop.ecl.emf.util.EcorePlatformUtil;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucMetaModel;
import org.artop.ecuc.testutils.integration.referenceworkspace.AbstractEcucIntegrationTestCase;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.Platform;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.xtend.typesystem.Type;

import autosar40.genericstructure.autosartoplevelstructure.AUTOSAR;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARPackage;

public class TypeSystemTypesTest extends AbstractEcucIntegrationTestCase {


	private static final String RICH_TYPE_EPD_VEHICLE = "EPD::Vehicle";
	private static final String RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_MANUFACTURER = "EPD::Vehicle::GeneralInfo::Manufacturer";

	public void testTypeGenerationtest()
	{
		IFile moduleDefFile = refWks.xPandAutosar40Project.getFile(refWks.XPAND_AUTOSAR_40_AR_FILE_PATH_VEHICLE);
		IModelDescriptor moduleDefModelDescriptor = ModelDescriptorRegistry.INSTANCE.getModel(moduleDefFile);
		assertNotNull(moduleDefModelDescriptor);
		
		EcucMetaModel ecucMetaModel = (EcucMetaModel) Platform.getAdapterManager().loadAdapter(moduleDefModelDescriptor, EcucMetaModel.class.getName());		
		assertNotNull(ecucMetaModel);
		//Check for expected types
		
		//MetaTypes
		assertNotNull("Type AR::ARObjectType is missing",ecucMetaModel.getTypeForName("AR::ARObjectType"));
		assertNotNull("Type AR::AUTOSARType is missing",ecucMetaModel.getTypeForName("AR::AUTOSARType"));
		assertNotNull("Type AR::ARPackageType is missing",ecucMetaModel.getTypeForName("AR::ARPackageType"));
		assertNotNull("Type AR::ReferenceDefType is missing",ecucMetaModel.getTypeForName("AR::ReferenceDefType"));
		assertNotNull("Type AR::ChoiceContainerDefType is missing",ecucMetaModel.getTypeForName("AR::ChoiceContainerDefType"));
		assertNotNull("Type AR::ParamConfContainerDefType is missing",ecucMetaModel.getTypeForName("AR::ParamConfContainerDefType"));
		assertNotNull("Type AR::ModuleDefType is missing",ecucMetaModel.getTypeForName("AR::ModuleDefType"));
		assertNotNull("Type AR::ContainerDefType is missing",ecucMetaModel.getTypeForName("AR::ContainerDefType"));
		assertNotNull("Type AR::ChoiceReferenceDefType is missing",ecucMetaModel.getTypeForName("AR::ChoiceReferenceDefType"));
		assertNotNull("Type AR::ConfigParameterType is missing",ecucMetaModel.getTypeForName("AR::ConfigParameterType"));
		assertNotNull("Type AR::ConfigReferenceType is missing",ecucMetaModel.getTypeForName("AR::ConfigReferenceType"));
        
		//From EPD package
		assertNotNull("Type EPD::Vehicle is missing",ecucMetaModel.getTypeForName(RICH_TYPE_EPD_VEHICLE));
		assertNotNull("Type EPD::Vehicle::GeneralInfo::Manufacturer is missing",ecucMetaModel.getTypeForName(RICH_TYPE_EPD_VEHICLE_GENERAL_INFO_MANUFACTURER));
		assertNotNull("Type EPD::Vehicle::GeneralInfo is missing",ecucMetaModel.getTypeForName("EPD::Vehicle::GeneralInfo"));
		assertNotNull("Type EPD::Vehicle::GeneralInfo::SerialNumber is missing",ecucMetaModel.getTypeForName("EPD::Vehicle::GeneralInfo::SerialNumber"));
		assertNotNull("Type EPD::Vehicle::GeneralInfo::Year is missing",ecucMetaModel.getTypeForName("EPD::Vehicle::GeneralInfo::Year"));
		assertNotNull("Type EPD::Vehicle::GeneralInfo::EngineTypeChoice_Diesel is missing",ecucMetaModel.getTypeForName("EPD::Vehicle::GeneralInfo::EngineTypeChoice_Diesel"));
		assertNotNull("Type EPD::Vehicle::GeneralInfo::EngineTypeChoice_Gasoline is missing",ecucMetaModel.getTypeForName("EPD::Vehicle::GeneralInfo::EngineTypeChoice_Gasoline"));
		assertNotNull("Type EPD::Vehicle::GeneralInfo::VehicleName is missing",ecucMetaModel.getTypeForName("EPD::Vehicle::GeneralInfo::VehicleName"));
		assertNotNull("Type EPD::Vehicle::Engine is missing",ecucMetaModel.getTypeForName("EPD::Vehicle::Engine"));
		assertNotNull("Type EPD::Vehicle::Engine::EngineType is missing",ecucMetaModel.getTypeForName("EPD::Vehicle::Engine::EngineType"));
		assertNotNull("Type EPD::Vehicle::Engine::Type is missing",ecucMetaModel.getTypeForName("EPD::Vehicle::Engine::Type"));
		assertNotNull("Type EPD::Vehicle::Engine::Automatic is missing",ecucMetaModel.getTypeForName("EPD::Vehicle::Engine::Automatic"));
		assertNotNull("Type EPD::Vehicle::Engine::Type::Gasoline is missing",ecucMetaModel.getTypeForName("EPD::Vehicle::Engine::Type::Gasoline"));
		assertNotNull("Type EPD::Vehicle::Engine::Type::Gasoline::SparkPlugVoltage is missing",ecucMetaModel.getTypeForName("EPD::Vehicle::Engine::Type::Gasoline::SparkPlugVoltage"));
		assertNotNull("Type EPD::Vehicle::Engine::Type::Gasoline::SparkPlugNumber is missing",ecucMetaModel.getTypeForName("EPD::Vehicle::Engine::Type::Gasoline::SparkPlugNumber"));
		assertNotNull("Type EPD::Vehicle::Engine::Type::Gasoline::SparkPlugModel is missing",ecucMetaModel.getTypeForName("EPD::Vehicle::Engine::Type::Gasoline::SparkPlugModel"));
		assertNotNull("Type EPD::Vehicle::Engine::Type::Diesel::DieselFilterModel is missing",ecucMetaModel.getTypeForName("EPD::Vehicle::Engine::Type::Diesel::DieselFilterModel"));
		assertNotNull("Type EPD::Vehicle::Engine::Type::Diesel is missing",ecucMetaModel.getTypeForName("EPD::Vehicle::Engine::Type::Diesel"));
		assertNotNull("Type EPD::Vehicle::Engine::Type::Diesel::MaxCouple is missing",ecucMetaModel.getTypeForName("EPD::Vehicle::Engine::Type::Diesel::MaxCouple"));
		
	}
	
	public void testTypeConfigurationTest()
	{
		IFile moduleDefFile = refWks.xPandAutosar40Project.getFile(refWks.XPAND_AUTOSAR_40_AR_FILE_PATH_VEHICLE);
		IFile moduleConfFile = refWks.xPandAutosar40Project.getFile(refWks.XPAND_AUTOSAR_40_AR_FILE_PATH_CAR_CONFIGURATION);
		IModelDescriptor moduleDefModelDescriptor = ModelDescriptorRegistry.INSTANCE.getModel(moduleDefFile);
		assertNotNull(moduleDefModelDescriptor);
		
		EcucMetaModel ecucMetaModel = (EcucMetaModel) Platform.getAdapterManager().loadAdapter(moduleDefModelDescriptor, EcucMetaModel.class.getName());		
		assertNotNull(ecucMetaModel);	
		
	Resource resource = EcorePlatformUtil.getResource(moduleConfFile);
	assertNotNull(resource);
		
EObject eObject = resource.getEObject("/EPC/Car/Engine/@parameterValues.0");
Type type = ecucMetaModel.getType(eObject);


	}
	
	
}

