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
package org.artop.ecuc.autosar4x.dsl.values.ui.outline

import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Container
import org.eclipse.emf.ecore.EObject
import org.eclipse.xtext.ui.editor.outline.IOutlineNode
import org.eclipse.xtext.ui.editor.outline.impl.DefaultOutlineTreeProvider

/**
 * Customization of the default outline structure.
 *
 * see http://www.eclipse.org/Xtext/documentation.html#outline
 */
class EcucValuesDslOutlineTreeProvider extends DefaultOutlineTreeProvider {
	
	// Containers only in Outline
	def dispatch void  createChildren(IOutlineNode parent,Container c) {
		for (EObject childElement : c.elements.filter(Container))
			createNode(parent, childElement);
	}
}
