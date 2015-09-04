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

import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Container
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.EcucValuesDslPackage
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Module
import org.eclipse.xtext.nodemodel.util.NodeModelUtils

/**
 * Calculates Shortnames for Modules Containers and References in the Xtext module
 */
class EcucValuesDslShortNameProvider {
	
	def getTheShortName(Module m) {
		if (m.shortName != null) {
			m.shortName
		} else {
			NodeModelUtils.findNodesForFeature(m, EcucValuesDslPackage.Literals.MODULE__DEFINITION).head?.text?.trim
		}
	}
	
	def getTheShortName(Container m) {
		if (m.shortName != null) {
			m.shortName
		} else {
			val nodes = NodeModelUtils.findNodesForFeature(m, EcucValuesDslPackage.Literals.CONTAINER__DEFINITION)
			val r = nodes.head?.text?.trim
			r
		}
	}
	
}