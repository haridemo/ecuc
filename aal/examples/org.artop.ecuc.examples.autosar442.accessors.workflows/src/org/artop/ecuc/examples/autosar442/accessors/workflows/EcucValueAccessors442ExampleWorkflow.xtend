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
package org.artop.ecuc.examples.autosar442.accessors.workflows

import autosar40.ecucdescription.EcucModuleConfigurationValues
import org.artop.ecuc.autosar442.accessors.NvM
import org.eclipse.emf.mwe.core.WorkflowContext
import org.eclipse.emf.mwe.core.issues.Issues
import org.eclipse.emf.mwe.core.monitor.ProgressMonitor
import org.eclipse.sphinx.emf.mwe.dynamic.WorkspaceWorkflow
import org.eclipse.sphinx.emf.mwe.dynamic.components.AbstractModelWorkflowComponent

import static extension org.eclipse.sphinx.examples.workflows.lib.ModelWorkflowExtensions.*
import org.artop.ecuc.autosar442.accessors.NvM.NvMBlockDescriptor
import autosar40.ecucdescription.EcucdescriptionFactory
import org.artop.ecuc.autosar442.accessors.NvM.NvMBlockDescriptor.NvMBlockCrcType
import org.artop.ecuc.autosar442.accessors.NvM.NvMBlockDescriptor.NvMTargetBlockReference
import java.math.BigInteger

class EcucValueAccessors442ExampleWorkflow extends WorkspaceWorkflow {

	new(){
		children += new EcucValueAccessors442ExampleWorkflowComponent
	}
}

class EcucValueAccessors442ExampleWorkflowComponent extends AbstractModelWorkflowComponent {

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

					// List existing NvMBlockDescriptor container values
					print("Existing container values:")
					nvmValues.getNvMBlockDescriptors().forEach[print(" " + it.shortName)]
					println

					// Add new NvMBlockDescriptor container value
					var NvMBlockDescriptor nvmBlockDescriptorValue2 = new NvMBlockDescriptor(EcucdescriptionFactory.eINSTANCE.createEcucContainerValue())
					nvmBlockDescriptorValue2.setShortName("NvMBlockDescriptorValue1")
					nvmValues.getNvMBlockDescriptors().add(nvmBlockDescriptorValue2)

					// Set textual NvMBlockCrcType parameter value
					nvmBlockDescriptorValue2.setNvMBlockCrcType(NvMBlockCrcType.NVM_CRC32)

					// Set numerical NvMBlockJobPriority parameter value
					nvmBlockDescriptorValue2.setNvMBlockJobPriority(new BigInteger("4"))

					// Set NvMTargetBlockReference choice container value
					val NvMTargetBlockReference nvmTargetBlockReferenceValue = new NvMTargetBlockReference(EcucdescriptionFactory.eINSTANCE.createEcucContainerValue())
					nvmTargetBlockReferenceValue.setShortName("NvMTargetBlockReferenceValue1")
					nvmBlockDescriptorValue2.setNvMTargetBlockReference(nvmTargetBlockReferenceValue)

					// TODO Add new NvmDemEventParameterRefs container value and set NVM_E_HARDWARE symbolic name reference
				}
			}
		}

		println("Done!")
	}
}