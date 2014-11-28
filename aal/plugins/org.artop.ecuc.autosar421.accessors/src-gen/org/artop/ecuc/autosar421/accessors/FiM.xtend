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
package org.artop.ecuc.autosar421.accessors

import java.util.List

import autosar40.ecucdescription.EcucTextualParamValue
import autosar40.ecucdescription.EcucNumericalParamValue
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock
import autosar40.util.Autosar40Factory

import static extension org.artop.ecuc.autosar4x.accessors.lib.EcucValueAccessor4xUtil.*
import org.artop.ecuc.autosar4x.accessors.lib.EcucValueAccessor4xUtil
import org.artop.ecuc.autosar4x.accessors.lib.IntegerValueUnwrappingEList
import org.artop.ecuc.autosar4x.accessors.lib.FloatValueUnwrappingEList
import org.artop.ecuc.autosar4x.accessors.lib.BooleanValueUnwrappingEList
import org.artop.ecuc.autosar4x.accessors.lib.StringValueUnwrappingEList
import org.artop.ecuc.autosar4x.accessors.lib.DocumentationBlockValueUnwrappingEList

import org.eclipse.sphinx.emf.util.AbstractFilteringEList
import org.eclipse.sphinx.emf.util.BasicWrappingEList

import gautosar.gecucdescription.GContainer
import gautosar.gecucdescription.GModuleConfiguration
import gautosar.gecucdescription.GParameterValue
import gautosar.gecucdescription.GecucdescriptionPackage
import gautosar.gecucparameterdef.GConfigParameter
import gautosar.gecucparameterdef.GConfigReference
import gautosar.gecucdescription.GReferenceValue
import gautosar.gecucparameterdef.GContainerDef
import gautosar.gecucparameterdef.GParamConfContainerDef
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable
import static extension org.artop.ecuc.gautosar.accessors.lib.EcucValueAccessorUtil.*
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EStructuralFeature
import org.eclipse.sphinx.emf.util.AbstractUnwrappingEList
import org.eclipse.core.runtime.CoreException

class FiM implements BasicWrappingEList.IWrapper<GModuleConfiguration> {
	protected GModuleConfiguration moduleConfiguration
	
	new (GModuleConfiguration moduleConfiguration){
		this.moduleConfiguration = moduleConfiguration
	}
	
	def String getShortName(){
		moduleConfiguration?.gGetShortName
	}
	
	def void setShortName(String name){
		moduleConfiguration?.gSetShortName(name)
	}
	
	override def GModuleConfiguration getTarget(){
		moduleConfiguration
	}
	
	def List<FiMFID> getFiMFIDs(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "FiMFID")
			}
		}
		return new BasicWrappingEList<FiMFID, GContainer>(filteredContainers, typeof(FiMFID), typeof(GContainer))
	}
	def FiMGeneral getFiMGeneral(){
		moduleConfiguration.getByType(typeof(FiMGeneral))
	}
	
	def void setFiMGeneral(FiMGeneral fiMGeneral){
		val GContainer container = fiMGeneral.getTarget() 
	    moduleConfiguration.setContainer(container, "FiMGeneral")
	}
	def List<FiMInhibitionConfiguration> getFiMInhibitionConfigurations(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "FiMInhibitionConfiguration")
			}
		}
		return new BasicWrappingEList<FiMInhibitionConfiguration, GContainer>(filteredContainers, typeof(FiMInhibitionConfiguration), typeof(GContainer))
	}
	def List<FiMSummaryEvent> getFiMSummaryEvents(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "FiMSummaryEvent")
			}
		}
		return new BasicWrappingEList<FiMSummaryEvent, GContainer>(filteredContainers, typeof(FiMSummaryEvent), typeof(GContainer))
	}
	
	static class FiMFID implements BasicWrappingEList.IWrapper<GContainer> {
		private GContainer containerValue
		
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
		
		def String getShortName(){
			containerValue?.gGetShortName
		}
		
		def void setShortName(String name){
			containerValue?.gSetShortName(name)
		}
		
		override def GContainer getTarget(){
			containerValue
		}
		
		def Integer getFiMFunctionId(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMFunctionId"])
		}
		
		def void setFiMFunctionId(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMFunctionId"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FiMFunctionId"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		
		
		
	}
	static class FiMGeneral implements BasicWrappingEList.IWrapper<GContainer> {
		private GContainer containerValue
		
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
		
		def String getShortName(){
			containerValue?.gGetShortName
		}
		
		def void setShortName(String name){
			containerValue?.gSetShortName(name)
		}
		
		override def GContainer getTarget(){
			containerValue
		}
		
		def Boolean getFiMDataFixed(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMDataFixed"])
		}
		
		def void setFiMDataFixed(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMDataFixed"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FiMDataFixed"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFiMDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMDevErrorDetect"])
		}
		
		def void setFiMDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FiMDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFiMEventUpdateTriggeredByDem(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMEventUpdateTriggeredByDem"])
		}
		
		def void setFiMEventUpdateTriggeredByDem(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMEventUpdateTriggeredByDem"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FiMEventUpdateTriggeredByDem"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getFiMMaxEventsPerFidInhibitionConfiguration(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMMaxEventsPerFidInhibitionConfiguration"])
		}
		
		def void setFiMMaxEventsPerFidInhibitionConfiguration(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMMaxEventsPerFidInhibitionConfiguration"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FiMMaxEventsPerFidInhibitionConfiguration"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getFiMMaxFiMInhibitionConfigurations(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMMaxFiMInhibitionConfigurations"])
		}
		
		def void setFiMMaxFiMInhibitionConfigurations(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMMaxFiMInhibitionConfigurations"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FiMMaxFiMInhibitionConfigurations"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getFiMMaxInputEventsPerSummaryEvents(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMMaxInputEventsPerSummaryEvents"])
		}
		
		def void setFiMMaxInputEventsPerSummaryEvents(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMMaxInputEventsPerSummaryEvents"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FiMMaxInputEventsPerSummaryEvents"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getFiMMaxSumEventsPerFidInhibitionConfiguration(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMMaxSumEventsPerFidInhibitionConfiguration"])
		}
		
		def void setFiMMaxSumEventsPerFidInhibitionConfiguration(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMMaxSumEventsPerFidInhibitionConfiguration"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FiMMaxSumEventsPerFidInhibitionConfiguration"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getFiMMaxSummaryEvents(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMMaxSummaryEvents"])
		}
		
		def void setFiMMaxSummaryEvents(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMMaxSummaryEvents"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FiMMaxSummaryEvents"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Float getFiMTaskTime(){
			EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMTaskTime"])
		}
		
		def void setFiMTaskTime(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMTaskTime"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FiMTaskTime"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFiMVersionInfoApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMVersionInfoApi"])
		}
		
		def void setFiMVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FiMVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		
		
		
	}
	static class FiMInhibitionConfiguration implements BasicWrappingEList.IWrapper<GContainer> {
		private GContainer containerValue
		
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
		
		def String getShortName(){
			containerValue?.gGetShortName
		}
		
		def void setShortName(String name){
			containerValue?.gSetShortName(name)
		}
		
		override def GContainer getTarget(){
			containerValue
		}
		
		def FiMInhInhibitionMask getFiMInhInhibitionMask(){
			getFiMInhInhibitionMaskValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMInhInhibitionMask"])
		}
		
		def void setFiMInhInhibitionMask(FiMInhInhibitionMask value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMInhInhibitionMask"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FiMInhInhibitionMask"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum FiMInhInhibitionMask {
			FIM_LAST_FAILED, 
			FIM_NOT_TESTED, 
			FIM_TESTED, 
			FIM_TESTED_AND_FAILED
		}
			
		def FiMInhInhibitionMask getFiMInhInhibitionMaskValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "FIM_LAST_FAILED" : FiMInhInhibitionMask.FIM_LAST_FAILED
				case "FIM_NOT_TESTED" : FiMInhInhibitionMask.FIM_NOT_TESTED
				case "FIM_TESTED" : FiMInhInhibitionMask.FIM_TESTED
				case "FIM_TESTED_AND_FAILED" : FiMInhInhibitionMask.FIM_TESTED_AND_FAILED
			}
		}
		
		def void setFiMInhInhibitionMaskValue(GParameterValue paramValue, FiMInhInhibitionMask value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		
		def List<org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemComponent> getFiMInhComponentRefs(){
			val containerDef = containerValue.gGetDefinition
			val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
				containerDef.gGetReferences.findFirst[gGetShortName == "FiMInhComponentRef"] else null
							
			val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
				override protected accept(GReferenceValue item) {
					return accept(item, typeof(GConfigReference), "FiMInhComponentRef")
				}
			}
			
			return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemComponent>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemComponent)) {
				override protected wrap(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemComponent object) throws CoreException {
					if (object != null) {
						val container = object.getTarget()
						val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
						referenceValue.gSetDefinition(referenceValueDef)
						referenceValue.gSetValue(container)
						return referenceValue
					}
				}
				
				override protected unwrap(GReferenceValue referenceValue) {
					if (referenceValue != null) {
						val referenceValueValue = referenceValue.gGetValue
						if (referenceValueValue instanceof GContainer) {
							return new org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemComponent(referenceValueValue as GContainer)
						}
					}
				}
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.FiM.FiMFID getFiMInhFunctionIdRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.FiM.FiMFID), "FiMInhFunctionIdRef")
		}
				
		def void setFiMInhFunctionIdRef(org.artop.ecuc.autosar421.accessors.FiM.FiMFID object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FiMInhFunctionIdRef"], object.getTarget())
			}
		}
		
		def List<org.artop.ecuc.autosar421.accessors.FiM.FiMSummaryEvent> getFiMInhSumRefs(){
			val containerDef = containerValue.gGetDefinition
			val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
				containerDef.gGetReferences.findFirst[gGetShortName == "FiMInhSumRef"] else null
							
			val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
				override protected accept(GReferenceValue item) {
					return accept(item, typeof(GConfigReference), "FiMInhSumRef")
				}
			}
			
			return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.FiM.FiMSummaryEvent>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.FiM.FiMSummaryEvent)) {
				override protected wrap(org.artop.ecuc.autosar421.accessors.FiM.FiMSummaryEvent object) throws CoreException {
					if (object != null) {
						val container = object.getTarget()
						val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
						referenceValue.gSetDefinition(referenceValueDef)
						referenceValue.gSetValue(container)
						return referenceValue
					}
				}
				
				override protected unwrap(GReferenceValue referenceValue) {
					if (referenceValue != null) {
						val referenceValueValue = referenceValue.gGetValue
						if (referenceValueValue instanceof GContainer) {
							return new org.artop.ecuc.autosar421.accessors.FiM.FiMSummaryEvent(referenceValueValue as GContainer)
						}
					}
				}
			}
		}
		
		def List<org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter> getFiMInhEventRefs(){
			val containerDef = containerValue.gGetDefinition
			val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
				containerDef.gGetReferences.findFirst[gGetShortName == "FiMInhEventRef"] else null
							
			val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
				override protected accept(GReferenceValue item) {
					return accept(item, typeof(GConfigReference), "FiMInhEventRef")
				}
			}
			
			return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter)) {
				override protected wrap(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object) throws CoreException {
					if (object != null) {
						val container = object.getTarget()
						val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
						referenceValue.gSetDefinition(referenceValueDef)
						referenceValue.gSetValue(container)
						return referenceValue
					}
				}
				
				override protected unwrap(GReferenceValue referenceValue) {
					if (referenceValue != null) {
						val referenceValueValue = referenceValue.gGetValue
						if (referenceValueValue instanceof GContainer) {
							return new org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter(referenceValueValue as GContainer)
						}
					}
				}
			}
		}
		
		
		
	}
	static class FiMSummaryEvent implements BasicWrappingEList.IWrapper<GContainer> {
		private GContainer containerValue
		
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
		
		def String getShortName(){
			containerValue?.gGetShortName
		}
		
		def void setShortName(String name){
			containerValue?.gSetShortName(name)
		}
		
		override def GContainer getTarget(){
			containerValue
		}
		
		
		def List<org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter> getFiMInputEventRefs(){
			val containerDef = containerValue.gGetDefinition
			val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
				containerDef.gGetReferences.findFirst[gGetShortName == "FiMInputEventRef"] else null
							
			val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
				override protected accept(GReferenceValue item) {
					return accept(item, typeof(GConfigReference), "FiMInputEventRef")
				}
			}
			
			return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter)) {
				override protected wrap(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object) throws CoreException {
					if (object != null) {
						val container = object.getTarget()
						val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
						referenceValue.gSetDefinition(referenceValueDef)
						referenceValue.gSetValue(container)
						return referenceValue
					}
				}
				
				override protected unwrap(GReferenceValue referenceValue) {
					if (referenceValue != null) {
						val referenceValueValue = referenceValue.gGetValue
						if (referenceValueValue instanceof GContainer) {
							return new org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter(referenceValueValue as GContainer)
						}
					}
				}
			}
		}
		
		
		
	}
	
	private static def boolean accept(EObject child, Class<? extends GIdentifiable> ecucTypeDefType, String ecucTypeDefName) {
		val EStructuralFeature definitionFeature = child.eClass().getEStructuralFeature("definition") //$NON-NLS-1$
		if (definitionFeature != null) {
			val definition = child.eGet(definitionFeature)
			if (ecucTypeDefType.isInstance(definition)) {
				return ecucTypeDefType.cast(definition).gGetShortName.equals(ecucTypeDefName)
			}
		}
		return false
	}
}
