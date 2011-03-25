package org.artop.ecuc.gautosar.initializers.tests;

import static org.artop.aal.gautosar.services.builder.GBuilders.arPackage;
import static org.artop.aal.gautosar.services.builder.GBuilders.autosar;
import static org.artop.aal.gautosar.services.builder.GBuilders.make;
import static org.artop.aal.gautosar.services.builder.GBuilders.resource;
import static org.artop.aal.gautosar.services.builder.GBuilders.resourceSet;
import static org.artop.aal.gautosar.services.builder.ecucparameterdef.GBooleanParamDefBuilder.boolParam;
import static org.artop.aal.gautosar.services.builder.ecucparameterdef.GChoiceContainerBuilder.choice;
import static org.artop.aal.gautosar.services.builder.ecucparameterdef.GEnumerationParamDefBuilder.enumParam;
import static org.artop.aal.gautosar.services.builder.ecucparameterdef.GFloatParamDefBuilder.floatParam;
import static org.artop.aal.gautosar.services.builder.ecucparameterdef.GFunctionNameDefBuilder.functionName;
import static org.artop.aal.gautosar.services.builder.ecucparameterdef.GIntegerParamDefBuilder.intParam;
import static org.artop.aal.gautosar.services.builder.ecucparameterdef.GLinkerSymbolDefBuilder.linkerSymbol;
import static org.artop.aal.gautosar.services.builder.ecucparameterdef.GModuleDefBuilder.moduleDef;
import static org.artop.aal.gautosar.services.builder.ecucparameterdef.GParamConfContainerDefBuilder.paramContainer;
import static org.artop.aal.gautosar.services.builder.ecucparameterdef.GStringParamDefBuilder.string;
import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.*;
import static org.junit.Assert.assertThat;
import gautosar.gecucdescription.GContainer;
import gautosar.gecucdescription.GModuleConfiguration;
import gautosar.gecucdescription.GParameterValue;
import gautosar.gecucparameterdef.GConfigParameter;
import gautosar.gecucparameterdef.GContainerDef;
import gautosar.gecucparameterdef.GEnumerationParamDef;
import gautosar.gecucparameterdef.GModuleDef;

import org.artop.aal.autosar3x.services.builder.internal.Autosar3xBuilderFragmentProvider;
import org.artop.aal.autosar40.services.builder.internal.Autosar40BuilderFragmentProvider;
import org.artop.aal.gautosar.services.IMetaModelServiceProvider;
import org.artop.aal.gautosar.services.StandaloneMetamodelServiceProvider;
import org.artop.aal.gautosar.services.builder.GResourceSetBuilder;
import org.artop.aal.gautosar.services.builder.ecucparameterdef.GBooleanParamDefBuilder;
import org.artop.aal.gautosar.services.builder.ecucparameterdef.GChoiceContainerBuilder;
import org.artop.aal.gautosar.services.builder.ecucparameterdef.GContainerBuilder;
import org.artop.aal.gautosar.services.builder.ecucparameterdef.GEnumerationParamDefBuilder;
import org.artop.aal.gautosar.services.builder.ecucparameterdef.GFloatParamDefBuilder;
import org.artop.aal.gautosar.services.builder.ecucparameterdef.GFunctionNameDefBuilder;
import org.artop.aal.gautosar.services.builder.ecucparameterdef.GIntegerParamDefBuilder;
import org.artop.aal.gautosar.services.builder.ecucparameterdef.GLinkerSymbolDefBuilder;
import org.artop.aal.gautosar.services.builder.ecucparameterdef.GModuleDefBuilder;
import org.artop.aal.gautosar.services.builder.ecucparameterdef.GParameterBuilder;
import org.artop.aal.gautosar.services.builder.ecucparameterdef.GStringParamDefBuilder;
import org.artop.aal.gautosar.services.builder.gst.GArPackageBuilder;
import org.artop.aal.gautosar.services.builder.internal.IGBuilderFragmentProvider;
import org.artop.aal.gautosar.services.util.EObjects;
import org.artop.ecuc.gautosar.initializers.IConfigurationGeneration;
import org.eclipse.emf.ecore.EObject;
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


@SuppressWarnings("restriction")
public abstract class AbstractInitializerTest {

	private final class ParameterValueMatcher extends
			TypeSafeMatcher<GParameterValue> {
		private final GConfigParameter parameterDef;

		private ParameterValueMatcher(GConfigParameter parameterDef) {
			this.parameterDef = parameterDef;
		}

		public void describeTo(Description description) {
			description.appendText("value of " + parameterDef.gGetShortName() + " ("  + value(parameterDef) + ")");
		}

		@Override
		public boolean matchesSafely(GParameterValue item) {
			if(!parameterDef.equals(item.gGetDefinition())){
				return false;
			}
			Object defaultValue = value(parameterDef);
			Object actualValue = value(item);
			if(!defaultValue.equals(actualValue)){
				System.out.println(defaultValue + " != " + actualValue);
				return false;
			}
			return true;
		}
	}


	private final class ContainerValueMatcher extends
			TypeSafeMatcher<GContainer> {
		private final GContainerDef containerDef;

		private ContainerValueMatcher(GContainerDef containerDef) {
			this.containerDef = containerDef;
		}

		public void describeTo(Description description) {
			description.appendText("value of " + containerDef.gGetShortName());
		}

		@Override
		public boolean matchesSafely(GContainer item) {
			if(!containerDef.gGetShortName().equals(item.gGetShortName())){
				return false;
			}
			return true;
		}
	}


	private final class ModuleConfigurationMatcher extends
			TypeSafeMatcher<GModuleConfiguration> {
		private final GModuleDef moduleDef;

		private ModuleConfigurationMatcher(GModuleDef moduleDef) {
			this.moduleDef = moduleDef;
		}

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
	}


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
		GContainerBuilder<?> paramContainer = paramContainer("MyContainer1");
		GContainerBuilder<?> choiceContainer = choice("MyContainer2")
													.lowerLimit(2)
													.upperLimit(2);
		
		GModuleDefBuilder source = moduleDef("MyModule").with(
				paramContainer, choiceContainer
		);
		
		GModuleConfiguration module = initialize(source);
		assertThat(subContainer(module, 0), is(valueOf(paramContainer)));
		assertThat(subContainer(module, 1), is(valueOf(choiceContainer)));
		assertThat(subContainer(module, 2), is(valueOf(choiceContainer)));
	}
	
	@Test
	public void shouldInstantiateParamsWithDefaultValues() throws Exception {
		GParameterBuilder[] params = {
				 boolParam("param1").value(true),
				 intParam("param2").value(42),
				 enumParam("param3").value("aaaa"),
				 floatParam("param4").value(1.1),
				 functionName("param5").value("myFunct"),
				 linkerSymbol("param6").value("bbbb"),
				 string("param7").value("cccc")
		};
				
		GModuleDefBuilder source = moduleDef("MyModule").with(
				paramContainer("MyContainer1").params(
					params
				)
		);
		
		GModuleConfiguration module = initialize(source);
		GContainer myContainer = subContainer(module, 0);
		
		assertThat(myContainer.gGetParameterValues().size(), is(params.length));
		for (int i = 0; i < params.length; i++) {
			assertThat(param(myContainer, i), is(valueOf(params[i])));
		}
		
	}

	@Test
	public void shouldInstantiateSubContainers() throws Exception {
		GContainerBuilder<?>[] subContainers = {
				choice("container1"),
				paramContainer("container2")
		};
				
		GModuleDefBuilder source = moduleDef("MyModule").with(
				paramContainer("MyContainer1").subContainer(
						subContainers
				)
		);
		
		GModuleConfiguration module = initialize(source);
		GContainer myContainer = subContainer(module, 0);
		
		assertThat(myContainer.gGetSubContainers().size(), is(subContainers.length));
		for (int i = 0; i < subContainers.length; i++) {
			assertThat(subContainer(myContainer, i), is(valueOf(subContainers[i])));
		}
	}

	private GContainer subContainer(GContainer myContainer, int i) {
		return myContainer.gGetSubContainers().get(i);
	}

	private Object value(EObject item) {
		Object value;
		try{
			value = EObjects.get(item, "value");
		}catch (IllegalArgumentException e) {
			value = EObjects.get(item, "defaultValue");
		}
		return String.valueOf(value);
	}

	private GParameterValue param(GContainer myContainer, int i) {
		return myContainer.gGetParameterValues().get(i);
	}

	private GContainer subContainer(GModuleConfiguration moduleConfiguration, int i) {
		return moduleConfiguration.gGetContainers().get(i);
	}

	private Matcher<GParameterValue> valueOf(GParameterBuilder paramBuilder) {
		return new ParameterValueMatcher(paramBuilder.get());
	}

	private Matcher<GContainer> valueOf(GContainerBuilder<?> paramContainer) {
		return new ContainerValueMatcher(paramContainer.get());
	}

	private Matcher<GModuleConfiguration> valueOf(final GModuleDefBuilder source) {
		return new ModuleConfigurationMatcher(source.get());
	}

	

}
