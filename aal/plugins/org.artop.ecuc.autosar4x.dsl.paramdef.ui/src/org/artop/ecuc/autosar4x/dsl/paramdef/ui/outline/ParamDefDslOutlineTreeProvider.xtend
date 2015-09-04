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
package org.artop.ecuc.autosar4x.dsl.paramdef.ui.outline

import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.AbstractContainerDef
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ChoiceContainerDef
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ContainerDef
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.InstanceReferenceDef
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ModuleDef
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParameterDef
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ReferenceDef
import org.eclipse.emf.ecore.EObject
import org.eclipse.xtext.ui.editor.outline.IOutlineNode
import org.eclipse.xtext.ui.editor.outline.impl.DefaultOutlineTreeProvider

/**
 * Customization of the default outline structure.
 *
 * see http://www.eclipse.org/Xtext/documentation.html#outline
 */
class ParamDefDslOutlineTreeProvider extends DefaultOutlineTreeProvider {
	
	def dispatch void  createChildren(IOutlineNode parent, ModuleDef c) {
		for (EObject childElement : c.container.filter(AbstractContainerDef)) {
			createNode(parent, childElement);
		}
	}
	
	def dispatch void  createChildren(IOutlineNode parent, ContainerDef c) {
		for (EObject childElement : c.container) {
			createNode(parent, childElement);
		}
		for (EObject childElement : c.parameter) {
			createNode(parent, childElement);
		}
		for (EObject childElement : c.references) {
			createNode(parent, childElement);
		}
	}
	
	def dispatch void  createChildren(IOutlineNode parent, ParameterDef c) {
		
	}
	
	def dispatch void  createChildren(IOutlineNode parent, ReferenceDef c) {
		
	}
	def dispatch void  createChildren(IOutlineNode parent, InstanceReferenceDef c) {
	
	}
	def dispatch void  createChildren(IOutlineNode parent, ChoiceContainerDef c) {
		for (EObject childElement : c.container.filter(ContainerDef)) {
			createNode(parent, childElement);
		}
	}
	
	
}
