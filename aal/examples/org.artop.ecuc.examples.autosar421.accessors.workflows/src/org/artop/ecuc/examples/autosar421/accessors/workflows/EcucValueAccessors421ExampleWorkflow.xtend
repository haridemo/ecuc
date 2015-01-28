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
package org.artop.ecuc.examples.autosar421.accessors.workflows

import autosar40.ecucdescription.EcucModuleConfigurationValues
import org.artop.ecuc.autosar421.accessors.NvM
import org.eclipse.emf.mwe.core.WorkflowContext
import org.eclipse.emf.mwe.core.issues.Issues
import org.eclipse.emf.mwe.core.monitor.ProgressMonitor
import org.eclipse.sphinx.emf.mwe.dynamic.WorkspaceWorkflow
import org.eclipse.sphinx.emf.mwe.dynamic.components.AbstractModelWorkflowComponent

import static extension org.eclipse.sphinx.examples.workflows.lib.ModelWorkflowExtensions.*
import org.artop.ecuc.autosar421.accessors.NvM.NvMBlockDescriptor
import autosar40.ecucdescription.EcucdescriptionFactory
import org.artop.ecuc.autosar421.accessors.NvM.NvMBlockDescriptor.NvMBlockCrcType
import org.artop.ecuc.autosar421.accessors.NvM.NvMBlockDescriptor.NvMTargetBlockReference

class EcucValueAccessors421ExampleWorkflow extends WorkspaceWorkflow {

	new(){
		children += new EcucValueAccessors421ExampleWorkflowComponent
	}
}

class EcucValueAccessors421ExampleWorkflowComponent extends AbstractModelWorkflowComponent {

	new() {
		// Will modify the model in the slot
		super(true)
	}

	override protected invokeInternal(WorkflowContext ctx, ProgressMonitor monitor, Issues issues) {
		println("Running automatic ECUC configuration example using ECUC value accessor APIs reflecting underlying ECUC parameter definitions")
		val modelObjects = ctx.modelSlot

		for (modelObject : modelObjects) {
			if (modelObject instanceof EcucModuleConfigurationValues) {
				if ("NvM".equals(modelObject.definition?.shortName)) {
					val NvM nvmValues = new NvM(modelObject)
					
					// Add a container value
					var NvMBlockDescriptor nvmBlockDescriptor2 = new NvMBlockDescriptor(EcucdescriptionFactory.eINSTANCE.createEcucContainerValue())
					nvmBlockDescriptor2.setShortName("NvMBlockDescriptor2")
					nvmValues.getNvMBlockDescriptors().add(nvmBlockDescriptor2)
					
					// Set a textual parameter value
					nvmBlockDescriptor2.setNvMBlockCrcType(NvMBlockCrcType.NVM_CRC32)

					// Set a numerical parameter value
					nvmBlockDescriptor2.setNvMBlockJobPriority(4)
					
					// Set a reference value
					val NvMTargetBlockReference nvmTargetBlockReferenceValue = new NvMTargetBlockReference(EcucdescriptionFactory.eINSTANCE.createEcucContainerValue())
					nvmTargetBlockReferenceValue.setShortName("NvMTargetBlockReference1")
					nvmBlockDescriptor2.setNvMTargetBlockReference(nvmTargetBlockReferenceValue)
				}
			}
		}

		println("Done!")
	}
}