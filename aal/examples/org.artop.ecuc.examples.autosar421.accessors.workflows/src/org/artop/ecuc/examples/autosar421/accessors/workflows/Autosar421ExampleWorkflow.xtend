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

import autosar40.ecucdescription.EcucContainerValue
import autosar40.ecucdescription.EcucModuleConfigurationValues
import autosar40.ecucdescription.EcucNumericalParamValue
import autosar40.ecucdescription.EcucReferenceValue
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

class Autosar421ExampleWorkflow extends WorkspaceWorkflow {

	new(){
		children += new Autosar421ExampleWorkflowComponent
	}
}

class Autosar421ExampleWorkflowComponent extends AbstractModelWorkflowComponent {

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
					
					// Add a container value
					var EcucContainerValue nvmBlockDescriptor2 = EcucdescriptionFactory.eINSTANCE.createEcucContainerValue()
					val definition = nvmValues.gGetDefinition?.gGetContainers.findFirst[gGetShortName.equals("NvMBlockDescriptor")]
					nvmBlockDescriptor2.gSetDefinition(definition)
					nvmBlockDescriptor2.setShortName("NvMBlockDescriptor2")
					nvmValues.containers.add(nvmBlockDescriptor2)
					
					
					// Set a textual parameter value
					var EcucTextualParamValue nvMBlockCrcType = EcucdescriptionFactory.eINSTANCE.createEcucTextualParamValue()
					val containerDef = nvmBlockDescriptor2.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						val parameterDefinition = containerDef.gGetParameters.findFirst[gGetShortName == "NvMBlockCrcType"]
						nvMBlockCrcType.gSetDefinition(parameterDefinition)
					}
					nvmBlockDescriptor2.gGetParameterValues += nvMBlockCrcType
					
					// Set a numerical parameter value
					var EcucNumericalParamValue nvMBlockJobPriority = EcucdescriptionFactory.eINSTANCE.createEcucNumericalParamValue()
					if (containerDef instanceof GParamConfContainerDef) {
						val parameterDefinition = containerDef.gGetParameters.findFirst[gGetShortName == "NvMBlockJobPriority"]
						nvMBlockJobPriority.gSetDefinition(parameterDefinition)
					}
					nvmBlockDescriptor2.gGetParameterValues += nvMBlockJobPriority
					var NumericalValueVariationPoint valueVariationPoint = nvMBlockJobPriority.getValue();
					if (valueVariationPoint == null) {
						valueVariationPoint = Autosar40Factory.eINSTANCE.createNumericalValueVariationPoint();
						nvMBlockJobPriority.setValue(valueVariationPoint);
					}
					valueVariationPoint.setMixedText("4");
					
					// Set reference value
					val nvmTargetBlockReferenceValue = EcucdescriptionFactory.eINSTANCE.createEcucContainerValue()
					nvmTargetBlockReferenceValue.setShortName("NvMTargetBlockReference1");
					var EcucReferenceValue nvmTargetBlockReference = EcucdescriptionFactory.eINSTANCE.createEcucReferenceValue
					nvmTargetBlockReference.setValue(nvmTargetBlockReferenceValue) 
					nvmBlockDescriptor2.getReferenceValues += nvmTargetBlockReference
				}
			}
		}

		println("Done!")
	}
}