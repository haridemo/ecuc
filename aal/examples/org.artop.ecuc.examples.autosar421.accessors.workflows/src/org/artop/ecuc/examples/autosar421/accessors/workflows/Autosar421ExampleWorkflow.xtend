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
import autosar40.ecucdescription.EcucTextualParamValue
import autosar40.ecucdescription.EcucdescriptionFactory
import autosar40.genericstructure.varianthandling.attributevaluevariationpoints.NumericalValueVariationPoint
import autosar40.util.Autosar40Factory
import gautosar.gecucparameterdef.GParamConfContainerDef
import org.artop.ecuc.autosar421.accessors.NvM.NvMBlockDescriptor.NvMTargetBlockReference
import org.eclipse.emf.mwe.core.WorkflowContext
import org.eclipse.emf.mwe.core.issues.Issues
import org.eclipse.emf.mwe.core.monitor.ProgressMonitor
import org.eclipse.sphinx.emf.mwe.dynamic.WorkspaceWorkflow
import org.eclipse.sphinx.emf.mwe.dynamic.components.AbstractModelWorkflowComponent

import static extension org.eclipse.sphinx.examples.workflows.lib.ModelWorkflowExtensions.*
import autosar40.ecucdescription.EcucReferenceValue

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
		println("Executing Example Workflow component using EMF API")
		val modelObjects = ctx.modelSlot

		for (modelObject : modelObjects) {
			var nvMBlockDescriptors = newArrayList()
			if (modelObject instanceof EcucModuleConfigurationValues) {
				if ("NvM".equals(modelObject.definition?.shortName)) {
					// Getting NvMBlockDescriptors
					for(EcucContainerValue container : modelObject.containers) {
						if ("NvMBlockDescriptor".equals(container.definition?.shortName)){
							nvMBlockDescriptors.add(container)
						}
					}
					
					// Add a NvMBlockDescriptor containerValue
					var EcucContainerValue nvMBlockDescriptor = EcucdescriptionFactory.eINSTANCE.createEcucContainerValue()
					val definition = modelObject.gGetDefinition?.gGetContainers.findFirst[gGetShortName.equals("NvMBlockDescriptor")]
					nvMBlockDescriptor.gSetDefinition(definition)
					nvMBlockDescriptor.setShortName("NvMBlockDescriptor2")
					modelObject.containers.add(nvMBlockDescriptor)
					
					
					// Set parameterValue value
					var EcucTextualParamValue nvMBlockCrcType = EcucdescriptionFactory.eINSTANCE.createEcucTextualParamValue()
					val containerDef = nvMBlockDescriptor.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						val parameterDefinition = containerDef.gGetParameters.findFirst[gGetShortName == "NvMBlockCrcType"]
						nvMBlockCrcType.gSetDefinition(parameterDefinition)
					}
					nvMBlockDescriptor.gGetParameterValues += nvMBlockCrcType
					
					var EcucNumericalParamValue nvMBlockJobPriority = EcucdescriptionFactory.eINSTANCE.createEcucNumericalParamValue()
					if (containerDef instanceof GParamConfContainerDef) {
						val parameterDefinition = containerDef.gGetParameters.findFirst[gGetShortName == "NvMBlockJobPriority"]
						nvMBlockJobPriority.gSetDefinition(parameterDefinition)
					}
					nvMBlockDescriptor.gGetParameterValues += nvMBlockJobPriority
					var NumericalValueVariationPoint valueVariationPoint = nvMBlockJobPriority.getValue();
					if (valueVariationPoint == null) {
						valueVariationPoint = Autosar40Factory.eINSTANCE.createNumericalValueVariationPoint();
						nvMBlockJobPriority.setValue(valueVariationPoint);
					}
					valueVariationPoint.setMixedText("4");
					
					// Set referenceValue value
					var EcucReferenceValue nvMTargetBlockReference = EcucdescriptionFactory.eINSTANCE.createEcucReferenceValue
					// ... Retreive the right definition...
					nvMTargetBlockReference.setValue(EcucdescriptionFactory.eINSTANCE.createEcucContainerValue()) 
					nvMBlockDescriptor.getReferenceValues += nvMTargetBlockReference
				}
			}
		}

		println("Done!")
	}
}