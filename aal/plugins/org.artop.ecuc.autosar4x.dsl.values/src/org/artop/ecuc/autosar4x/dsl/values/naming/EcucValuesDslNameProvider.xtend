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
package org.artop.ecuc.autosar4x.dsl.values.naming

import javax.inject.Inject
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Container
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EcucValuesDslPackage
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Module
import org.eclipse.emf.ecore.EObject
import org.eclipse.xtext.naming.DefaultDeclarativeQualifiedNameProvider
import org.eclipse.xtext.naming.IQualifiedNameConverter
import org.eclipse.xtext.naming.QualifiedName
import org.eclipse.xtext.nodemodel.util.NodeModelUtils

class EcucValuesDslNameProvider extends DefaultDeclarativeQualifiedNameProvider {
	
	@Inject extension IQualifiedNameConverter
	
	override QualifiedName getFullyQualifiedName(EObject obj) {
		val r = super.getFullyQualifiedName(obj)
		r
	}

	def QualifiedName qualifiedName(Module it) {
		if (shortName != null) {
			return shortName.toQualifiedName
		} else {
			val nodes = NodeModelUtils.findNodesForFeature(it, EcucValuesDslPackage.Literals.MODULE__DEFINITION)
			return nodes.head?.text.trim.toQualifiedName
		}
	}
	
	def QualifiedName qualifiedName(Container it) {
		if (shortName != null) {
			return eContainer.fullyQualifiedName.append(shortName.toQualifiedName)
		} else {
			return eContainer.fullyQualifiedName.append(NodeModelUtils.findNodesForFeature(it, EcucValuesDslPackage.Literals.CONTAINER__DEFINITION).head?.text.trim.toQualifiedName)
			
		}
	}
	
}