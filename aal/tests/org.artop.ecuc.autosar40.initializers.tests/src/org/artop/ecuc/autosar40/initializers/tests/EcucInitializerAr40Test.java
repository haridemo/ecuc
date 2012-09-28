package org.artop.ecuc.autosar40.initializers.tests;

import org.artop.aal.autosar40.gautosar40.ecucparameterdef.GEcucBooleanParamDef40XAdapter;
import org.artop.aal.autosar40.gautosar40.ecucparameterdef.GEcucFloatParamDef40XAdapter;
import org.artop.aal.autosar40.gautosar40.ecucparameterdef.GEcucIntegerParamDef40XAdapter;
import org.artop.aal.autosar40.services.builder.internal.Autosar40BuilderFragmentProvider;
import org.artop.aal.gautosar.services.IMetaModelServiceProvider;
import org.artop.aal.gautosar.services.StandaloneMetamodelServiceProvider;
import org.artop.aal.gautosar.services.builder.internal.IGBuilderFragmentProvider;
import org.artop.ecuc.autosar40.initializers.GenerateModuleConfiguration;
import org.artop.ecuc.gautosar.initializers.IConfigurationGeneration;
import org.artop.ecuc.gautosar.initializers.tests.AbstractInitializerTest;
import org.eclipse.core.runtime.Platform;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.Resource.Factory;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;
import org.junit.BeforeClass;

import autosar40.ecucdescription.EcucNumericalParamValue;
import autosar40.ecucdescription.EcucTextualParamValue;
import autosar40.ecucparameterdef.EcucBooleanParamDef;
import autosar40.ecucparameterdef.EcucFloatParamDef;
import autosar40.ecucparameterdef.EcucFunctionNameDef;
import autosar40.ecucparameterdef.EcucIntegerParamDef;
import autosar40.ecucparameterdef.EcucLinkerSymbolDef;
import autosar40.ecucparameterdef.EcucStringParamDef;
import autosar40.genericstructure.formulalanguage.FormulaExpression;
import autosar40.util.Autosar40Package;
import autosar40.util.Autosar40ReleaseDescriptor;
import autosar40.util.Autosar40ResourceFactoryImpl;

public class EcucInitializerAr40Test extends AbstractInitializerTest {

	@BeforeClass
	public static void setupOnce() {
		if (!Platform.isRunning()) {
			Autosar40Package.eINSTANCE.getClass();
			Resource.Factory.Registry.INSTANCE.getContentTypeToFactoryMap().put(Autosar40ReleaseDescriptor.INSTANCE.getDefaultContentTypeId(),
					new Autosar40ResourceFactoryImpl());
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

	@Override
	protected String value(EObject item) {
		if (item instanceof EcucBooleanParamDef) {
			EcucBooleanParamDef booleanParamDef = (EcucBooleanParamDef) item;
			return new GEcucBooleanParamDef40XAdapter(booleanParamDef).getDefaultValue().gGetMixedText();
		}
		if (item instanceof FormulaExpression) {
			FormulaExpression formulaExpression = (FormulaExpression) item;
			return formulaExpression.getMixedText();
		}
		if (item instanceof EcucNumericalParamValue) {
			EcucNumericalParamValue numericalParamValue = (EcucNumericalParamValue) item;
			return numericalParamValue.getValue().getMixedText();
		}
		if (item instanceof EcucIntegerParamDef) {
			GEcucIntegerParamDef40XAdapter paramDef = new GEcucIntegerParamDef40XAdapter((EcucIntegerParamDef) item);
			return paramDef.getDefaultValue().gGetMixedText();
		}
		if (item instanceof EcucFloatParamDef) {
			GEcucFloatParamDef40XAdapter floatParamDef = new GEcucFloatParamDef40XAdapter((EcucFloatParamDef) item);
			return floatParamDef.getDefaultValue().gGetMixedText();
		}
		if (item instanceof EcucFunctionNameDef) {
			EcucFunctionNameDef functionNameDef = (EcucFunctionNameDef) item;
			return functionNameDef.getEcucFunctionNameDefVariants().get(0).getDefaultValue();
		}
		if (item instanceof EcucLinkerSymbolDef) {
			EcucLinkerSymbolDef linkerSymbolDef = (EcucLinkerSymbolDef) item;
			return linkerSymbolDef.getEcucLinkerSymbolDefVariants().get(0).getDefaultValue();
		}
		if (item instanceof EcucStringParamDef) {
			EcucStringParamDef paramDef = (EcucStringParamDef) item;
			return paramDef.getEcucStringParamDefVariants().get(0).getDefaultValue();
		}
		if (item instanceof EcucTextualParamValue) {
			EcucTextualParamValue paramDef = (EcucTextualParamValue) item;
			return paramDef.getValue();
		}
		return super.value(item);
	}
}
