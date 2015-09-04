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
package org.artop.ecuc.autosar4x.dsl.paramdef.scoping

import autosar40.util.Autosar40Package
import com.google.common.base.Predicate
import org.artop.aal.serialization.internal.util.AutosarTaggedValues
import org.eclipse.emf.ecore.EClass
import org.eclipse.emf.ecore.EcorePackage
import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.xtext.resource.IEObjectDescription
import org.eclipse.xtext.scoping.IScope
import org.eclipse.xtext.scoping.Scopes
import org.eclipse.xtext.scoping.impl.DefaultGlobalScopeProvider

import static extension org.eclipse.xtext.naming.QualifiedName.*

/**
 * Global Scope Provider.
 * 
 * Makes all Autosar Classes as Types Available in the Scope
 * 
 */
class ParamDefDslGlobalScopeProvider extends DefaultGlobalScopeProvider {
	
	override protected getScope(Resource context, boolean ignoreCase, EClass type, Predicate<IEObjectDescription> filter) {
		if (type == EcorePackage.Literals.ECLASS) {
			return getAutosarEClasses
		}
		super.getScope(context, ignoreCase, type, filter)
	}
	
	var IScope autosarEClasses;
	
	def synchronized getAutosarEClasses() {
		if (autosarEClasses == null) {
			autosarEClasses = Scopes.scopeFor(Autosar40Package.eINSTANCE.EClassifiers.filter(EClass),
			[AutosarTaggedValues.get(it).xmlName?.create],
			IScope.NULLSCOPE)
		}
		return autosarEClasses
	}
	
}