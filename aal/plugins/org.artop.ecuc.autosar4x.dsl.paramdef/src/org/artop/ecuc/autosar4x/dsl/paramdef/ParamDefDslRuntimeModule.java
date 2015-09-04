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
package org.artop.ecuc.autosar4x.dsl.paramdef;

import org.artop.ecuc.autosar4x.dsl.paramdef.naming.ParamDefDslQualifiedNameConverter;
import org.artop.ecuc.autosar4x.dsl.paramdef.scoping.ParamDefDslGlobalScopeProvider;
import org.artop.ecuc.autosar4x.dsl.paramdef.scoping.ParamDefDslImportedNamespaceAwareLocalScopeProvider;
import org.eclipse.xtext.conversion.IValueConverterService;
import org.eclipse.xtext.naming.IQualifiedNameConverter;
import org.eclipse.xtext.scoping.IGlobalScopeProvider;
import org.eclipse.xtext.scoping.IScopeProvider;
import org.eclipse.xtext.scoping.impl.AbstractDeclarativeScopeProvider;

import com.google.inject.Binder;
import com.google.inject.name.Names;

/**
 * Use this class to register components to be used at runtime / without the Equinox extension registry.
 */
public class ParamDefDslRuntimeModule extends org.artop.ecuc.autosar4x.dsl.paramdef.AbstractParamDefDslRuntimeModule {
	
	public Class<? extends IQualifiedNameConverter> bindIQualifiedNameConverter() {
		return ParamDefDslQualifiedNameConverter.class;
	}
	
	public void configureIScopeProviderDelegate(Binder binder) {
		binder.bind(IScopeProvider.class).annotatedWith(Names.named(AbstractDeclarativeScopeProvider.NAMED_DELEGATE)).to(ParamDefDslImportedNamespaceAwareLocalScopeProvider.class);
	}
	
	@Override
	public Class<? extends IGlobalScopeProvider> bindIGlobalScopeProvider() {
		return ParamDefDslGlobalScopeProvider.class;
	}
	
	@Override
	public Class<? extends IValueConverterService> bindIValueConverterService() {
		return ParamDefDslConverters.class;
	}
}
