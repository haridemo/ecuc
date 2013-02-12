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
import static org.artop.aal.gautosar.services.builder.ecucparameterdef.GStringParamDefBuilder.stringParam;
import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;
import gautosar.gecucdescription.GContainer;
import gautosar.gecucdescription.GModuleConfiguration;
import gautosar.gecucdescription.GParameterValue;
import gautosar.gecucparameterdef.GConfigParameter;
import gautosar.gecucparameterdef.GContainerDef;
import gautosar.gecucparameterdef.GModuleDef;
import junit.framework.Assert;

import org.artop.aal.gautosar.services.IMetaModelServiceProvider;
import org.artop.aal.gautosar.services.builder.GResourceSetBuilder;
import org.artop.aal.gautosar.services.builder.ecucparameterdef.GContainerBuilder;
import org.artop.aal.gautosar.services.builder.ecucparameterdef.GModuleDefBuilder;
import org.artop.aal.gautosar.services.builder.ecucparameterdef.GParameterBuilder;
import org.artop.aal.gautosar.services.builder.gst.GArPackageBuilder;
import org.artop.aal.gautosar.services.util.EObjects;
import org.artop.ecuc.gautosar.initializers.IConfigurationGeneration;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;
import org.hamcrest.Description;
import org.hamcrest.Matcher;
import org.junit.internal.matchers.TypeSafeMatcher;

@SuppressWarnings("restriction")
public abstract class AbstractInitializerTest {

	private final class ParameterValueMatcher extends TypeSafeMatcher<GParameterValue> {
		private final GConfigParameter parameterDef;

		private ParameterValueMatcher(GConfigParameter parameterDef) {
			this.parameterDef = parameterDef;
		}

		public void describeTo(Description description) {
			description.appendText("value of " + parameterDef.gGetShortName() //$NON-NLS-1$
					+ " (" + value(parameterDef) + ")"); //$NON-NLS-1$//$NON-NLS-2$
		}

		@Override
		public boolean matchesSafely(GParameterValue item) {
			if (!parameterDef.equals(item.gGetDefinition())) {
				return false;
			}
			Object defaultValue = value(parameterDef);
			Object actualValue = value(item);
			if (!defaultValue.equals(actualValue)) {
				return false;
			}
			return true;
		}
	}

	private final class ContainerValueMatcher extends TypeSafeMatcher<GContainer> {
		private final GContainerDef containerDef;

		private ContainerValueMatcher(GContainerDef containerDef) {
			this.containerDef = containerDef;
		}

		public void describeTo(Description description) {
			description.appendText("value of " + containerDef.gGetShortName()); //$NON-NLS-1$
		}

		@Override
		public boolean matchesSafely(GContainer item) {
			if (!containerDef.gGetShortName().equals(item.gGetShortName())) {
				return false;
			}
			return true;
		}
	}

	private final class ModuleConfigurationMatcher extends TypeSafeMatcher<GModuleConfiguration> {
		private final GModuleDef moduleDef;

		private ModuleConfigurationMatcher(GModuleDef moduleDef) {
			this.moduleDef = moduleDef;
		}

		public void describeTo(Description description) {
			description.appendText("value of " + moduleDef.gGetShortName()); //$NON-NLS-1$
		}

		@Override
		public boolean matchesSafely(GModuleConfiguration moduleConfiguration) {
			if (!moduleDef.equals(moduleConfiguration.gGetDefinition())) {
				return false;
			}
			if (!moduleDef.gGetShortName().equals(moduleConfiguration.gGetShortName())) {
				return false;
			}
			return true;
		}
	}

	private IConfigurationGeneration fixture;

	public void doSetUp() throws Exception {
		fixture = createFixture();
	}

	protected GModuleConfiguration initialize(GModuleDefBuilder source) {
		GArPackageBuilder sourcePackage = arPackage("sourcePackage").with( //$NON-NLS-1$
				source);
		GArPackageBuilder targetPackage = arPackage("targetPackage"); //$NON-NLS-1$

		GResourceSetBuilder resourceSet = resourceSet(resource("Source.arxml") //$NON-NLS-1$
				.content(autosar(sourcePackage)), resource("Target.arxml").content(autosar(targetPackage))); //$NON-NLS-1$

		make(autosarRelease()).with(standaloneServiceProvider()).from(resourceSet);

		// FIXME remove editing domain
		attachEditingDomain(resourceSet);

		return fixture.generateECUConfiguration(source.get(), targetPackage.get());
	}

	private void attachEditingDomain(GResourceSetBuilder resourceSet) {
		TransactionalEditingDomain.Factory.INSTANCE.createEditingDomain(resourceSet.get());
	}

	protected abstract IMetaModelDescriptor autosarRelease();

	protected abstract IConfigurationGeneration createFixture();

	protected abstract Resource.Factory createResourceFactory();

	protected abstract IMetaModelServiceProvider standaloneServiceProvider();

	public void doShouldInstantiateModuleDef() throws Exception {
		GModuleDefBuilder module = moduleDef("MyModule"); //$NON-NLS-1$
		assertThat(initialize(module), is(valueOf(module)));
	}

	public void doShouldInstantiateContainerDef() throws Exception {
		GContainerBuilder<?> paramContainer = paramContainer("MyContainer1"); //$NON-NLS-1$
		GContainerBuilder<?> choiceContainer = choice("MyContainer2").lowerLimit(2).upperLimit(2); //$NON-NLS-1$

		GModuleDefBuilder module = moduleDef("MyModule").with(paramContainer, choiceContainer); //$NON-NLS-1$

		GModuleConfiguration moduleConfiguration = initialize(module);
		assertThat(subContainer(moduleConfiguration, 0), is(valueOf(paramContainer)));
		assertThat(subContainer(moduleConfiguration, 1), is(valueOf(choiceContainer)));
		assertThat(subContainer(moduleConfiguration, 2), is(valueOf(choiceContainer)));
	}

	public void doShouldInstantiateParamsWithDefaultValues() throws Exception {
		GParameterBuilder[] params = { boolParam("param1").value(true), intParam("param2").value(42), //$NON-NLS-1$ 
				enumParam("param3").value("aaaa").literals("aaaa", "bbbb"), //$NON-NLS-1$//$NON-NLS-2$
				floatParam("param4").value(1.1), functionName("param5").value("myFunct"), //$NON-NLS-1$ //$NON-NLS-2$ 
				linkerSymbol("param6").value("bbbb"), stringParam("param7").value("cccc") }; //$NON-NLS-1$//$NON-NLS-2$

		GModuleDefBuilder module = moduleDef("MyModule").with(paramContainer("MyContainer1").params(params)); //$NON-NLS-1$//$NON-NLS-2$

		GModuleConfiguration moduleConfiguration = initialize(module);
		GContainer myContainer = subContainer(moduleConfiguration, 0);

		assertThat(myContainer.gGetParameterValues().size(), is(params.length));
		for (int i = 0; i < params.length; i++) {
			assertThat(param(myContainer, i), is(valueOf(params[i])));
		}

	}

	public void doShouldInstantiateSubContainers() throws Exception {
		GContainerBuilder<?>[] subContainers = { choice("container1"), paramContainer("container2") }; //$NON-NLS-1$//$NON-NLS-2$

		GModuleDefBuilder module = moduleDef("MyModule").with(paramContainer("MyContainer1").subContainer(subContainers)); //$NON-NLS-1$ //$NON-NLS-2$

		GModuleConfiguration moduleConfiguration = initialize(module);
		GContainer myContainer = subContainer(moduleConfiguration, 0);

		assertThat(myContainer.gGetSubContainers().size(), is(subContainers.length));
		for (int i = 0; i < subContainers.length; i++) {
			assertThat(subContainer(myContainer, i), is(valueOf(subContainers[i])));
		}
	}

	private GContainer subContainer(GContainer myContainer, int i) {
		return myContainer.gGetSubContainers().get(i);
	}

	protected String value(EObject item) {
		Object value = null;
		try {
			value = EObjects.get(item, "value"); //$NON-NLS-1$
		} catch (IllegalArgumentException e) {
			try {
				value = EObjects.get(item, "defaultValue"); //$NON-NLS-1$
			} catch (IllegalArgumentException ex) {
				Assert.fail("Unknown value feature for " + item); //$NON-NLS-1$
			}
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
