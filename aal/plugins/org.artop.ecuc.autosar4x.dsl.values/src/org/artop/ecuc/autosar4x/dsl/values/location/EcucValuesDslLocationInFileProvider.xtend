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
package org.artop.ecuc.autosar4x.dsl.values.location

import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Container
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Module
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EStructuralFeature
import org.eclipse.xtext.resource.DefaultLocationInFileProvider
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EcucValuesDslPackage

/**
 * Provides meaningful "locations in file" for elements that don't have a name
 * 
 * @author Christian Dietrich
 */
class EcucValuesDslLocationInFileProvider extends DefaultLocationInFileProvider {
	
	override protected getIdentifierFeature(EObject obj) {
		idf(obj)
	}
	
	def dispatch EStructuralFeature idf(Module obj) {
		if (obj.shortName != null) {
			EcucValuesDslPackage.Literals.MODULE__SHORT_NAME
		} else {
			EcucValuesDslPackage.Literals.MODULE__DEFINITION
		}
	}
	
	def dispatch EStructuralFeature idf(Container obj) {
		if (obj.shortName != null) {
			EcucValuesDslPackage.Literals.CONTAINER__SHORT_NAME
		} else {
			EcucValuesDslPackage.Literals.CONTAINER__DEFINITION
		}
	}
	
	def dispatch EStructuralFeature idf(EObject obj) {
		super.getIdentifierFeature(obj)
	}
	
}