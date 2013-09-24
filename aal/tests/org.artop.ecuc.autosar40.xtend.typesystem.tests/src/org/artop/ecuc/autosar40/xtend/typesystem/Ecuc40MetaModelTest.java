package org.artop.ecuc.autosar40.xtend.typesystem;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertTrue;
import gautosar.gecucdescription.GModuleConfiguration;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Collections;
import java.util.List;

import org.artop.ecuc.autosar40.xtend.typesystem.metatypes.concrete.EcucDefinitionCollectionType;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucContext;
import org.artop.ecuc.gautosar.xtend.typesystem.EcucMetaModel;
import org.artop.ecuc.gautosar.xtend.typesystem.basetypes.MultiplicityAwareListType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ARObjectType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ChoiceContainerDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ChoiceReferenceDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ConfigParameterType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ConfigReferenceType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ContainerDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ForeignReferenceDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.InstanceReferenceDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ModuleDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ParamConfContainerDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.ReferenceDefType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.concrete.ARPackageType;
import org.artop.ecuc.gautosar.xtend.typesystem.metatypes.concrete.AUTOSARType;
import org.artop.ecuc.gautosar.xtend.typesystem.richtypes.RichIntegerParamDefType;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.xmi.impl.XMIResourceFactoryImpl;
import org.eclipse.sphinx.emf.model.IModelDescriptor;
import org.eclipse.xtend.typesystem.Type;
import org.junit.BeforeClass;
import org.junit.Test;

import autosar40.ecucdescription.EcucNumericalParamValue;
import autosar40.ecucdescription.EcucdescriptionFactory;
import autosar40.ecucparameterdef.EcucIntegerParamDef;
import autosar40.ecucparameterdef.EcucModuleDef;
import autosar40.ecucparameterdef.EcucParamConfContainerDef;
import autosar40.ecucparameterdef.EcucParameterDef;
import autosar40.ecucparameterdef.EcucparameterdefFactory;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ArpackageFactory;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ArpackagePackage;

/**
 * Unit test for class {@link Ecuc40MetaModel}.
 * 
 * @author Karsten Thoms (karsten.thoms@itemis.de)
 */
public class Ecuc40MetaModelTest {
	private EcucContext context = new EcucContext();
	private Ecuc40MetaModel mm = new Ecuc40MetaModel(context);

	@BeforeClass
	public static void init () {
		// Load ARPackage before test execution, since loading takes a while on first access
		ArpackagePackage einstance = ArpackagePackage.eINSTANCE;
	}
	
	@Test
	public void test_getKnownTypes () {
		assertEquals(15, mm.getKnownTypes().size());
	}
	
	@Test
	public void test_getTypeForName () {
		// EcucMetaModel meta types
		checkType(mm.getTypeForName("ECUC::ARObject"), ARObjectType.class);
		checkType(mm.getTypeForName("ECUC::ConfigReference"), ConfigReferenceType.class);
		checkType(mm.getTypeForName("ECUC::ContainerDef"), ContainerDefType.class);
		checkType(mm.getTypeForName("ECUC::InstanceReferenceDef"), InstanceReferenceDefType.class);
		checkType(mm.getTypeForName("ECUC::ARPackage"), ARPackageType.class);
		checkType(mm.getTypeForName("ECUC::ConfigParameter"), ConfigParameterType.class);
		checkType(mm.getTypeForName("ECUC::ReferenceDef"), ReferenceDefType.class);
		checkType(mm.getTypeForName("ECUC::ParamConfContainerDef"), ParamConfContainerDefType.class);
		checkType(mm.getTypeForName("ECUC::ChoiceContainerDef"), ChoiceContainerDefType.class);
		checkType(mm.getTypeForName("ECUC::ChoiceReferenceDef"), ChoiceReferenceDefType.class);
		checkType(mm.getTypeForName("ECUC::ForeignReferenceDef"), ForeignReferenceDefType.class);
		checkType(mm.getTypeForName("ECUC::ModuleDef"), ModuleDefType.class);
		checkType(mm.getTypeForName("ECUC::AUTOSAR"), AUTOSARType.class);
		// EcucMetaModel types
		checkType(mm.getTypeForName("MultiplicityAwareList"), MultiplicityAwareListType.class);
		// Ecuc40MetaModel meta types
		checkType(mm.getTypeForName("ECUC::EcucDefinitionCollection"), EcucDefinitionCollectionType.class);
	}
	
	private void checkType (Type t, Class<? extends Type> expectedType) {
		assertNotNull(t);
		assertTrue(expectedType.isAssignableFrom(t.getClass()));
	}
	
	/**
	 * Test method {@link EcucMetaModel#getType(Object)} with objects for which
	 * EcucMetaModel does not handle types. It is expected that the typesystem
	 * returns <code>null</code>.
	 */
	@Test
	public void test_getType_expectNull() {
		assertNull(mm.getType(null));
		assertNull(mm.getType("foo"));
	}
	

	@Test
	public void test_getType_forMetaType () {
		assertTrue(mm.getType(ArpackageFactory.eINSTANCE.createARPackage()) instanceof ARPackageType);
		// ModuleDefType is the only meta type which has an isInstance check
		GModuleConfiguration moduleConfig = EcucdescriptionFactory.eINSTANCE.createEcucModuleConfigurationValues();
		Type moduleConfigType = mm.getType(moduleConfig);
		assertNotNull(moduleConfigType);
		assertTrue(moduleConfigType.isInstance(moduleConfig));
	}

	/**
	 * Create a rich type for an Integer Param Def and access the type for a Numerical Param Value of that type
	 */
	@Test
	public void test_getType_forRichType () {
		EcucModuleDef moduleDef = createEcucModuleDef();
		
		EcucIntegerParamDef paramDef = (EcucIntegerParamDef) createEcucIntegerParamDefs(moduleDef, 1).get(0);

		// Create numerical type
		EcucNumericalParamValue paramValue = EcucdescriptionFactory.eINSTANCE.createEcucNumericalParamValue();
		paramValue.setDefinition(paramDef);
		
		Type type = mm.getType(paramValue);
		checkType(type, RichIntegerParamDefType.class);
	}
	
	/**
	 * Due to Bug#1810 accessing the typesystem with unhandled types (e.g. Primitives)
	 * does not perform, since first all registered types are queried. The performance degrages with a 
	 * larger number of handled types.
	 */
	@Test
	public void test_getType_performanceForUnhandledType () {
		EcucModuleDef moduleDef = createEcucModuleDef();
		
		// create large number of parameter definitions
		createEcucIntegerParamDefs(moduleDef, 10000);
		
		// get type for string
		for (int i=0; i<1000; i++) {
			assertNull(mm.getType("foo"));
		}
	}

	/**
	 * 
	 */
	@Test
	public void test_getType_performanceForHandledType () {
		EcucModuleDef moduleDef = createEcucModuleDef();
		
		// create large number of parameter definitions
		List<EcucParameterDef> integerParamDefs = createEcucIntegerParamDefs(moduleDef, 10000);
		// Create numerical type
		EcucParameterDef paramDef = integerParamDefs.get(5000);
		// get type for string
		for (int i=0; i<1000; i++) {
			EcucNumericalParamValue paramValue = EcucdescriptionFactory.eINSTANCE.createEcucNumericalParamValue();
			paramValue.setDefinition(paramDef);
			assertNotNull(mm.getType(paramValue));
		}
	}
	
	// ----------------------------------------------------------------------------------------------------------------
	// Helper methods
	// ----------------------------------------------------------------------------------------------------------------

	/**
	 * Create a EcucModuleDef in a dummy resource and register a mocked {@link IModelDescriptor} in the {@link EcucContext}
	 */
	private EcucModuleDef createEcucModuleDef () {
		// ModuleDef must be contained in a resource
		final Resource resource = new XMIResourceFactoryImpl().createResource(URI.createURI("dummy:/Foo.xmi"));
		
		EcucModuleDef moduleDef = EcucparameterdefFactory.eINSTANCE.createEcucModuleDef();
		moduleDef.setShortName("FooModule");
		resource.getContents().add(moduleDef);
		
		// Mock the ModelDescriptor
		IModelDescriptor moduleDefModelDescriptor = (IModelDescriptor) Proxy.newProxyInstance(getClass().getClassLoader(), new Class[]{IModelDescriptor.class}, new InvocationHandler() {
			@Override
			public Object invoke(Object proxy, Method method, Object[] args)
					throws Throwable {
				if (method.getName().equals("getLoadedResources")) {
					return Collections.singletonList(resource);
				}
				return null;
			}
		});
		context.setModuleDefModelDescriptor(moduleDefModelDescriptor);
		return moduleDef;
	}
	
	/**
	 * Create a number of {@link EcucIntegerParamDef}s within a module.
	 * @param moduleDef The module
	 * @param count Number of
	 * @return
	 */
	private List<EcucParameterDef> createEcucIntegerParamDefs (EcucModuleDef moduleDef, int count) {
		EcucParamConfContainerDef containerDef = null;
		if (moduleDef.getContainers().isEmpty()) {
			containerDef = EcucparameterdefFactory.eINSTANCE.createEcucParamConfContainerDef(); 
			containerDef.setShortName("FooParameterDefinitions");
			moduleDef.getContainers().add(containerDef);
		}
		
		for (int i=0; i<count; i++) {
			EcucIntegerParamDef paramDef = EcucparameterdefFactory.eINSTANCE.createEcucIntegerParamDef();
			paramDef.setShortName("Param_"+(i+1));
			containerDef.getParameters().add(paramDef);
		}
		return containerDef.getParameters();
	}
	
}
