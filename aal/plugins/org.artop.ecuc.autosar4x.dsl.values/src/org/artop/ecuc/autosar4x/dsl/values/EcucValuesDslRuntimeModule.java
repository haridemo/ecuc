/**
 * <copyright>
 *
 * Copyright (c) itemis and others.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of the Artop Software License Based on AUTOSAR
 * Released Material (ASLR) which accompanies this distribution, and is
 * available at http://www.artop.org/aslr.html
 *
 * Contributors:
 *     itemis - Initial API and implementation
 *
 * </copyright>
 */
package org.artop.ecuc.autosar4x.dsl.values;

import org.artop.ecuc.autosar4x.dsl.values.conversion.EcucValuesDslConverters;
import org.artop.ecuc.autosar4x.dsl.values.generator.EcucValuesDsl2AutosarGenerator;
import org.artop.ecuc.autosar4x.dsl.values.inferrer.DerivedModelAssociator;
import org.artop.ecuc.autosar4x.dsl.values.inferrer.EcucValuesDslDerivedModelInferrer;
import org.artop.ecuc.autosar4x.dsl.values.inferrer.IDerivedModelInferrer;
import org.artop.ecuc.autosar4x.dsl.values.location.EcucValuesDslLocationInFileProvider;
import org.artop.ecuc.autosar4x.dsl.values.naming.EcucValuesDslNameProvider;
import org.artop.ecuc.autosar4x.dsl.values.naming.EcucValuesDslQualifiedNameConverter;
import org.artop.ecuc.autosar4x.dsl.values.scoping.AutosarGlobalScopeProvider;
import org.artop.ecuc.autosar4x.dsl.values.validation.EcucValuesDslDiagnosticConverter;
import org.eclipse.xtext.generator.IGenerator;
import org.eclipse.xtext.naming.IQualifiedNameConverter;
import org.eclipse.xtext.naming.IQualifiedNameProvider;
import org.eclipse.xtext.resource.DerivedStateAwareResource;
import org.eclipse.xtext.resource.DerivedStateAwareResourceDescriptionManager;
import org.eclipse.xtext.resource.IDerivedStateComputer;
import org.eclipse.xtext.resource.ILocationInFileProvider;
import org.eclipse.xtext.resource.IResourceDescription;
import org.eclipse.xtext.resource.XtextResource;
import org.eclipse.xtext.scoping.IGlobalScopeProvider;
import org.eclipse.xtext.validation.IDiagnosticConverter;

/**
 * Use this class to register components to be used at runtime / without the
 * Equinox extension registry.
 */
public class EcucValuesDslRuntimeModule extends
		org.artop.ecuc.autosar4x.dsl.values.AbstractEcucValuesDslRuntimeModule {

	public Class<? extends org.eclipse.xtext.conversion.IValueConverterService> bindIValueConverterService() {
		return EcucValuesDslConverters.class;
	}

	@Override
	public Class<? extends ILocationInFileProvider> bindILocationInFileProvider() {
		return EcucValuesDslLocationInFileProvider.class;
	}

	@Override
	public Class<? extends IQualifiedNameProvider> bindIQualifiedNameProvider() {
		return EcucValuesDslNameProvider.class;
	}

	public Class<? extends IQualifiedNameConverter> bindIQualifiedNameConverter() {
		return EcucValuesDslQualifiedNameConverter.class;
	}

	public Class<? extends IDerivedStateComputer> bindIDerivedStateComputer() {
		return DerivedModelAssociator.class;
	}

	public Class<? extends IDerivedModelInferrer> bindIDerivedModelInferrer() {
		return EcucValuesDslDerivedModelInferrer.class;
	}

	@Override
	public Class<? extends XtextResource> bindXtextResource() {
		return DerivedStateAwareResource.class;
	}

	public Class<? extends IResourceDescription.Manager> bindIResourceDescriptionManager() {
		return DerivedStateAwareResourceDescriptionManager.class;
	}

	public Class<? extends IDiagnosticConverter> bindIDiagnosticConverter() {
		return EcucValuesDslDiagnosticConverter.class;
	}

	@Override
	public Class<? extends IGlobalScopeProvider> bindIGlobalScopeProvider() {
		return AutosarGlobalScopeProvider.class;
	}

	public Class<? extends IGenerator> bindIGenerator() {
		return EcucValuesDsl2AutosarGenerator.class;
	}

}
