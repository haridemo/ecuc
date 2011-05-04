package org.artop.ecuc.autosar40.initializers.tests;

import org.artop.aal.autosar40.services.builder.internal.Autosar40BuilderFragmentProvider;
import org.artop.aal.gautosar.services.IMetaModelServiceProvider;
import org.artop.aal.gautosar.services.StandaloneMetamodelServiceProvider;
import org.artop.aal.gautosar.services.builder.internal.IGBuilderFragmentProvider;
import org.artop.ecuc.autosar40.initializers.GenerateModuleConfiguration;
import org.artop.ecuc.gautosar.initializers.IConfigurationGeneration;
import org.artop.ecuc.gautosar.initializers.tests.AbstractInitializerTest;
import org.eclipse.core.runtime.Platform;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.Resource.Factory;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;
import org.junit.BeforeClass;

import autosar40.util.Autosar40Package;
import autosar40.util.Autosar40ReleaseDescriptor;
import autosar40.util.Autosar40ResourceFactoryImpl;

public class EcucInitializerAr40Test extends AbstractInitializerTest {

	@BeforeClass
	public static void setupOnce(){
		if(!Platform.isRunning()){
			Autosar40Package.eINSTANCE.getClass();
			Resource.Factory.Registry.INSTANCE.getContentTypeToFactoryMap().put(Autosar40ReleaseDescriptor.INSTANCE.getDefaultContentTypeId(), new Autosar40ResourceFactoryImpl());
		}
	}
	
	@Override
	protected IMetaModelDescriptor autosarRelease() {
		return Autosar40ReleaseDescriptor.INSTANCE;
	}

	@Override
	protected IConfigurationGeneration createFixture() {
		return new GenerateModuleConfiguration();
	}

	@Override
	protected Factory createResourceFactory() {
		return new Autosar40ResourceFactoryImpl();
	}
	
	@Override
	protected IMetaModelServiceProvider standaloneServiceProvider() {
		StandaloneMetamodelServiceProvider result = new StandaloneMetamodelServiceProvider();
		result.register(Autosar40ReleaseDescriptor.INSTANCE, IGBuilderFragmentProvider.class, new Autosar40BuilderFragmentProvider());
		return result;
	}
}
