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
package org.artop.ecuc.examples.autosar431.accessors.workflows

import autosar40.ecucdescription.EcucContainerValue
import autosar40.ecucdescription.EcucModuleConfigurationValues
import autosar40.ecucdescription.EcucNumericalParamValue
import autosar40.ecucdescription.EcucTextualParamValue
import autosar40.ecucdescription.EcucdescriptionFactory
import autosar40.genericstructure.varianthandling.attributevaluevariationpoints.NumericalValueVariationPoint
import autosar40.util.Autosar40Factory
import gautosar.gecucparameterdef.GParamConfContainerDef
import org.eclipse.emf.mwe.core.WorkflowContext
import org.eclipse.emf.mwe.core.issues.Issues
import org.eclipse.emf.mwe.core.monitor.ProgressMonitor
import org.eclipse.sphinx.emf.mwe.dynamic.WorkspaceWorkflow
import org.eclipse.sphinx.emf.mwe.dynamic.components.AbstractModelWorkflowComponent

import static extension org.eclipse.sphinx.examples.workflows.lib.ModelWorkflowExtensions.*

class Autosar431ExampleWorkflow extends WorkspaceWorkflow {

	new(){
		children += new Autosar431ExampleWorkflowComponent
	}
}

class Autosar431ExampleWorkflowComponent extends AbstractModelWorkflowComponent {

	new() {
		// Will modify the model in the slot
		super(true)
	}

	override protected invokeInternal(WorkflowContext ctx, ProgressMonitor monitor, Issues issues) {
		println("Running automatic ECUC configuration example using generic AUTOSAR API")
		val modelObjects = ctx.modelSlot

		for (modelObject : modelObjects) {
			if (modelObject instanceof EcucModuleConfigurationValues) {
				if ("NvM".equals(modelObject.definition?.shortName)) {
					val EcucModuleConfigurationValues nvmValues = modelObject

					// List existing NvMBlockDescriptor container values
					print("Existing container values:")
					nvmValues.containers.filter["NvMBlockDescriptor".equals(it.definition?.shortName)].forEach[print(" " + it.shortName)]
					println

					// Add new NvMBlockDescriptor container value
					var EcucContainerValue nvmBlockDescriptorValue3 = EcucdescriptionFactory.eINSTANCE.createEcucContainerValue()
					val nvmBlockDescriptorDef = nvmValues.gGetDefinition?.gGetContainers.findFirst[gGetShortName.equals("NvMBlockDescriptor")]
					nvmBlockDescriptorValue3.gSetDefinition(nvmBlockDescriptorDef)
					nvmBlockDescriptorValue3.setShortName("NvMBlockDescriptorValue3")
					nvmValues.containers.add(nvmBlockDescriptorValue3)


					// Set textual NvMBlockCrcType parameter value
					var EcucTextualParamValue nvmBlockCrcTypeValue = EcucdescriptionFactory.eINSTANCE.createEcucTextualParamValue()
					if (nvmBlockDescriptorDef instanceof GParamConfContainerDef) {
						val nvmBlockCrcTypeDef = nvmBlockDescriptorDef.gGetParameters.findFirst[gGetShortName == "NvMBlockCrcType"]
						nvmBlockCrcTypeValue.gSetDefinition(nvmBlockCrcTypeDef)
					}
					nvmBlockCrcTypeValue.setValue("NVM_CRC32")
					nvmBlockDescriptorValue3.gGetParameterValues += nvmBlockCrcTypeValue

					// Set numerical NvMBlockJobPriority parameter value
					var EcucNumericalParamValue nvmBlockJobPriorityValue = EcucdescriptionFactory.eINSTANCE.createEcucNumericalParamValue()
					if (nvmBlockDescriptorDef instanceof GParamConfContainerDef) {
						val nvmBlockJobPriorityDef = nvmBlockDescriptorDef.gGetParameters.findFirst[gGetShortName == "NvMBlockJobPriority"]
						nvmBlockJobPriorityValue.gSetDefinition(nvmBlockJobPriorityDef)
					}
					var NumericalValueVariationPoint numericalValueVariationPoint = Autosar40Factory.eINSTANCE.createNumericalValueVariationPoint();
					numericalValueVariationPoint.setMixedText("4");
					nvmBlockJobPriorityValue.setValue(numericalValueVariationPoint);
					nvmBlockDescriptorValue3.gGetParameterValues += nvmBlockJobPriorityValue

					// Set NvMTargetBlockReference choice container value
					val nvmTargetBlockReferenceValue = EcucdescriptionFactory.eINSTANCE.createEcucContainerValue()
					// TODO Find and set NvMTargetBlockReference container definition
					nvmTargetBlockReferenceValue.setShortName("NvMTargetBlockReferenceValue1");
					nvmBlockDescriptorValue3.subContainers+= nvmTargetBlockReferenceValue

					// TODO Add new NvmDemEventParameterRefs container value and set NVM_E_HARDWARE symbolic name reference
				}
			}
		}

		println("Done!")
	}
}