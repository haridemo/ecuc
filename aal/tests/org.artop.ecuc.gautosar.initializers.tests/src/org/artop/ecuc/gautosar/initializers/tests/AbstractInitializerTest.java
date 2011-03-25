package org.artop.ecuc.gautosar.initializers.tests;

import static org.artop.aal.gautosar.services.builder.GBuilders.arPackage;
import static org.artop.aal.gautosar.services.builder.GBuilders.autosar;
import static org.artop.aal.gautosar.services.builder.GBuilders.make;
import static org.artop.aal.gautosar.services.builder.GBuilders.resource;
import static org.artop.aal.gautosar.services.builder.GBuilders.resourceSet;
import static org.artop.aal.gautosar.services.builder.ecucparameterdef.GModuleDefBuilder.moduleDef;
import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;
import gautosar.gecucdescription.GModuleConfiguration;
import gautosar.gecucparameterdef.GModuleDef;

import org.artop.aal.autosar3x.services.builder.internal.Autosar3xBuilderFragmentProvider;
import org.artop.aal.autosar40.services.builder.internal.Autosar40BuilderFragmentProvider;
import org.artop.aal.gautosar.services.IMetaModelServiceProvider;
import org.artop.aal.gautosar.services.StandaloneMetamodelServiceProvider;
import org.artop.aal.gautosar.services.builder.GResourceSetBuilder;
import org.artop.aal.gautosar.services.builder.ecucparameterdef.GModuleDefBuilder;
import org.artop.aal.gautosar.services.builder.gst.GArPackageBuilder;
import org.artop.aal.gautosar.services.builder.internal.IGBuilderFragmentProvider;
import org.artop.ecuc.gautosar.initializers.IConfigurationGeneration;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;
import org.hamcrest.Description;
import org.hamcrest.Matcher;
import org.junit.Before;
import org.junit.Test;
import org.junit.internal.matchers.TypeSafeMatcher;

import autosar3x.util.Autosar3xReleaseDescriptor;
import autosar40.util.Autosar40ReleaseDescriptor;


public abstract class AbstractInitializerTest {

	private IConfigurationGeneration fixture;

	@Before
	public void setUp() throws Exception {
		fixture = createFixture();
	}

	protected GModuleConfiguration initialize(GModuleDefBuilder source) {

		GArPackageBuilder sourcePackage = arPackage("sourcePackage").with(source);
		GArPackageBuilder targetPackage = arPackage("targetPackage");

		GResourceSetBuilder resourceSet = resourceSet(
												resource("Source.arxml").content(
													autosar(sourcePackage)),
												resource("Target.arxml").content(
													autosar(targetPackage)));

		make(autosarRelease()).with(standaloneServiceProvider()).from(resourceSet);

		// FIXME remove editing domain
		attachEditingDomain(resourceSet);
		
		return fixture.generateECUConfiguration(source.get(), targetPackage.get());
	}

	private IMetaModelServiceProvider standaloneServiceProvider() {
		StandaloneMetamodelServiceProvider result = new StandaloneMetamodelServiceProvider();
		result.register(Autosar3xReleaseDescriptor.INSTANCE, IGBuilderFragmentProvider.class, new Autosar3xBuilderFragmentProvider());
		result.register(Autosar40ReleaseDescriptor.INSTANCE, IGBuilderFragmentProvider.class, new Autosar40BuilderFragmentProvider());
		return result;
	}

	private void attachEditingDomain(GResourceSetBuilder resourceSet) {
		TransactionalEditingDomain.Factory.INSTANCE.createEditingDomain(resourceSet.get());
	}

	protected abstract IMetaModelDescriptor autosarRelease();

	protected abstract IConfigurationGeneration createFixture();
	
	protected abstract Resource.Factory createResourceFactory();

	@Test
	public void shouldInstantiateModuleDef() throws Exception {
		GModuleDefBuilder source = moduleDef("MyModule");
		assertThat(initialize(source), is(valueOf(source)));
	}
	
	@Test
	public void shouldInstantiateContainerDef() throws Exception {
		GModuleDefBuilder source = moduleDef("MyModule");
		assertThat(initialize(source), is(valueOf(source)));
	}

	@SuppressWarnings("restriction")
	private Matcher<GModuleConfiguration> valueOf(final GModuleDefBuilder source) {
		final GModuleDef moduleDef = source.get();
		return new TypeSafeMatcher<GModuleConfiguration>() {

			public void describeTo(Description description) {
				description.appendText("value of " + moduleDef.gGetShortName());
			}

			@Override
			public boolean matchesSafely(GModuleConfiguration moduleConfiguration) {
				if(!moduleDef.equals(moduleConfiguration.gGetDefinition())){
					return false;
				}
				if(!moduleDef.gGetShortName().equals(moduleConfiguration.gGetShortName())){
					return false;
				}
				return true;
			}
		};
	}

	

}
