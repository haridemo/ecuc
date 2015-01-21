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
import java.util.List
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
		println("Executing Ecuc Value Accessors 421 Example Workflow component")
		val modelObjects = ctx.modelSlot

		for (modelObject : modelObjects) {
			if (modelObject instanceof EcucModuleConfigurationValues) {
				if ("NvM".equals(modelObject.definition?.shortName)) {
					val NvM nvm = new NvM(modelObject)
					
					// Add a containerValue
					var NvMBlockDescriptor nvMBlockDescriptor = new NvMBlockDescriptor(EcucdescriptionFactory.eINSTANCE.createEcucContainerValue())
					nvMBlockDescriptor.setShortName("NvMBlockDescriptor2")
					nvm.getNvMBlockDescriptors().add(nvMBlockDescriptor)
					
					// Set parameterValue value
					nvMBlockDescriptor.setNvMBlockCrcType(NvMBlockCrcType.NVM_CRC32)
					nvMBlockDescriptor.setNvMBlockJobPriority(4)
					
					// Set referenceValue value
					val NvMTargetBlockReference nvMTargetBlockReference = new NvMTargetBlockReference(EcucdescriptionFactory.eINSTANCE.createEcucContainerValue())
					nvMTargetBlockReference.setShortName("NvMTargetBlockReference1")
					nvMBlockDescriptor.setNvMTargetBlockReference(nvMTargetBlockReference)
				}
			}
		}

		println("Done!")
	}
}