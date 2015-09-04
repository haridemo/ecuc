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
package org.artop.ecuc.autosar4x.dsl.paramdef.ui.labeling

import com.google.inject.Inject
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ChoiceContainerDef
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ContainerDef
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.InstanceReferenceDef
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ModuleDef
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ParameterDef
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ReferenceDef
import org.eclipse.emf.edit.ui.provider.AdapterFactoryLabelProvider
import org.eclipse.xtext.ui.label.DefaultEObjectLabelProvider
import org.artop.ecuc.autosar4x.dsl.paramdef.paramDefDsl.ForeignReferenceDef

/**
 * Provides labels for a EObjects.
 * 
 * see http://www.eclipse.org/Xtext/documentation.html#labelProvider
 */
class ParamDefDslLabelProvider extends DefaultEObjectLabelProvider {

	@Inject
	new(AdapterFactoryLabelProvider delegate) {
		super(delegate);
	}

	def image(ModuleDef ele) {
		'full/obj16/EcucModuleDef.gif'
	}
	
	def image(ContainerDef ele) {
		'full/obj16/EcucParamConfContainerDef.gif'
	}
	
	def image(ChoiceContainerDef ele) {
		'full/obj16/EcucChoiceContainerDef.gif'
	}
	def image(ParameterDef ele) {
		'Greeting.gif'
	}
	def image(InstanceReferenceDef ele) {
		'full/obj16/EcucInstanceReferenceDef.gif'
	}
	def image(ForeignReferenceDef ele) {
		'full/obj16/EcucForeignReferenceDef.gif'
	}
	def image(ReferenceDef ele) {
		if (ele.types.size > 1) {
			'full/obj16/EcucChoiceReferenceDef.gif'
		} else {
			'full/obj16/EcucReferenceDef.gif'
		}
		
	}
}
