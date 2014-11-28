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

class Dem implements BasicWrappingEList.IWrapper<GModuleConfiguration> {
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
	
	def DemConfigSet getDemConfigSet(){
		moduleConfiguration.getByType(typeof(DemConfigSet))
	}
	
	def void setDemConfigSet(DemConfigSet demConfigSet){
		val GContainer container = demConfigSet.getTarget() 
	    moduleConfiguration.setContainer(container, "DemConfigSet")
	}
	def DemGeneral getDemGeneral(){
		moduleConfiguration.getByType(typeof(DemGeneral))
	}
	
	def void setDemGeneral(DemGeneral demGeneral){
		val GContainer container = demGeneral.getTarget() 
	    moduleConfiguration.setContainer(container, "DemGeneral")
	}
	
	static class DemConfigSet implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		
		
		def List<DemComponent> getDemComponents(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemComponent")
				}
			}
			return new BasicWrappingEList<DemComponent, GContainer>(filteredContainers, typeof(DemComponent), typeof(GContainer))
		}
		
		def List<DemDTC> getDemDTCs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemDTC")
				}
			}
			return new BasicWrappingEList<DemDTC, GContainer>(filteredContainers, typeof(DemDTC), typeof(GContainer))
		}
		
		def List<DemDTCAttributes> getDemDTCAttributes(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemDTCAttributes")
				}
			}
			return new BasicWrappingEList<DemDTCAttributes, GContainer>(filteredContainers, typeof(DemDTCAttributes), typeof(GContainer))
		}
		
		def List<DemDebounceCounterBasedClass> getDemDebounceCounterBasedClass(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemDebounceCounterBasedClass")
				}
			}
			return new BasicWrappingEList<DemDebounceCounterBasedClass, GContainer>(filteredContainers, typeof(DemDebounceCounterBasedClass), typeof(GContainer))
		}
		
		def List<DemDebounceTimeBaseClass> getDemDebounceTimeBaseClass(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemDebounceTimeBaseClass")
				}
			}
			return new BasicWrappingEList<DemDebounceTimeBaseClass, GContainer>(filteredContainers, typeof(DemDebounceTimeBaseClass), typeof(GContainer))
		}
		
		def DemDtr getDemDtr(){
			containerValue.getByType(typeof(DemDtr))
		}
		
		def void setDemDtr(GContainer subContainer){
			containerValue.setContainer(subContainer, "DemDtr")
		}
		
		def List<DemEventParameter> getDemEventParameters(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemEventParameter")
				}
			}
			return new BasicWrappingEList<DemEventParameter, GContainer>(filteredContainers, typeof(DemEventParameter), typeof(GContainer))
		}
		
		def List<DemJ1939NodeAddress> getDemJ1939NodeAddress(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemJ1939NodeAddress")
				}
			}
			return new BasicWrappingEList<DemJ1939NodeAddress, GContainer>(filteredContainers, typeof(DemJ1939NodeAddress), typeof(GContainer))
		}
		
		def List<DemObdDTC> getDemObdDTCs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemObdDTC")
				}
			}
			return new BasicWrappingEList<DemObdDTC, GContainer>(filteredContainers, typeof(DemObdDTC), typeof(GContainer))
		}
		
		def List<DemPidClass> getDemPidClass(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemPidClass")
				}
			}
			return new BasicWrappingEList<DemPidClass, GContainer>(filteredContainers, typeof(DemPidClass), typeof(GContainer))
		}
		
		
		static class DemComponent implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def String getDemComponentFailedCallbackFnc(){
				EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemComponentFailedCallbackFnc"])
			}
			
			def void setDemComponentFailedCallbackFnc(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemComponentFailedCallbackFnc"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemComponentFailedCallbackFnc"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getDemComponentIgnoresPriority(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemComponentIgnoresPriority"])
			}
			
			def void setDemComponentIgnoresPriority(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemComponentIgnoresPriority"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemComponentIgnoresPriority"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			def List<org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemComponent> getDemImmediateChildComponentRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
					containerDef.gGetReferences.findFirst[gGetShortName == "DemImmediateChildComponentRef"] else null
								
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "DemImmediateChildComponentRef")
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
			
			
			
		}
		
		static class DemDTC implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Integer getDemDTCFunctionalUnit(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDTCFunctionalUnit"])
			}
			
			def void setDemDTCFunctionalUnit(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDTCFunctionalUnit"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDTCFunctionalUnit"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def DemDTCSeverity getDemDTCSeverity(){
				getDemDTCSeverityValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDTCSeverity"])
			}
			
			def void setDemDTCSeverity(DemDTCSeverity value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDTCSeverity"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDTCSeverity"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum DemDTCSeverity {
				DEM_SEVERITY_CHECK_AT_NEXT_HALT, 
				DEM_SEVERITY_CHECK_IMMEDIATELY, 
				DEM_SEVERITY_MAINTENANCE_ONLY, 
				DEM_SEVERITY_NO_SEVERITY
			}
				
			def DemDTCSeverity getDemDTCSeverityValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "DEM_SEVERITY_CHECK_AT_NEXT_HALT" : DemDTCSeverity.DEM_SEVERITY_CHECK_AT_NEXT_HALT
					case "DEM_SEVERITY_CHECK_IMMEDIATELY" : DemDTCSeverity.DEM_SEVERITY_CHECK_IMMEDIATELY
					case "DEM_SEVERITY_MAINTENANCE_ONLY" : DemDTCSeverity.DEM_SEVERITY_MAINTENANCE_ONLY
					case "DEM_SEVERITY_NO_SEVERITY" : DemDTCSeverity.DEM_SEVERITY_NO_SEVERITY
				}
			}
			
			def void setDemDTCSeverityValue(GParameterValue paramValue, DemDTCSeverity value){
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def Integer getDemDtcValue(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtcValue"])
			}
			
			def void setDemDtcValue(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtcValue"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDtcValue"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def DemWWHOBDDTCClass getDemWWHOBDDTCClass(){
				getDemWWHOBDDTCClassValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemWWHOBDDTCClass"])
			}
			
			def void setDemWWHOBDDTCClass(DemWWHOBDDTCClass value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemWWHOBDDTCClass"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemWWHOBDDTCClass"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum DemWWHOBDDTCClass {
				DEM_DTC_WWHOBD_CLASS_A, 
				DEM_DTC_WWHOBD_CLASS_B1, 
				DEM_DTC_WWHOBD_CLASS_B2, 
				DEM_DTC_WWHOBD_CLASS_C, 
				DEM_DTC_WWHOBD_CLASS_NOCLASS
			}
				
			def DemWWHOBDDTCClass getDemWWHOBDDTCClassValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "DEM_DTC_WWHOBD_CLASS_A" : DemWWHOBDDTCClass.DEM_DTC_WWHOBD_CLASS_A
					case "DEM_DTC_WWHOBD_CLASS_B1" : DemWWHOBDDTCClass.DEM_DTC_WWHOBD_CLASS_B1
					case "DEM_DTC_WWHOBD_CLASS_B2" : DemWWHOBDDTCClass.DEM_DTC_WWHOBD_CLASS_B2
					case "DEM_DTC_WWHOBD_CLASS_C" : DemWWHOBDDTCClass.DEM_DTC_WWHOBD_CLASS_C
					case "DEM_DTC_WWHOBD_CLASS_NOCLASS" : DemWWHOBDDTCClass.DEM_DTC_WWHOBD_CLASS_NOCLASS
				}
			}
			
			def void setDemWWHOBDDTCClassValue(GParameterValue paramValue, DemWWHOBDDTCClass value){
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemDTCAttributes getDemDTCAttributesRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemDTCAttributes), "DemDTCAttributesRef")
			}
					
			def void setDemDTCAttributesRef(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemDTCAttributes object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DemDTCAttributesRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemObdDTC getDemObdDTCRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemObdDTC), "DemObdDTCRef")
			}
					
			def void setDemObdDTCRef(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemObdDTC object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DemObdDTCRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class DemDTCAttributes implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Boolean getDemAgingAllowed(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemAgingAllowed"])
			}
			
			def void setDemAgingAllowed(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemAgingAllowed"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemAgingAllowed"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getDemAgingCycleCounterThreshold(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemAgingCycleCounterThreshold"])
			}
			
			def void setDemAgingCycleCounterThreshold(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemAgingCycleCounterThreshold"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemAgingCycleCounterThreshold"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getDemAgingCycleCounterThresholdForTFSLC(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemAgingCycleCounterThresholdForTFSLC"])
			}
			
			def void setDemAgingCycleCounterThresholdForTFSLC(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemAgingCycleCounterThresholdForTFSLC"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemAgingCycleCounterThresholdForTFSLC"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getDemDTCPriority(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDTCPriority"])
			}
			
			def void setDemDTCPriority(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDTCPriority"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDTCPriority"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def DemDTCSignificance getDemDTCSignificance(){
				getDemDTCSignificanceValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDTCSignificance"])
			}
			
			def void setDemDTCSignificance(DemDTCSignificance value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDTCSignificance"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDTCSignificance"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum DemDTCSignificance {
				DEM_EVENT_SIGNIFICANCE_FAULT, 
				DEM_EVENT_SIGNIFICANCE_OCCURRENCE
			}
				
			def DemDTCSignificance getDemDTCSignificanceValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "DEM_EVENT_SIGNIFICANCE_FAULT" : DemDTCSignificance.DEM_EVENT_SIGNIFICANCE_FAULT
					case "DEM_EVENT_SIGNIFICANCE_OCCURRENCE" : DemDTCSignificance.DEM_EVENT_SIGNIFICANCE_OCCURRENCE
				}
			}
			
			def void setDemDTCSignificanceValue(GParameterValue paramValue, DemDTCSignificance value){
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def Integer getDemEventMemoryEntryFdcThresholdStorageValue(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventMemoryEntryFdcThresholdStorageValue"])
			}
			
			def void setDemEventMemoryEntryFdcThresholdStorageValue(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventMemoryEntryFdcThresholdStorageValue"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemEventMemoryEntryFdcThresholdStorageValue"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getDemImmediateNvStorage(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemImmediateNvStorage"])
			}
			
			def void setDemImmediateNvStorage(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemImmediateNvStorage"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemImmediateNvStorage"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getDemMaxNumberFreezeFrameRecords(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemMaxNumberFreezeFrameRecords"])
			}
			
			def void setDemMaxNumberFreezeFrameRecords(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemMaxNumberFreezeFrameRecords"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemMaxNumberFreezeFrameRecords"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemOperationCycle getDemAgingCycleRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemOperationCycle), "DemAgingCycleRef")
			}
					
			def void setDemAgingCycleRef(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemOperationCycle object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DemAgingCycleRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemExtendedDataClass getDemExtendedDataClassRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemExtendedDataClass), "DemExtendedDataClassRef")
			}
					
			def void setDemExtendedDataClassRef(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemExtendedDataClass object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DemExtendedDataClassRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemFreezeFrameClass getDemFreezeFrameClassRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemFreezeFrameClass), "DemFreezeFrameClassRef")
			}
					
			def void setDemFreezeFrameClassRef(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemFreezeFrameClass object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DemFreezeFrameClassRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemFreezeFrameRecNumClass getDemFreezeFrameRecNumClassRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemFreezeFrameRecNumClass), "DemFreezeFrameRecNumClassRef")
			}
					
			def void setDemFreezeFrameRecNumClassRef(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemFreezeFrameRecNumClass object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DemFreezeFrameRecNumClassRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemJ1939NodeAddress getDemJ1939DTC_NodeAddressRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemJ1939NodeAddress), "DemJ1939DTC_NodeAddressRef")
			}
					
			def void setDemJ1939DTC_NodeAddressRef(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemJ1939NodeAddress object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DemJ1939DTC_NodeAddressRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemGeneralJ1939.DemJ1939FreezeFrameClass getDemJ1939ExpandedFreezeFrameClassRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemGeneralJ1939.DemJ1939FreezeFrameClass), "DemJ1939ExpandedFreezeFrameClassRef")
			}
					
			def void setDemJ1939ExpandedFreezeFrameClassRef(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemGeneralJ1939.DemJ1939FreezeFrameClass object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DemJ1939ExpandedFreezeFrameClassRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemGeneralJ1939.DemJ1939FreezeFrameClass getDemJ1939FreezeFrameClassRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemGeneralJ1939.DemJ1939FreezeFrameClass), "DemJ1939FreezeFrameClassRef")
			}
					
			def void setDemJ1939FreezeFrameClassRef(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemGeneralJ1939.DemJ1939FreezeFrameClass object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DemJ1939FreezeFrameClassRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemFreezeFrameClass getDemWWHOBDFreezeFrameClassRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemFreezeFrameClass), "DemWWHOBDFreezeFrameClassRef")
			}
					
			def void setDemWWHOBDFreezeFrameClassRef(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemFreezeFrameClass object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DemWWHOBDFreezeFrameClassRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class DemDebounceCounterBasedClass implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def DemDebounceBehavior getDemDebounceBehavior(){
				getDemDebounceBehaviorValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceBehavior"])
			}
			
			def void setDemDebounceBehavior(DemDebounceBehavior value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceBehavior"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDebounceBehavior"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum DemDebounceBehavior {
				DEM_DEBOUNCE_FREEZE, 
				DEM_DEBOUNCE_RESET
			}
				
			def DemDebounceBehavior getDemDebounceBehaviorValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "DEM_DEBOUNCE_FREEZE" : DemDebounceBehavior.DEM_DEBOUNCE_FREEZE
					case "DEM_DEBOUNCE_RESET" : DemDebounceBehavior.DEM_DEBOUNCE_RESET
				}
			}
			
			def void setDemDebounceBehaviorValue(GParameterValue paramValue, DemDebounceBehavior value){
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def Integer getDemDebounceCounterDecrementStepSize(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterDecrementStepSize"])
			}
			
			def void setDemDebounceCounterDecrementStepSize(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterDecrementStepSize"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDebounceCounterDecrementStepSize"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getDemDebounceCounterFailedThreshold(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterFailedThreshold"])
			}
			
			def void setDemDebounceCounterFailedThreshold(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterFailedThreshold"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDebounceCounterFailedThreshold"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getDemDebounceCounterIncrementStepSize(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterIncrementStepSize"])
			}
			
			def void setDemDebounceCounterIncrementStepSize(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterIncrementStepSize"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDebounceCounterIncrementStepSize"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getDemDebounceCounterJumpDown(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterJumpDown"])
			}
			
			def void setDemDebounceCounterJumpDown(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterJumpDown"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDebounceCounterJumpDown"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getDemDebounceCounterJumpDownValue(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterJumpDownValue"])
			}
			
			def void setDemDebounceCounterJumpDownValue(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterJumpDownValue"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDebounceCounterJumpDownValue"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getDemDebounceCounterJumpUp(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterJumpUp"])
			}
			
			def void setDemDebounceCounterJumpUp(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterJumpUp"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDebounceCounterJumpUp"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getDemDebounceCounterJumpUpValue(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterJumpUpValue"])
			}
			
			def void setDemDebounceCounterJumpUpValue(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterJumpUpValue"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDebounceCounterJumpUpValue"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getDemDebounceCounterPassedThreshold(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterPassedThreshold"])
			}
			
			def void setDemDebounceCounterPassedThreshold(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterPassedThreshold"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDebounceCounterPassedThreshold"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getDemDebounceCounterStorage(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterStorage"])
			}
			
			def void setDemDebounceCounterStorage(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterStorage"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDebounceCounterStorage"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
		static class DemDebounceTimeBaseClass implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def DemDebounceBehavior getDemDebounceBehavior(){
				getDemDebounceBehaviorValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceBehavior"])
			}
			
			def void setDemDebounceBehavior(DemDebounceBehavior value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceBehavior"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDebounceBehavior"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum DemDebounceBehavior {
				DEM_DEBOUNCE_FREEZE, 
				DEM_DEBOUNCE_RESET
			}
				
			def DemDebounceBehavior getDemDebounceBehaviorValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "DEM_DEBOUNCE_FREEZE" : DemDebounceBehavior.DEM_DEBOUNCE_FREEZE
					case "DEM_DEBOUNCE_RESET" : DemDebounceBehavior.DEM_DEBOUNCE_RESET
				}
			}
			
			def void setDemDebounceBehaviorValue(GParameterValue paramValue, DemDebounceBehavior value){
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def Float getDemDebounceTimeFailedThreshold(){
				EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceTimeFailedThreshold"])
			}
			
			def void setDemDebounceTimeFailedThreshold(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceTimeFailedThreshold"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDebounceTimeFailedThreshold"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Float getDemDebounceTimePassedThreshold(){
				EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceTimePassedThreshold"])
			}
			
			def void setDemDebounceTimePassedThreshold(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceTimePassedThreshold"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDebounceTimePassedThreshold"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
		static class DemDtr implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Float getDemDtrCompuDenominator0(){
				EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtrCompuDenominator0"])
			}
			
			def void setDemDtrCompuDenominator0(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtrCompuDenominator0"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDtrCompuDenominator0"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Float getDemDtrCompuNumerator0(){
				EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtrCompuNumerator0"])
			}
			
			def void setDemDtrCompuNumerator0(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtrCompuNumerator0"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDtrCompuNumerator0"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Float getDemDtrCompuNumerator1(){
				EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtrCompuNumerator1"])
			}
			
			def void setDemDtrCompuNumerator1(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtrCompuNumerator1"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDtrCompuNumerator1"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getDemDtrId(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtrId"])
			}
			
			def void setDemDtrId(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtrId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDtrId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getDemDtrMid(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtrMid"])
			}
			
			def void setDemDtrMid(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtrMid"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDtrMid"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getDemDtrTid(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtrTid"])
			}
			
			def void setDemDtrTid(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtrTid"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDtrTid"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getDemDtrUasid(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtrUasid"])
			}
			
			def void setDemDtrUasid(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtrUasid"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDtrUasid"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def DemDtrUpdateKind getDemDtrUpdateKind(){
				getDemDtrUpdateKindValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtrUpdateKind"])
			}
			
			def void setDemDtrUpdateKind(DemDtrUpdateKind value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtrUpdateKind"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDtrUpdateKind"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum DemDtrUpdateKind {
				DEM_DTR_UPDATE_ALWAYS, 
				DEM_DTR_UPDATE_STEADY
			}
				
			def DemDtrUpdateKind getDemDtrUpdateKindValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "DEM_DTR_UPDATE_ALWAYS" : DemDtrUpdateKind.DEM_DTR_UPDATE_ALWAYS
					case "DEM_DTR_UPDATE_STEADY" : DemDtrUpdateKind.DEM_DTR_UPDATE_STEADY
				}
			}
			
			def void setDemDtrUpdateKindValue(GParameterValue paramValue, DemDtrUpdateKind value){
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getDemDtrEventRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "DemDtrEventRef")
			}
					
			def void setDemDtrEventRef(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DemDtrEventRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class DemEventParameter implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Integer getDemComponentPriority(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemComponentPriority"])
			}
			
			def void setDemComponentPriority(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemComponentPriority"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemComponentPriority"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getDemEventFailureCycleCounterThreshold(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventFailureCycleCounterThreshold"])
			}
			
			def void setDemEventFailureCycleCounterThreshold(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventFailureCycleCounterThreshold"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemEventFailureCycleCounterThreshold"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getDemEventId(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventId"])
			}
			
			def void setDemEventId(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemEventId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def DemEventKind getDemEventKind(){
				getDemEventKindValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventKind"])
			}
			
			def void setDemEventKind(DemEventKind value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventKind"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemEventKind"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum DemEventKind {
				DEM_EVENT_KIND_BSW, 
				DEM_EVENT_KIND_SWC
			}
				
			def DemEventKind getDemEventKindValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "DEM_EVENT_KIND_BSW" : DemEventKind.DEM_EVENT_KIND_BSW
					case "DEM_EVENT_KIND_SWC" : DemEventKind.DEM_EVENT_KIND_SWC
				}
			}
			
			def void setDemEventKindValue(GParameterValue paramValue, DemEventKind value){
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def Boolean getDemEventSuppressed(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventSuppressed"])
			}
			
			def void setDemEventSuppressed(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventSuppressed"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemEventSuppressed"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getDemFFPrestorageSupported(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemFFPrestorageSupported"])
			}
			
			def void setDemFFPrestorageSupported(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemFFPrestorageSupported"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemFFPrestorageSupported"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def DemReportBehavior getDemReportBehavior(){
				getDemReportBehaviorValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemReportBehavior"])
			}
			
			def void setDemReportBehavior(DemReportBehavior value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemReportBehavior"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemReportBehavior"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum DemReportBehavior {
				REPORT_AFTER_INIT, 
				REPORT_BEFORE_INIT
			}
				
			def DemReportBehavior getDemReportBehaviorValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "REPORT_AFTER_INIT" : DemReportBehavior.REPORT_AFTER_INIT
					case "REPORT_BEFORE_INIT" : DemReportBehavior.REPORT_BEFORE_INIT
				}
			}
			
			def void setDemReportBehaviorValue(GParameterValue paramValue, DemReportBehavior value){
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemComponent getDemComponentClassRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemComponent), "DemComponentClassRef")
			}
					
			def void setDemComponentClassRef(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemComponent object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DemComponentClassRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemDTC getDemDTCRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemDTC), "DemDTCRef")
			}
					
			def void setDemDTCRef(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemDTC object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DemDTCRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemEnableConditionGroup getDemEnableConditionGroupRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemEnableConditionGroup), "DemEnableConditionGroupRef")
			}
					
			def void setDemEnableConditionGroupRef(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemEnableConditionGroup object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DemEnableConditionGroupRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemOperationCycle getDemEventFailureCycleRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemOperationCycle), "DemEventFailureCycleRef")
			}
					
			def void setDemEventFailureCycleRef(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemOperationCycle object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DemEventFailureCycleRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getDemOBDGroupingAssociativeEventsRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "DemOBDGroupingAssociativeEventsRef")
			}
					
			def void setDemOBDGroupingAssociativeEventsRef(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DemOBDGroupingAssociativeEventsRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemOperationCycle getDemOperationCycleRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemOperationCycle), "DemOperationCycleRef")
			}
					
			def void setDemOperationCycleRef(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemOperationCycle object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DemOperationCycleRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemStorageConditionGroup getDemStorageConditionGroupRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemStorageConditionGroup), "DemStorageConditionGroupRef")
			}
					
			def void setDemStorageConditionGroupRef(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemStorageConditionGroup object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DemStorageConditionGroupRef"], object.getTarget())
				}
			}
			
			
			def DemCallbackClearEventAllowed getDemCallbackClearEventAllowed(){
				containerValue.getByType(typeof(DemCallbackClearEventAllowed))
			}
			
			def void setDemCallbackClearEventAllowed(GContainer subContainer){
				containerValue.setContainer(subContainer, "DemCallbackClearEventAllowed")
			}
			
			def DemCallbackEventDataChanged getDemCallbackEventDataChanged(){
				containerValue.getByType(typeof(DemCallbackEventDataChanged))
			}
			
			def void setDemCallbackEventDataChanged(GContainer subContainer){
				containerValue.setContainer(subContainer, "DemCallbackEventDataChanged")
			}
			
			def List<DemCallbackEventStatusChanged> getDemCallbackEventStatusChangeds(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DemCallbackEventStatusChanged")
					}
				}
				return new BasicWrappingEList<DemCallbackEventStatusChanged, GContainer>(filteredContainers, typeof(DemCallbackEventStatusChanged), typeof(GContainer))
			}
			
			def DemCallbackInitMForE getDemCallbackInitMForE(){
				containerValue.getByType(typeof(DemCallbackInitMForE))
			}
			
			def void setDemCallbackInitMForE(GContainer subContainer){
				containerValue.setContainer(subContainer, "DemCallbackInitMForE")
			}
			
			def DemDebounceAlgorithmClass getDemDebounceAlgorithmClass(){
				containerValue.getByType(typeof(DemDebounceAlgorithmClass))
			}
			
			def void setDemDebounceAlgorithmClass(GContainer subContainer){
				containerValue.setContainer(subContainer, "DemDebounceAlgorithmClass")
			}
			
			def List<DemIndicatorAttribute> getDemIndicatorAttributes(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DemIndicatorAttribute")
					}
				}
				return new BasicWrappingEList<DemIndicatorAttribute, GContainer>(filteredContainers, typeof(DemIndicatorAttribute), typeof(GContainer))
			}
			
			
			static class DemCallbackClearEventAllowed implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def String getDemCallbackClearEventAllowedFnc(){
					EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCallbackClearEventAllowedFnc"])
				}
				
				def void setDemCallbackClearEventAllowedFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCallbackClearEventAllowedFnc"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemCallbackClearEventAllowedFnc"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def DemClearEventAllowedBehavior getDemClearEventAllowedBehavior(){
					getDemClearEventAllowedBehaviorValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemClearEventAllowedBehavior"])
				}
				
				def void setDemClearEventAllowedBehavior(DemClearEventAllowedBehavior value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemClearEventAllowedBehavior"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemClearEventAllowedBehavior"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				enum DemClearEventAllowedBehavior {
					DEM_NO_STATUS_BYTE_CHANGE, 
					DEM_ONLY_THIS_CYCLE_AND_READINESS
				}
					
				def DemClearEventAllowedBehavior getDemClearEventAllowedBehaviorValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "DEM_NO_STATUS_BYTE_CHANGE" : DemClearEventAllowedBehavior.DEM_NO_STATUS_BYTE_CHANGE
						case "DEM_ONLY_THIS_CYCLE_AND_READINESS" : DemClearEventAllowedBehavior.DEM_ONLY_THIS_CYCLE_AND_READINESS
					}
				}
				
				def void setDemClearEventAllowedBehaviorValue(GParameterValue paramValue, DemClearEventAllowedBehavior value){
					EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
				}
				
				
				
				
			}
			
			static class DemCallbackEventDataChanged implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def String getDemCallbackEventDataChangedFnc(){
					EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCallbackEventDataChangedFnc"])
				}
				
				def void setDemCallbackEventDataChangedFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCallbackEventDataChangedFnc"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemCallbackEventDataChangedFnc"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				
				
			}
			
			static class DemCallbackEventStatusChanged implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def String getDemCallbackEventStatusChangedFnc(){
					EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCallbackEventStatusChangedFnc"])
				}
				
				def void setDemCallbackEventStatusChangedFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCallbackEventStatusChangedFnc"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemCallbackEventStatusChangedFnc"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				
				
			}
			
			static class DemCallbackInitMForE implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def String getDemCallbackInitMForEFnc(){
					EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCallbackInitMForEFnc"])
				}
				
				def void setDemCallbackInitMForEFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCallbackInitMForEFnc"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemCallbackInitMForEFnc"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				
				
			}
			
			static class DemDebounceAlgorithmClass implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def DemDebounceCounterBased getDemDebounceCounterBased(){
					containerValue.getByType(typeof(DemDebounceCounterBased))
				}
				
				def void setDemDebounceCounterBased(GContainer subContainer){
					containerValue.setContainer(subContainer, "DemDebounceCounterBased")
				}
				def DemDebounceMonitorInternal getDemDebounceMonitorInternal(){
					containerValue.getByType(typeof(DemDebounceMonitorInternal))
				}
				
				def void setDemDebounceMonitorInternal(GContainer subContainer){
					containerValue.setContainer(subContainer, "DemDebounceMonitorInternal")
				}
				def DemDebounceTimeBase getDemDebounceTimeBase(){
					containerValue.getByType(typeof(DemDebounceTimeBase))
				}
				
				def void setDemDebounceTimeBase(GContainer subContainer){
					containerValue.setContainer(subContainer, "DemDebounceTimeBase")
				}
				
				static class DemDebounceCounterBased implements BasicWrappingEList.IWrapper<GContainer> {
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
					
					
					def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemDebounceCounterBasedClass getDemDebounceCounterBasedClassRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemDebounceCounterBasedClass), "DemDebounceCounterBasedClassRef")
					}
							
					def void setDemDebounceCounterBasedClassRef(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemDebounceCounterBasedClass object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DemDebounceCounterBasedClassRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class DemDebounceMonitorInternal implements BasicWrappingEList.IWrapper<GContainer> {
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
					
					
					
					def DemCallbackGetFDC getDemCallbackGetFDC(){
						containerValue.getByType(typeof(DemCallbackGetFDC))
					}
					
					def void setDemCallbackGetFDC(GContainer subContainer){
						containerValue.setContainer(subContainer, "DemCallbackGetFDC")
					}
					
					
					static class DemCallbackGetFDC implements BasicWrappingEList.IWrapper<GContainer> {
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
						
						def String getDemCallbackGetFDCFnc(){
							EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCallbackGetFDCFnc"])
						}
						
						def void setDemCallbackGetFDCFnc(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCallbackGetFDCFnc"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemCallbackGetFDCFnc"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
						}
						
						
						
						
					}
					
				}
				
				static class DemDebounceTimeBase implements BasicWrappingEList.IWrapper<GContainer> {
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
					
					
					def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemDebounceTimeBaseClass getDemDebounceTimeBaseRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemDebounceTimeBaseClass), "DemDebounceTimeBaseRef")
					}
							
					def void setDemDebounceTimeBaseRef(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemDebounceTimeBaseClass object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DemDebounceTimeBaseRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
			static class DemIndicatorAttribute implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def DemIndicatorBehaviour getDemIndicatorBehaviour(){
					getDemIndicatorBehaviourValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemIndicatorBehaviour"])
				}
				
				def void setDemIndicatorBehaviour(DemIndicatorBehaviour value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemIndicatorBehaviour"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemIndicatorBehaviour"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				enum DemIndicatorBehaviour {
					DEM_INDICATOR_BLINKING, 
					DEM_INDICATOR_BLINK_CONT, 
					DEM_INDICATOR_CONTINUOUS, 
					DEM_INDICATOR_FAST_FLASH, 
					DEM_INDICATOR_SLOW_FLASH
				}
					
				def DemIndicatorBehaviour getDemIndicatorBehaviourValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "DEM_INDICATOR_BLINKING" : DemIndicatorBehaviour.DEM_INDICATOR_BLINKING
						case "DEM_INDICATOR_BLINK_CONT" : DemIndicatorBehaviour.DEM_INDICATOR_BLINK_CONT
						case "DEM_INDICATOR_CONTINUOUS" : DemIndicatorBehaviour.DEM_INDICATOR_CONTINUOUS
						case "DEM_INDICATOR_FAST_FLASH" : DemIndicatorBehaviour.DEM_INDICATOR_FAST_FLASH
						case "DEM_INDICATOR_SLOW_FLASH" : DemIndicatorBehaviour.DEM_INDICATOR_SLOW_FLASH
					}
				}
				
				def void setDemIndicatorBehaviourValue(GParameterValue paramValue, DemIndicatorBehaviour value){
					EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
				}
				
				def Integer getDemIndicatorFailureCycleCounterThreshold(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemIndicatorFailureCycleCounterThreshold"])
				}
				
				def void setDemIndicatorFailureCycleCounterThreshold(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemIndicatorFailureCycleCounterThreshold"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemIndicatorFailureCycleCounterThreshold"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getDemIndicatorHealingCycleCounterThreshold(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemIndicatorHealingCycleCounterThreshold"])
				}
				
				def void setDemIndicatorHealingCycleCounterThreshold(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemIndicatorHealingCycleCounterThreshold"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemIndicatorHealingCycleCounterThreshold"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemIndicator getDemIndicatorRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemIndicator), "DemIndicatorRef")
				}
						
				def void setDemIndicatorRef(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemIndicator object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DemIndicatorRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class DemJ1939NodeAddress implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			
			def List<org.artop.ecuc.autosar421.accessors.J1939Nm.J1939NmConfigSet.J1939NmNode> getDemJ1939NmNodeRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
					containerDef.gGetReferences.findFirst[gGetShortName == "DemJ1939NmNodeRef"] else null
								
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "DemJ1939NmNodeRef")
					}
				}
				
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.J1939Nm.J1939NmConfigSet.J1939NmNode>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.J1939Nm.J1939NmConfigSet.J1939NmNode)) {
					override protected wrap(org.artop.ecuc.autosar421.accessors.J1939Nm.J1939NmConfigSet.J1939NmNode object) throws CoreException {
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
								return new org.artop.ecuc.autosar421.accessors.J1939Nm.J1939NmConfigSet.J1939NmNode(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			
		}
		
		static class DemObdDTC implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Boolean getDemConsiderPtoStatus(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemConsiderPtoStatus"])
			}
			
			def void setDemConsiderPtoStatus(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemConsiderPtoStatus"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemConsiderPtoStatus"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getDemDtcValue(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtcValue"])
			}
			
			def void setDemDtcValue(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtcValue"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDtcValue"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def DemEventOBDReadinessGroup getDemEventOBDReadinessGroup(){
				getDemEventOBDReadinessGroupValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventOBDReadinessGroup"])
			}
			
			def void setDemEventOBDReadinessGroup(DemEventOBDReadinessGroup value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventOBDReadinessGroup"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemEventOBDReadinessGroup"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum DemEventOBDReadinessGroup {
				DEM_OBD_RDY_AC, 
				DEM_OBD_RDY_BOOSTPR, 
				DEM_OBD_RDY_CAT, 
				DEM_OBD_RDY_CMPRCMPT, 
				DEM_OBD_RDY_EGSENS, 
				DEM_OBD_RDY_ERG, 
				DEM_OBD_RDY_EVAP, 
				DEM_OBD_RDY_FLSYS, 
				DEM_OBD_RDY_FLSYS_NONCONT, 
				DEM_OBD_RDY_HCCAT, 
				DEM_OBD_RDY_HTCAT, 
				DEM_OBD_RDY_MISF, 
				DEM_OBD_RDY_NONE, 
				DEM_OBD_RDY_NOXCAT, 
				DEM_OBD_RDY_O2SENS, 
				DEM_OBD_RDY_O2SENSHT, 
				DEM_OBD_RDY_PMFLT, 
				DEM_OBD_RDY_SECAIR
			}
				
			def DemEventOBDReadinessGroup getDemEventOBDReadinessGroupValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "DEM_OBD_RDY_AC" : DemEventOBDReadinessGroup.DEM_OBD_RDY_AC
					case "DEM_OBD_RDY_BOOSTPR" : DemEventOBDReadinessGroup.DEM_OBD_RDY_BOOSTPR
					case "DEM_OBD_RDY_CAT" : DemEventOBDReadinessGroup.DEM_OBD_RDY_CAT
					case "DEM_OBD_RDY_CMPRCMPT" : DemEventOBDReadinessGroup.DEM_OBD_RDY_CMPRCMPT
					case "DEM_OBD_RDY_EGSENS" : DemEventOBDReadinessGroup.DEM_OBD_RDY_EGSENS
					case "DEM_OBD_RDY_ERG" : DemEventOBDReadinessGroup.DEM_OBD_RDY_ERG
					case "DEM_OBD_RDY_EVAP" : DemEventOBDReadinessGroup.DEM_OBD_RDY_EVAP
					case "DEM_OBD_RDY_FLSYS" : DemEventOBDReadinessGroup.DEM_OBD_RDY_FLSYS
					case "DEM_OBD_RDY_FLSYS_NONCONT" : DemEventOBDReadinessGroup.DEM_OBD_RDY_FLSYS_NONCONT
					case "DEM_OBD_RDY_HCCAT" : DemEventOBDReadinessGroup.DEM_OBD_RDY_HCCAT
					case "DEM_OBD_RDY_HTCAT" : DemEventOBDReadinessGroup.DEM_OBD_RDY_HTCAT
					case "DEM_OBD_RDY_MISF" : DemEventOBDReadinessGroup.DEM_OBD_RDY_MISF
					case "DEM_OBD_RDY_NONE" : DemEventOBDReadinessGroup.DEM_OBD_RDY_NONE
					case "DEM_OBD_RDY_NOXCAT" : DemEventOBDReadinessGroup.DEM_OBD_RDY_NOXCAT
					case "DEM_OBD_RDY_O2SENS" : DemEventOBDReadinessGroup.DEM_OBD_RDY_O2SENS
					case "DEM_OBD_RDY_O2SENSHT" : DemEventOBDReadinessGroup.DEM_OBD_RDY_O2SENSHT
					case "DEM_OBD_RDY_PMFLT" : DemEventOBDReadinessGroup.DEM_OBD_RDY_PMFLT
					case "DEM_OBD_RDY_SECAIR" : DemEventOBDReadinessGroup.DEM_OBD_RDY_SECAIR
				}
			}
			
			def void setDemEventOBDReadinessGroupValue(GParameterValue paramValue, DemEventOBDReadinessGroup value){
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def Integer getDemJ1939DTCValue(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939DTCValue"])
			}
			
			def void setDemJ1939DTCValue(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939DTCValue"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemJ1939DTCValue"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
		static class DemPidClass implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Integer getDemPidIdentifier(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemPidIdentifier"])
			}
			
			def void setDemPidIdentifier(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemPidIdentifier"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemPidIdentifier"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			
			def List<DemPidDataElement> getDemPidDataElements(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DemPidDataElement")
					}
				}
				return new BasicWrappingEList<DemPidDataElement, GContainer>(filteredContainers, typeof(DemPidDataElement), typeof(GContainer))
			}
			
			
			static class DemPidDataElement implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				
				
				
				
			}
			
		}
		
	}
	static class DemGeneral implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		def DemAgingCycleCounterProcessing getDemAgingCycleCounterProcessing(){
			getDemAgingCycleCounterProcessingValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemAgingCycleCounterProcessing"])
		}
		
		def void setDemAgingCycleCounterProcessing(DemAgingCycleCounterProcessing value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemAgingCycleCounterProcessing"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemAgingCycleCounterProcessing"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum DemAgingCycleCounterProcessing {
			DEM_PROCESS_AGINGCTR_EXTERN, 
			DEM_PROCESS_AGINGCTR_INTERN
		}
			
		def DemAgingCycleCounterProcessing getDemAgingCycleCounterProcessingValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "DEM_PROCESS_AGINGCTR_EXTERN" : DemAgingCycleCounterProcessing.DEM_PROCESS_AGINGCTR_EXTERN
				case "DEM_PROCESS_AGINGCTR_INTERN" : DemAgingCycleCounterProcessing.DEM_PROCESS_AGINGCTR_INTERN
			}
		}
		
		def void setDemAgingCycleCounterProcessingValue(GParameterValue paramValue, DemAgingCycleCounterProcessing value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def Boolean getDemAgingRequieresTestedCycle(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemAgingRequieresTestedCycle"])
		}
		
		def void setDemAgingRequieresTestedCycle(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemAgingRequieresTestedCycle"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemAgingRequieresTestedCycle"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def DemAvailabilitySupport getDemAvailabilitySupport(){
			getDemAvailabilitySupportValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemAvailabilitySupport"])
		}
		
		def void setDemAvailabilitySupport(DemAvailabilitySupport value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemAvailabilitySupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemAvailabilitySupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum DemAvailabilitySupport {
			DEM_EVENT_AVAILABILITY, 
			DEM_NO_AVAILABILITY
		}
			
		def DemAvailabilitySupport getDemAvailabilitySupportValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "DEM_EVENT_AVAILABILITY" : DemAvailabilitySupport.DEM_EVENT_AVAILABILITY
				case "DEM_NO_AVAILABILITY" : DemAvailabilitySupport.DEM_NO_AVAILABILITY
			}
		}
		
		def void setDemAvailabilitySupportValue(GParameterValue paramValue, DemAvailabilitySupport value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def Integer getDemBswErrorBufferSize(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemBswErrorBufferSize"])
		}
		
		def void setDemBswErrorBufferSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemBswErrorBufferSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemBswErrorBufferSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def DemClearDTCBehavior getDemClearDTCBehavior(){
			getDemClearDTCBehaviorValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemClearDTCBehavior"])
		}
		
		def void setDemClearDTCBehavior(DemClearDTCBehavior value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemClearDTCBehavior"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemClearDTCBehavior"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum DemClearDTCBehavior {
			DEM_CLRRESP_NONVOLATILE_FINISH, 
			DEM_CLRRESP_NONVOLATILE_TRIGGER, 
			DEM_CLRRESP_VOLATILE
		}
			
		def DemClearDTCBehavior getDemClearDTCBehaviorValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "DEM_CLRRESP_NONVOLATILE_FINISH" : DemClearDTCBehavior.DEM_CLRRESP_NONVOLATILE_FINISH
				case "DEM_CLRRESP_NONVOLATILE_TRIGGER" : DemClearDTCBehavior.DEM_CLRRESP_NONVOLATILE_TRIGGER
				case "DEM_CLRRESP_VOLATILE" : DemClearDTCBehavior.DEM_CLRRESP_VOLATILE
			}
		}
		
		def void setDemClearDTCBehaviorValue(GParameterValue paramValue, DemClearDTCBehavior value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def DemClearDTCLimitation getDemClearDTCLimitation(){
			getDemClearDTCLimitationValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemClearDTCLimitation"])
		}
		
		def void setDemClearDTCLimitation(DemClearDTCLimitation value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemClearDTCLimitation"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemClearDTCLimitation"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum DemClearDTCLimitation {
			DEM_ALL_SUPPORTED_DTCS, 
			DEM_ONLY_CLEAR_ALL_DTCS
		}
			
		def DemClearDTCLimitation getDemClearDTCLimitationValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "DEM_ALL_SUPPORTED_DTCS" : DemClearDTCLimitation.DEM_ALL_SUPPORTED_DTCS
				case "DEM_ONLY_CLEAR_ALL_DTCS" : DemClearDTCLimitation.DEM_ONLY_CLEAR_ALL_DTCS
			}
		}
		
		def void setDemClearDTCLimitationValue(GParameterValue paramValue, DemClearDTCLimitation value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def DemDataElementDefaultEndianness getDemDataElementDefaultEndianness(){
			getDemDataElementDefaultEndiannessValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDataElementDefaultEndianness"])
		}
		
		def void setDemDataElementDefaultEndianness(DemDataElementDefaultEndianness value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDataElementDefaultEndianness"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDataElementDefaultEndianness"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum DemDataElementDefaultEndianness {
			BIG_ENDIAN, 
			LITTLE_ENDIAN, 
			OPAQUE
		}
			
		def DemDataElementDefaultEndianness getDemDataElementDefaultEndiannessValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "BIG_ENDIAN" : DemDataElementDefaultEndianness.BIG_ENDIAN
				case "LITTLE_ENDIAN" : DemDataElementDefaultEndianness.LITTLE_ENDIAN
				case "OPAQUE" : DemDataElementDefaultEndianness.OPAQUE
			}
		}
		
		def void setDemDataElementDefaultEndiannessValue(GParameterValue paramValue, DemDataElementDefaultEndianness value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def Boolean getDemDebounceCounterBasedSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterBasedSupport"])
		}
		
		def void setDemDebounceCounterBasedSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterBasedSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDebounceCounterBasedSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getDemDebounceTimeBasedSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceTimeBasedSupport"])
		}
		
		def void setDemDebounceTimeBasedSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceTimeBasedSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDebounceTimeBasedSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getDemDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDevErrorDetect"])
		}
		
		def void setDemDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getDemDtcStatusAvailabilityMask(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtcStatusAvailabilityMask"])
		}
		
		def void setDemDtcStatusAvailabilityMask(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtcStatusAvailabilityMask"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDtcStatusAvailabilityMask"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def DemEnvironmentDataCapture getDemEnvironmentDataCapture(){
			getDemEnvironmentDataCaptureValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEnvironmentDataCapture"])
		}
		
		def void setDemEnvironmentDataCapture(DemEnvironmentDataCapture value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEnvironmentDataCapture"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemEnvironmentDataCapture"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum DemEnvironmentDataCapture {
			DEM_CAPTURE_ASYNCHRONOUS_TO_REPORTING, 
			DEM_CAPTURE_SYNCHRONOUS_TO_REPORTING
		}
			
		def DemEnvironmentDataCapture getDemEnvironmentDataCaptureValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "DEM_CAPTURE_ASYNCHRONOUS_TO_REPORTING" : DemEnvironmentDataCapture.DEM_CAPTURE_ASYNCHRONOUS_TO_REPORTING
				case "DEM_CAPTURE_SYNCHRONOUS_TO_REPORTING" : DemEnvironmentDataCapture.DEM_CAPTURE_SYNCHRONOUS_TO_REPORTING
			}
		}
		
		def void setDemEnvironmentDataCaptureValue(GParameterValue paramValue, DemEnvironmentDataCapture value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def DemEventCombinationSupport getDemEventCombinationSupport(){
			getDemEventCombinationSupportValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventCombinationSupport"])
		}
		
		def void setDemEventCombinationSupport(DemEventCombinationSupport value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventCombinationSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemEventCombinationSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum DemEventCombinationSupport {
			DEM_EVCOMB_DISABLED, 
			DEM_EVCOMB_ONRETRIEVAL, 
			DEM_EVCOMB_ONSTORAGE
		}
			
		def DemEventCombinationSupport getDemEventCombinationSupportValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "DEM_EVCOMB_DISABLED" : DemEventCombinationSupport.DEM_EVCOMB_DISABLED
				case "DEM_EVCOMB_ONRETRIEVAL" : DemEventCombinationSupport.DEM_EVCOMB_ONRETRIEVAL
				case "DEM_EVCOMB_ONSTORAGE" : DemEventCombinationSupport.DEM_EVCOMB_ONSTORAGE
			}
		}
		
		def void setDemEventCombinationSupportValue(GParameterValue paramValue, DemEventCombinationSupport value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def DemEventDisplacementStrategy getDemEventDisplacementStrategy(){
			getDemEventDisplacementStrategyValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventDisplacementStrategy"])
		}
		
		def void setDemEventDisplacementStrategy(DemEventDisplacementStrategy value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventDisplacementStrategy"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemEventDisplacementStrategy"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum DemEventDisplacementStrategy {
			DEM_DISPLACEMENT_FULL, 
			DEM_DISPLACEMENT_NONE, 
			DEM_DISPLACEMENT_PRIO_OCC
		}
			
		def DemEventDisplacementStrategy getDemEventDisplacementStrategyValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "DEM_DISPLACEMENT_FULL" : DemEventDisplacementStrategy.DEM_DISPLACEMENT_FULL
				case "DEM_DISPLACEMENT_NONE" : DemEventDisplacementStrategy.DEM_DISPLACEMENT_NONE
				case "DEM_DISPLACEMENT_PRIO_OCC" : DemEventDisplacementStrategy.DEM_DISPLACEMENT_PRIO_OCC
			}
		}
		
		def void setDemEventDisplacementStrategyValue(GParameterValue paramValue, DemEventDisplacementStrategy value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def DemEventMemoryEntryStorageTrigger getDemEventMemoryEntryStorageTrigger(){
			getDemEventMemoryEntryStorageTriggerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventMemoryEntryStorageTrigger"])
		}
		
		def void setDemEventMemoryEntryStorageTrigger(DemEventMemoryEntryStorageTrigger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventMemoryEntryStorageTrigger"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemEventMemoryEntryStorageTrigger"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum DemEventMemoryEntryStorageTrigger {
			DEM_TRIGGER_ON_CONFIRMED, 
			DEM_TRIGGER_ON_FDC_THRESHOLD, 
			DEM_TRIGGER_ON_PENDING, 
			DEM_TRIGGER_ON_TEST_FAILED
		}
			
		def DemEventMemoryEntryStorageTrigger getDemEventMemoryEntryStorageTriggerValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "DEM_TRIGGER_ON_CONFIRMED" : DemEventMemoryEntryStorageTrigger.DEM_TRIGGER_ON_CONFIRMED
				case "DEM_TRIGGER_ON_FDC_THRESHOLD" : DemEventMemoryEntryStorageTrigger.DEM_TRIGGER_ON_FDC_THRESHOLD
				case "DEM_TRIGGER_ON_PENDING" : DemEventMemoryEntryStorageTrigger.DEM_TRIGGER_ON_PENDING
				case "DEM_TRIGGER_ON_TEST_FAILED" : DemEventMemoryEntryStorageTrigger.DEM_TRIGGER_ON_TEST_FAILED
			}
		}
		
		def void setDemEventMemoryEntryStorageTriggerValue(GParameterValue paramValue, DemEventMemoryEntryStorageTrigger value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def Boolean getDemGeneralInterfaceSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemGeneralInterfaceSupport"])
		}
		
		def void setDemGeneralInterfaceSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemGeneralInterfaceSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemGeneralInterfaceSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def List<String> getDemHeaderFileInclusions(){
			val List<EcucTextualParamValue> filteredParameterValues = new AbstractFilteringEList<EcucTextualParamValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {
				override protected accept(EcucTextualParamValue item) {
					return accept(item, typeof(GConfigParameter), "DemHeaderFileInclusion")
				}
			}
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == "DemHeaderFileInclusion"]
				return new StringValueUnwrappingEList(filteredParameterValues, typeof(EcucTextualParamValue), typeof(String), parameterDef)
			}
		}
		
		def Integer getDemImmediateNvStorageLimit(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemImmediateNvStorageLimit"])
		}
		
		def void setDemImmediateNvStorageLimit(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemImmediateNvStorageLimit"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemImmediateNvStorageLimit"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getDemMaxNumberEventEntryEventBuffer(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemMaxNumberEventEntryEventBuffer"])
		}
		
		def void setDemMaxNumberEventEntryEventBuffer(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemMaxNumberEventEntryEventBuffer"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemMaxNumberEventEntryEventBuffer"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getDemMaxNumberEventEntryPermanent(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemMaxNumberEventEntryPermanent"])
		}
		
		def void setDemMaxNumberEventEntryPermanent(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemMaxNumberEventEntryPermanent"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemMaxNumberEventEntryPermanent"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getDemMaxNumberPrestoredFF(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemMaxNumberPrestoredFF"])
		}
		
		def void setDemMaxNumberPrestoredFF(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemMaxNumberPrestoredFF"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemMaxNumberPrestoredFF"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def DemOBDSupport getDemOBDSupport(){
			getDemOBDSupportValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOBDSupport"])
		}
		
		def void setDemOBDSupport(DemOBDSupport value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOBDSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemOBDSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum DemOBDSupport {
			DEM_OBD_DEP_SEC_ECU, 
			DEM_OBD_MASTER_ECU, 
			DEM_OBD_NO_OBD_SUPPORT, 
			DEM_OBD_PRIMARY_ECU
		}
			
		def DemOBDSupport getDemOBDSupportValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "DEM_OBD_DEP_SEC_ECU" : DemOBDSupport.DEM_OBD_DEP_SEC_ECU
				case "DEM_OBD_MASTER_ECU" : DemOBDSupport.DEM_OBD_MASTER_ECU
				case "DEM_OBD_NO_OBD_SUPPORT" : DemOBDSupport.DEM_OBD_NO_OBD_SUPPORT
				case "DEM_OBD_PRIMARY_ECU" : DemOBDSupport.DEM_OBD_PRIMARY_ECU
			}
		}
		
		def void setDemOBDSupportValue(GParameterValue paramValue, DemOBDSupport value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def DemOccurrenceCounterProcessing getDemOccurrenceCounterProcessing(){
			getDemOccurrenceCounterProcessingValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOccurrenceCounterProcessing"])
		}
		
		def void setDemOccurrenceCounterProcessing(DemOccurrenceCounterProcessing value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOccurrenceCounterProcessing"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemOccurrenceCounterProcessing"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum DemOccurrenceCounterProcessing {
			DEM_PROCESS_OCCCTR_CDTC, 
			DEM_PROCESS_OCCCTR_TF
		}
			
		def DemOccurrenceCounterProcessing getDemOccurrenceCounterProcessingValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "DEM_PROCESS_OCCCTR_CDTC" : DemOccurrenceCounterProcessing.DEM_PROCESS_OCCCTR_CDTC
				case "DEM_PROCESS_OCCCTR_TF" : DemOccurrenceCounterProcessing.DEM_PROCESS_OCCCTR_TF
			}
		}
		
		def void setDemOccurrenceCounterProcessingValue(GParameterValue paramValue, DemOccurrenceCounterProcessing value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def Boolean getDemOperationCycleStatusStorage(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOperationCycleStatusStorage"])
		}
		
		def void setDemOperationCycleStatusStorage(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOperationCycleStatusStorage"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemOperationCycleStatusStorage"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getDemPTOSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemPTOSupport"])
		}
		
		def void setDemPTOSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemPTOSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemPTOSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getDemResetConfirmedBitOnOverflow(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemResetConfirmedBitOnOverflow"])
		}
		
		def void setDemResetConfirmedBitOnOverflow(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemResetConfirmedBitOnOverflow"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemResetConfirmedBitOnOverflow"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def DemStatusBitHandlingTestFailedSinceLastClear getDemStatusBitHandlingTestFailedSinceLastClear(){
			getDemStatusBitHandlingTestFailedSinceLastClearValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemStatusBitHandlingTestFailedSinceLastClear"])
		}
		
		def void setDemStatusBitHandlingTestFailedSinceLastClear(DemStatusBitHandlingTestFailedSinceLastClear value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemStatusBitHandlingTestFailedSinceLastClear"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemStatusBitHandlingTestFailedSinceLastClear"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum DemStatusBitHandlingTestFailedSinceLastClear {
			DEM_STATUS_BIT_AGING_AND_DISPLACEMENT, 
			DEM_STATUS_BIT_NORMAL
		}
			
		def DemStatusBitHandlingTestFailedSinceLastClear getDemStatusBitHandlingTestFailedSinceLastClearValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "DEM_STATUS_BIT_AGING_AND_DISPLACEMENT" : DemStatusBitHandlingTestFailedSinceLastClear.DEM_STATUS_BIT_AGING_AND_DISPLACEMENT
				case "DEM_STATUS_BIT_NORMAL" : DemStatusBitHandlingTestFailedSinceLastClear.DEM_STATUS_BIT_NORMAL
			}
		}
		
		def void setDemStatusBitHandlingTestFailedSinceLastClearValue(GParameterValue paramValue, DemStatusBitHandlingTestFailedSinceLastClear value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def Boolean getDemStatusBitStorageTestFailed(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemStatusBitStorageTestFailed"])
		}
		
		def void setDemStatusBitStorageTestFailed(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemStatusBitStorageTestFailed"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemStatusBitStorageTestFailed"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def DemSuppressionSupport getDemSuppressionSupport(){
			getDemSuppressionSupportValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemSuppressionSupport"])
		}
		
		def void setDemSuppressionSupport(DemSuppressionSupport value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemSuppressionSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemSuppressionSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum DemSuppressionSupport {
			DEM_DTC_SUPPRESSION, 
			DEM_NO_SUPPRESSION
		}
			
		def DemSuppressionSupport getDemSuppressionSupportValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "DEM_DTC_SUPPRESSION" : DemSuppressionSupport.DEM_DTC_SUPPRESSION
				case "DEM_NO_SUPPRESSION" : DemSuppressionSupport.DEM_NO_SUPPRESSION
			}
		}
		
		def void setDemSuppressionSupportValue(GParameterValue paramValue, DemSuppressionSupport value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def Float getDemTaskTime(){
			EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemTaskTime"])
		}
		
		def void setDemTaskTime(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemTaskTime"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemTaskTime"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getDemTriggerDcmReports(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemTriggerDcmReports"])
		}
		
		def void setDemTriggerDcmReports(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemTriggerDcmReports"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemTriggerDcmReports"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getDemTriggerDltReports(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemTriggerDltReports"])
		}
		
		def void setDemTriggerDltReports(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemTriggerDltReports"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemTriggerDltReports"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getDemTriggerFiMReports(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemTriggerFiMReports"])
		}
		
		def void setDemTriggerFiMReports(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemTriggerFiMReports"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemTriggerFiMReports"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getDemTriggerMonitorInitBeforeClearOk(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemTriggerMonitorInitBeforeClearOk"])
		}
		
		def void setDemTriggerMonitorInitBeforeClearOk(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemTriggerMonitorInitBeforeClearOk"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemTriggerMonitorInitBeforeClearOk"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def DemTypeOfDTCSupported getDemTypeOfDTCSupported(){
			getDemTypeOfDTCSupportedValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemTypeOfDTCSupported"])
		}
		
		def void setDemTypeOfDTCSupported(DemTypeOfDTCSupported value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemTypeOfDTCSupported"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemTypeOfDTCSupported"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum DemTypeOfDTCSupported {
			DEM_DTC_TRANSLATION_ISO11992_4, 
			DEM_DTC_TRANSLATION_ISO14229_1, 
			DEM_DTC_TRANSLATION_ISO15031_6, 
			DEM_DTC_TRANSLATION_SAEJ1939_73, 
			DEM_DTC_TRANSLATION_SAE_J2012_DA_DTCFORMAT_04
		}
			
		def DemTypeOfDTCSupported getDemTypeOfDTCSupportedValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "DEM_DTC_TRANSLATION_ISO11992_4" : DemTypeOfDTCSupported.DEM_DTC_TRANSLATION_ISO11992_4
				case "DEM_DTC_TRANSLATION_ISO14229_1" : DemTypeOfDTCSupported.DEM_DTC_TRANSLATION_ISO14229_1
				case "DEM_DTC_TRANSLATION_ISO15031_6" : DemTypeOfDTCSupported.DEM_DTC_TRANSLATION_ISO15031_6
				case "DEM_DTC_TRANSLATION_SAEJ1939_73" : DemTypeOfDTCSupported.DEM_DTC_TRANSLATION_SAEJ1939_73
				case "DEM_DTC_TRANSLATION_SAE_J2012_DA_DTCFORMAT_04" : DemTypeOfDTCSupported.DEM_DTC_TRANSLATION_SAE_J2012_DA_DTCFORMAT_04
			}
		}
		
		def void setDemTypeOfDTCSupportedValue(GParameterValue paramValue, DemTypeOfDTCSupported value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def DemTypeOfFreezeFrameRecordNumeration getDemTypeOfFreezeFrameRecordNumeration(){
			getDemTypeOfFreezeFrameRecordNumerationValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemTypeOfFreezeFrameRecordNumeration"])
		}
		
		def void setDemTypeOfFreezeFrameRecordNumeration(DemTypeOfFreezeFrameRecordNumeration value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemTypeOfFreezeFrameRecordNumeration"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemTypeOfFreezeFrameRecordNumeration"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum DemTypeOfFreezeFrameRecordNumeration {
			DEM_FF_RECNUM_CALCULATED, 
			DEM_FF_RECNUM_CONFIGURED
		}
			
		def DemTypeOfFreezeFrameRecordNumeration getDemTypeOfFreezeFrameRecordNumerationValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "DEM_FF_RECNUM_CALCULATED" : DemTypeOfFreezeFrameRecordNumeration.DEM_FF_RECNUM_CALCULATED
				case "DEM_FF_RECNUM_CONFIGURED" : DemTypeOfFreezeFrameRecordNumeration.DEM_FF_RECNUM_CONFIGURED
			}
		}
		
		def void setDemTypeOfFreezeFrameRecordNumerationValue(GParameterValue paramValue, DemTypeOfFreezeFrameRecordNumeration value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def Boolean getDemVersionInfoApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemVersionInfoApi"])
		}
		
		def void setDemVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		
		def org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemIndicator getDemMILIndicatorRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemIndicator), "DemMILIndicatorRef")
		}
				
		def void setDemMILIndicatorRef(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemIndicator object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DemMILIndicatorRef"], object.getTarget())
			}
		}
		
		
		def List<DemCallbackDTCStatusChanged> getDemCallbackDTCStatusChangeds(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemCallbackDTCStatusChanged")
				}
			}
			return new BasicWrappingEList<DemCallbackDTCStatusChanged, GContainer>(filteredContainers, typeof(DemCallbackDTCStatusChanged), typeof(GContainer))
		}
		
		def List<DemDataElementClass> getDemDataElementClass(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemDataElementClass")
				}
			}
			return new BasicWrappingEList<DemDataElementClass, GContainer>(filteredContainers, typeof(DemDataElementClass), typeof(GContainer))
		}
		
		def List<DemDidClass> getDemDidClass(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemDidClass")
				}
			}
			return new BasicWrappingEList<DemDidClass, GContainer>(filteredContainers, typeof(DemDidClass), typeof(GContainer))
		}
		
		def List<DemEnableCondition> getDemEnableConditions(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemEnableCondition")
				}
			}
			return new BasicWrappingEList<DemEnableCondition, GContainer>(filteredContainers, typeof(DemEnableCondition), typeof(GContainer))
		}
		
		def List<DemEnableConditionGroup> getDemEnableConditionGroups(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemEnableConditionGroup")
				}
			}
			return new BasicWrappingEList<DemEnableConditionGroup, GContainer>(filteredContainers, typeof(DemEnableConditionGroup), typeof(GContainer))
		}
		
		def List<DemExtendedDataClass> getDemExtendedDataClass(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemExtendedDataClass")
				}
			}
			return new BasicWrappingEList<DemExtendedDataClass, GContainer>(filteredContainers, typeof(DemExtendedDataClass), typeof(GContainer))
		}
		
		def List<DemExtendedDataRecordClass> getDemExtendedDataRecordClass(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemExtendedDataRecordClass")
				}
			}
			return new BasicWrappingEList<DemExtendedDataRecordClass, GContainer>(filteredContainers, typeof(DemExtendedDataRecordClass), typeof(GContainer))
		}
		
		def List<DemFreezeFrameClass> getDemFreezeFrameClass(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemFreezeFrameClass")
				}
			}
			return new BasicWrappingEList<DemFreezeFrameClass, GContainer>(filteredContainers, typeof(DemFreezeFrameClass), typeof(GContainer))
		}
		
		def List<DemFreezeFrameRecNumClass> getDemFreezeFrameRecNumClass(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemFreezeFrameRecNumClass")
				}
			}
			return new BasicWrappingEList<DemFreezeFrameRecNumClass, GContainer>(filteredContainers, typeof(DemFreezeFrameRecNumClass), typeof(GContainer))
		}
		
		def List<DemFreezeFrameRecordClass> getDemFreezeFrameRecordClass(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemFreezeFrameRecordClass")
				}
			}
			return new BasicWrappingEList<DemFreezeFrameRecordClass, GContainer>(filteredContainers, typeof(DemFreezeFrameRecordClass), typeof(GContainer))
		}
		
		def DemGeneralJ1939 getDemGeneralJ1939(){
			containerValue.getByType(typeof(DemGeneralJ1939))
		}
		
		def void setDemGeneralJ1939(GContainer subContainer){
			containerValue.setContainer(subContainer, "DemGeneralJ1939")
		}
		
		def DemGeneralOBD getDemGeneralOBD(){
			containerValue.getByType(typeof(DemGeneralOBD))
		}
		
		def void setDemGeneralOBD(GContainer subContainer){
			containerValue.setContainer(subContainer, "DemGeneralOBD")
		}
		
		def List<DemGroupOfDTC> getDemGroupOfDTCs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemGroupOfDTC")
				}
			}
			return new BasicWrappingEList<DemGroupOfDTC, GContainer>(filteredContainers, typeof(DemGroupOfDTC), typeof(GContainer))
		}
		
		def List<DemIndicator> getDemIndicators(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemIndicator")
				}
			}
			return new BasicWrappingEList<DemIndicator, GContainer>(filteredContainers, typeof(DemIndicator), typeof(GContainer))
		}
		
		def DemMirrorMemory getDemMirrorMemory(){
			containerValue.getByType(typeof(DemMirrorMemory))
		}
		
		def void setDemMirrorMemory(GContainer subContainer){
			containerValue.setContainer(subContainer, "DemMirrorMemory")
		}
		
		def List<DemNvRamBlockId> getDemNvRamBlockIds(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemNvRamBlockId")
				}
			}
			return new BasicWrappingEList<DemNvRamBlockId, GContainer>(filteredContainers, typeof(DemNvRamBlockId), typeof(GContainer))
		}
		
		def List<DemOperationCycle> getDemOperationCycles(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemOperationCycle")
				}
			}
			return new BasicWrappingEList<DemOperationCycle, GContainer>(filteredContainers, typeof(DemOperationCycle), typeof(GContainer))
		}
		
		def DemPrimaryMemory getDemPrimaryMemory(){
			containerValue.getByType(typeof(DemPrimaryMemory))
		}
		
		def void setDemPrimaryMemory(GContainer subContainer){
			containerValue.setContainer(subContainer, "DemPrimaryMemory")
		}
		
		def List<DemRatio> getDemRatios(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemRatio")
				}
			}
			return new BasicWrappingEList<DemRatio, GContainer>(filteredContainers, typeof(DemRatio), typeof(GContainer))
		}
		
		def List<DemStorageCondition> getDemStorageConditions(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemStorageCondition")
				}
			}
			return new BasicWrappingEList<DemStorageCondition, GContainer>(filteredContainers, typeof(DemStorageCondition), typeof(GContainer))
		}
		
		def List<DemStorageConditionGroup> getDemStorageConditionGroups(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemStorageConditionGroup")
				}
			}
			return new BasicWrappingEList<DemStorageConditionGroup, GContainer>(filteredContainers, typeof(DemStorageConditionGroup), typeof(GContainer))
		}
		
		def List<DemUserDefinedMemory> getDemUserDefinedMemories(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemUserDefinedMemory")
				}
			}
			return new BasicWrappingEList<DemUserDefinedMemory, GContainer>(filteredContainers, typeof(DemUserDefinedMemory), typeof(GContainer))
		}
		
		
		static class DemCallbackDTCStatusChanged implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def String getDemCallbackDTCStatusChangedFnc(){
				EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCallbackDTCStatusChangedFnc"])
			}
			
			def void setDemCallbackDTCStatusChangedFnc(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCallbackDTCStatusChangedFnc"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemCallbackDTCStatusChangedFnc"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
		static class DemDataElementClass implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def DemExternalCSDataElementClass getDemExternalCSDataElementClass(){
				containerValue.getByType(typeof(DemExternalCSDataElementClass))
			}
			
			def void setDemExternalCSDataElementClass(GContainer subContainer){
				containerValue.setContainer(subContainer, "DemExternalCSDataElementClass")
			}
			def DemExternalSRDataElementClass getDemExternalSRDataElementClass(){
				containerValue.getByType(typeof(DemExternalSRDataElementClass))
			}
			
			def void setDemExternalSRDataElementClass(GContainer subContainer){
				containerValue.setContainer(subContainer, "DemExternalSRDataElementClass")
			}
			def DemInternalDataElementClass getDemInternalDataElementClass(){
				containerValue.getByType(typeof(DemInternalDataElementClass))
			}
			
			def void setDemInternalDataElementClass(GContainer subContainer){
				containerValue.setContainer(subContainer, "DemInternalDataElementClass")
			}
			
			static class DemExternalCSDataElementClass implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def Integer getDemDataElementDataSize(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDataElementDataSize"])
				}
				
				def void setDemDataElementDataSize(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDataElementDataSize"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDataElementDataSize"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def String getDemDataElementReadFnc(){
					EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDataElementReadFnc"])
				}
				
				def void setDemDataElementReadFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDataElementReadFnc"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDataElementReadFnc"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Boolean getDemDataElementUsePort(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDataElementUsePort"])
				}
				
				def void setDemDataElementUsePort(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDataElementUsePort"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDataElementUsePort"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				
				
			}
			
			static class DemExternalSRDataElementClass implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def Integer getDemDataElementDataSize(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDataElementDataSize"])
				}
				
				def void setDemDataElementDataSize(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDataElementDataSize"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDataElementDataSize"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def DemDataElementDataType getDemDataElementDataType(){
					getDemDataElementDataTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDataElementDataType"])
				}
				
				def void setDemDataElementDataType(DemDataElementDataType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDataElementDataType"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDataElementDataType"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				enum DemDataElementDataType {
					BOOLEAN, 
					SINT16, 
					SINT32, 
					SINT8, 
					UINT16, 
					UINT32, 
					UINT8
				}
					
				def DemDataElementDataType getDemDataElementDataTypeValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "BOOLEAN" : DemDataElementDataType.BOOLEAN
						case "SINT16" : DemDataElementDataType.SINT16
						case "SINT32" : DemDataElementDataType.SINT32
						case "SINT8" : DemDataElementDataType.SINT8
						case "UINT16" : DemDataElementDataType.UINT16
						case "UINT32" : DemDataElementDataType.UINT32
						case "UINT8" : DemDataElementDataType.UINT8
					}
				}
				
				def void setDemDataElementDataTypeValue(GParameterValue paramValue, DemDataElementDataType value){
					EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
				}
				
				def DemDataElementEndianness getDemDataElementEndianness(){
					getDemDataElementEndiannessValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDataElementEndianness"])
				}
				
				def void setDemDataElementEndianness(DemDataElementEndianness value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDataElementEndianness"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDataElementEndianness"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				enum DemDataElementEndianness {
					BIG_ENDIAN, 
					LITTLE_ENDIAN, 
					OPAQUE
				}
					
				def DemDataElementEndianness getDemDataElementEndiannessValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "BIG_ENDIAN" : DemDataElementEndianness.BIG_ENDIAN
						case "LITTLE_ENDIAN" : DemDataElementEndianness.LITTLE_ENDIAN
						case "OPAQUE" : DemDataElementEndianness.OPAQUE
					}
				}
				
				def void setDemDataElementEndiannessValue(GParameterValue paramValue, DemDataElementEndianness value){
					EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
				}
				
				
				
				def DemDiagnosisScaling getDemDiagnosisScaling(){
					containerValue.getByType(typeof(DemDiagnosisScaling))
				}
				
				def void setDemDiagnosisScaling(GContainer subContainer){
					containerValue.setContainer(subContainer, "DemDiagnosisScaling")
				}
				
				def DemSRDataElementClass getDemSRDataElementClass(){
					containerValue.getByType(typeof(DemSRDataElementClass))
				}
				
				def void setDemSRDataElementClass(GContainer subContainer){
					containerValue.setContainer(subContainer, "DemSRDataElementClass")
				}
				
				
				static class DemDiagnosisScaling implements BasicWrappingEList.IWrapper<GContainer> {
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
					
					def DemAlternativeDataInterface getDemAlternativeDataInterface(){
						containerValue.getByType(typeof(DemAlternativeDataInterface))
					}
					
					def void setDemAlternativeDataInterface(GContainer subContainer){
						containerValue.setContainer(subContainer, "DemAlternativeDataInterface")
					}
					def DemAlternativeDataProps getDemAlternativeDataProps(){
						containerValue.getByType(typeof(DemAlternativeDataProps))
					}
					
					def void setDemAlternativeDataProps(GContainer subContainer){
						containerValue.setContainer(subContainer, "DemAlternativeDataProps")
					}
					def DemAlternativeDataType getDemAlternativeDataType(){
						containerValue.getByType(typeof(DemAlternativeDataType))
					}
					
					def void setDemAlternativeDataType(GContainer subContainer){
						containerValue.setContainer(subContainer, "DemAlternativeDataType")
					}
					
					static class DemAlternativeDataInterface implements BasicWrappingEList.IWrapper<GContainer> {
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
						
						
						
						
						
						
					}
					
					static class DemAlternativeDataProps implements BasicWrappingEList.IWrapper<GContainer> {
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
						
						def DemDataTypeCategory getDemDataTypeCategory(){
							getDemDataTypeCategoryValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDataTypeCategory"])
						}
						
						def void setDemDataTypeCategory(DemDataTypeCategory value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDataTypeCategory"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDataTypeCategory"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
						}
						
						enum DemDataTypeCategory {
							SCALE_LINEAR_AND_TEXTTABLE, 
							TEXTTABLE
						}
							
						def DemDataTypeCategory getDemDataTypeCategoryValue(GParameterValue paramValue){
							val castedParamValue = paramValue as EcucTextualParamValue
							switch (castedParamValue.value){
								case "SCALE_LINEAR_AND_TEXTTABLE" : DemDataTypeCategory.SCALE_LINEAR_AND_TEXTTABLE
								case "TEXTTABLE" : DemDataTypeCategory.TEXTTABLE
							}
						}
						
						def void setDemDataTypeCategoryValue(GParameterValue paramValue, DemDataTypeCategory value){
							EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
						}
						
						
						
						def DemLinearScale getDemLinearScale(){
							containerValue.getByType(typeof(DemLinearScale))
						}
						
						def void setDemLinearScale(GContainer subContainer){
							containerValue.setContainer(subContainer, "DemLinearScale")
						}
						
						def List<DemTextTableMapping> getDemTextTableMappings(){
							val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
								override protected accept(GContainer item) {
									return accept(item, typeof(GContainerDef), "DemTextTableMapping")
								}
							}
							return new BasicWrappingEList<DemTextTableMapping, GContainer>(filteredContainers, typeof(DemTextTableMapping), typeof(GContainer))
						}
						
						
						static class DemLinearScale implements BasicWrappingEList.IWrapper<GContainer> {
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
							
							def Float getDemDiagnosisRepresentationDataLowerRange(){
								EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDiagnosisRepresentationDataLowerRange"])
							}
							
							def void setDemDiagnosisRepresentationDataLowerRange(Float value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDiagnosisRepresentationDataLowerRange"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDiagnosisRepresentationDataLowerRange"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
							}
							
							def Float getDemDiagnosisRepresentationDataOffset(){
								EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDiagnosisRepresentationDataOffset"])
							}
							
							def void setDemDiagnosisRepresentationDataOffset(Float value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDiagnosisRepresentationDataOffset"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDiagnosisRepresentationDataOffset"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
							}
							
							def Float getDemDiagnosisRepresentationDataResolution(){
								EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDiagnosisRepresentationDataResolution"])
							}
							
							def void setDemDiagnosisRepresentationDataResolution(Float value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDiagnosisRepresentationDataResolution"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDiagnosisRepresentationDataResolution"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
							}
							
							def Float getDemDiagnosisRepresentationDataUpperRange(){
								EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDiagnosisRepresentationDataUpperRange"])
							}
							
							def void setDemDiagnosisRepresentationDataUpperRange(Float value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDiagnosisRepresentationDataUpperRange"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDiagnosisRepresentationDataUpperRange"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
							}
							
							
							
							
						}
						
						static class DemTextTableMapping implements BasicWrappingEList.IWrapper<GContainer> {
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
							
							def Integer getDemDiagnosisRepresentationDataValue(){
								EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDiagnosisRepresentationDataValue"])
							}
							
							def void setDemDiagnosisRepresentationDataValue(Integer value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDiagnosisRepresentationDataValue"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDiagnosisRepresentationDataValue"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
							}
							
							def Integer getDemInternalDataValue(){
								EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemInternalDataValue"])
							}
							
							def void setDemInternalDataValue(Integer value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemInternalDataValue"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemInternalDataValue"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
							}
							
							
							
							
						}
						
					}
					
					static class DemAlternativeDataType implements BasicWrappingEList.IWrapper<GContainer> {
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
						
						
						
						
						def List<DemTextTableMapping> getDemTextTableMappings(){
							val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
								override protected accept(GContainer item) {
									return accept(item, typeof(GContainerDef), "DemTextTableMapping")
								}
							}
							return new BasicWrappingEList<DemTextTableMapping, GContainer>(filteredContainers, typeof(DemTextTableMapping), typeof(GContainer))
						}
						
						
						static class DemTextTableMapping implements BasicWrappingEList.IWrapper<GContainer> {
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
							
							def Integer getDemDiagnosisRepresentationDataValue(){
								EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDiagnosisRepresentationDataValue"])
							}
							
							def void setDemDiagnosisRepresentationDataValue(Integer value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDiagnosisRepresentationDataValue"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDiagnosisRepresentationDataValue"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
							}
							
							def Integer getDemInternalDataValue(){
								EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemInternalDataValue"])
							}
							
							def void setDemInternalDataValue(Integer value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemInternalDataValue"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemInternalDataValue"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
							}
							
							
							
							
						}
						
					}
					
				}
				
				static class DemSRDataElementClass implements BasicWrappingEList.IWrapper<GContainer> {
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
					
					def DemDataElementInstance getDemDataElementInstance(){
						containerValue.getByType(typeof(DemDataElementInstance))
					}
					
					def void setDemDataElementInstance(GContainer subContainer){
						containerValue.setContainer(subContainer, "DemDataElementInstance")
					}
					def DemSubElementInDataElementInstance getDemSubElementInDataElementInstance(){
						containerValue.getByType(typeof(DemSubElementInDataElementInstance))
					}
					
					def void setDemSubElementInDataElementInstance(GContainer subContainer){
						containerValue.setContainer(subContainer, "DemSubElementInDataElementInstance")
					}
					def DemSubElementInImplDataElementInstance getDemSubElementInImplDataElementInstance(){
						containerValue.getByType(typeof(DemSubElementInImplDataElementInstance))
					}
					
					def void setDemSubElementInImplDataElementInstance(GContainer subContainer){
						containerValue.setContainer(subContainer, "DemSubElementInImplDataElementInstance")
					}
					
					static class DemDataElementInstance implements BasicWrappingEList.IWrapper<GContainer> {
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
						
						
						
						
						
					}
					
					static class DemSubElementInDataElementInstance implements BasicWrappingEList.IWrapper<GContainer> {
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
						
						
						
						
						
					}
					
					static class DemSubElementInImplDataElementInstance implements BasicWrappingEList.IWrapper<GContainer> {
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
						
						
						
						
						
					}
					
				}
				
			}
			
			static class DemInternalDataElementClass implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def Integer getDemDataElementDataSize(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDataElementDataSize"])
				}
				
				def void setDemDataElementDataSize(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDataElementDataSize"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDataElementDataSize"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def DemInternalDataElement getDemInternalDataElement(){
					getDemInternalDataElementValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemInternalDataElement"])
				}
				
				def void setDemInternalDataElement(DemInternalDataElement value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemInternalDataElement"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemInternalDataElement"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				enum DemInternalDataElement {
					DEM_AGINGCTR_DOWNCNT, 
					DEM_AGINGCTR_UPCNT, 
					DEM_CURRENT_FDC, 
					DEM_CYCLES_SINCE_FIRST_FAILED, 
					DEM_CYCLES_SINCE_LAST_FAILED, 
					DEM_FAILED_CYCLES, 
					DEM_MAX_FDC_DURING_CURRENT_CYCLE, 
					DEM_MAX_FDC_SINCE_LAST_CLEAR, 
					DEM_OCCCTR, 
					DEM_OVFLIND, 
					DEM_SIGNIFICANCE
				}
					
				def DemInternalDataElement getDemInternalDataElementValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "DEM_AGINGCTR_DOWNCNT" : DemInternalDataElement.DEM_AGINGCTR_DOWNCNT
						case "DEM_AGINGCTR_UPCNT" : DemInternalDataElement.DEM_AGINGCTR_UPCNT
						case "DEM_CURRENT_FDC" : DemInternalDataElement.DEM_CURRENT_FDC
						case "DEM_CYCLES_SINCE_FIRST_FAILED" : DemInternalDataElement.DEM_CYCLES_SINCE_FIRST_FAILED
						case "DEM_CYCLES_SINCE_LAST_FAILED" : DemInternalDataElement.DEM_CYCLES_SINCE_LAST_FAILED
						case "DEM_FAILED_CYCLES" : DemInternalDataElement.DEM_FAILED_CYCLES
						case "DEM_MAX_FDC_DURING_CURRENT_CYCLE" : DemInternalDataElement.DEM_MAX_FDC_DURING_CURRENT_CYCLE
						case "DEM_MAX_FDC_SINCE_LAST_CLEAR" : DemInternalDataElement.DEM_MAX_FDC_SINCE_LAST_CLEAR
						case "DEM_OCCCTR" : DemInternalDataElement.DEM_OCCCTR
						case "DEM_OVFLIND" : DemInternalDataElement.DEM_OVFLIND
						case "DEM_SIGNIFICANCE" : DemInternalDataElement.DEM_SIGNIFICANCE
					}
				}
				
				def void setDemInternalDataElementValue(GParameterValue paramValue, DemInternalDataElement value){
					EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
				}
				
				
				
				
			}
			
		}
		
		static class DemDidClass implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Integer getDemDidIdentifier(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDidIdentifier"])
			}
			
			def void setDemDidIdentifier(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDidIdentifier"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemDidIdentifier"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			
			
			
		}
		
		static class DemEnableCondition implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Integer getDemEnableConditionId(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEnableConditionId"])
			}
			
			def void setDemEnableConditionId(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEnableConditionId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemEnableConditionId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getDemEnableConditionStatus(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEnableConditionStatus"])
			}
			
			def void setDemEnableConditionStatus(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEnableConditionStatus"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemEnableConditionStatus"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
		static class DemEnableConditionGroup implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			
			def List<org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemEnableCondition> getDemEnableConditionRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
					containerDef.gGetReferences.findFirst[gGetShortName == "DemEnableConditionRef"] else null
								
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "DemEnableConditionRef")
					}
				}
				
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemEnableCondition>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemEnableCondition)) {
					override protected wrap(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemEnableCondition object) throws CoreException {
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
								return new org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemEnableCondition(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			
		}
		
		static class DemExtendedDataClass implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			
			def List<org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemExtendedDataRecordClass> getDemExtendedDataRecordClassRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
					containerDef.gGetReferences.findFirst[gGetShortName == "DemExtendedDataRecordClassRef"] else null
								
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "DemExtendedDataRecordClassRef")
					}
				}
				
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemExtendedDataRecordClass>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemExtendedDataRecordClass)) {
					override protected wrap(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemExtendedDataRecordClass object) throws CoreException {
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
								return new org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemExtendedDataRecordClass(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			
		}
		
		static class DemExtendedDataRecordClass implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Integer getDemExtendedDataRecordNumber(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemExtendedDataRecordNumber"])
			}
			
			def void setDemExtendedDataRecordNumber(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemExtendedDataRecordNumber"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemExtendedDataRecordNumber"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def DemExtendedDataRecordTrigger getDemExtendedDataRecordTrigger(){
				getDemExtendedDataRecordTriggerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemExtendedDataRecordTrigger"])
			}
			
			def void setDemExtendedDataRecordTrigger(DemExtendedDataRecordTrigger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemExtendedDataRecordTrigger"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemExtendedDataRecordTrigger"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum DemExtendedDataRecordTrigger {
				DEM_TRIGGER_ON_CONFIRMED, 
				DEM_TRIGGER_ON_FDC_THRESHOLD, 
				DEM_TRIGGER_ON_MIRROR, 
				DEM_TRIGGER_ON_PASSED, 
				DEM_TRIGGER_ON_PENDING, 
				DEM_TRIGGER_ON_TEST_FAILED
			}
				
			def DemExtendedDataRecordTrigger getDemExtendedDataRecordTriggerValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "DEM_TRIGGER_ON_CONFIRMED" : DemExtendedDataRecordTrigger.DEM_TRIGGER_ON_CONFIRMED
					case "DEM_TRIGGER_ON_FDC_THRESHOLD" : DemExtendedDataRecordTrigger.DEM_TRIGGER_ON_FDC_THRESHOLD
					case "DEM_TRIGGER_ON_MIRROR" : DemExtendedDataRecordTrigger.DEM_TRIGGER_ON_MIRROR
					case "DEM_TRIGGER_ON_PASSED" : DemExtendedDataRecordTrigger.DEM_TRIGGER_ON_PASSED
					case "DEM_TRIGGER_ON_PENDING" : DemExtendedDataRecordTrigger.DEM_TRIGGER_ON_PENDING
					case "DEM_TRIGGER_ON_TEST_FAILED" : DemExtendedDataRecordTrigger.DEM_TRIGGER_ON_TEST_FAILED
				}
			}
			
			def void setDemExtendedDataRecordTriggerValue(GParameterValue paramValue, DemExtendedDataRecordTrigger value){
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def DemExtendedDataRecordUpdate getDemExtendedDataRecordUpdate(){
				getDemExtendedDataRecordUpdateValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemExtendedDataRecordUpdate"])
			}
			
			def void setDemExtendedDataRecordUpdate(DemExtendedDataRecordUpdate value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemExtendedDataRecordUpdate"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemExtendedDataRecordUpdate"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum DemExtendedDataRecordUpdate {
				DEM_UPDATE_RECORD_NO, 
				DEM_UPDATE_RECORD_YES
			}
				
			def DemExtendedDataRecordUpdate getDemExtendedDataRecordUpdateValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "DEM_UPDATE_RECORD_NO" : DemExtendedDataRecordUpdate.DEM_UPDATE_RECORD_NO
					case "DEM_UPDATE_RECORD_YES" : DemExtendedDataRecordUpdate.DEM_UPDATE_RECORD_YES
				}
			}
			
			def void setDemExtendedDataRecordUpdateValue(GParameterValue paramValue, DemExtendedDataRecordUpdate value){
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			
			
			
			
		}
		
		static class DemFreezeFrameClass implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			
			def List<org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemDidClass> getDemDidClassRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
					containerDef.gGetReferences.findFirst[gGetShortName == "DemDidClassRef"] else null
								
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "DemDidClassRef")
					}
				}
				
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemDidClass>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemDidClass)) {
					override protected wrap(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemDidClass object) throws CoreException {
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
								return new org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemDidClass(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			
		}
		
		static class DemFreezeFrameRecNumClass implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			
			def List<org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemFreezeFrameRecordClass> getDemFreezeFrameRecordClassRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
					containerDef.gGetReferences.findFirst[gGetShortName == "DemFreezeFrameRecordClassRef"] else null
								
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "DemFreezeFrameRecordClassRef")
					}
				}
				
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemFreezeFrameRecordClass>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemFreezeFrameRecordClass)) {
					override protected wrap(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemFreezeFrameRecordClass object) throws CoreException {
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
								return new org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemFreezeFrameRecordClass(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			
		}
		
		static class DemFreezeFrameRecordClass implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Integer getDemFreezeFrameRecordNumber(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemFreezeFrameRecordNumber"])
			}
			
			def void setDemFreezeFrameRecordNumber(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemFreezeFrameRecordNumber"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemFreezeFrameRecordNumber"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def DemFreezeFrameRecordTrigger getDemFreezeFrameRecordTrigger(){
				getDemFreezeFrameRecordTriggerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemFreezeFrameRecordTrigger"])
			}
			
			def void setDemFreezeFrameRecordTrigger(DemFreezeFrameRecordTrigger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemFreezeFrameRecordTrigger"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemFreezeFrameRecordTrigger"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum DemFreezeFrameRecordTrigger {
				DEM_TRIGGER_ON_CONFIRMED, 
				DEM_TRIGGER_ON_FDC_THRESHOLD, 
				DEM_TRIGGER_ON_PENDING, 
				DEM_TRIGGER_ON_TEST_FAILED
			}
				
			def DemFreezeFrameRecordTrigger getDemFreezeFrameRecordTriggerValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "DEM_TRIGGER_ON_CONFIRMED" : DemFreezeFrameRecordTrigger.DEM_TRIGGER_ON_CONFIRMED
					case "DEM_TRIGGER_ON_FDC_THRESHOLD" : DemFreezeFrameRecordTrigger.DEM_TRIGGER_ON_FDC_THRESHOLD
					case "DEM_TRIGGER_ON_PENDING" : DemFreezeFrameRecordTrigger.DEM_TRIGGER_ON_PENDING
					case "DEM_TRIGGER_ON_TEST_FAILED" : DemFreezeFrameRecordTrigger.DEM_TRIGGER_ON_TEST_FAILED
				}
			}
			
			def void setDemFreezeFrameRecordTriggerValue(GParameterValue paramValue, DemFreezeFrameRecordTrigger value){
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def DemFreezeFrameRecordUpdate getDemFreezeFrameRecordUpdate(){
				getDemFreezeFrameRecordUpdateValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemFreezeFrameRecordUpdate"])
			}
			
			def void setDemFreezeFrameRecordUpdate(DemFreezeFrameRecordUpdate value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemFreezeFrameRecordUpdate"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemFreezeFrameRecordUpdate"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum DemFreezeFrameRecordUpdate {
				DEM_UPDATE_RECORD_NO, 
				DEM_UPDATE_RECORD_YES
			}
				
			def DemFreezeFrameRecordUpdate getDemFreezeFrameRecordUpdateValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "DEM_UPDATE_RECORD_NO" : DemFreezeFrameRecordUpdate.DEM_UPDATE_RECORD_NO
					case "DEM_UPDATE_RECORD_YES" : DemFreezeFrameRecordUpdate.DEM_UPDATE_RECORD_YES
				}
			}
			
			def void setDemFreezeFrameRecordUpdateValue(GParameterValue paramValue, DemFreezeFrameRecordUpdate value){
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			
			
			
		}
		
		static class DemGeneralJ1939 implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Boolean getDemJ1939ClearDtcSupport(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939ClearDtcSupport"])
			}
			
			def void setDemJ1939ClearDtcSupport(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939ClearDtcSupport"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemJ1939ClearDtcSupport"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getDemJ1939Dm31Support(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939Dm31Support"])
			}
			
			def void setDemJ1939Dm31Support(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939Dm31Support"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemJ1939Dm31Support"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getDemJ1939ExpandedFreezeFrameSupport(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939ExpandedFreezeFrameSupport"])
			}
			
			def void setDemJ1939ExpandedFreezeFrameSupport(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939ExpandedFreezeFrameSupport"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemJ1939ExpandedFreezeFrameSupport"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getDemJ1939FreezeFrameSupport(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939FreezeFrameSupport"])
			}
			
			def void setDemJ1939FreezeFrameSupport(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939FreezeFrameSupport"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemJ1939FreezeFrameSupport"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getDemJ1939RatioSupport(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939RatioSupport"])
			}
			
			def void setDemJ1939RatioSupport(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939RatioSupport"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemJ1939RatioSupport"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getDemJ1939Readiness1Support(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939Readiness1Support"])
			}
			
			def void setDemJ1939Readiness1Support(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939Readiness1Support"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemJ1939Readiness1Support"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getDemJ1939Readiness2Support(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939Readiness2Support"])
			}
			
			def void setDemJ1939Readiness2Support(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939Readiness2Support"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemJ1939Readiness2Support"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getDemJ1939Readiness3Support(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939Readiness3Support"])
			}
			
			def void setDemJ1939Readiness3Support(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939Readiness3Support"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemJ1939Readiness3Support"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getDemJ1939ReadingDtcSupport(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939ReadingDtcSupport"])
			}
			
			def void setDemJ1939ReadingDtcSupport(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939ReadingDtcSupport"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemJ1939ReadingDtcSupport"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemIndicator getDemAmberWarningLampIndicatorRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemIndicator), "DemAmberWarningLampIndicatorRef")
			}
					
			def void setDemAmberWarningLampIndicatorRef(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemIndicator object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DemAmberWarningLampIndicatorRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemIndicator getDemProtectLampIndicatorRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemIndicator), "DemProtectLampIndicatorRef")
			}
					
			def void setDemProtectLampIndicatorRef(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemIndicator object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DemProtectLampIndicatorRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemIndicator getDemRedStopLampIndicatorRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemIndicator), "DemRedStopLampIndicatorRef")
			}
					
			def void setDemRedStopLampIndicatorRef(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemIndicator object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DemRedStopLampIndicatorRef"], object.getTarget())
				}
			}
			
			
			def List<DemCallbackJ1939DTCStatusChanged> getDemCallbackJ1939DTCStatusChangeds(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DemCallbackJ1939DTCStatusChanged")
					}
				}
				return new BasicWrappingEList<DemCallbackJ1939DTCStatusChanged, GContainer>(filteredContainers, typeof(DemCallbackJ1939DTCStatusChanged), typeof(GContainer))
			}
			
			def List<DemJ1939FreezeFrameClass> getDemJ1939FreezeFrameClass(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DemJ1939FreezeFrameClass")
					}
				}
				return new BasicWrappingEList<DemJ1939FreezeFrameClass, GContainer>(filteredContainers, typeof(DemJ1939FreezeFrameClass), typeof(GContainer))
			}
			
			def List<DemSPNClass> getDemSPNClass(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DemSPNClass")
					}
				}
				return new BasicWrappingEList<DemSPNClass, GContainer>(filteredContainers, typeof(DemSPNClass), typeof(GContainer))
			}
			
			
			static class DemCallbackJ1939DTCStatusChanged implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def String getDemCallbackDTCStatusChangedFnc(){
					EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCallbackDTCStatusChangedFnc"])
				}
				
				def void setDemCallbackDTCStatusChangedFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCallbackDTCStatusChangedFnc"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemCallbackDTCStatusChangedFnc"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				
				
			}
			
			static class DemJ1939FreezeFrameClass implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				
				def List<org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemGeneralJ1939.DemSPNClass> getDemSPNClassRefs(){
					val containerDef = containerValue.gGetDefinition
					val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
						containerDef.gGetReferences.findFirst[gGetShortName == "DemSPNClassRef"] else null
									
					val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
						override protected accept(GReferenceValue item) {
							return accept(item, typeof(GConfigReference), "DemSPNClassRef")
						}
					}
					
					return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemGeneralJ1939.DemSPNClass>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemGeneralJ1939.DemSPNClass)) {
						override protected wrap(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemGeneralJ1939.DemSPNClass object) throws CoreException {
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
									return new org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemGeneralJ1939.DemSPNClass(referenceValueValue as GContainer)
								}
							}
						}
					}
				}
				
				
				
			}
			
			static class DemSPNClass implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def Integer getDemSPNId(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemSPNId"])
				}
				
				def void setDemSPNId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemSPNId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemSPNId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				
				
				
			}
			
		}
		
		static class DemGeneralOBD implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Boolean getDemOBDCentralizedPID21Handling(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOBDCentralizedPID21Handling"])
			}
			
			def void setDemOBDCentralizedPID21Handling(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOBDCentralizedPID21Handling"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemOBDCentralizedPID21Handling"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getDemOBDCentralizedPID31Handling(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOBDCentralizedPID31Handling"])
			}
			
			def void setDemOBDCentralizedPID31Handling(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOBDCentralizedPID31Handling"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemOBDCentralizedPID31Handling"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getDemOBDCompliancy(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOBDCompliancy"])
			}
			
			def void setDemOBDCompliancy(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOBDCompliancy"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemOBDCompliancy"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def DemOBDEngineType getDemOBDEngineType(){
				getDemOBDEngineTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOBDEngineType"])
			}
			
			def void setDemOBDEngineType(DemOBDEngineType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOBDEngineType"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemOBDEngineType"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum DemOBDEngineType {
				DEM_IGNITION_COMPRESSION, 
				DEM_IGNITION_SPARK
			}
				
			def DemOBDEngineType getDemOBDEngineTypeValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "DEM_IGNITION_COMPRESSION" : DemOBDEngineType.DEM_IGNITION_COMPRESSION
					case "DEM_IGNITION_SPARK" : DemOBDEngineType.DEM_IGNITION_SPARK
				}
			}
			
			def void setDemOBDEngineTypeValue(GParameterValue paramValue, DemOBDEngineType value){
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def Boolean getDemOBDEventDisplacement(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOBDEventDisplacement"])
			}
			
			def void setDemOBDEventDisplacement(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOBDEventDisplacement"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemOBDEventDisplacement"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			
			
			
			
			
			
			
			
			
			
			
			def List<DemCallbackOBDDTCStatusChanged> getDemCallbackOBDDTCStatusChangeds(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DemCallbackOBDDTCStatusChanged")
					}
				}
				return new BasicWrappingEList<DemCallbackOBDDTCStatusChanged, GContainer>(filteredContainers, typeof(DemCallbackOBDDTCStatusChanged), typeof(GContainer))
			}
			
			
			static class DemCallbackOBDDTCStatusChanged implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def String getDemCallbackDTCStatusChangedFnc(){
					EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCallbackDTCStatusChangedFnc"])
				}
				
				def void setDemCallbackDTCStatusChangedFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCallbackDTCStatusChangedFnc"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemCallbackDTCStatusChangedFnc"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				
				
			}
			
		}
		
		static class DemGroupOfDTC implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Integer getDemGroupDTCs(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemGroupDTCs"])
			}
			
			def void setDemGroupDTCs(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemGroupDTCs"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemGroupDTCs"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
		static class DemIndicator implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Integer getDemIndicatorID(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemIndicatorID"])
			}
			
			def void setDemIndicatorID(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemIndicatorID"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemIndicatorID"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
		static class DemMirrorMemory implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Integer getDemMaxNumberEventEntryMirror(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemMaxNumberEventEntryMirror"])
			}
			
			def void setDemMaxNumberEventEntryMirror(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemMaxNumberEventEntryMirror"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemMaxNumberEventEntryMirror"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
		static class DemNvRamBlockId implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			
			def org.artop.ecuc.autosar421.accessors.NvM.NvMBlockDescriptor getDemNvRamBlockIdRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.NvM.NvMBlockDescriptor), "DemNvRamBlockIdRef")
			}
					
			def void setDemNvRamBlockIdRef(org.artop.ecuc.autosar421.accessors.NvM.NvMBlockDescriptor object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DemNvRamBlockIdRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class DemOperationCycle implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Boolean getDemOperationCycleAutomaticEnd(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOperationCycleAutomaticEnd"])
			}
			
			def void setDemOperationCycleAutomaticEnd(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOperationCycleAutomaticEnd"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemOperationCycleAutomaticEnd"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getDemOperationCycleAutostart(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOperationCycleAutostart"])
			}
			
			def void setDemOperationCycleAutostart(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOperationCycleAutostart"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemOperationCycleAutostart"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getDemOperationCycleId(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOperationCycleId"])
			}
			
			def void setDemOperationCycleId(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOperationCycleId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemOperationCycleId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def DemOperationCycleType getDemOperationCycleType(){
				getDemOperationCycleTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOperationCycleType"])
			}
			
			def void setDemOperationCycleType(DemOperationCycleType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOperationCycleType"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemOperationCycleType"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum DemOperationCycleType {
				DEM_OPCYC_IGNITION, 
				DEM_OPCYC_OBD_DCY, 
				DEM_OPCYC_OTHER, 
				DEM_OPCYC_POWER, 
				DEM_OPCYC_TIME, 
				DEM_OPCYC_WARMUP
			}
				
			def DemOperationCycleType getDemOperationCycleTypeValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "DEM_OPCYC_IGNITION" : DemOperationCycleType.DEM_OPCYC_IGNITION
					case "DEM_OPCYC_OBD_DCY" : DemOperationCycleType.DEM_OPCYC_OBD_DCY
					case "DEM_OPCYC_OTHER" : DemOperationCycleType.DEM_OPCYC_OTHER
					case "DEM_OPCYC_POWER" : DemOperationCycleType.DEM_OPCYC_POWER
					case "DEM_OPCYC_TIME" : DemOperationCycleType.DEM_OPCYC_TIME
					case "DEM_OPCYC_WARMUP" : DemOperationCycleType.DEM_OPCYC_WARMUP
				}
			}
			
			def void setDemOperationCycleTypeValue(GParameterValue paramValue, DemOperationCycleType value){
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			
			
			
		}
		
		static class DemPrimaryMemory implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Integer getDemMaxNumberEventEntryPrimary(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemMaxNumberEventEntryPrimary"])
			}
			
			def void setDemMaxNumberEventEntryPrimary(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemMaxNumberEventEntryPrimary"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemMaxNumberEventEntryPrimary"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
		static class DemRatio implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def DemIUMPRDenGroup getDemIUMPRDenGroup(){
				getDemIUMPRDenGroupValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemIUMPRDenGroup"])
			}
			
			def void setDemIUMPRDenGroup(DemIUMPRDenGroup value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemIUMPRDenGroup"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemIUMPRDenGroup"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum DemIUMPRDenGroup {
				DEM_IUMPR_DEN_500MILL, 
				DEM_IUMPR_DEN_COLDSTART, 
				DEM_IUMPR_DEN_EVAP, 
				DEM_IUMPR_DEN_NONE, 
				DEM_IUMPR_DEN_PHYS_API
			}
				
			def DemIUMPRDenGroup getDemIUMPRDenGroupValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "DEM_IUMPR_DEN_500MILL" : DemIUMPRDenGroup.DEM_IUMPR_DEN_500MILL
					case "DEM_IUMPR_DEN_COLDSTART" : DemIUMPRDenGroup.DEM_IUMPR_DEN_COLDSTART
					case "DEM_IUMPR_DEN_EVAP" : DemIUMPRDenGroup.DEM_IUMPR_DEN_EVAP
					case "DEM_IUMPR_DEN_NONE" : DemIUMPRDenGroup.DEM_IUMPR_DEN_NONE
					case "DEM_IUMPR_DEN_PHYS_API" : DemIUMPRDenGroup.DEM_IUMPR_DEN_PHYS_API
				}
			}
			
			def void setDemIUMPRDenGroupValue(GParameterValue paramValue, DemIUMPRDenGroup value){
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def DemIUMPRGroup getDemIUMPRGroup(){
				getDemIUMPRGroupValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemIUMPRGroup"])
			}
			
			def void setDemIUMPRGroup(DemIUMPRGroup value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemIUMPRGroup"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemIUMPRGroup"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum DemIUMPRGroup {
				DEM_IUMPR_BOOSTPRS, 
				DEM_IUMPR_CAT1, 
				DEM_IUMPR_CAT2, 
				DEM_IUMPR_EGR, 
				DEM_IUMPR_EGSENSOR, 
				DEM_IUMPR_EVAP, 
				DEM_IUMPR_FLSYS, 
				DEM_IUMPR_NMHCCAT, 
				DEM_IUMPR_NOXADSORB, 
				DEM_IUMPR_NOXCAT, 
				DEM_IUMPR_OXS1, 
				DEM_IUMPR_OXS2, 
				DEM_IUMPR_PMFILTER, 
				DEM_IUMPR_PRIVATE, 
				DEM_IUMPR_SAIR, 
				DEM_IUMPR_SECOXS1, 
				DEM_IUMPR_SECOXS2
			}
				
			def DemIUMPRGroup getDemIUMPRGroupValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "DEM_IUMPR_BOOSTPRS" : DemIUMPRGroup.DEM_IUMPR_BOOSTPRS
					case "DEM_IUMPR_CAT1" : DemIUMPRGroup.DEM_IUMPR_CAT1
					case "DEM_IUMPR_CAT2" : DemIUMPRGroup.DEM_IUMPR_CAT2
					case "DEM_IUMPR_EGR" : DemIUMPRGroup.DEM_IUMPR_EGR
					case "DEM_IUMPR_EGSENSOR" : DemIUMPRGroup.DEM_IUMPR_EGSENSOR
					case "DEM_IUMPR_EVAP" : DemIUMPRGroup.DEM_IUMPR_EVAP
					case "DEM_IUMPR_FLSYS" : DemIUMPRGroup.DEM_IUMPR_FLSYS
					case "DEM_IUMPR_NMHCCAT" : DemIUMPRGroup.DEM_IUMPR_NMHCCAT
					case "DEM_IUMPR_NOXADSORB" : DemIUMPRGroup.DEM_IUMPR_NOXADSORB
					case "DEM_IUMPR_NOXCAT" : DemIUMPRGroup.DEM_IUMPR_NOXCAT
					case "DEM_IUMPR_OXS1" : DemIUMPRGroup.DEM_IUMPR_OXS1
					case "DEM_IUMPR_OXS2" : DemIUMPRGroup.DEM_IUMPR_OXS2
					case "DEM_IUMPR_PMFILTER" : DemIUMPRGroup.DEM_IUMPR_PMFILTER
					case "DEM_IUMPR_PRIVATE" : DemIUMPRGroup.DEM_IUMPR_PRIVATE
					case "DEM_IUMPR_SAIR" : DemIUMPRGroup.DEM_IUMPR_SAIR
					case "DEM_IUMPR_SECOXS1" : DemIUMPRGroup.DEM_IUMPR_SECOXS1
					case "DEM_IUMPR_SECOXS2" : DemIUMPRGroup.DEM_IUMPR_SECOXS2
				}
			}
			
			def void setDemIUMPRGroupValue(GParameterValue paramValue, DemIUMPRGroup value){
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def Integer getDemRatioId(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemRatioId"])
			}
			
			def void setDemRatioId(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemRatioId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemRatioId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def DemRatioKind getDemRatioKind(){
				getDemRatioKindValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemRatioKind"])
			}
			
			def void setDemRatioKind(DemRatioKind value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemRatioKind"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemRatioKind"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum DemRatioKind {
				DEM_RATIO_API, 
				DEM_RATIO_OBSERVER
			}
				
			def DemRatioKind getDemRatioKindValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "DEM_RATIO_API" : DemRatioKind.DEM_RATIO_API
					case "DEM_RATIO_OBSERVER" : DemRatioKind.DEM_RATIO_OBSERVER
				}
			}
			
			def void setDemRatioKindValue(GParameterValue paramValue, DemRatioKind value){
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getDemDiagnosticEventRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "DemDiagnosticEventRef")
			}
					
			def void setDemDiagnosticEventRef(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DemDiagnosticEventRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.FiM.FiMFID getDemFunctionIdRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.FiM.FiMFID), "DemFunctionIdRef")
			}
					
			def void setDemFunctionIdRef(org.artop.ecuc.autosar421.accessors.FiM.FiMFID object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DemFunctionIdRef"], object.getTarget())
				}
			}
			
			def List<org.artop.ecuc.autosar421.accessors.FiM.FiMFID> getDemSecondaryFunctionIdRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
					containerDef.gGetReferences.findFirst[gGetShortName == "DemSecondaryFunctionIdRef"] else null
								
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "DemSecondaryFunctionIdRef")
					}
				}
				
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.FiM.FiMFID>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.FiM.FiMFID)) {
					override protected wrap(org.artop.ecuc.autosar421.accessors.FiM.FiMFID object) throws CoreException {
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
								return new org.artop.ecuc.autosar421.accessors.FiM.FiMFID(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			
		}
		
		static class DemStorageCondition implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Integer getDemStorageConditionId(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemStorageConditionId"])
			}
			
			def void setDemStorageConditionId(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemStorageConditionId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemStorageConditionId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getDemStorageConditionStatus(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemStorageConditionStatus"])
			}
			
			def void setDemStorageConditionStatus(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemStorageConditionStatus"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemStorageConditionStatus"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getDemStorageConditionReplacementEventRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "DemStorageConditionReplacementEventRef")
			}
					
			def void setDemStorageConditionReplacementEventRef(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "DemStorageConditionReplacementEventRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class DemStorageConditionGroup implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			
			def List<org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemStorageCondition> getDemStorageConditionRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
					containerDef.gGetReferences.findFirst[gGetShortName == "DemStorageConditionRef"] else null
								
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "DemStorageConditionRef")
					}
				}
				
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemStorageCondition>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemStorageCondition)) {
					override protected wrap(org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemStorageCondition object) throws CoreException {
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
								return new org.artop.ecuc.autosar421.accessors.Dem.DemGeneral.DemStorageCondition(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			
		}
		
		static class DemUserDefinedMemory implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Integer getDemMaxNumberEventEntryUserDefined(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemMaxNumberEventEntryUserDefined"])
			}
			
			def void setDemMaxNumberEventEntryUserDefined(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemMaxNumberEventEntryUserDefined"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemMaxNumberEventEntryUserDefined"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getDemUserDefinedMemoryIdentifier(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemUserDefinedMemoryIdentifier"])
			}
			
			def void setDemUserDefinedMemoryIdentifier(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemUserDefinedMemoryIdentifier"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "DemUserDefinedMemoryIdentifier"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
