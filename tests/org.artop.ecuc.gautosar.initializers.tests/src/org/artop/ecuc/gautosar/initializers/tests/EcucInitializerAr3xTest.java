package org.artop.ecuc.gautosar.initializers.tests;

import org.artop.ecuc.autosar3x.initializers.GenerateModuleConfiguration;
import org.artop.ecuc.gautosar.initializers.IConfigurationGeneration;
import org.eclipse.core.runtime.Platform;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.Resource.Factory;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;
import org.junit.BeforeClass;

import autosar3x.util.Autosar3xPackage;
import autosar3x.util.Autosar3xReleaseDescriptor;
import autosar3x.util.Autosar3xResourceFactoryImpl;

public class EcucInitializerAr3xTest extends AbstractInitializerTest {

	@BeforeClass
	public static void setupOnce(){
		if(!Platform.isRunning()){
			Autosar3xPackage.eINSTANCE.getClass();
			Resource.Factory.Registry.INSTANCE.getContentTypeToFactoryMap().put(Autosar3xReleaseDescriptor.INSTANCE.getDefaultContentTypeId(), new Autosar3xResourceFactoryImpl());
		}
	}
	
	@Override
	protected IMetaModelDescriptor autosarRelease() {
		return Autosar3xReleaseDescriptor.INSTANCE;
	}

	@Override
	protected IConfigurationGeneration createFixture() {
		return new GenerateModuleConfiguration();
	}

	@Override
	protected Factory createResourceFactory() {
		return new Autosar3xResourceFactoryImpl();
	}

}
