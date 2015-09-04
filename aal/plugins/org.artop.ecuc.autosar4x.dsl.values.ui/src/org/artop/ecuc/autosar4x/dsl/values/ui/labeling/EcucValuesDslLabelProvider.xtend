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
 package org.artop.ecuc.autosar4x.dsl.values.ui.labeling

import autosar40.ecucdescription.EcucContainerValue
import autosar40.ecucdescription.EcucModuleConfigurationValues
import autosar40.ecucdescription.EcucValueCollection
import com.google.inject.Inject
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Container
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Model
import org.artop.ecuc.autosar4x.dsl.values.ecucValuesDsl.Module
import org.artop.ecuc.autosar4x.dsl.values.naming.EcucValuesDslShortNameProvider
import org.eclipse.emf.edit.ui.provider.AdapterFactoryLabelProvider
import org.eclipse.xtext.ui.label.DefaultEObjectLabelProvider

/**
 * Provides labels for a EObjects.
 * 
 * see http://www.eclipse.org/Xtext/documentation.html#labelProvider
 */
class EcucValuesDslLabelProvider extends DefaultEObjectLabelProvider {

@Inject
	new(AdapterFactoryLabelProvider delegate) {
		super(delegate);
	}

	// Labels and icons can be computed like this:
	
	@Inject extension EcucValuesDslShortNameProvider
	
	def text(Module ele) {
		ele.theShortName
	}
	def text(Container ele) {
		ele.theShortName
	}

	
	def image(Model m) {
		'full/obj16/EcucValueCollection.gif'
	}
	def image(Module m) {
		'full/obj16/EcucModuleConfigurationValues.gif'
	}
	def image(Container m) {
		'full/obj16/EcucContainerValue.gif'
	}
	
	def image(EcucValueCollection m) {
		'full/obj16/EcucValueCollection.gif'
	}
	def image(EcucModuleConfigurationValues m) {
		'full/obj16/EcucModuleConfigurationValues.gif'
	}
	def image(EcucContainerValue m) {
		'full/obj16/EcucContainerValue.gif'
	}
}
