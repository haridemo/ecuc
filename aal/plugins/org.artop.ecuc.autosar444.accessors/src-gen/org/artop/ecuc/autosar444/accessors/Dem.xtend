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
package org.artop.ecuc.autosar444.accessors

import java.util.List

import static extension org.artop.ecuc.autosar4x.accessors.lib.EcucValueAccessor4xUtil.*

import autosar40.ecucdescription.EcucTextualParamValue
import autosar40.ecucdescription.EcucNumericalParamValue
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock
import autosar40.util.Autosar40Factory
import org.artop.ecuc.autosar4x.accessors.lib.BigIntegerValueUnwrappingEList
import org.artop.ecuc.autosar4x.accessors.lib.BigDecimalValueUnwrappingEList
import org.artop.ecuc.autosar4x.accessors.lib.BooleanValueUnwrappingEList
import org.artop.ecuc.autosar4x.accessors.lib.StringValueUnwrappingEList
import org.artop.ecuc.autosar4x.accessors.lib.DocumentationBlockValueUnwrappingEList

import org.eclipse.sphinx.emf.util.AbstractFilteringEList
import org.eclipse.sphinx.emf.util.BasicWrappingEList
import org.eclipse.sphinx.emf.util.IWrapper

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
import java.math.BigInteger
import java.math.BigDecimal

class Dem implements IWrapper<GModuleConfiguration> {
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

	static class DemConfigSet implements IWrapper<GContainer> {
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof DemConfigSet)){
				return false
			}
			this.target == (object as DemConfigSet).target
		}
	
		
		
		def List<DemComponent> getDemComponents(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemComponent")
				}
			}
			return new BasicWrappingEList<DemComponent, GContainer>(filteredContainers, typeof(DemComponent), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemComponent demComponent) {
					demComponent.target?.gSetDefinition(containerValue.getContainerDefinition("DemComponent"))
					super.delegateAdd(demComponent)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemComponent demComponent) {
					demComponent.target?.gSetDefinition(containerValue.getContainerDefinition("DemComponent"))
					super.delegateAdd(index, demComponent)
				}
			}
		}
		
		def List<DemDTC> getDemDTCs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemDTC")
				}
			}
			return new BasicWrappingEList<DemDTC, GContainer>(filteredContainers, typeof(DemDTC), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemDTC demDTC) {
					demDTC.target?.gSetDefinition(containerValue.getContainerDefinition("DemDTC"))
					super.delegateAdd(demDTC)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemDTC demDTC) {
					demDTC.target?.gSetDefinition(containerValue.getContainerDefinition("DemDTC"))
					super.delegateAdd(index, demDTC)
				}
			}
		}
		
		def List<DemDTCAttributes> getDemDTCAttributes(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemDTCAttributes")
				}
			}
			return new BasicWrappingEList<DemDTCAttributes, GContainer>(filteredContainers, typeof(DemDTCAttributes), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemDTCAttributes demDTCAttributes) {
					demDTCAttributes.target?.gSetDefinition(containerValue.getContainerDefinition("DemDTCAttributes"))
					super.delegateAdd(demDTCAttributes)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemDTCAttributes demDTCAttributes) {
					demDTCAttributes.target?.gSetDefinition(containerValue.getContainerDefinition("DemDTCAttributes"))
					super.delegateAdd(index, demDTCAttributes)
				}
			}
		}
		
		def List<DemDebounceCounterBasedClass> getDemDebounceCounterBasedClass(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemDebounceCounterBasedClass")
				}
			}
			return new BasicWrappingEList<DemDebounceCounterBasedClass, GContainer>(filteredContainers, typeof(DemDebounceCounterBasedClass), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemDebounceCounterBasedClass demDebounceCounterBasedClass) {
					demDebounceCounterBasedClass.target?.gSetDefinition(containerValue.getContainerDefinition("DemDebounceCounterBasedClass"))
					super.delegateAdd(demDebounceCounterBasedClass)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemDebounceCounterBasedClass demDebounceCounterBasedClass) {
					demDebounceCounterBasedClass.target?.gSetDefinition(containerValue.getContainerDefinition("DemDebounceCounterBasedClass"))
					super.delegateAdd(index, demDebounceCounterBasedClass)
				}
			}
		}
		
		def List<DemDebounceTimeBaseClass> getDemDebounceTimeBaseClass(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemDebounceTimeBaseClass")
				}
			}
			return new BasicWrappingEList<DemDebounceTimeBaseClass, GContainer>(filteredContainers, typeof(DemDebounceTimeBaseClass), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemDebounceTimeBaseClass demDebounceTimeBaseClass) {
					demDebounceTimeBaseClass.target?.gSetDefinition(containerValue.getContainerDefinition("DemDebounceTimeBaseClass"))
					super.delegateAdd(demDebounceTimeBaseClass)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemDebounceTimeBaseClass demDebounceTimeBaseClass) {
					demDebounceTimeBaseClass.target?.gSetDefinition(containerValue.getContainerDefinition("DemDebounceTimeBaseClass"))
					super.delegateAdd(index, demDebounceTimeBaseClass)
				}
			}
		}
		
		def DemDtrs getDemDtrs(){
			containerValue.getByType(typeof(DemDtrs))
		}
		
		def void setDemDtrs(DemDtrs demDtrs){
			val GContainer subContainer = demDtrs.getTarget()
			containerValue.setContainer(subContainer, "DemDtrs")
		}
		
		def List<DemEventParameter> getDemEventParameters(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemEventParameter")
				}
			}
			return new BasicWrappingEList<DemEventParameter, GContainer>(filteredContainers, typeof(DemEventParameter), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter demEventParameter) {
					demEventParameter.target?.gSetDefinition(containerValue.getContainerDefinition("DemEventParameter"))
					super.delegateAdd(demEventParameter)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter demEventParameter) {
					demEventParameter.target?.gSetDefinition(containerValue.getContainerDefinition("DemEventParameter"))
					super.delegateAdd(index, demEventParameter)
				}
			}
		}
		
		def List<DemMultiEventTriggering> getDemMultiEventTriggerings(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemMultiEventTriggering")
				}
			}
			return new BasicWrappingEList<DemMultiEventTriggering, GContainer>(filteredContainers, typeof(DemMultiEventTriggering), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemMultiEventTriggering demMultiEventTriggering) {
					demMultiEventTriggering.target?.gSetDefinition(containerValue.getContainerDefinition("DemMultiEventTriggering"))
					super.delegateAdd(demMultiEventTriggering)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemMultiEventTriggering demMultiEventTriggering) {
					demMultiEventTriggering.target?.gSetDefinition(containerValue.getContainerDefinition("DemMultiEventTriggering"))
					super.delegateAdd(index, demMultiEventTriggering)
				}
			}
		}
		
		def List<DemObdDTC> getDemObdDTCs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemObdDTC")
				}
			}
			return new BasicWrappingEList<DemObdDTC, GContainer>(filteredContainers, typeof(DemObdDTC), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemObdDTC demObdDTC) {
					demObdDTC.target?.gSetDefinition(containerValue.getContainerDefinition("DemObdDTC"))
					super.delegateAdd(demObdDTC)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemObdDTC demObdDTC) {
					demObdDTC.target?.gSetDefinition(containerValue.getContainerDefinition("DemObdDTC"))
					super.delegateAdd(index, demObdDTC)
				}
			}
		}
		
		def List<DemPidClass> getDemPidClass(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemPidClass")
				}
			}
			return new BasicWrappingEList<DemPidClass, GContainer>(filteredContainers, typeof(DemPidClass), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemPidClass demPidClass) {
					demPidClass.target?.gSetDefinition(containerValue.getContainerDefinition("DemPidClass"))
					super.delegateAdd(demPidClass)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemPidClass demPidClass) {
					demPidClass.target?.gSetDefinition(containerValue.getContainerDefinition("DemPidClass"))
					super.delegateAdd(index, demPidClass)
				}
			}
		}
		
		
		static class DemComponent implements IWrapper<GContainer> {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof DemComponent)){
					return false
				}
				this.target == (object as DemComponent).target
			}
		
			def String getDemComponentFailedCallbackFnc(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemComponentFailedCallbackFnc"].getStringValue()
			}
			
			def void setDemComponentFailedCallbackFnc(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemComponentFailedCallbackFnc"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemComponentFailedCallbackFnc"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getDemComponentId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemComponentId"].getBigIntegerValue()
			}
			
			def void setDemComponentId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemComponentId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemComponentId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getDemComponentIgnoresPriority(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemComponentIgnoresPriority"].getBooleanValue()
			}
			
			def void setDemComponentIgnoresPriority(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemComponentIgnoresPriority"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemComponentIgnoresPriority"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			def List<org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemComponent> getDemImmediateChildComponentRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "DemImmediateChildComponentRef"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "DemImmediateChildComponentRef")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemComponent>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemComponent)) {
					override protected wrap(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemComponent object) throws CoreException {
						if (object !== null) {
							val container = object.getTarget()
							val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
							referenceValue.gSetDefinition(referenceValueDef)
							referenceValue.gSetValue(container)
							return referenceValue
						}
					}
			
					override protected unwrap(GReferenceValue referenceValue) {
						if (referenceValue !== null) {
							val referenceValueValue = referenceValue.gGetValue
							if (referenceValueValue instanceof GContainer) {
								return new org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemComponent(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			
		}
		
		static class DemDTC implements IWrapper<GContainer> {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof DemDTC)){
					return false
				}
				this.target == (object as DemDTC).target
			}
		
			def BigInteger getDemDTCFunctionalUnit(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDTCFunctionalUnit"].getBigIntegerValue()
			}
			
			def void setDemDTCFunctionalUnit(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDTCFunctionalUnit"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDTCFunctionalUnit"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def DemDTCSeverity getDemDTCSeverity(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDTCSeverity"].getDemDTCSeverityValue()
			}
			
			def void setDemDTCSeverity(DemDTCSeverity value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDTCSeverity"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDTCSeverity"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum DemDTCSeverity {
				DEM_SEVERITY_CHECK_AT_NEXT_HALT, 
				DEM_SEVERITY_CHECK_IMMEDIATELY, 
				DEM_SEVERITY_MAINTENANCE_ONLY, 
				DEM_SEVERITY_NO_SEVERITY
			}
			
			def DemDTCSeverity getDemDTCSeverityValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "DEM_SEVERITY_CHECK_AT_NEXT_HALT" : DemDTCSeverity.DEM_SEVERITY_CHECK_AT_NEXT_HALT
					case "DEM_SEVERITY_CHECK_IMMEDIATELY" : DemDTCSeverity.DEM_SEVERITY_CHECK_IMMEDIATELY
					case "DEM_SEVERITY_MAINTENANCE_ONLY" : DemDTCSeverity.DEM_SEVERITY_MAINTENANCE_ONLY
					case "DEM_SEVERITY_NO_SEVERITY" : DemDTCSeverity.DEM_SEVERITY_NO_SEVERITY
				}
			}
			
			def void setDemDTCSeverityValue(GParameterValue parameterValue, DemDTCSeverity value){
				parameterValue.setValue(value)
			}
			
			def BigInteger getDemDtcValue(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtcValue"].getBigIntegerValue()
			}
			
			def void setDemDtcValue(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtcValue"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDtcValue"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def DemNvStorageStrategy getDemNvStorageStrategy(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemNvStorageStrategy"].getDemNvStorageStrategyValue()
			}
			
			def void setDemNvStorageStrategy(DemNvStorageStrategy value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemNvStorageStrategy"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemNvStorageStrategy"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum DemNvStorageStrategy {
				DURING_SHUTDOWN, 
				IMMEDIATE_AT_FIRST_OCCURRENCE
			}
			
			def DemNvStorageStrategy getDemNvStorageStrategyValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "DURING_SHUTDOWN" : DemNvStorageStrategy.DURING_SHUTDOWN
					case "IMMEDIATE_AT_FIRST_OCCURRENCE" : DemNvStorageStrategy.IMMEDIATE_AT_FIRST_OCCURRENCE
				}
			}
			
			def void setDemNvStorageStrategyValue(GParameterValue parameterValue, DemNvStorageStrategy value){
				parameterValue.setValue(value)
			}
			
			def DemWWHOBDDTCClass getDemWWHOBDDTCClass(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemWWHOBDDTCClass"].getDemWWHOBDDTCClassValue()
			}
			
			def void setDemWWHOBDDTCClass(DemWWHOBDDTCClass value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemWWHOBDDTCClass"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemWWHOBDDTCClass"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum DemWWHOBDDTCClass {
				DEM_DTC_WWHOBD_CLASS_A, 
				DEM_DTC_WWHOBD_CLASS_B1, 
				DEM_DTC_WWHOBD_CLASS_B2, 
				DEM_DTC_WWHOBD_CLASS_C, 
				DEM_DTC_WWHOBD_CLASS_NOCLASS
			}
			
			def DemWWHOBDDTCClass getDemWWHOBDDTCClassValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "DEM_DTC_WWHOBD_CLASS_A" : DemWWHOBDDTCClass.DEM_DTC_WWHOBD_CLASS_A
					case "DEM_DTC_WWHOBD_CLASS_B1" : DemWWHOBDDTCClass.DEM_DTC_WWHOBD_CLASS_B1
					case "DEM_DTC_WWHOBD_CLASS_B2" : DemWWHOBDDTCClass.DEM_DTC_WWHOBD_CLASS_B2
					case "DEM_DTC_WWHOBD_CLASS_C" : DemWWHOBDDTCClass.DEM_DTC_WWHOBD_CLASS_C
					case "DEM_DTC_WWHOBD_CLASS_NOCLASS" : DemWWHOBDDTCClass.DEM_DTC_WWHOBD_CLASS_NOCLASS
				}
			}
			
			def void setDemWWHOBDDTCClassValue(GParameterValue parameterValue, DemWWHOBDDTCClass value){
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemDTCAttributes getDemDTCAttributesRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemDTCAttributes), "DemDTCAttributesRef")
			}
			
			def void setDemDTCAttributesRef(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemDTCAttributes object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DemDTCAttributesRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemObdDTC getDemObdDTCRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemObdDTC), "DemObdDTCRef")
			}
			
			def void setDemObdDTCRef(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemObdDTC object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DemObdDTCRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class DemDTCAttributes implements IWrapper<GContainer> {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof DemDTCAttributes)){
					return false
				}
				this.target == (object as DemDTCAttributes).target
			}
		
			def Boolean getDemAgingAllowed(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemAgingAllowed"].getBooleanValue()
			}
			
			def void setDemAgingAllowed(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemAgingAllowed"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemAgingAllowed"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getDemAgingCycleCounterThreshold(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemAgingCycleCounterThreshold"].getBigIntegerValue()
			}
			
			def void setDemAgingCycleCounterThreshold(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemAgingCycleCounterThreshold"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemAgingCycleCounterThreshold"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getDemAgingCycleCounterThresholdForTFSLC(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemAgingCycleCounterThresholdForTFSLC"].getBigIntegerValue()
			}
			
			def void setDemAgingCycleCounterThresholdForTFSLC(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemAgingCycleCounterThresholdForTFSLC"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemAgingCycleCounterThresholdForTFSLC"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getDemDTCPriority(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDTCPriority"].getBigIntegerValue()
			}
			
			def void setDemDTCPriority(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDTCPriority"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDTCPriority"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def DemDTCSignificance getDemDTCSignificance(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDTCSignificance"].getDemDTCSignificanceValue()
			}
			
			def void setDemDTCSignificance(DemDTCSignificance value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDTCSignificance"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDTCSignificance"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum DemDTCSignificance {
				DEM_EVENT_SIGNIFICANCE_FAULT, 
				DEM_EVENT_SIGNIFICANCE_OCCURRENCE
			}
			
			def DemDTCSignificance getDemDTCSignificanceValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "DEM_EVENT_SIGNIFICANCE_FAULT" : DemDTCSignificance.DEM_EVENT_SIGNIFICANCE_FAULT
					case "DEM_EVENT_SIGNIFICANCE_OCCURRENCE" : DemDTCSignificance.DEM_EVENT_SIGNIFICANCE_OCCURRENCE
				}
			}
			
			def void setDemDTCSignificanceValue(GParameterValue parameterValue, DemDTCSignificance value){
				parameterValue.setValue(value)
			}
			
			def BigInteger getDemMaxNumberFreezeFrameRecords(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemMaxNumberFreezeFrameRecords"].getBigIntegerValue()
			}
			
			def void setDemMaxNumberFreezeFrameRecords(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemMaxNumberFreezeFrameRecords"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemMaxNumberFreezeFrameRecords"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemOperationCycle getDemAgingCycleRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemOperationCycle), "DemAgingCycleRef")
			}
			
			def void setDemAgingCycleRef(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemOperationCycle object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DemAgingCycleRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemExtendedDataClass getDemExtendedDataClassRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemExtendedDataClass), "DemExtendedDataClassRef")
			}
			
			def void setDemExtendedDataClassRef(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemExtendedDataClass object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DemExtendedDataClassRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemFreezeFrameClass getDemFreezeFrameClassRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemFreezeFrameClass), "DemFreezeFrameClassRef")
			}
			
			def void setDemFreezeFrameClassRef(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemFreezeFrameClass object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DemFreezeFrameClassRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemFreezeFrameRecNumClass getDemFreezeFrameRecNumClassRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemFreezeFrameRecNumClass), "DemFreezeFrameRecNumClassRef")
			}
			
			def void setDemFreezeFrameRecNumClassRef(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemFreezeFrameRecNumClass object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DemFreezeFrameRecNumClassRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemGeneralJ1939.DemJ1939FreezeFrameClass getDemJ1939ExpandedFreezeFrameClassRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemGeneralJ1939.DemJ1939FreezeFrameClass), "DemJ1939ExpandedFreezeFrameClassRef")
			}
			
			def void setDemJ1939ExpandedFreezeFrameClassRef(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemGeneralJ1939.DemJ1939FreezeFrameClass object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DemJ1939ExpandedFreezeFrameClassRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemGeneralJ1939.DemJ1939FreezeFrameClass getDemJ1939FreezeFrameClassRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemGeneralJ1939.DemJ1939FreezeFrameClass), "DemJ1939FreezeFrameClassRef")
			}
			
			def void setDemJ1939FreezeFrameClassRef(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemGeneralJ1939.DemJ1939FreezeFrameClass object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DemJ1939FreezeFrameClassRef"], object.getTarget())
				}
			}
			
			
			def org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemFreezeFrameClass getDemWWHOBDFreezeFrameClassRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemFreezeFrameClass), "DemWWHOBDFreezeFrameClassRef")
			}
			
			def void setDemWWHOBDFreezeFrameClassRef(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemFreezeFrameClass object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DemWWHOBDFreezeFrameClassRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class DemDebounceCounterBasedClass implements IWrapper<GContainer> {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof DemDebounceCounterBasedClass)){
					return false
				}
				this.target == (object as DemDebounceCounterBasedClass).target
			}
		
			def BigInteger getDemCounterBasedFdcThresholdStorageValue(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCounterBasedFdcThresholdStorageValue"].getBigIntegerValue()
			}
			
			def void setDemCounterBasedFdcThresholdStorageValue(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCounterBasedFdcThresholdStorageValue"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemCounterBasedFdcThresholdStorageValue"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def DemDebounceBehavior getDemDebounceBehavior(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceBehavior"].getDemDebounceBehaviorValue()
			}
			
			def void setDemDebounceBehavior(DemDebounceBehavior value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceBehavior"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDebounceBehavior"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum DemDebounceBehavior {
				DEM_DEBOUNCE_FREEZE, 
				DEM_DEBOUNCE_RESET
			}
			
			def DemDebounceBehavior getDemDebounceBehaviorValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "DEM_DEBOUNCE_FREEZE" : DemDebounceBehavior.DEM_DEBOUNCE_FREEZE
					case "DEM_DEBOUNCE_RESET" : DemDebounceBehavior.DEM_DEBOUNCE_RESET
				}
			}
			
			def void setDemDebounceBehaviorValue(GParameterValue parameterValue, DemDebounceBehavior value){
				parameterValue.setValue(value)
			}
			
			def BigInteger getDemDebounceCounterDecrementStepSize(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterDecrementStepSize"].getBigIntegerValue()
			}
			
			def void setDemDebounceCounterDecrementStepSize(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterDecrementStepSize"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDebounceCounterDecrementStepSize"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getDemDebounceCounterFailedThreshold(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterFailedThreshold"].getBigIntegerValue()
			}
			
			def void setDemDebounceCounterFailedThreshold(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterFailedThreshold"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDebounceCounterFailedThreshold"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getDemDebounceCounterIncrementStepSize(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterIncrementStepSize"].getBigIntegerValue()
			}
			
			def void setDemDebounceCounterIncrementStepSize(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterIncrementStepSize"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDebounceCounterIncrementStepSize"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getDemDebounceCounterJumpDown(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterJumpDown"].getBooleanValue()
			}
			
			def void setDemDebounceCounterJumpDown(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterJumpDown"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDebounceCounterJumpDown"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getDemDebounceCounterJumpDownValue(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterJumpDownValue"].getBigIntegerValue()
			}
			
			def void setDemDebounceCounterJumpDownValue(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterJumpDownValue"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDebounceCounterJumpDownValue"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getDemDebounceCounterJumpUp(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterJumpUp"].getBooleanValue()
			}
			
			def void setDemDebounceCounterJumpUp(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterJumpUp"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDebounceCounterJumpUp"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getDemDebounceCounterJumpUpValue(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterJumpUpValue"].getBigIntegerValue()
			}
			
			def void setDemDebounceCounterJumpUpValue(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterJumpUpValue"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDebounceCounterJumpUpValue"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getDemDebounceCounterPassedThreshold(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterPassedThreshold"].getBigIntegerValue()
			}
			
			def void setDemDebounceCounterPassedThreshold(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterPassedThreshold"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDebounceCounterPassedThreshold"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getDemDebounceCounterStorage(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterStorage"].getBooleanValue()
			}
			
			def void setDemDebounceCounterStorage(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterStorage"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDebounceCounterStorage"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			
			
		}
		
		static class DemDebounceTimeBaseClass implements IWrapper<GContainer> {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof DemDebounceTimeBaseClass)){
					return false
				}
				this.target == (object as DemDebounceTimeBaseClass).target
			}
		
			def DemDebounceBehavior getDemDebounceBehavior(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceBehavior"].getDemDebounceBehaviorValue()
			}
			
			def void setDemDebounceBehavior(DemDebounceBehavior value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceBehavior"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDebounceBehavior"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum DemDebounceBehavior {
				DEM_DEBOUNCE_FREEZE, 
				DEM_DEBOUNCE_RESET
			}
			
			def DemDebounceBehavior getDemDebounceBehaviorValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "DEM_DEBOUNCE_FREEZE" : DemDebounceBehavior.DEM_DEBOUNCE_FREEZE
					case "DEM_DEBOUNCE_RESET" : DemDebounceBehavior.DEM_DEBOUNCE_RESET
				}
			}
			
			def void setDemDebounceBehaviorValue(GParameterValue parameterValue, DemDebounceBehavior value){
				parameterValue.setValue(value)
			}
			
			def BigDecimal getDemDebounceTimeFailedThreshold(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceTimeFailedThreshold"].getBigDecimalValue()
			}
			
			def void setDemDebounceTimeFailedThreshold(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceTimeFailedThreshold"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDebounceTimeFailedThreshold"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getDemDebounceTimePassedThreshold(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceTimePassedThreshold"].getBigDecimalValue()
			}
			
			def void setDemDebounceTimePassedThreshold(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceTimePassedThreshold"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDebounceTimePassedThreshold"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getDemTimeBasedFdcThresholdStorageValue(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemTimeBasedFdcThresholdStorageValue"].getBigDecimalValue()
			}
			
			def void setDemTimeBasedFdcThresholdStorageValue(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemTimeBasedFdcThresholdStorageValue"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemTimeBasedFdcThresholdStorageValue"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
		static class DemDtrs implements IWrapper<GContainer> {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof DemDtrs)){
					return false
				}
				this.target == (object as DemDtrs).target
			}
		
			
			
			def List<DemDtr> getDemDtrs(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DemDtr")
					}
				}
				return new BasicWrappingEList<DemDtr, GContainer>(filteredContainers, typeof(DemDtr), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemDtrs.DemDtr demDtr) {
						demDtr.target?.gSetDefinition(containerValue.getContainerDefinition("DemDtr"))
						super.delegateAdd(demDtr)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemDtrs.DemDtr demDtr) {
						demDtr.target?.gSetDefinition(containerValue.getContainerDefinition("DemDtr"))
						super.delegateAdd(index, demDtr)
					}
				}
			}
			
			
			static class DemDtr implements IWrapper<GContainer> {
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof DemDtr)){
						return false
					}
					this.target == (object as DemDtr).target
				}
			
				def BigDecimal getDemDtrCompuDenominator0(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtrCompuDenominator0"].getBigDecimalValue()
				}
				
				def void setDemDtrCompuDenominator0(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtrCompuDenominator0"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDtrCompuDenominator0"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigDecimal getDemDtrCompuNumerator0(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtrCompuNumerator0"].getBigDecimalValue()
				}
				
				def void setDemDtrCompuNumerator0(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtrCompuNumerator0"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDtrCompuNumerator0"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigDecimal getDemDtrCompuNumerator1(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtrCompuNumerator1"].getBigDecimalValue()
				}
				
				def void setDemDtrCompuNumerator1(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtrCompuNumerator1"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDtrCompuNumerator1"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getDemDtrId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtrId"].getBigIntegerValue()
				}
				
				def void setDemDtrId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtrId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDtrId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getDemDtrMid(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtrMid"].getBigIntegerValue()
				}
				
				def void setDemDtrMid(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtrMid"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDtrMid"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getDemDtrTid(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtrTid"].getBigIntegerValue()
				}
				
				def void setDemDtrTid(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtrTid"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDtrTid"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getDemDtrUasid(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtrUasid"].getBigIntegerValue()
				}
				
				def void setDemDtrUasid(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtrUasid"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDtrUasid"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def DemDtrUpdateKind getDemDtrUpdateKind(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtrUpdateKind"].getDemDtrUpdateKindValue()
				}
				
				def void setDemDtrUpdateKind(DemDtrUpdateKind value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtrUpdateKind"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDtrUpdateKind"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum DemDtrUpdateKind {
					DEM_DTR_UPDATE_ALWAYS, 
					DEM_DTR_UPDATE_STEADY
				}
				
				def DemDtrUpdateKind getDemDtrUpdateKindValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "DEM_DTR_UPDATE_ALWAYS" : DemDtrUpdateKind.DEM_DTR_UPDATE_ALWAYS
						case "DEM_DTR_UPDATE_STEADY" : DemDtrUpdateKind.DEM_DTR_UPDATE_STEADY
					}
				}
				
				def void setDemDtrUpdateKindValue(GParameterValue parameterValue, DemDtrUpdateKind value){
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter getDemDtrEventRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter), "DemDtrEventRef")
				}
				
				def void setDemDtrEventRef(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DemDtrEventRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class DemEventParameter implements IWrapper<GContainer> {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof DemEventParameter)){
					return false
				}
				this.target == (object as DemEventParameter).target
			}
		
			def BigDecimal getDemCausalityDelayTime(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCausalityDelayTime"].getBigDecimalValue()
			}
			
			def void setDemCausalityDelayTime(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCausalityDelayTime"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemCausalityDelayTime"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getDemComponentPriority(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemComponentPriority"].getBigIntegerValue()
			}
			
			def void setDemComponentPriority(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemComponentPriority"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemComponentPriority"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getDemEventAvailable(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventAvailable"].getBooleanValue()
			}
			
			def void setDemEventAvailable(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventAvailable"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemEventAvailable"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getDemEventConfirmationThreshold(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventConfirmationThreshold"].getBigIntegerValue()
			}
			
			def void setDemEventConfirmationThreshold(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventConfirmationThreshold"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemEventConfirmationThreshold"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getDemEventFailureCycleCounterThresholdAdaptable(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventFailureCycleCounterThresholdAdaptable"].getBooleanValue()
			}
			
			def void setDemEventFailureCycleCounterThresholdAdaptable(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventFailureCycleCounterThresholdAdaptable"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemEventFailureCycleCounterThresholdAdaptable"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getDemEventId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventId"].getBigIntegerValue()
			}
			
			def void setDemEventId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemEventId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def DemEventKind getDemEventKind(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventKind"].getDemEventKindValue()
			}
			
			def void setDemEventKind(DemEventKind value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventKind"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemEventKind"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum DemEventKind {
				DEM_EVENT_KIND_BSW, 
				DEM_EVENT_KIND_SWC
			}
			
			def DemEventKind getDemEventKindValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "DEM_EVENT_KIND_BSW" : DemEventKind.DEM_EVENT_KIND_BSW
					case "DEM_EVENT_KIND_SWC" : DemEventKind.DEM_EVENT_KIND_SWC
				}
			}
			
			def void setDemEventKindValue(GParameterValue parameterValue, DemEventKind value){
				parameterValue.setValue(value)
			}
			
			def Boolean getDemEventRecoverableInSameOperationCycle(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventRecoverableInSameOperationCycle"].getBooleanValue()
			}
			
			def void setDemEventRecoverableInSameOperationCycle(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventRecoverableInSameOperationCycle"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemEventRecoverableInSameOperationCycle"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getDemFFPrestorageSupported(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemFFPrestorageSupported"].getBooleanValue()
			}
			
			def void setDemFFPrestorageSupported(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemFFPrestorageSupported"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemFFPrestorageSupported"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def DemReportBehavior getDemReportBehavior(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemReportBehavior"].getDemReportBehaviorValue()
			}
			
			def void setDemReportBehavior(DemReportBehavior value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemReportBehavior"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemReportBehavior"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum DemReportBehavior {
				REPORT_AFTER_INIT, 
				REPORT_BEFORE_INIT
			}
			
			def DemReportBehavior getDemReportBehaviorValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "REPORT_AFTER_INIT" : DemReportBehavior.REPORT_AFTER_INIT
					case "REPORT_BEFORE_INIT" : DemReportBehavior.REPORT_BEFORE_INIT
				}
			}
			
			def void setDemReportBehaviorValue(GParameterValue parameterValue, DemReportBehavior value){
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemComponent getDemComponentClassRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemComponent), "DemComponentClassRef")
			}
			
			def void setDemComponentClassRef(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemComponent object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DemComponentClassRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemDTC getDemDTCRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemDTC), "DemDTCRef")
			}
			
			def void setDemDTCRef(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemDTC object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DemDTCRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEnableConditionGroup getDemEnableConditionGroupRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEnableConditionGroup), "DemEnableConditionGroupRef")
			}
			
			def void setDemEnableConditionGroupRef(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEnableConditionGroup object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DemEnableConditionGroupRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter getDemOBDGroupingAssociativeEventsRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter), "DemOBDGroupingAssociativeEventsRef")
			}
			
			def void setDemOBDGroupingAssociativeEventsRef(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DemOBDGroupingAssociativeEventsRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemOperationCycle getDemOperationCycleRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemOperationCycle), "DemOperationCycleRef")
			}
			
			def void setDemOperationCycleRef(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemOperationCycle object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DemOperationCycleRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemStorageConditionGroup getDemStorageConditionGroupRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemStorageConditionGroup), "DemStorageConditionGroupRef")
			}
			
			def void setDemStorageConditionGroupRef(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemStorageConditionGroup object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DemStorageConditionGroupRef"], object.getTarget())
				}
			}
			
			
			def DemCallbackClearEventAllowed getDemCallbackClearEventAllowed(){
				containerValue.getByType(typeof(DemCallbackClearEventAllowed))
			}
			
			def void setDemCallbackClearEventAllowed(DemCallbackClearEventAllowed demCallbackClearEventAllowed){
				val GContainer subContainer = demCallbackClearEventAllowed.getTarget()
				containerValue.setContainer(subContainer, "DemCallbackClearEventAllowed")
			}
			
			def DemCallbackEventDataChanged getDemCallbackEventDataChanged(){
				containerValue.getByType(typeof(DemCallbackEventDataChanged))
			}
			
			def void setDemCallbackEventDataChanged(DemCallbackEventDataChanged demCallbackEventDataChanged){
				val GContainer subContainer = demCallbackEventDataChanged.getTarget()
				containerValue.setContainer(subContainer, "DemCallbackEventDataChanged")
			}
			
			def List<DemCallbackEventUdsStatusChanged> getDemCallbackEventUdsStatusChangeds(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DemCallbackEventUdsStatusChanged")
					}
				}
				return new BasicWrappingEList<DemCallbackEventUdsStatusChanged, GContainer>(filteredContainers, typeof(DemCallbackEventUdsStatusChanged), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter.DemCallbackEventUdsStatusChanged demCallbackEventUdsStatusChanged) {
						demCallbackEventUdsStatusChanged.target?.gSetDefinition(containerValue.getContainerDefinition("DemCallbackEventUdsStatusChanged"))
						super.delegateAdd(demCallbackEventUdsStatusChanged)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter.DemCallbackEventUdsStatusChanged demCallbackEventUdsStatusChanged) {
						demCallbackEventUdsStatusChanged.target?.gSetDefinition(containerValue.getContainerDefinition("DemCallbackEventUdsStatusChanged"))
						super.delegateAdd(index, demCallbackEventUdsStatusChanged)
					}
				}
			}
			
			def DemCallbackInitMForE getDemCallbackInitMForE(){
				containerValue.getByType(typeof(DemCallbackInitMForE))
			}
			
			def void setDemCallbackInitMForE(DemCallbackInitMForE demCallbackInitMForE){
				val GContainer subContainer = demCallbackInitMForE.getTarget()
				containerValue.setContainer(subContainer, "DemCallbackInitMForE")
			}
			
			def List<DemCallbackMonitorStatusChanged> getDemCallbackMonitorStatusChangeds(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DemCallbackMonitorStatusChanged")
					}
				}
				return new BasicWrappingEList<DemCallbackMonitorStatusChanged, GContainer>(filteredContainers, typeof(DemCallbackMonitorStatusChanged), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter.DemCallbackMonitorStatusChanged demCallbackMonitorStatusChanged) {
						demCallbackMonitorStatusChanged.target?.gSetDefinition(containerValue.getContainerDefinition("DemCallbackMonitorStatusChanged"))
						super.delegateAdd(demCallbackMonitorStatusChanged)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter.DemCallbackMonitorStatusChanged demCallbackMonitorStatusChanged) {
						demCallbackMonitorStatusChanged.target?.gSetDefinition(containerValue.getContainerDefinition("DemCallbackMonitorStatusChanged"))
						super.delegateAdd(index, demCallbackMonitorStatusChanged)
					}
				}
			}
			
			def DemDebounceAlgorithmClass getDemDebounceAlgorithmClass(){
				containerValue.getByType(typeof(DemDebounceAlgorithmClass))
			}
			
			def void setDemDebounceAlgorithmClass(DemDebounceAlgorithmClass demDebounceAlgorithmClass){
				val GContainer subContainer = demDebounceAlgorithmClass.getTarget()
				containerValue.setContainer(subContainer, "DemDebounceAlgorithmClass")
			}
			
			def List<DemIndicatorAttribute> getDemIndicatorAttributes(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DemIndicatorAttribute")
					}
				}
				return new BasicWrappingEList<DemIndicatorAttribute, GContainer>(filteredContainers, typeof(DemIndicatorAttribute), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter.DemIndicatorAttribute demIndicatorAttribute) {
						demIndicatorAttribute.target?.gSetDefinition(containerValue.getContainerDefinition("DemIndicatorAttribute"))
						super.delegateAdd(demIndicatorAttribute)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter.DemIndicatorAttribute demIndicatorAttribute) {
						demIndicatorAttribute.target?.gSetDefinition(containerValue.getContainerDefinition("DemIndicatorAttribute"))
						super.delegateAdd(index, demIndicatorAttribute)
					}
				}
			}
			
			
			static class DemCallbackClearEventAllowed implements IWrapper<GContainer> {
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof DemCallbackClearEventAllowed)){
						return false
					}
					this.target == (object as DemCallbackClearEventAllowed).target
				}
			
				def String getDemCallbackClearEventAllowedFnc(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCallbackClearEventAllowedFnc"].getStringValue()
				}
				
				def void setDemCallbackClearEventAllowedFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCallbackClearEventAllowedFnc"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemCallbackClearEventAllowedFnc"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def DemClearEventAllowedBehavior getDemClearEventAllowedBehavior(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemClearEventAllowedBehavior"].getDemClearEventAllowedBehaviorValue()
				}
				
				def void setDemClearEventAllowedBehavior(DemClearEventAllowedBehavior value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemClearEventAllowedBehavior"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemClearEventAllowedBehavior"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum DemClearEventAllowedBehavior {
					DEM_NO_STATUS_BYTE_CHANGE, 
					DEM_ONLY_THIS_CYCLE_AND_READINESS
				}
				
				def DemClearEventAllowedBehavior getDemClearEventAllowedBehaviorValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "DEM_NO_STATUS_BYTE_CHANGE" : DemClearEventAllowedBehavior.DEM_NO_STATUS_BYTE_CHANGE
						case "DEM_ONLY_THIS_CYCLE_AND_READINESS" : DemClearEventAllowedBehavior.DEM_ONLY_THIS_CYCLE_AND_READINESS
					}
				}
				
				def void setDemClearEventAllowedBehaviorValue(GParameterValue parameterValue, DemClearEventAllowedBehavior value){
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
			static class DemCallbackEventDataChanged implements IWrapper<GContainer> {
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof DemCallbackEventDataChanged)){
						return false
					}
					this.target == (object as DemCallbackEventDataChanged).target
				}
			
				def String getDemCallbackEventDataChangedFnc(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCallbackEventDataChangedFnc"].getStringValue()
				}
				
				def void setDemCallbackEventDataChangedFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCallbackEventDataChangedFnc"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemCallbackEventDataChangedFnc"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
			static class DemCallbackEventUdsStatusChanged implements IWrapper<GContainer> {
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof DemCallbackEventUdsStatusChanged)){
						return false
					}
					this.target == (object as DemCallbackEventUdsStatusChanged).target
				}
			
				def String getDemCallbackEventUdsStatusChangedFnc(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCallbackEventUdsStatusChangedFnc"].getStringValue()
				}
				
				def void setDemCallbackEventUdsStatusChangedFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCallbackEventUdsStatusChangedFnc"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemCallbackEventUdsStatusChangedFnc"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
			static class DemCallbackInitMForE implements IWrapper<GContainer> {
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof DemCallbackInitMForE)){
						return false
					}
					this.target == (object as DemCallbackInitMForE).target
				}
			
				def String getDemCallbackInitMForEFnc(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCallbackInitMForEFnc"].getStringValue()
				}
				
				def void setDemCallbackInitMForEFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCallbackInitMForEFnc"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemCallbackInitMForEFnc"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
			static class DemCallbackMonitorStatusChanged implements IWrapper<GContainer> {
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof DemCallbackMonitorStatusChanged)){
						return false
					}
					this.target == (object as DemCallbackMonitorStatusChanged).target
				}
			
				def String getDemCallbackMonitorStatusChangedFnc(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCallbackMonitorStatusChangedFnc"].getStringValue()
				}
				
				def void setDemCallbackMonitorStatusChangedFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCallbackMonitorStatusChangedFnc"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemCallbackMonitorStatusChangedFnc"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
			static class DemDebounceAlgorithmClass implements IWrapper<GContainer> {
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof DemDebounceAlgorithmClass)){
						return false
					}
					this.target == (object as DemDebounceAlgorithmClass).target
				}
			
				def DemDebounceCounterBased getDemDebounceCounterBased(){
					containerValue.getByType(typeof(DemDebounceCounterBased))
				}
				
				def void setDemDebounceCounterBased(DemDebounceCounterBased demDebounceCounterBased){
					val GContainer subContainer = demDebounceCounterBased.getTarget()
					containerValue.setContainer(subContainer, "DemDebounceCounterBased")
				}
				def DemDebounceMonitorInternal getDemDebounceMonitorInternal(){
					containerValue.getByType(typeof(DemDebounceMonitorInternal))
				}
				
				def void setDemDebounceMonitorInternal(DemDebounceMonitorInternal demDebounceMonitorInternal){
					val GContainer subContainer = demDebounceMonitorInternal.getTarget()
					containerValue.setContainer(subContainer, "DemDebounceMonitorInternal")
				}
				def DemDebounceTimeBase getDemDebounceTimeBase(){
					containerValue.getByType(typeof(DemDebounceTimeBase))
				}
				
				def void setDemDebounceTimeBase(DemDebounceTimeBase demDebounceTimeBase){
					val GContainer subContainer = demDebounceTimeBase.getTarget()
					containerValue.setContainer(subContainer, "DemDebounceTimeBase")
				}
				
				static class DemDebounceCounterBased implements IWrapper<GContainer> {
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
				
					override def boolean equals(Object object) {
				        if (!(object instanceof DemDebounceCounterBased)){
							return false
						}
						this.target == (object as DemDebounceCounterBased).target
					}
				
					
					def org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemDebounceCounterBasedClass getDemDebounceCounterBasedClassRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemDebounceCounterBasedClass), "DemDebounceCounterBasedClassRef")
					}
					
					def void setDemDebounceCounterBasedClassRef(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemDebounceCounterBasedClass object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DemDebounceCounterBasedClassRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class DemDebounceMonitorInternal implements IWrapper<GContainer> {
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
				
					override def boolean equals(Object object) {
				        if (!(object instanceof DemDebounceMonitorInternal)){
							return false
						}
						this.target == (object as DemDebounceMonitorInternal).target
					}
				
					
					
					def DemCallbackGetFDC getDemCallbackGetFDC(){
						containerValue.getByType(typeof(DemCallbackGetFDC))
					}
					
					def void setDemCallbackGetFDC(DemCallbackGetFDC demCallbackGetFDC){
						val GContainer subContainer = demCallbackGetFDC.getTarget()
						containerValue.setContainer(subContainer, "DemCallbackGetFDC")
					}
					
					
					static class DemCallbackGetFDC implements IWrapper<GContainer> {
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
					
						override def boolean equals(Object object) {
					        if (!(object instanceof DemCallbackGetFDC)){
								return false
							}
							this.target == (object as DemCallbackGetFDC).target
						}
					
						def String getDemCallbackGetFDCFnc(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCallbackGetFDCFnc"].getStringValue()
						}
						
						def void setDemCallbackGetFDCFnc(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCallbackGetFDCFnc"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemCallbackGetFDCFnc"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						
						
						
					}
					
				}
				
				static class DemDebounceTimeBase implements IWrapper<GContainer> {
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
				
					override def boolean equals(Object object) {
				        if (!(object instanceof DemDebounceTimeBase)){
							return false
						}
						this.target == (object as DemDebounceTimeBase).target
					}
				
					
					def org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemDebounceTimeBaseClass getDemDebounceTimeBaseRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemDebounceTimeBaseClass), "DemDebounceTimeBaseRef")
					}
					
					def void setDemDebounceTimeBaseRef(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemDebounceTimeBaseClass object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DemDebounceTimeBaseRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
			static class DemIndicatorAttribute implements IWrapper<GContainer> {
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof DemIndicatorAttribute)){
						return false
					}
					this.target == (object as DemIndicatorAttribute).target
				}
			
				def DemIndicatorBehaviour getDemIndicatorBehaviour(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemIndicatorBehaviour"].getDemIndicatorBehaviourValue()
				}
				
				def void setDemIndicatorBehaviour(DemIndicatorBehaviour value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemIndicatorBehaviour"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemIndicatorBehaviour"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum DemIndicatorBehaviour {
					DEM_INDICATOR_BLINKING, 
					DEM_INDICATOR_BLINK_CONT, 
					DEM_INDICATOR_CONTINUOUS, 
					DEM_INDICATOR_FAST_FLASH, 
					DEM_INDICATOR_SLOW_FLASH
				}
				
				def DemIndicatorBehaviour getDemIndicatorBehaviourValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "DEM_INDICATOR_BLINKING" : DemIndicatorBehaviour.DEM_INDICATOR_BLINKING
						case "DEM_INDICATOR_BLINK_CONT" : DemIndicatorBehaviour.DEM_INDICATOR_BLINK_CONT
						case "DEM_INDICATOR_CONTINUOUS" : DemIndicatorBehaviour.DEM_INDICATOR_CONTINUOUS
						case "DEM_INDICATOR_FAST_FLASH" : DemIndicatorBehaviour.DEM_INDICATOR_FAST_FLASH
						case "DEM_INDICATOR_SLOW_FLASH" : DemIndicatorBehaviour.DEM_INDICATOR_SLOW_FLASH
					}
				}
				
				def void setDemIndicatorBehaviourValue(GParameterValue parameterValue, DemIndicatorBehaviour value){
					parameterValue.setValue(value)
				}
				
				def BigInteger getDemIndicatorFailureCycleCounterThreshold(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemIndicatorFailureCycleCounterThreshold"].getBigIntegerValue()
				}
				
				def void setDemIndicatorFailureCycleCounterThreshold(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemIndicatorFailureCycleCounterThreshold"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemIndicatorFailureCycleCounterThreshold"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getDemIndicatorHealingCycleCounterThreshold(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemIndicatorHealingCycleCounterThreshold"].getBigIntegerValue()
				}
				
				def void setDemIndicatorHealingCycleCounterThreshold(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemIndicatorHealingCycleCounterThreshold"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemIndicatorHealingCycleCounterThreshold"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEventMemorySet.DemIndicator getDemIndicatorRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEventMemorySet.DemIndicator), "DemIndicatorRef")
				}
				
				def void setDemIndicatorRef(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEventMemorySet.DemIndicator object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DemIndicatorRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class DemMultiEventTriggering implements IWrapper<GContainer> {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof DemMultiEventTriggering)){
					return false
				}
				this.target == (object as DemMultiEventTriggering).target
			}
		
			
			def org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter getDemMultiEventTriggeringMasterEventRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter), "DemMultiEventTriggeringMasterEventRef")
			}
			
			def void setDemMultiEventTriggeringMasterEventRef(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DemMultiEventTriggeringMasterEventRef"], object.getTarget())
				}
			}
			
			def List<org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter> getDemMultiEventTriggeringSlaveEventRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "DemMultiEventTriggeringSlaveEventRef"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "DemMultiEventTriggeringSlaveEventRef")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter)) {
					override protected wrap(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter object) throws CoreException {
						if (object !== null) {
							val container = object.getTarget()
							val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
							referenceValue.gSetDefinition(referenceValueDef)
							referenceValue.gSetValue(container)
							return referenceValue
						}
					}
			
					override protected unwrap(GReferenceValue referenceValue) {
						if (referenceValue !== null) {
							val referenceValueValue = referenceValue.gGetValue
							if (referenceValueValue instanceof GContainer) {
								return new org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			
		}
		
		static class DemObdDTC implements IWrapper<GContainer> {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof DemObdDTC)){
					return false
				}
				this.target == (object as DemObdDTC).target
			}
		
			def Boolean getDemConsiderPtoStatus(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemConsiderPtoStatus"].getBooleanValue()
			}
			
			def void setDemConsiderPtoStatus(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemConsiderPtoStatus"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemConsiderPtoStatus"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getDemDtcValue(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtcValue"].getBigIntegerValue()
			}
			
			def void setDemDtcValue(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtcValue"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDtcValue"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def DemEventOBDReadinessGroup getDemEventOBDReadinessGroup(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventOBDReadinessGroup"].getDemEventOBDReadinessGroupValue()
			}
			
			def void setDemEventOBDReadinessGroup(DemEventOBDReadinessGroup value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventOBDReadinessGroup"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemEventOBDReadinessGroup"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum DemEventOBDReadinessGroup {
				DEM_OBD_RDY_AC, 
				DEM_OBD_RDY_BOOSTPR, 
				DEM_OBD_RDY_CAT, 
				DEM_OBD_RDY_CMPRCMPT, 
				DEM_OBD_RDY_EGR, 
				DEM_OBD_RDY_EGSENS, 
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
			
			def DemEventOBDReadinessGroup getDemEventOBDReadinessGroupValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "DEM_OBD_RDY_AC" : DemEventOBDReadinessGroup.DEM_OBD_RDY_AC
					case "DEM_OBD_RDY_BOOSTPR" : DemEventOBDReadinessGroup.DEM_OBD_RDY_BOOSTPR
					case "DEM_OBD_RDY_CAT" : DemEventOBDReadinessGroup.DEM_OBD_RDY_CAT
					case "DEM_OBD_RDY_CMPRCMPT" : DemEventOBDReadinessGroup.DEM_OBD_RDY_CMPRCMPT
					case "DEM_OBD_RDY_EGR" : DemEventOBDReadinessGroup.DEM_OBD_RDY_EGR
					case "DEM_OBD_RDY_EGSENS" : DemEventOBDReadinessGroup.DEM_OBD_RDY_EGSENS
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
			
			def void setDemEventOBDReadinessGroupValue(GParameterValue parameterValue, DemEventOBDReadinessGroup value){
				parameterValue.setValue(value)
			}
			
			def BigInteger getDemJ1939DTCValue(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939DTCValue"].getBigIntegerValue()
			}
			
			def void setDemJ1939DTCValue(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939DTCValue"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemJ1939DTCValue"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
		static class DemPidClass implements IWrapper<GContainer> {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof DemPidClass)){
					return false
				}
				this.target == (object as DemPidClass).target
			}
		
			def BigInteger getDemPidIdentifier(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemPidIdentifier"].getBigIntegerValue()
			}
			
			def void setDemPidIdentifier(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemPidIdentifier"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemPidIdentifier"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			def List<DemPidDataElement> getDemPidDataElements(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DemPidDataElement")
					}
				}
				return new BasicWrappingEList<DemPidDataElement, GContainer>(filteredContainers, typeof(DemPidDataElement), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemPidClass.DemPidDataElement demPidDataElement) {
						demPidDataElement.target?.gSetDefinition(containerValue.getContainerDefinition("DemPidDataElement"))
						super.delegateAdd(demPidDataElement)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemPidClass.DemPidDataElement demPidDataElement) {
						demPidDataElement.target?.gSetDefinition(containerValue.getContainerDefinition("DemPidDataElement"))
						super.delegateAdd(index, demPidDataElement)
					}
				}
			}
			
			
			static class DemPidDataElement implements IWrapper<GContainer> {
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof DemPidDataElement)){
						return false
					}
					this.target == (object as DemPidDataElement).target
				}
			
				
				def org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemDataElementClass getDemPidDataElementClassRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemDataElementClass), "DemPidDataElementClassRef")
				}
				
				def void setDemPidDataElementClassRef(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemDataElementClass object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DemPidDataElementClassRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
	}
	static class DemGeneral implements IWrapper<GContainer> {
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof DemGeneral)){
				return false
			}
			this.target == (object as DemGeneral).target
		}
	
		def Boolean getDemAgingRequiresNotFailedCycle(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemAgingRequiresNotFailedCycle"].getBooleanValue()
		}
		
		def void setDemAgingRequiresNotFailedCycle(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemAgingRequiresNotFailedCycle"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemAgingRequiresNotFailedCycle"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getDemAgingRequiresTestedCycle(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemAgingRequiresTestedCycle"].getBooleanValue()
		}
		
		def void setDemAgingRequiresTestedCycle(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemAgingRequiresTestedCycle"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemAgingRequiresTestedCycle"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def DemAvailabilitySupport getDemAvailabilitySupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemAvailabilitySupport"].getDemAvailabilitySupportValue()
		}
		
		def void setDemAvailabilitySupport(DemAvailabilitySupport value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemAvailabilitySupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemAvailabilitySupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum DemAvailabilitySupport {
			DEM_EVENT_AVAILABILITY, 
			DEM_NO_AVAILABILITY
		}
		
		def DemAvailabilitySupport getDemAvailabilitySupportValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "DEM_EVENT_AVAILABILITY" : DemAvailabilitySupport.DEM_EVENT_AVAILABILITY
				case "DEM_NO_AVAILABILITY" : DemAvailabilitySupport.DEM_NO_AVAILABILITY
			}
		}
		
		def void setDemAvailabilitySupportValue(GParameterValue parameterValue, DemAvailabilitySupport value){
			parameterValue.setValue(value)
		}
		
		def BigInteger getDemBswErrorBufferSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemBswErrorBufferSize"].getBigIntegerValue()
		}
		
		def void setDemBswErrorBufferSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemBswErrorBufferSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemBswErrorBufferSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def DemClearDTCBehavior getDemClearDTCBehavior(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemClearDTCBehavior"].getDemClearDTCBehaviorValue()
		}
		
		def void setDemClearDTCBehavior(DemClearDTCBehavior value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemClearDTCBehavior"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemClearDTCBehavior"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum DemClearDTCBehavior {
			DEM_CLRRESP_NONVOLATILE_FINISH, 
			DEM_CLRRESP_NONVOLATILE_TRIGGER, 
			DEM_CLRRESP_VOLATILE
		}
		
		def DemClearDTCBehavior getDemClearDTCBehaviorValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "DEM_CLRRESP_NONVOLATILE_FINISH" : DemClearDTCBehavior.DEM_CLRRESP_NONVOLATILE_FINISH
				case "DEM_CLRRESP_NONVOLATILE_TRIGGER" : DemClearDTCBehavior.DEM_CLRRESP_NONVOLATILE_TRIGGER
				case "DEM_CLRRESP_VOLATILE" : DemClearDTCBehavior.DEM_CLRRESP_VOLATILE
			}
		}
		
		def void setDemClearDTCBehaviorValue(GParameterValue parameterValue, DemClearDTCBehavior value){
			parameterValue.setValue(value)
		}
		
		def DemClearDTCLimitation getDemClearDTCLimitation(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemClearDTCLimitation"].getDemClearDTCLimitationValue()
		}
		
		def void setDemClearDTCLimitation(DemClearDTCLimitation value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemClearDTCLimitation"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemClearDTCLimitation"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum DemClearDTCLimitation {
			DEM_ALL_SUPPORTED_DTCS, 
			DEM_ONLY_CLEAR_ALL_DTCS
		}
		
		def DemClearDTCLimitation getDemClearDTCLimitationValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "DEM_ALL_SUPPORTED_DTCS" : DemClearDTCLimitation.DEM_ALL_SUPPORTED_DTCS
				case "DEM_ONLY_CLEAR_ALL_DTCS" : DemClearDTCLimitation.DEM_ONLY_CLEAR_ALL_DTCS
			}
		}
		
		def void setDemClearDTCLimitationValue(GParameterValue parameterValue, DemClearDTCLimitation value){
			parameterValue.setValue(value)
		}
		
		def DemDataElementDefaultEndianness getDemDataElementDefaultEndianness(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDataElementDefaultEndianness"].getDemDataElementDefaultEndiannessValue()
		}
		
		def void setDemDataElementDefaultEndianness(DemDataElementDefaultEndianness value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDataElementDefaultEndianness"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDataElementDefaultEndianness"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum DemDataElementDefaultEndianness {
			BIG_ENDIAN, 
			LITTLE_ENDIAN, 
			OPAQUE
		}
		
		def DemDataElementDefaultEndianness getDemDataElementDefaultEndiannessValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "BIG_ENDIAN" : DemDataElementDefaultEndianness.BIG_ENDIAN
				case "LITTLE_ENDIAN" : DemDataElementDefaultEndianness.LITTLE_ENDIAN
				case "OPAQUE" : DemDataElementDefaultEndianness.OPAQUE
			}
		}
		
		def void setDemDataElementDefaultEndiannessValue(GParameterValue parameterValue, DemDataElementDefaultEndianness value){
			parameterValue.setValue(value)
		}
		
		def Boolean getDemDebounceCounterBasedSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterBasedSupport"].getBooleanValue()
		}
		
		def void setDemDebounceCounterBasedSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceCounterBasedSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDebounceCounterBasedSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getDemDebounceTimeBasedSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceTimeBasedSupport"].getBooleanValue()
		}
		
		def void setDemDebounceTimeBasedSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDebounceTimeBasedSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDebounceTimeBasedSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getDemDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDevErrorDetect"].getBooleanValue()
		}
		
		def void setDemDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def DemEnvironmentDataCapture getDemEnvironmentDataCapture(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEnvironmentDataCapture"].getDemEnvironmentDataCaptureValue()
		}
		
		def void setDemEnvironmentDataCapture(DemEnvironmentDataCapture value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEnvironmentDataCapture"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemEnvironmentDataCapture"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum DemEnvironmentDataCapture {
			DEM_CAPTURE_ASYNCHRONOUS_TO_REPORTING, 
			DEM_CAPTURE_SYNCHRONOUS_TO_REPORTING
		}
		
		def DemEnvironmentDataCapture getDemEnvironmentDataCaptureValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "DEM_CAPTURE_ASYNCHRONOUS_TO_REPORTING" : DemEnvironmentDataCapture.DEM_CAPTURE_ASYNCHRONOUS_TO_REPORTING
				case "DEM_CAPTURE_SYNCHRONOUS_TO_REPORTING" : DemEnvironmentDataCapture.DEM_CAPTURE_SYNCHRONOUS_TO_REPORTING
			}
		}
		
		def void setDemEnvironmentDataCaptureValue(GParameterValue parameterValue, DemEnvironmentDataCapture value){
			parameterValue.setValue(value)
		}
		
		def DemEventCombinationSupport getDemEventCombinationSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventCombinationSupport"].getDemEventCombinationSupportValue()
		}
		
		def void setDemEventCombinationSupport(DemEventCombinationSupport value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventCombinationSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemEventCombinationSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum DemEventCombinationSupport {
			DEM_EVCOMB_DISABLED, 
			DEM_EVCOMB_ONRETRIEVAL, 
			DEM_EVCOMB_ONSTORAGE
		}
		
		def DemEventCombinationSupport getDemEventCombinationSupportValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "DEM_EVCOMB_DISABLED" : DemEventCombinationSupport.DEM_EVCOMB_DISABLED
				case "DEM_EVCOMB_ONRETRIEVAL" : DemEventCombinationSupport.DEM_EVCOMB_ONRETRIEVAL
				case "DEM_EVCOMB_ONSTORAGE" : DemEventCombinationSupport.DEM_EVCOMB_ONSTORAGE
			}
		}
		
		def void setDemEventCombinationSupportValue(GParameterValue parameterValue, DemEventCombinationSupport value){
			parameterValue.setValue(value)
		}
		
		def DemEventDisplacementStrategy getDemEventDisplacementStrategy(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventDisplacementStrategy"].getDemEventDisplacementStrategyValue()
		}
		
		def void setDemEventDisplacementStrategy(DemEventDisplacementStrategy value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventDisplacementStrategy"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemEventDisplacementStrategy"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum DemEventDisplacementStrategy {
			DEM_DISPLACEMENT_FULL, 
			DEM_DISPLACEMENT_NONE, 
			DEM_DISPLACEMENT_PRIO_OCC
		}
		
		def DemEventDisplacementStrategy getDemEventDisplacementStrategyValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "DEM_DISPLACEMENT_FULL" : DemEventDisplacementStrategy.DEM_DISPLACEMENT_FULL
				case "DEM_DISPLACEMENT_NONE" : DemEventDisplacementStrategy.DEM_DISPLACEMENT_NONE
				case "DEM_DISPLACEMENT_PRIO_OCC" : DemEventDisplacementStrategy.DEM_DISPLACEMENT_PRIO_OCC
			}
		}
		
		def void setDemEventDisplacementStrategyValue(GParameterValue parameterValue, DemEventDisplacementStrategy value){
			parameterValue.setValue(value)
		}
		
		def DemEventMemoryEntryStorageTrigger getDemEventMemoryEntryStorageTrigger(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventMemoryEntryStorageTrigger"].getDemEventMemoryEntryStorageTriggerValue()
		}
		
		def void setDemEventMemoryEntryStorageTrigger(DemEventMemoryEntryStorageTrigger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEventMemoryEntryStorageTrigger"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemEventMemoryEntryStorageTrigger"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum DemEventMemoryEntryStorageTrigger {
			DEM_TRIGGER_ON_CONFIRMED, 
			DEM_TRIGGER_ON_FDC_THRESHOLD, 
			DEM_TRIGGER_ON_TEST_FAILED
		}
		
		def DemEventMemoryEntryStorageTrigger getDemEventMemoryEntryStorageTriggerValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "DEM_TRIGGER_ON_CONFIRMED" : DemEventMemoryEntryStorageTrigger.DEM_TRIGGER_ON_CONFIRMED
				case "DEM_TRIGGER_ON_FDC_THRESHOLD" : DemEventMemoryEntryStorageTrigger.DEM_TRIGGER_ON_FDC_THRESHOLD
				case "DEM_TRIGGER_ON_TEST_FAILED" : DemEventMemoryEntryStorageTrigger.DEM_TRIGGER_ON_TEST_FAILED
			}
		}
		
		def void setDemEventMemoryEntryStorageTriggerValue(GParameterValue parameterValue, DemEventMemoryEntryStorageTrigger value){
			parameterValue.setValue(value)
		}
		
		def String getDemGeneralCallbackMonitorStatusChangedFnc(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemGeneralCallbackMonitorStatusChangedFnc"].getStringValue()
		}
		
		def void setDemGeneralCallbackMonitorStatusChangedFnc(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemGeneralCallbackMonitorStatusChangedFnc"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemGeneralCallbackMonitorStatusChangedFnc"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getDemGeneralInterfaceSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemGeneralInterfaceSupport"].getBooleanValue()
		}
		
		def void setDemGeneralInterfaceSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemGeneralInterfaceSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemGeneralInterfaceSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
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
		
		def BigInteger getDemMaxNumberEventEntryEventBuffer(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemMaxNumberEventEntryEventBuffer"].getBigIntegerValue()
		}
		
		def void setDemMaxNumberEventEntryEventBuffer(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemMaxNumberEventEntryEventBuffer"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemMaxNumberEventEntryEventBuffer"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getDemMaxNumberPrestoredFF(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemMaxNumberPrestoredFF"].getBigIntegerValue()
		}
		
		def void setDemMaxNumberPrestoredFF(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemMaxNumberPrestoredFF"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemMaxNumberPrestoredFF"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def DemOBDSupport getDemOBDSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOBDSupport"].getDemOBDSupportValue()
		}
		
		def void setDemOBDSupport(DemOBDSupport value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOBDSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemOBDSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum DemOBDSupport {
			DEM_OBD_DEP_SEC_ECU, 
			DEM_OBD_MASTER_ECU, 
			DEM_OBD_NO_OBD_SUPPORT, 
			DEM_OBD_PRIMARY_ECU
		}
		
		def DemOBDSupport getDemOBDSupportValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "DEM_OBD_DEP_SEC_ECU" : DemOBDSupport.DEM_OBD_DEP_SEC_ECU
				case "DEM_OBD_MASTER_ECU" : DemOBDSupport.DEM_OBD_MASTER_ECU
				case "DEM_OBD_NO_OBD_SUPPORT" : DemOBDSupport.DEM_OBD_NO_OBD_SUPPORT
				case "DEM_OBD_PRIMARY_ECU" : DemOBDSupport.DEM_OBD_PRIMARY_ECU
			}
		}
		
		def void setDemOBDSupportValue(GParameterValue parameterValue, DemOBDSupport value){
			parameterValue.setValue(value)
		}
		
		def DemOccurrenceCounterProcessing getDemOccurrenceCounterProcessing(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOccurrenceCounterProcessing"].getDemOccurrenceCounterProcessingValue()
		}
		
		def void setDemOccurrenceCounterProcessing(DemOccurrenceCounterProcessing value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOccurrenceCounterProcessing"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemOccurrenceCounterProcessing"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum DemOccurrenceCounterProcessing {
			DEM_PROCESS_OCCCTR_CDTC, 
			DEM_PROCESS_OCCCTR_TF
		}
		
		def DemOccurrenceCounterProcessing getDemOccurrenceCounterProcessingValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "DEM_PROCESS_OCCCTR_CDTC" : DemOccurrenceCounterProcessing.DEM_PROCESS_OCCCTR_CDTC
				case "DEM_PROCESS_OCCCTR_TF" : DemOccurrenceCounterProcessing.DEM_PROCESS_OCCCTR_TF
			}
		}
		
		def void setDemOccurrenceCounterProcessingValue(GParameterValue parameterValue, DemOccurrenceCounterProcessing value){
			parameterValue.setValue(value)
		}
		
		def Boolean getDemOperationCycleStatusStorage(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOperationCycleStatusStorage"].getBooleanValue()
		}
		
		def void setDemOperationCycleStatusStorage(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOperationCycleStatusStorage"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemOperationCycleStatusStorage"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getDemPTOSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemPTOSupport"].getBooleanValue()
		}
		
		def void setDemPTOSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemPTOSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemPTOSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getDemResetConfirmedBitOnOverflow(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemResetConfirmedBitOnOverflow"].getBooleanValue()
		}
		
		def void setDemResetConfirmedBitOnOverflow(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemResetConfirmedBitOnOverflow"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemResetConfirmedBitOnOverflow"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def DemStatusBitHandlingTestFailedSinceLastClear getDemStatusBitHandlingTestFailedSinceLastClear(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemStatusBitHandlingTestFailedSinceLastClear"].getDemStatusBitHandlingTestFailedSinceLastClearValue()
		}
		
		def void setDemStatusBitHandlingTestFailedSinceLastClear(DemStatusBitHandlingTestFailedSinceLastClear value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemStatusBitHandlingTestFailedSinceLastClear"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemStatusBitHandlingTestFailedSinceLastClear"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum DemStatusBitHandlingTestFailedSinceLastClear {
			DEM_STATUS_BIT_AGING_AND_DISPLACEMENT, 
			DEM_STATUS_BIT_NORMAL
		}
		
		def DemStatusBitHandlingTestFailedSinceLastClear getDemStatusBitHandlingTestFailedSinceLastClearValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "DEM_STATUS_BIT_AGING_AND_DISPLACEMENT" : DemStatusBitHandlingTestFailedSinceLastClear.DEM_STATUS_BIT_AGING_AND_DISPLACEMENT
				case "DEM_STATUS_BIT_NORMAL" : DemStatusBitHandlingTestFailedSinceLastClear.DEM_STATUS_BIT_NORMAL
			}
		}
		
		def void setDemStatusBitHandlingTestFailedSinceLastClearValue(GParameterValue parameterValue, DemStatusBitHandlingTestFailedSinceLastClear value){
			parameterValue.setValue(value)
		}
		
		def Boolean getDemStatusBitStorageTestFailed(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemStatusBitStorageTestFailed"].getBooleanValue()
		}
		
		def void setDemStatusBitStorageTestFailed(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemStatusBitStorageTestFailed"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemStatusBitStorageTestFailed"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def DemSuppressionSupport getDemSuppressionSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemSuppressionSupport"].getDemSuppressionSupportValue()
		}
		
		def void setDemSuppressionSupport(DemSuppressionSupport value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemSuppressionSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemSuppressionSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum DemSuppressionSupport {
			DEM_DTC_SUPPRESSION, 
			DEM_NO_SUPPRESSION
		}
		
		def DemSuppressionSupport getDemSuppressionSupportValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "DEM_DTC_SUPPRESSION" : DemSuppressionSupport.DEM_DTC_SUPPRESSION
				case "DEM_NO_SUPPRESSION" : DemSuppressionSupport.DEM_NO_SUPPRESSION
			}
		}
		
		def void setDemSuppressionSupportValue(GParameterValue parameterValue, DemSuppressionSupport value){
			parameterValue.setValue(value)
		}
		
		def BigDecimal getDemTaskTime(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemTaskTime"].getBigDecimalValue()
		}
		
		def void setDemTaskTime(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemTaskTime"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemTaskTime"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getDemTriggerDcmReports(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemTriggerDcmReports"].getBooleanValue()
		}
		
		def void setDemTriggerDcmReports(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemTriggerDcmReports"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemTriggerDcmReports"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getDemTriggerDltReports(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemTriggerDltReports"].getBooleanValue()
		}
		
		def void setDemTriggerDltReports(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemTriggerDltReports"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemTriggerDltReports"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getDemTriggerFiMReports(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemTriggerFiMReports"].getBooleanValue()
		}
		
		def void setDemTriggerFiMReports(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemTriggerFiMReports"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemTriggerFiMReports"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getDemTriggerMonitorInitBeforeClearOk(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemTriggerMonitorInitBeforeClearOk"].getBooleanValue()
		}
		
		def void setDemTriggerMonitorInitBeforeClearOk(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemTriggerMonitorInitBeforeClearOk"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemTriggerMonitorInitBeforeClearOk"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def DemTypeOfFreezeFrameRecordNumeration getDemTypeOfFreezeFrameRecordNumeration(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemTypeOfFreezeFrameRecordNumeration"].getDemTypeOfFreezeFrameRecordNumerationValue()
		}
		
		def void setDemTypeOfFreezeFrameRecordNumeration(DemTypeOfFreezeFrameRecordNumeration value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemTypeOfFreezeFrameRecordNumeration"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemTypeOfFreezeFrameRecordNumeration"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum DemTypeOfFreezeFrameRecordNumeration {
			DEM_FF_RECNUM_CALCULATED, 
			DEM_FF_RECNUM_CONFIGURED
		}
		
		def DemTypeOfFreezeFrameRecordNumeration getDemTypeOfFreezeFrameRecordNumerationValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "DEM_FF_RECNUM_CALCULATED" : DemTypeOfFreezeFrameRecordNumeration.DEM_FF_RECNUM_CALCULATED
				case "DEM_FF_RECNUM_CONFIGURED" : DemTypeOfFreezeFrameRecordNumeration.DEM_FF_RECNUM_CONFIGURED
			}
		}
		
		def void setDemTypeOfFreezeFrameRecordNumerationValue(GParameterValue parameterValue, DemTypeOfFreezeFrameRecordNumeration value){
			parameterValue.setValue(value)
		}
		
		def Boolean getDemVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemVersionInfoApi"].getBooleanValue()
		}
		
		def void setDemVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		def org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEventMemorySet.DemPrimaryMemory getDemClearEventsWithoutDTCEventMemoryRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEventMemorySet.DemPrimaryMemory), "DemClearEventsWithoutDTCEventMemoryRef")
		}
		
		def void setDemClearEventsWithoutDTCEventMemoryRef(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEventMemorySet.DemPrimaryMemory object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DemClearEventsWithoutDTCEventMemoryRef"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEventMemorySet getDemOBDEventMemorySetRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEventMemorySet), "DemOBDEventMemorySetRef")
		}
		
		def void setDemOBDEventMemorySetRef(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEventMemorySet object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DemOBDEventMemorySetRef"], object.getTarget())
			}
		}
		
		
		def List<DemClient> getDemClients(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemClient")
				}
			}
			return new BasicWrappingEList<DemClient, GContainer>(filteredContainers, typeof(DemClient), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemClient demClient) {
					demClient.target?.gSetDefinition(containerValue.getContainerDefinition("DemClient"))
					super.delegateAdd(demClient)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemClient demClient) {
					demClient.target?.gSetDefinition(containerValue.getContainerDefinition("DemClient"))
					super.delegateAdd(index, demClient)
				}
			}
		}
		
		def List<DemDataElementClass> getDemDataElementClass(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemDataElementClass")
				}
			}
			return new BasicWrappingEList<DemDataElementClass, GContainer>(filteredContainers, typeof(DemDataElementClass), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemDataElementClass demDataElementClass) {
					demDataElementClass.target?.gSetDefinition(containerValue.getContainerDefinition("DemDataElementClass"))
					super.delegateAdd(demDataElementClass)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemDataElementClass demDataElementClass) {
					demDataElementClass.target?.gSetDefinition(containerValue.getContainerDefinition("DemDataElementClass"))
					super.delegateAdd(index, demDataElementClass)
				}
			}
		}
		
		def List<DemDidClass> getDemDidClass(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemDidClass")
				}
			}
			return new BasicWrappingEList<DemDidClass, GContainer>(filteredContainers, typeof(DemDidClass), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemDidClass demDidClass) {
					demDidClass.target?.gSetDefinition(containerValue.getContainerDefinition("DemDidClass"))
					super.delegateAdd(demDidClass)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemDidClass demDidClass) {
					demDidClass.target?.gSetDefinition(containerValue.getContainerDefinition("DemDidClass"))
					super.delegateAdd(index, demDidClass)
				}
			}
		}
		
		def List<DemEnableCondition> getDemEnableConditions(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemEnableCondition")
				}
			}
			return new BasicWrappingEList<DemEnableCondition, GContainer>(filteredContainers, typeof(DemEnableCondition), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEnableCondition demEnableCondition) {
					demEnableCondition.target?.gSetDefinition(containerValue.getContainerDefinition("DemEnableCondition"))
					super.delegateAdd(demEnableCondition)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEnableCondition demEnableCondition) {
					demEnableCondition.target?.gSetDefinition(containerValue.getContainerDefinition("DemEnableCondition"))
					super.delegateAdd(index, demEnableCondition)
				}
			}
		}
		
		def List<DemEnableConditionGroup> getDemEnableConditionGroups(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemEnableConditionGroup")
				}
			}
			return new BasicWrappingEList<DemEnableConditionGroup, GContainer>(filteredContainers, typeof(DemEnableConditionGroup), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEnableConditionGroup demEnableConditionGroup) {
					demEnableConditionGroup.target?.gSetDefinition(containerValue.getContainerDefinition("DemEnableConditionGroup"))
					super.delegateAdd(demEnableConditionGroup)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEnableConditionGroup demEnableConditionGroup) {
					demEnableConditionGroup.target?.gSetDefinition(containerValue.getContainerDefinition("DemEnableConditionGroup"))
					super.delegateAdd(index, demEnableConditionGroup)
				}
			}
		}
		
		def List<DemEventMemorySet> getDemEventMemorySets(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemEventMemorySet")
				}
			}
			return new BasicWrappingEList<DemEventMemorySet, GContainer>(filteredContainers, typeof(DemEventMemorySet), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEventMemorySet demEventMemorySet) {
					demEventMemorySet.target?.gSetDefinition(containerValue.getContainerDefinition("DemEventMemorySet"))
					super.delegateAdd(demEventMemorySet)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEventMemorySet demEventMemorySet) {
					demEventMemorySet.target?.gSetDefinition(containerValue.getContainerDefinition("DemEventMemorySet"))
					super.delegateAdd(index, demEventMemorySet)
				}
			}
		}
		
		def List<DemExtendedDataClass> getDemExtendedDataClass(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemExtendedDataClass")
				}
			}
			return new BasicWrappingEList<DemExtendedDataClass, GContainer>(filteredContainers, typeof(DemExtendedDataClass), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemExtendedDataClass demExtendedDataClass) {
					demExtendedDataClass.target?.gSetDefinition(containerValue.getContainerDefinition("DemExtendedDataClass"))
					super.delegateAdd(demExtendedDataClass)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemExtendedDataClass demExtendedDataClass) {
					demExtendedDataClass.target?.gSetDefinition(containerValue.getContainerDefinition("DemExtendedDataClass"))
					super.delegateAdd(index, demExtendedDataClass)
				}
			}
		}
		
		def List<DemExtendedDataRecordClass> getDemExtendedDataRecordClass(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemExtendedDataRecordClass")
				}
			}
			return new BasicWrappingEList<DemExtendedDataRecordClass, GContainer>(filteredContainers, typeof(DemExtendedDataRecordClass), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemExtendedDataRecordClass demExtendedDataRecordClass) {
					demExtendedDataRecordClass.target?.gSetDefinition(containerValue.getContainerDefinition("DemExtendedDataRecordClass"))
					super.delegateAdd(demExtendedDataRecordClass)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemExtendedDataRecordClass demExtendedDataRecordClass) {
					demExtendedDataRecordClass.target?.gSetDefinition(containerValue.getContainerDefinition("DemExtendedDataRecordClass"))
					super.delegateAdd(index, demExtendedDataRecordClass)
				}
			}
		}
		
		def List<DemFreezeFrameClass> getDemFreezeFrameClass(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemFreezeFrameClass")
				}
			}
			return new BasicWrappingEList<DemFreezeFrameClass, GContainer>(filteredContainers, typeof(DemFreezeFrameClass), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemFreezeFrameClass demFreezeFrameClass) {
					demFreezeFrameClass.target?.gSetDefinition(containerValue.getContainerDefinition("DemFreezeFrameClass"))
					super.delegateAdd(demFreezeFrameClass)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemFreezeFrameClass demFreezeFrameClass) {
					demFreezeFrameClass.target?.gSetDefinition(containerValue.getContainerDefinition("DemFreezeFrameClass"))
					super.delegateAdd(index, demFreezeFrameClass)
				}
			}
		}
		
		def List<DemFreezeFrameRecNumClass> getDemFreezeFrameRecNumClass(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemFreezeFrameRecNumClass")
				}
			}
			return new BasicWrappingEList<DemFreezeFrameRecNumClass, GContainer>(filteredContainers, typeof(DemFreezeFrameRecNumClass), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemFreezeFrameRecNumClass demFreezeFrameRecNumClass) {
					demFreezeFrameRecNumClass.target?.gSetDefinition(containerValue.getContainerDefinition("DemFreezeFrameRecNumClass"))
					super.delegateAdd(demFreezeFrameRecNumClass)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemFreezeFrameRecNumClass demFreezeFrameRecNumClass) {
					demFreezeFrameRecNumClass.target?.gSetDefinition(containerValue.getContainerDefinition("DemFreezeFrameRecNumClass"))
					super.delegateAdd(index, demFreezeFrameRecNumClass)
				}
			}
		}
		
		def List<DemFreezeFrameRecordClass> getDemFreezeFrameRecordClass(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemFreezeFrameRecordClass")
				}
			}
			return new BasicWrappingEList<DemFreezeFrameRecordClass, GContainer>(filteredContainers, typeof(DemFreezeFrameRecordClass), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemFreezeFrameRecordClass demFreezeFrameRecordClass) {
					demFreezeFrameRecordClass.target?.gSetDefinition(containerValue.getContainerDefinition("DemFreezeFrameRecordClass"))
					super.delegateAdd(demFreezeFrameRecordClass)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemFreezeFrameRecordClass demFreezeFrameRecordClass) {
					demFreezeFrameRecordClass.target?.gSetDefinition(containerValue.getContainerDefinition("DemFreezeFrameRecordClass"))
					super.delegateAdd(index, demFreezeFrameRecordClass)
				}
			}
		}
		
		def DemGeneralJ1939 getDemGeneralJ1939(){
			containerValue.getByType(typeof(DemGeneralJ1939))
		}
		
		def void setDemGeneralJ1939(DemGeneralJ1939 demGeneralJ1939){
			val GContainer subContainer = demGeneralJ1939.getTarget()
			containerValue.setContainer(subContainer, "DemGeneralJ1939")
		}
		
		def DemGeneralOBD getDemGeneralOBD(){
			containerValue.getByType(typeof(DemGeneralOBD))
		}
		
		def void setDemGeneralOBD(DemGeneralOBD demGeneralOBD){
			val GContainer subContainer = demGeneralOBD.getTarget()
			containerValue.setContainer(subContainer, "DemGeneralOBD")
		}
		
		def List<DemGroupOfDTC> getDemGroupOfDTCs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemGroupOfDTC")
				}
			}
			return new BasicWrappingEList<DemGroupOfDTC, GContainer>(filteredContainers, typeof(DemGroupOfDTC), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemGroupOfDTC demGroupOfDTC) {
					demGroupOfDTC.target?.gSetDefinition(containerValue.getContainerDefinition("DemGroupOfDTC"))
					super.delegateAdd(demGroupOfDTC)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemGroupOfDTC demGroupOfDTC) {
					demGroupOfDTC.target?.gSetDefinition(containerValue.getContainerDefinition("DemGroupOfDTC"))
					super.delegateAdd(index, demGroupOfDTC)
				}
			}
		}
		
		def List<DemNvRamBlockId> getDemNvRamBlockIds(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemNvRamBlockId")
				}
			}
			return new BasicWrappingEList<DemNvRamBlockId, GContainer>(filteredContainers, typeof(DemNvRamBlockId), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemNvRamBlockId demNvRamBlockId) {
					demNvRamBlockId.target?.gSetDefinition(containerValue.getContainerDefinition("DemNvRamBlockId"))
					super.delegateAdd(demNvRamBlockId)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemNvRamBlockId demNvRamBlockId) {
					demNvRamBlockId.target?.gSetDefinition(containerValue.getContainerDefinition("DemNvRamBlockId"))
					super.delegateAdd(index, demNvRamBlockId)
				}
			}
		}
		
		def List<DemOperationCycle> getDemOperationCycles(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemOperationCycle")
				}
			}
			return new BasicWrappingEList<DemOperationCycle, GContainer>(filteredContainers, typeof(DemOperationCycle), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemOperationCycle demOperationCycle) {
					demOperationCycle.target?.gSetDefinition(containerValue.getContainerDefinition("DemOperationCycle"))
					super.delegateAdd(demOperationCycle)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemOperationCycle demOperationCycle) {
					demOperationCycle.target?.gSetDefinition(containerValue.getContainerDefinition("DemOperationCycle"))
					super.delegateAdd(index, demOperationCycle)
				}
			}
		}
		
		def List<DemRatio> getDemRatios(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemRatio")
				}
			}
			return new BasicWrappingEList<DemRatio, GContainer>(filteredContainers, typeof(DemRatio), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemRatio demRatio) {
					demRatio.target?.gSetDefinition(containerValue.getContainerDefinition("DemRatio"))
					super.delegateAdd(demRatio)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemRatio demRatio) {
					demRatio.target?.gSetDefinition(containerValue.getContainerDefinition("DemRatio"))
					super.delegateAdd(index, demRatio)
				}
			}
		}
		
		def List<DemStorageCondition> getDemStorageConditions(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemStorageCondition")
				}
			}
			return new BasicWrappingEList<DemStorageCondition, GContainer>(filteredContainers, typeof(DemStorageCondition), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemStorageCondition demStorageCondition) {
					demStorageCondition.target?.gSetDefinition(containerValue.getContainerDefinition("DemStorageCondition"))
					super.delegateAdd(demStorageCondition)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemStorageCondition demStorageCondition) {
					demStorageCondition.target?.gSetDefinition(containerValue.getContainerDefinition("DemStorageCondition"))
					super.delegateAdd(index, demStorageCondition)
				}
			}
		}
		
		def List<DemStorageConditionGroup> getDemStorageConditionGroups(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DemStorageConditionGroup")
				}
			}
			return new BasicWrappingEList<DemStorageConditionGroup, GContainer>(filteredContainers, typeof(DemStorageConditionGroup), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemStorageConditionGroup demStorageConditionGroup) {
					demStorageConditionGroup.target?.gSetDefinition(containerValue.getContainerDefinition("DemStorageConditionGroup"))
					super.delegateAdd(demStorageConditionGroup)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemStorageConditionGroup demStorageConditionGroup) {
					demStorageConditionGroup.target?.gSetDefinition(containerValue.getContainerDefinition("DemStorageConditionGroup"))
					super.delegateAdd(index, demStorageConditionGroup)
				}
			}
		}
		
		
		static class DemClient implements IWrapper<GContainer> {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof DemClient)){
					return false
				}
				this.target == (object as DemClient).target
			}
		
			def DemClientFunctionality getDemClientFunctionality(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemClientFunctionality"].getDemClientFunctionalityValue()
			}
			
			def void setDemClientFunctionality(DemClientFunctionality value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemClientFunctionality"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemClientFunctionality"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum DemClientFunctionality {
				DEM_CLIENT_ONLY_USES_EVENTOVERFLOW_INTERFACE, 
				DEM_CLIENT_USES_FULL_FUNCTIONALITY
			}
			
			def DemClientFunctionality getDemClientFunctionalityValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "DEM_CLIENT_ONLY_USES_EVENTOVERFLOW_INTERFACE" : DemClientFunctionality.DEM_CLIENT_ONLY_USES_EVENTOVERFLOW_INTERFACE
					case "DEM_CLIENT_USES_FULL_FUNCTIONALITY" : DemClientFunctionality.DEM_CLIENT_USES_FULL_FUNCTIONALITY
				}
			}
			
			def void setDemClientFunctionalityValue(GParameterValue parameterValue, DemClientFunctionality value){
				parameterValue.setValue(value)
			}
			
			def BigInteger getDemClientId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemClientId"].getBigIntegerValue()
			}
			
			def void setDemClientId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemClientId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemClientId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getDemClientUsesRte(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemClientUsesRte"].getBooleanValue()
			}
			
			def void setDemClientUsesRte(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemClientUsesRte"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemClientUsesRte"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			def org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEventMemorySet getDemEventMemorySetRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEventMemorySet), "DemEventMemorySetRef")
			}
			
			def void setDemEventMemorySetRef(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEventMemorySet object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DemEventMemorySetRef"], object.getTarget())
				}
			}
			
			
			def List<DemCallbackDTCStatusChanged> getDemCallbackDTCStatusChangeds(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DemCallbackDTCStatusChanged")
					}
				}
				return new BasicWrappingEList<DemCallbackDTCStatusChanged, GContainer>(filteredContainers, typeof(DemCallbackDTCStatusChanged), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemClient.DemCallbackDTCStatusChanged demCallbackDTCStatusChanged) {
						demCallbackDTCStatusChanged.target?.gSetDefinition(containerValue.getContainerDefinition("DemCallbackDTCStatusChanged"))
						super.delegateAdd(demCallbackDTCStatusChanged)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemClient.DemCallbackDTCStatusChanged demCallbackDTCStatusChanged) {
						demCallbackDTCStatusChanged.target?.gSetDefinition(containerValue.getContainerDefinition("DemCallbackDTCStatusChanged"))
						super.delegateAdd(index, demCallbackDTCStatusChanged)
					}
				}
			}
			
			
			static class DemCallbackDTCStatusChanged implements IWrapper<GContainer> {
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof DemCallbackDTCStatusChanged)){
						return false
					}
					this.target == (object as DemCallbackDTCStatusChanged).target
				}
			
				def String getDemCallbackDTCStatusChangedFnc(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCallbackDTCStatusChangedFnc"].getStringValue()
				}
				
				def void setDemCallbackDTCStatusChangedFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCallbackDTCStatusChangedFnc"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemCallbackDTCStatusChangedFnc"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
		}
		
		static class DemDataElementClass implements IWrapper<GContainer> {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof DemDataElementClass)){
					return false
				}
				this.target == (object as DemDataElementClass).target
			}
		
			def DemExternalCSDataElementClass getDemExternalCSDataElementClass(){
				containerValue.getByType(typeof(DemExternalCSDataElementClass))
			}
			
			def void setDemExternalCSDataElementClass(DemExternalCSDataElementClass demExternalCSDataElementClass){
				val GContainer subContainer = demExternalCSDataElementClass.getTarget()
				containerValue.setContainer(subContainer, "DemExternalCSDataElementClass")
			}
			def DemExternalSRDataElementClass getDemExternalSRDataElementClass(){
				containerValue.getByType(typeof(DemExternalSRDataElementClass))
			}
			
			def void setDemExternalSRDataElementClass(DemExternalSRDataElementClass demExternalSRDataElementClass){
				val GContainer subContainer = demExternalSRDataElementClass.getTarget()
				containerValue.setContainer(subContainer, "DemExternalSRDataElementClass")
			}
			def DemInternalDataElementClass getDemInternalDataElementClass(){
				containerValue.getByType(typeof(DemInternalDataElementClass))
			}
			
			def void setDemInternalDataElementClass(DemInternalDataElementClass demInternalDataElementClass){
				val GContainer subContainer = demInternalDataElementClass.getTarget()
				containerValue.setContainer(subContainer, "DemInternalDataElementClass")
			}
			
			static class DemExternalCSDataElementClass implements IWrapper<GContainer> {
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof DemExternalCSDataElementClass)){
						return false
					}
					this.target == (object as DemExternalCSDataElementClass).target
				}
			
				def BigInteger getDemDataElementDataSize(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDataElementDataSize"].getBigIntegerValue()
				}
				
				def void setDemDataElementDataSize(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDataElementDataSize"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDataElementDataSize"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def String getDemDataElementReadFnc(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDataElementReadFnc"].getStringValue()
				}
				
				def void setDemDataElementReadFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDataElementReadFnc"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDataElementReadFnc"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def Boolean getDemDataElementUsePort(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDataElementUsePort"].getBooleanValue()
				}
				
				def void setDemDataElementUsePort(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDataElementUsePort"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDataElementUsePort"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				
				
				
			}
			
			static class DemExternalSRDataElementClass implements IWrapper<GContainer> {
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof DemExternalSRDataElementClass)){
						return false
					}
					this.target == (object as DemExternalSRDataElementClass).target
				}
			
				def BigInteger getDemDataElementDataSize(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDataElementDataSize"].getBigIntegerValue()
				}
				
				def void setDemDataElementDataSize(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDataElementDataSize"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDataElementDataSize"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def DemDataElementDataType getDemDataElementDataType(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDataElementDataType"].getDemDataElementDataTypeValue()
				}
				
				def void setDemDataElementDataType(DemDataElementDataType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDataElementDataType"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDataElementDataType"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
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
				
				def DemDataElementDataType getDemDataElementDataTypeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "BOOLEAN" : DemDataElementDataType.BOOLEAN
						case "SINT16" : DemDataElementDataType.SINT16
						case "SINT32" : DemDataElementDataType.SINT32
						case "SINT8" : DemDataElementDataType.SINT8
						case "UINT16" : DemDataElementDataType.UINT16
						case "UINT32" : DemDataElementDataType.UINT32
						case "UINT8" : DemDataElementDataType.UINT8
					}
				}
				
				def void setDemDataElementDataTypeValue(GParameterValue parameterValue, DemDataElementDataType value){
					parameterValue.setValue(value)
				}
				
				def DemDataElementEndianness getDemDataElementEndianness(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDataElementEndianness"].getDemDataElementEndiannessValue()
				}
				
				def void setDemDataElementEndianness(DemDataElementEndianness value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDataElementEndianness"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDataElementEndianness"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum DemDataElementEndianness {
					BIG_ENDIAN, 
					LITTLE_ENDIAN, 
					OPAQUE
				}
				
				def DemDataElementEndianness getDemDataElementEndiannessValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "BIG_ENDIAN" : DemDataElementEndianness.BIG_ENDIAN
						case "LITTLE_ENDIAN" : DemDataElementEndianness.LITTLE_ENDIAN
						case "OPAQUE" : DemDataElementEndianness.OPAQUE
					}
				}
				
				def void setDemDataElementEndiannessValue(GParameterValue parameterValue, DemDataElementEndianness value){
					parameterValue.setValue(value)
				}
				
				
				
				def DemDiagnosisScaling getDemDiagnosisScaling(){
					containerValue.getByType(typeof(DemDiagnosisScaling))
				}
				
				def void setDemDiagnosisScaling(DemDiagnosisScaling demDiagnosisScaling){
					val GContainer subContainer = demDiagnosisScaling.getTarget()
					containerValue.setContainer(subContainer, "DemDiagnosisScaling")
				}
				
				def DemSRDataElementClass getDemSRDataElementClass(){
					containerValue.getByType(typeof(DemSRDataElementClass))
				}
				
				def void setDemSRDataElementClass(DemSRDataElementClass demSRDataElementClass){
					val GContainer subContainer = demSRDataElementClass.getTarget()
					containerValue.setContainer(subContainer, "DemSRDataElementClass")
				}
				
				
				static class DemDiagnosisScaling implements IWrapper<GContainer> {
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
				
					override def boolean equals(Object object) {
				        if (!(object instanceof DemDiagnosisScaling)){
							return false
						}
						this.target == (object as DemDiagnosisScaling).target
					}
				
					def DemAlternativeDataInterface getDemAlternativeDataInterface(){
						containerValue.getByType(typeof(DemAlternativeDataInterface))
					}
					
					def void setDemAlternativeDataInterface(DemAlternativeDataInterface demAlternativeDataInterface){
						val GContainer subContainer = demAlternativeDataInterface.getTarget()
						containerValue.setContainer(subContainer, "DemAlternativeDataInterface")
					}
					def DemAlternativeDataType getDemAlternativeDataType(){
						containerValue.getByType(typeof(DemAlternativeDataType))
					}
					
					def void setDemAlternativeDataType(DemAlternativeDataType demAlternativeDataType){
						val GContainer subContainer = demAlternativeDataType.getTarget()
						containerValue.setContainer(subContainer, "DemAlternativeDataType")
					}
					def DemAlternativeDiagnosticDataElement getDemAlternativeDiagnosticDataElement(){
						containerValue.getByType(typeof(DemAlternativeDiagnosticDataElement))
					}
					
					def void setDemAlternativeDiagnosticDataElement(DemAlternativeDiagnosticDataElement demAlternativeDiagnosticDataElement){
						val GContainer subContainer = demAlternativeDiagnosticDataElement.getTarget()
						containerValue.setContainer(subContainer, "DemAlternativeDiagnosticDataElement")
					}
					
					static class DemAlternativeDataInterface implements IWrapper<GContainer> {
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
					
						override def boolean equals(Object object) {
					        if (!(object instanceof DemAlternativeDataInterface)){
								return false
							}
							this.target == (object as DemAlternativeDataInterface).target
						}
					
						
						
						
						
						
					}
					
					static class DemAlternativeDataType implements IWrapper<GContainer> {
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
					
						override def boolean equals(Object object) {
					        if (!(object instanceof DemAlternativeDataType)){
								return false
							}
							this.target == (object as DemAlternativeDataType).target
						}
					
						
						
						
						def List<DemTextTableMapping> getDemTextTableMappings(){
							val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
								override protected accept(GContainer item) {
									return accept(item, typeof(GContainerDef), "DemTextTableMapping")
								}
							}
							return new BasicWrappingEList<DemTextTableMapping, GContainer>(filteredContainers, typeof(DemTextTableMapping), typeof(GContainer)) {
								override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemDataElementClass.DemExternalSRDataElementClass.DemDiagnosisScaling.DemAlternativeDataType.DemTextTableMapping demTextTableMapping) {
									demTextTableMapping.target?.gSetDefinition(containerValue.getContainerDefinition("DemTextTableMapping"))
									super.delegateAdd(demTextTableMapping)
								}
						
								override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemDataElementClass.DemExternalSRDataElementClass.DemDiagnosisScaling.DemAlternativeDataType.DemTextTableMapping demTextTableMapping) {
									demTextTableMapping.target?.gSetDefinition(containerValue.getContainerDefinition("DemTextTableMapping"))
									super.delegateAdd(index, demTextTableMapping)
								}
							}
						}
						
						
						static class DemTextTableMapping implements IWrapper<GContainer> {
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
						
							override def boolean equals(Object object) {
						        if (!(object instanceof DemTextTableMapping)){
									return false
								}
								this.target == (object as DemTextTableMapping).target
							}
						
							def BigInteger getDemDiagnosisRepresentationDataValue(){
								containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDiagnosisRepresentationDataValue"].getBigIntegerValue()
							}
							
							def void setDemDiagnosisRepresentationDataValue(BigInteger value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDiagnosisRepresentationDataValue"]
								if (parameterValue === null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDiagnosisRepresentationDataValue"].createParameterValue()
										containerValue.gGetParameterValues += parameterValue
									}
								}
								parameterValue.setValue(value)
							}
							
							def BigInteger getDemInternalDataValue(){
								containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemInternalDataValue"].getBigIntegerValue()
							}
							
							def void setDemInternalDataValue(BigInteger value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemInternalDataValue"]
								if (parameterValue === null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemInternalDataValue"].createParameterValue()
										containerValue.gGetParameterValues += parameterValue
									}
								}
								parameterValue.setValue(value)
							}
							
							
							
							
						}
						
					}
					
					static class DemAlternativeDiagnosticDataElement implements IWrapper<GContainer> {
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
					
						override def boolean equals(Object object) {
					        if (!(object instanceof DemAlternativeDiagnosticDataElement)){
								return false
							}
							this.target == (object as DemAlternativeDiagnosticDataElement).target
						}
					
						
						
						
						
					}
					
				}
				
				static class DemSRDataElementClass implements IWrapper<GContainer> {
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
				
					override def boolean equals(Object object) {
				        if (!(object instanceof DemSRDataElementClass)){
							return false
						}
						this.target == (object as DemSRDataElementClass).target
					}
				
					def DemDataElementInstance getDemDataElementInstance(){
						containerValue.getByType(typeof(DemDataElementInstance))
					}
					
					def void setDemDataElementInstance(DemDataElementInstance demDataElementInstance){
						val GContainer subContainer = demDataElementInstance.getTarget()
						containerValue.setContainer(subContainer, "DemDataElementInstance")
					}
					def DemSubElementInDataElementInstance getDemSubElementInDataElementInstance(){
						containerValue.getByType(typeof(DemSubElementInDataElementInstance))
					}
					
					def void setDemSubElementInDataElementInstance(DemSubElementInDataElementInstance demSubElementInDataElementInstance){
						val GContainer subContainer = demSubElementInDataElementInstance.getTarget()
						containerValue.setContainer(subContainer, "DemSubElementInDataElementInstance")
					}
					def DemSubElementInImplDataElementInstance getDemSubElementInImplDataElementInstance(){
						containerValue.getByType(typeof(DemSubElementInImplDataElementInstance))
					}
					
					def void setDemSubElementInImplDataElementInstance(DemSubElementInImplDataElementInstance demSubElementInImplDataElementInstance){
						val GContainer subContainer = demSubElementInImplDataElementInstance.getTarget()
						containerValue.setContainer(subContainer, "DemSubElementInImplDataElementInstance")
					}
					
					static class DemDataElementInstance implements IWrapper<GContainer> {
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
					
						override def boolean equals(Object object) {
					        if (!(object instanceof DemDataElementInstance)){
								return false
							}
							this.target == (object as DemDataElementInstance).target
						}
					
						
						
						
						
					}
					
					static class DemSubElementInDataElementInstance implements IWrapper<GContainer> {
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
					
						override def boolean equals(Object object) {
					        if (!(object instanceof DemSubElementInDataElementInstance)){
								return false
							}
							this.target == (object as DemSubElementInDataElementInstance).target
						}
					
						
						
						
						
					}
					
					static class DemSubElementInImplDataElementInstance implements IWrapper<GContainer> {
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
					
						override def boolean equals(Object object) {
					        if (!(object instanceof DemSubElementInImplDataElementInstance)){
								return false
							}
							this.target == (object as DemSubElementInImplDataElementInstance).target
						}
					
						
						
						
						
					}
					
				}
				
			}
			
			static class DemInternalDataElementClass implements IWrapper<GContainer> {
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof DemInternalDataElementClass)){
						return false
					}
					this.target == (object as DemInternalDataElementClass).target
				}
			
				def BigInteger getDemDataElementDataSize(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDataElementDataSize"].getBigIntegerValue()
				}
				
				def void setDemDataElementDataSize(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDataElementDataSize"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDataElementDataSize"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def DemInternalDataElement getDemInternalDataElement(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemInternalDataElement"].getDemInternalDataElementValue()
				}
				
				def void setDemInternalDataElement(DemInternalDataElement value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemInternalDataElement"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemInternalDataElement"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum DemInternalDataElement {
					DEM_AGINGCTR_DOWNCNT, 
					DEM_AGINGCTR_UPCNT, 
					DEM_AGINGCTR_UPCNT_FIRST_ACTIVE, 
					DEM_CLR_DIST, 
					DEM_CLR_TIME, 
					DEM_CURRENT_FDC, 
					DEM_CYCLES_SINCE_FIRST_FAILED, 
					DEM_CYCLES_SINCE_LAST_FAILED, 
					DEM_FAILED_CYCLES, 
					DEM_MAX_FDC_DURING_CURRENT_CYCLE, 
					DEM_MAX_FDC_SINCE_LAST_CLEAR, 
					DEM_MIL_DIST, 
					DEM_MIL_TIME, 
					DEM_OCCCTR, 
					DEM_OVFLIND, 
					DEM_SIGNIFICANCE, 
					DEM_WARM_UPS
				}
				
				def DemInternalDataElement getDemInternalDataElementValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "DEM_AGINGCTR_DOWNCNT" : DemInternalDataElement.DEM_AGINGCTR_DOWNCNT
						case "DEM_AGINGCTR_UPCNT" : DemInternalDataElement.DEM_AGINGCTR_UPCNT
						case "DEM_AGINGCTR_UPCNT_FIRST_ACTIVE" : DemInternalDataElement.DEM_AGINGCTR_UPCNT_FIRST_ACTIVE
						case "DEM_CLR_DIST" : DemInternalDataElement.DEM_CLR_DIST
						case "DEM_CLR_TIME" : DemInternalDataElement.DEM_CLR_TIME
						case "DEM_CURRENT_FDC" : DemInternalDataElement.DEM_CURRENT_FDC
						case "DEM_CYCLES_SINCE_FIRST_FAILED" : DemInternalDataElement.DEM_CYCLES_SINCE_FIRST_FAILED
						case "DEM_CYCLES_SINCE_LAST_FAILED" : DemInternalDataElement.DEM_CYCLES_SINCE_LAST_FAILED
						case "DEM_FAILED_CYCLES" : DemInternalDataElement.DEM_FAILED_CYCLES
						case "DEM_MAX_FDC_DURING_CURRENT_CYCLE" : DemInternalDataElement.DEM_MAX_FDC_DURING_CURRENT_CYCLE
						case "DEM_MAX_FDC_SINCE_LAST_CLEAR" : DemInternalDataElement.DEM_MAX_FDC_SINCE_LAST_CLEAR
						case "DEM_MIL_DIST" : DemInternalDataElement.DEM_MIL_DIST
						case "DEM_MIL_TIME" : DemInternalDataElement.DEM_MIL_TIME
						case "DEM_OCCCTR" : DemInternalDataElement.DEM_OCCCTR
						case "DEM_OVFLIND" : DemInternalDataElement.DEM_OVFLIND
						case "DEM_SIGNIFICANCE" : DemInternalDataElement.DEM_SIGNIFICANCE
						case "DEM_WARM_UPS" : DemInternalDataElement.DEM_WARM_UPS
					}
				}
				
				def void setDemInternalDataElementValue(GParameterValue parameterValue, DemInternalDataElement value){
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
		}
		
		static class DemDidClass implements IWrapper<GContainer> {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof DemDidClass)){
					return false
				}
				this.target == (object as DemDidClass).target
			}
		
			def BigInteger getDemDidIdentifier(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDidIdentifier"].getBigIntegerValue()
			}
			
			def void setDemDidIdentifier(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDidIdentifier"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDidIdentifier"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def List<org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemDataElementClass> getDemDidDataElementClassRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "DemDidDataElementClassRef"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "DemDidDataElementClassRef")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemDataElementClass>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemDataElementClass)) {
					override protected wrap(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemDataElementClass object) throws CoreException {
						if (object !== null) {
							val container = object.getTarget()
							val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
							referenceValue.gSetDefinition(referenceValueDef)
							referenceValue.gSetValue(container)
							return referenceValue
						}
					}
			
					override protected unwrap(GReferenceValue referenceValue) {
						if (referenceValue !== null) {
							val referenceValueValue = referenceValue.gGetValue
							if (referenceValueValue instanceof GContainer) {
								return new org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemDataElementClass(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			
		}
		
		static class DemEnableCondition implements IWrapper<GContainer> {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof DemEnableCondition)){
					return false
				}
				this.target == (object as DemEnableCondition).target
			}
		
			def BigInteger getDemEnableConditionId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEnableConditionId"].getBigIntegerValue()
			}
			
			def void setDemEnableConditionId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEnableConditionId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemEnableConditionId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getDemEnableConditionStatus(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEnableConditionStatus"].getBooleanValue()
			}
			
			def void setDemEnableConditionStatus(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemEnableConditionStatus"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemEnableConditionStatus"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			
			
		}
		
		static class DemEnableConditionGroup implements IWrapper<GContainer> {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof DemEnableConditionGroup)){
					return false
				}
				this.target == (object as DemEnableConditionGroup).target
			}
		
			
			def List<org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEnableCondition> getDemEnableConditionRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "DemEnableConditionRef"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "DemEnableConditionRef")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEnableCondition>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEnableCondition)) {
					override protected wrap(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEnableCondition object) throws CoreException {
						if (object !== null) {
							val container = object.getTarget()
							val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
							referenceValue.gSetDefinition(referenceValueDef)
							referenceValue.gSetValue(container)
							return referenceValue
						}
					}
			
					override protected unwrap(GReferenceValue referenceValue) {
						if (referenceValue !== null) {
							val referenceValueValue = referenceValue.gGetValue
							if (referenceValueValue instanceof GContainer) {
								return new org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEnableCondition(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			
		}
		
		static class DemEventMemorySet implements IWrapper<GContainer> {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof DemEventMemorySet)){
					return false
				}
				this.target == (object as DemEventMemorySet).target
			}
		
			def BigInteger getDemDtcStatusAvailabilityMask(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtcStatusAvailabilityMask"].getBigIntegerValue()
			}
			
			def void setDemDtcStatusAvailabilityMask(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemDtcStatusAvailabilityMask"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemDtcStatusAvailabilityMask"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getDemMaxNumberEventEntryPermanent(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemMaxNumberEventEntryPermanent"].getBigIntegerValue()
			}
			
			def void setDemMaxNumberEventEntryPermanent(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemMaxNumberEventEntryPermanent"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemMaxNumberEventEntryPermanent"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def DemTypeOfDTCSupported getDemTypeOfDTCSupported(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemTypeOfDTCSupported"].getDemTypeOfDTCSupportedValue()
			}
			
			def void setDemTypeOfDTCSupported(DemTypeOfDTCSupported value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemTypeOfDTCSupported"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemTypeOfDTCSupported"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum DemTypeOfDTCSupported {
				DEM_DTC_TRANSLATION_ISO11992_4, 
				DEM_DTC_TRANSLATION_ISO14229_1, 
				DEM_DTC_TRANSLATION_ISO15031_6, 
				DEM_DTC_TRANSLATION_SAEJ1939_73, 
				DEM_DTC_TRANSLATION_SAE_J2012_DA_DTCFORMAT_04
			}
			
			def DemTypeOfDTCSupported getDemTypeOfDTCSupportedValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "DEM_DTC_TRANSLATION_ISO11992_4" : DemTypeOfDTCSupported.DEM_DTC_TRANSLATION_ISO11992_4
					case "DEM_DTC_TRANSLATION_ISO14229_1" : DemTypeOfDTCSupported.DEM_DTC_TRANSLATION_ISO14229_1
					case "DEM_DTC_TRANSLATION_ISO15031_6" : DemTypeOfDTCSupported.DEM_DTC_TRANSLATION_ISO15031_6
					case "DEM_DTC_TRANSLATION_SAEJ1939_73" : DemTypeOfDTCSupported.DEM_DTC_TRANSLATION_SAEJ1939_73
					case "DEM_DTC_TRANSLATION_SAE_J2012_DA_DTCFORMAT_04" : DemTypeOfDTCSupported.DEM_DTC_TRANSLATION_SAE_J2012_DA_DTCFORMAT_04
				}
			}
			
			def void setDemTypeOfDTCSupportedValue(GParameterValue parameterValue, DemTypeOfDTCSupported value){
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEventMemorySet.DemIndicator getDemAmberWarningLampIndicatorRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEventMemorySet.DemIndicator), "DemAmberWarningLampIndicatorRef")
			}
			
			def void setDemAmberWarningLampIndicatorRef(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEventMemorySet.DemIndicator object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DemAmberWarningLampIndicatorRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEventMemorySet.DemIndicator getDemMILIndicatorRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEventMemorySet.DemIndicator), "DemMILIndicatorRef")
			}
			
			def void setDemMILIndicatorRef(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEventMemorySet.DemIndicator object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DemMILIndicatorRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEventMemorySet.DemIndicator getDemProtectLampIndicatorRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEventMemorySet.DemIndicator), "DemProtectLampIndicatorRef")
			}
			
			def void setDemProtectLampIndicatorRef(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEventMemorySet.DemIndicator object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DemProtectLampIndicatorRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEventMemorySet.DemIndicator getDemRedStopLampIndicatorRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEventMemorySet.DemIndicator), "DemRedStopLampIndicatorRef")
			}
			
			def void setDemRedStopLampIndicatorRef(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEventMemorySet.DemIndicator object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DemRedStopLampIndicatorRef"], object.getTarget())
				}
			}
			
			
			def List<DemClearDTCNotification> getDemClearDTCNotifications(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DemClearDTCNotification")
					}
				}
				return new BasicWrappingEList<DemClearDTCNotification, GContainer>(filteredContainers, typeof(DemClearDTCNotification), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEventMemorySet.DemClearDTCNotification demClearDTCNotification) {
						demClearDTCNotification.target?.gSetDefinition(containerValue.getContainerDefinition("DemClearDTCNotification"))
						super.delegateAdd(demClearDTCNotification)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEventMemorySet.DemClearDTCNotification demClearDTCNotification) {
						demClearDTCNotification.target?.gSetDefinition(containerValue.getContainerDefinition("DemClearDTCNotification"))
						super.delegateAdd(index, demClearDTCNotification)
					}
				}
			}
			
			def List<DemIndicator> getDemIndicators(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DemIndicator")
					}
				}
				return new BasicWrappingEList<DemIndicator, GContainer>(filteredContainers, typeof(DemIndicator), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEventMemorySet.DemIndicator demIndicator) {
						demIndicator.target?.gSetDefinition(containerValue.getContainerDefinition("DemIndicator"))
						super.delegateAdd(demIndicator)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEventMemorySet.DemIndicator demIndicator) {
						demIndicator.target?.gSetDefinition(containerValue.getContainerDefinition("DemIndicator"))
						super.delegateAdd(index, demIndicator)
					}
				}
			}
			
			def DemMirrorMemory getDemMirrorMemory(){
				containerValue.getByType(typeof(DemMirrorMemory))
			}
			
			def void setDemMirrorMemory(DemMirrorMemory demMirrorMemory){
				val GContainer subContainer = demMirrorMemory.getTarget()
				containerValue.setContainer(subContainer, "DemMirrorMemory")
			}
			
			def DemPrimaryMemory getDemPrimaryMemory(){
				containerValue.getByType(typeof(DemPrimaryMemory))
			}
			
			def void setDemPrimaryMemory(DemPrimaryMemory demPrimaryMemory){
				val GContainer subContainer = demPrimaryMemory.getTarget()
				containerValue.setContainer(subContainer, "DemPrimaryMemory")
			}
			
			def List<DemUserDefinedMemory> getDemUserDefinedMemories(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DemUserDefinedMemory")
					}
				}
				return new BasicWrappingEList<DemUserDefinedMemory, GContainer>(filteredContainers, typeof(DemUserDefinedMemory), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEventMemorySet.DemUserDefinedMemory demUserDefinedMemory) {
						demUserDefinedMemory.target?.gSetDefinition(containerValue.getContainerDefinition("DemUserDefinedMemory"))
						super.delegateAdd(demUserDefinedMemory)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemEventMemorySet.DemUserDefinedMemory demUserDefinedMemory) {
						demUserDefinedMemory.target?.gSetDefinition(containerValue.getContainerDefinition("DemUserDefinedMemory"))
						super.delegateAdd(index, demUserDefinedMemory)
					}
				}
			}
			
			
			static class DemClearDTCNotification implements IWrapper<GContainer> {
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof DemClearDTCNotification)){
						return false
					}
					this.target == (object as DemClearDTCNotification).target
				}
			
				def String getDemClearDtcNotificationFnc(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemClearDtcNotificationFnc"].getStringValue()
				}
				
				def void setDemClearDtcNotificationFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemClearDtcNotificationFnc"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemClearDtcNotificationFnc"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def DemClearDtcNotificationTime getDemClearDtcNotificationTime(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemClearDtcNotificationTime"].getDemClearDtcNotificationTimeValue()
				}
				
				def void setDemClearDtcNotificationTime(DemClearDtcNotificationTime value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemClearDtcNotificationTime"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemClearDtcNotificationTime"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum DemClearDtcNotificationTime {
					FINISH, 
					START
				}
				
				def DemClearDtcNotificationTime getDemClearDtcNotificationTimeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "FINISH" : DemClearDtcNotificationTime.FINISH
						case "START" : DemClearDtcNotificationTime.START
					}
				}
				
				def void setDemClearDtcNotificationTimeValue(GParameterValue parameterValue, DemClearDtcNotificationTime value){
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
			static class DemIndicator implements IWrapper<GContainer> {
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof DemIndicator)){
						return false
					}
					this.target == (object as DemIndicator).target
				}
			
				def BigInteger getDemIndicatorID(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemIndicatorID"].getBigIntegerValue()
				}
				
				def void setDemIndicatorID(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemIndicatorID"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemIndicatorID"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
			static class DemMirrorMemory implements IWrapper<GContainer> {
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof DemMirrorMemory)){
						return false
					}
					this.target == (object as DemMirrorMemory).target
				}
			
				def BigInteger getDemMaxNumberEventEntryMirror(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemMaxNumberEventEntryMirror"].getBigIntegerValue()
				}
				
				def void setDemMaxNumberEventEntryMirror(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemMaxNumberEventEntryMirror"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemMaxNumberEventEntryMirror"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
			static class DemPrimaryMemory implements IWrapper<GContainer> {
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof DemPrimaryMemory)){
						return false
					}
					this.target == (object as DemPrimaryMemory).target
				}
			
				def BigInteger getDemMaxNumberEventEntryPrimary(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemMaxNumberEventEntryPrimary"].getBigIntegerValue()
				}
				
				def void setDemMaxNumberEventEntryPrimary(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemMaxNumberEventEntryPrimary"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemMaxNumberEventEntryPrimary"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
			static class DemUserDefinedMemory implements IWrapper<GContainer> {
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof DemUserDefinedMemory)){
						return false
					}
					this.target == (object as DemUserDefinedMemory).target
				}
			
				def BigInteger getDemMaxNumberEventEntryUserDefined(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemMaxNumberEventEntryUserDefined"].getBigIntegerValue()
				}
				
				def void setDemMaxNumberEventEntryUserDefined(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemMaxNumberEventEntryUserDefined"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemMaxNumberEventEntryUserDefined"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getDemUserDefinedMemoryIdentifier(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemUserDefinedMemoryIdentifier"].getBigIntegerValue()
				}
				
				def void setDemUserDefinedMemoryIdentifier(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemUserDefinedMemoryIdentifier"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemUserDefinedMemoryIdentifier"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
		}
		
		static class DemExtendedDataClass implements IWrapper<GContainer> {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof DemExtendedDataClass)){
					return false
				}
				this.target == (object as DemExtendedDataClass).target
			}
		
			
			def List<org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemExtendedDataRecordClass> getDemExtendedDataRecordClassRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "DemExtendedDataRecordClassRef"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "DemExtendedDataRecordClassRef")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemExtendedDataRecordClass>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemExtendedDataRecordClass)) {
					override protected wrap(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemExtendedDataRecordClass object) throws CoreException {
						if (object !== null) {
							val container = object.getTarget()
							val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
							referenceValue.gSetDefinition(referenceValueDef)
							referenceValue.gSetValue(container)
							return referenceValue
						}
					}
			
					override protected unwrap(GReferenceValue referenceValue) {
						if (referenceValue !== null) {
							val referenceValueValue = referenceValue.gGetValue
							if (referenceValueValue instanceof GContainer) {
								return new org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemExtendedDataRecordClass(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			
		}
		
		static class DemExtendedDataRecordClass implements IWrapper<GContainer> {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof DemExtendedDataRecordClass)){
					return false
				}
				this.target == (object as DemExtendedDataRecordClass).target
			}
		
			def BigInteger getDemExtendedDataRecordNumber(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemExtendedDataRecordNumber"].getBigIntegerValue()
			}
			
			def void setDemExtendedDataRecordNumber(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemExtendedDataRecordNumber"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemExtendedDataRecordNumber"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def DemExtendedDataRecordTrigger getDemExtendedDataRecordTrigger(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemExtendedDataRecordTrigger"].getDemExtendedDataRecordTriggerValue()
			}
			
			def void setDemExtendedDataRecordTrigger(DemExtendedDataRecordTrigger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemExtendedDataRecordTrigger"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemExtendedDataRecordTrigger"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum DemExtendedDataRecordTrigger {
				DEM_TRIGGER_ON_CONFIRMED, 
				DEM_TRIGGER_ON_FDC_THRESHOLD, 
				DEM_TRIGGER_ON_MIRROR, 
				DEM_TRIGGER_ON_PASSED, 
				DEM_TRIGGER_ON_PENDING, 
				DEM_TRIGGER_ON_TEST_FAILED
			}
			
			def DemExtendedDataRecordTrigger getDemExtendedDataRecordTriggerValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "DEM_TRIGGER_ON_CONFIRMED" : DemExtendedDataRecordTrigger.DEM_TRIGGER_ON_CONFIRMED
					case "DEM_TRIGGER_ON_FDC_THRESHOLD" : DemExtendedDataRecordTrigger.DEM_TRIGGER_ON_FDC_THRESHOLD
					case "DEM_TRIGGER_ON_MIRROR" : DemExtendedDataRecordTrigger.DEM_TRIGGER_ON_MIRROR
					case "DEM_TRIGGER_ON_PASSED" : DemExtendedDataRecordTrigger.DEM_TRIGGER_ON_PASSED
					case "DEM_TRIGGER_ON_PENDING" : DemExtendedDataRecordTrigger.DEM_TRIGGER_ON_PENDING
					case "DEM_TRIGGER_ON_TEST_FAILED" : DemExtendedDataRecordTrigger.DEM_TRIGGER_ON_TEST_FAILED
				}
			}
			
			def void setDemExtendedDataRecordTriggerValue(GParameterValue parameterValue, DemExtendedDataRecordTrigger value){
				parameterValue.setValue(value)
			}
			
			def DemExtendedDataRecordUpdate getDemExtendedDataRecordUpdate(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemExtendedDataRecordUpdate"].getDemExtendedDataRecordUpdateValue()
			}
			
			def void setDemExtendedDataRecordUpdate(DemExtendedDataRecordUpdate value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemExtendedDataRecordUpdate"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemExtendedDataRecordUpdate"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum DemExtendedDataRecordUpdate {
				DEM_UPDATE_RECORD_NO, 
				DEM_UPDATE_RECORD_YES
			}
			
			def DemExtendedDataRecordUpdate getDemExtendedDataRecordUpdateValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "DEM_UPDATE_RECORD_NO" : DemExtendedDataRecordUpdate.DEM_UPDATE_RECORD_NO
					case "DEM_UPDATE_RECORD_YES" : DemExtendedDataRecordUpdate.DEM_UPDATE_RECORD_YES
				}
			}
			
			def void setDemExtendedDataRecordUpdateValue(GParameterValue parameterValue, DemExtendedDataRecordUpdate value){
				parameterValue.setValue(value)
			}
			
			
			def List<org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemDataElementClass> getDemDataElementClassRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "DemDataElementClassRef"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "DemDataElementClassRef")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemDataElementClass>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemDataElementClass)) {
					override protected wrap(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemDataElementClass object) throws CoreException {
						if (object !== null) {
							val container = object.getTarget()
							val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
							referenceValue.gSetDefinition(referenceValueDef)
							referenceValue.gSetValue(container)
							return referenceValue
						}
					}
			
					override protected unwrap(GReferenceValue referenceValue) {
						if (referenceValue !== null) {
							val referenceValueValue = referenceValue.gGetValue
							if (referenceValueValue instanceof GContainer) {
								return new org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemDataElementClass(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			
		}
		
		static class DemFreezeFrameClass implements IWrapper<GContainer> {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof DemFreezeFrameClass)){
					return false
				}
				this.target == (object as DemFreezeFrameClass).target
			}
		
			
			def List<org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemDidClass> getDemDidClassRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "DemDidClassRef"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "DemDidClassRef")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemDidClass>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemDidClass)) {
					override protected wrap(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemDidClass object) throws CoreException {
						if (object !== null) {
							val container = object.getTarget()
							val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
							referenceValue.gSetDefinition(referenceValueDef)
							referenceValue.gSetValue(container)
							return referenceValue
						}
					}
			
					override protected unwrap(GReferenceValue referenceValue) {
						if (referenceValue !== null) {
							val referenceValueValue = referenceValue.gGetValue
							if (referenceValueValue instanceof GContainer) {
								return new org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemDidClass(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			
		}
		
		static class DemFreezeFrameRecNumClass implements IWrapper<GContainer> {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof DemFreezeFrameRecNumClass)){
					return false
				}
				this.target == (object as DemFreezeFrameRecNumClass).target
			}
		
			
			def List<org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemFreezeFrameRecordClass> getDemFreezeFrameRecordClassRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "DemFreezeFrameRecordClassRef"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "DemFreezeFrameRecordClassRef")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemFreezeFrameRecordClass>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemFreezeFrameRecordClass)) {
					override protected wrap(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemFreezeFrameRecordClass object) throws CoreException {
						if (object !== null) {
							val container = object.getTarget()
							val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
							referenceValue.gSetDefinition(referenceValueDef)
							referenceValue.gSetValue(container)
							return referenceValue
						}
					}
			
					override protected unwrap(GReferenceValue referenceValue) {
						if (referenceValue !== null) {
							val referenceValueValue = referenceValue.gGetValue
							if (referenceValueValue instanceof GContainer) {
								return new org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemFreezeFrameRecordClass(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			
		}
		
		static class DemFreezeFrameRecordClass implements IWrapper<GContainer> {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof DemFreezeFrameRecordClass)){
					return false
				}
				this.target == (object as DemFreezeFrameRecordClass).target
			}
		
			def BigInteger getDemFreezeFrameRecordNumber(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemFreezeFrameRecordNumber"].getBigIntegerValue()
			}
			
			def void setDemFreezeFrameRecordNumber(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemFreezeFrameRecordNumber"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemFreezeFrameRecordNumber"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def DemFreezeFrameRecordTrigger getDemFreezeFrameRecordTrigger(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemFreezeFrameRecordTrigger"].getDemFreezeFrameRecordTriggerValue()
			}
			
			def void setDemFreezeFrameRecordTrigger(DemFreezeFrameRecordTrigger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemFreezeFrameRecordTrigger"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemFreezeFrameRecordTrigger"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum DemFreezeFrameRecordTrigger {
				DEM_TRIGGER_ON_CONFIRMED, 
				DEM_TRIGGER_ON_FDC_THRESHOLD, 
				DEM_TRIGGER_ON_PENDING, 
				DEM_TRIGGER_ON_TEST_FAILED
			}
			
			def DemFreezeFrameRecordTrigger getDemFreezeFrameRecordTriggerValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "DEM_TRIGGER_ON_CONFIRMED" : DemFreezeFrameRecordTrigger.DEM_TRIGGER_ON_CONFIRMED
					case "DEM_TRIGGER_ON_FDC_THRESHOLD" : DemFreezeFrameRecordTrigger.DEM_TRIGGER_ON_FDC_THRESHOLD
					case "DEM_TRIGGER_ON_PENDING" : DemFreezeFrameRecordTrigger.DEM_TRIGGER_ON_PENDING
					case "DEM_TRIGGER_ON_TEST_FAILED" : DemFreezeFrameRecordTrigger.DEM_TRIGGER_ON_TEST_FAILED
				}
			}
			
			def void setDemFreezeFrameRecordTriggerValue(GParameterValue parameterValue, DemFreezeFrameRecordTrigger value){
				parameterValue.setValue(value)
			}
			
			def DemFreezeFrameRecordUpdate getDemFreezeFrameRecordUpdate(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemFreezeFrameRecordUpdate"].getDemFreezeFrameRecordUpdateValue()
			}
			
			def void setDemFreezeFrameRecordUpdate(DemFreezeFrameRecordUpdate value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemFreezeFrameRecordUpdate"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemFreezeFrameRecordUpdate"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum DemFreezeFrameRecordUpdate {
				DEM_UPDATE_RECORD_NO, 
				DEM_UPDATE_RECORD_YES
			}
			
			def DemFreezeFrameRecordUpdate getDemFreezeFrameRecordUpdateValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "DEM_UPDATE_RECORD_NO" : DemFreezeFrameRecordUpdate.DEM_UPDATE_RECORD_NO
					case "DEM_UPDATE_RECORD_YES" : DemFreezeFrameRecordUpdate.DEM_UPDATE_RECORD_YES
				}
			}
			
			def void setDemFreezeFrameRecordUpdateValue(GParameterValue parameterValue, DemFreezeFrameRecordUpdate value){
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
		static class DemGeneralJ1939 implements IWrapper<GContainer> {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof DemGeneralJ1939)){
					return false
				}
				this.target == (object as DemGeneralJ1939).target
			}
		
			def Boolean getDemJ1939ClearDtcSupport(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939ClearDtcSupport"].getBooleanValue()
			}
			
			def void setDemJ1939ClearDtcSupport(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939ClearDtcSupport"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemJ1939ClearDtcSupport"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getDemJ1939Dm31Support(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939Dm31Support"].getBooleanValue()
			}
			
			def void setDemJ1939Dm31Support(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939Dm31Support"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemJ1939Dm31Support"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getDemJ1939ExpandedFreezeFrameSupport(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939ExpandedFreezeFrameSupport"].getBooleanValue()
			}
			
			def void setDemJ1939ExpandedFreezeFrameSupport(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939ExpandedFreezeFrameSupport"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemJ1939ExpandedFreezeFrameSupport"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getDemJ1939FreezeFrameSupport(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939FreezeFrameSupport"].getBooleanValue()
			}
			
			def void setDemJ1939FreezeFrameSupport(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939FreezeFrameSupport"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemJ1939FreezeFrameSupport"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getDemJ1939RatioSupport(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939RatioSupport"].getBooleanValue()
			}
			
			def void setDemJ1939RatioSupport(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939RatioSupport"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemJ1939RatioSupport"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getDemJ1939Readiness1Support(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939Readiness1Support"].getBooleanValue()
			}
			
			def void setDemJ1939Readiness1Support(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939Readiness1Support"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemJ1939Readiness1Support"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getDemJ1939Readiness2Support(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939Readiness2Support"].getBooleanValue()
			}
			
			def void setDemJ1939Readiness2Support(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939Readiness2Support"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemJ1939Readiness2Support"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getDemJ1939Readiness3Support(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939Readiness3Support"].getBooleanValue()
			}
			
			def void setDemJ1939Readiness3Support(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939Readiness3Support"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemJ1939Readiness3Support"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getDemJ1939ReadingDtcSupport(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939ReadingDtcSupport"].getBooleanValue()
			}
			
			def void setDemJ1939ReadingDtcSupport(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemJ1939ReadingDtcSupport"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemJ1939ReadingDtcSupport"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			
			def List<DemCallbackJ1939DTCStatusChanged> getDemCallbackJ1939DTCStatusChangeds(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DemCallbackJ1939DTCStatusChanged")
					}
				}
				return new BasicWrappingEList<DemCallbackJ1939DTCStatusChanged, GContainer>(filteredContainers, typeof(DemCallbackJ1939DTCStatusChanged), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemGeneralJ1939.DemCallbackJ1939DTCStatusChanged demCallbackJ1939DTCStatusChanged) {
						demCallbackJ1939DTCStatusChanged.target?.gSetDefinition(containerValue.getContainerDefinition("DemCallbackJ1939DTCStatusChanged"))
						super.delegateAdd(demCallbackJ1939DTCStatusChanged)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemGeneralJ1939.DemCallbackJ1939DTCStatusChanged demCallbackJ1939DTCStatusChanged) {
						demCallbackJ1939DTCStatusChanged.target?.gSetDefinition(containerValue.getContainerDefinition("DemCallbackJ1939DTCStatusChanged"))
						super.delegateAdd(index, demCallbackJ1939DTCStatusChanged)
					}
				}
			}
			
			def List<DemJ1939FreezeFrameClass> getDemJ1939FreezeFrameClass(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DemJ1939FreezeFrameClass")
					}
				}
				return new BasicWrappingEList<DemJ1939FreezeFrameClass, GContainer>(filteredContainers, typeof(DemJ1939FreezeFrameClass), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemGeneralJ1939.DemJ1939FreezeFrameClass demJ1939FreezeFrameClass) {
						demJ1939FreezeFrameClass.target?.gSetDefinition(containerValue.getContainerDefinition("DemJ1939FreezeFrameClass"))
						super.delegateAdd(demJ1939FreezeFrameClass)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemGeneralJ1939.DemJ1939FreezeFrameClass demJ1939FreezeFrameClass) {
						demJ1939FreezeFrameClass.target?.gSetDefinition(containerValue.getContainerDefinition("DemJ1939FreezeFrameClass"))
						super.delegateAdd(index, demJ1939FreezeFrameClass)
					}
				}
			}
			
			def List<DemSPNClass> getDemSPNClass(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DemSPNClass")
					}
				}
				return new BasicWrappingEList<DemSPNClass, GContainer>(filteredContainers, typeof(DemSPNClass), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemGeneralJ1939.DemSPNClass demSPNClass) {
						demSPNClass.target?.gSetDefinition(containerValue.getContainerDefinition("DemSPNClass"))
						super.delegateAdd(demSPNClass)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemGeneralJ1939.DemSPNClass demSPNClass) {
						demSPNClass.target?.gSetDefinition(containerValue.getContainerDefinition("DemSPNClass"))
						super.delegateAdd(index, demSPNClass)
					}
				}
			}
			
			
			static class DemCallbackJ1939DTCStatusChanged implements IWrapper<GContainer> {
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof DemCallbackJ1939DTCStatusChanged)){
						return false
					}
					this.target == (object as DemCallbackJ1939DTCStatusChanged).target
				}
			
				def String getDemCallbackDTCStatusChangedFnc(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCallbackDTCStatusChangedFnc"].getStringValue()
				}
				
				def void setDemCallbackDTCStatusChangedFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCallbackDTCStatusChangedFnc"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemCallbackDTCStatusChangedFnc"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
			static class DemJ1939FreezeFrameClass implements IWrapper<GContainer> {
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof DemJ1939FreezeFrameClass)){
						return false
					}
					this.target == (object as DemJ1939FreezeFrameClass).target
				}
			
				
				def List<org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemGeneralJ1939.DemSPNClass> getDemSPNClassRefs(){
					val containerDef = containerValue.gGetDefinition
					val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
						containerDef.gGetReferences.findFirst[gGetShortName == "DemSPNClassRef"] else null
				
					val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
						override protected accept(GReferenceValue item) {
							return accept(item, typeof(GConfigReference), "DemSPNClassRef")
						}
					}
				
					return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemGeneralJ1939.DemSPNClass>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemGeneralJ1939.DemSPNClass)) {
						override protected wrap(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemGeneralJ1939.DemSPNClass object) throws CoreException {
							if (object !== null) {
								val container = object.getTarget()
								val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
								referenceValue.gSetDefinition(referenceValueDef)
								referenceValue.gSetValue(container)
								return referenceValue
							}
						}
				
						override protected unwrap(GReferenceValue referenceValue) {
							if (referenceValue !== null) {
								val referenceValueValue = referenceValue.gGetValue
								if (referenceValueValue instanceof GContainer) {
									return new org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemGeneralJ1939.DemSPNClass(referenceValueValue as GContainer)
								}
							}
						}
					}
				}
				
				
				
			}
			
			static class DemSPNClass implements IWrapper<GContainer> {
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof DemSPNClass)){
						return false
					}
					this.target == (object as DemSPNClass).target
				}
			
				def BigInteger getDemSPNId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemSPNId"].getBigIntegerValue()
				}
				
				def void setDemSPNId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemSPNId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemSPNId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemDataElementClass getDemSPNDataElementClassRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemDataElementClass), "DemSPNDataElementClassRef")
				}
				
				def void setDemSPNDataElementClassRef(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemDataElementClass object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DemSPNDataElementClassRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class DemGeneralOBD implements IWrapper<GContainer> {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof DemGeneralOBD)){
					return false
				}
				this.target == (object as DemGeneralOBD).target
			}
		
			def Boolean getDemOBDCentralizedPID21Handling(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOBDCentralizedPID21Handling"].getBooleanValue()
			}
			
			def void setDemOBDCentralizedPID21Handling(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOBDCentralizedPID21Handling"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemOBDCentralizedPID21Handling"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getDemOBDCentralizedPID31Handling(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOBDCentralizedPID31Handling"].getBooleanValue()
			}
			
			def void setDemOBDCentralizedPID31Handling(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOBDCentralizedPID31Handling"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemOBDCentralizedPID31Handling"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getDemOBDCompliancy(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOBDCompliancy"].getBigIntegerValue()
			}
			
			def void setDemOBDCompliancy(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOBDCompliancy"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemOBDCompliancy"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getDemOBDDelayedDCYConfirmedAndMIL(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOBDDelayedDCYConfirmedAndMIL"].getBooleanValue()
			}
			
			def void setDemOBDDelayedDCYConfirmedAndMIL(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOBDDelayedDCYConfirmedAndMIL"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemOBDDelayedDCYConfirmedAndMIL"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def DemOBDEngineType getDemOBDEngineType(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOBDEngineType"].getDemOBDEngineTypeValue()
			}
			
			def void setDemOBDEngineType(DemOBDEngineType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOBDEngineType"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemOBDEngineType"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum DemOBDEngineType {
				DEM_IGNITION_COMPRESSION, 
				DEM_IGNITION_SPARK
			}
			
			def DemOBDEngineType getDemOBDEngineTypeValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "DEM_IGNITION_COMPRESSION" : DemOBDEngineType.DEM_IGNITION_COMPRESSION
					case "DEM_IGNITION_SPARK" : DemOBDEngineType.DEM_IGNITION_SPARK
				}
			}
			
			def void setDemOBDEngineTypeValue(GParameterValue parameterValue, DemOBDEngineType value){
				parameterValue.setValue(value)
			}
			
			def Boolean getDemOBDEventDisplacement(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOBDEventDisplacement"].getBooleanValue()
			}
			
			def void setDemOBDEventDisplacement(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOBDEventDisplacement"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemOBDEventDisplacement"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			def org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemOperationCycle getDemOBDDrivingCycleRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemOperationCycle), "DemOBDDrivingCycleRef")
			}
			
			def void setDemOBDDrivingCycleRef(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemOperationCycle object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DemOBDDrivingCycleRef"], object.getTarget())
				}
			}
			
			
			
			
			
			
			
			
			
			def org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemOperationCycle getDemOBDPFCCycleRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemOperationCycle), "DemOBDPFCCycleRef")
			}
			
			def void setDemOBDPFCCycleRef(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemOperationCycle object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DemOBDPFCCycleRef"], object.getTarget())
				}
			}
			
			
			def org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemOperationCycle getDemOBDWarmUpCycleRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemOperationCycle), "DemOBDWarmUpCycleRef")
			}
			
			def void setDemOBDWarmUpCycleRef(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemOperationCycle object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DemOBDWarmUpCycleRef"], object.getTarget())
				}
			}
			
			
			def List<DemCallbackOBDDTCStatusChanged> getDemCallbackOBDDTCStatusChangeds(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DemCallbackOBDDTCStatusChanged")
					}
				}
				return new BasicWrappingEList<DemCallbackOBDDTCStatusChanged, GContainer>(filteredContainers, typeof(DemCallbackOBDDTCStatusChanged), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemGeneralOBD.DemCallbackOBDDTCStatusChanged demCallbackOBDDTCStatusChanged) {
						demCallbackOBDDTCStatusChanged.target?.gSetDefinition(containerValue.getContainerDefinition("DemCallbackOBDDTCStatusChanged"))
						super.delegateAdd(demCallbackOBDDTCStatusChanged)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemGeneralOBD.DemCallbackOBDDTCStatusChanged demCallbackOBDDTCStatusChanged) {
						demCallbackOBDDTCStatusChanged.target?.gSetDefinition(containerValue.getContainerDefinition("DemCallbackOBDDTCStatusChanged"))
						super.delegateAdd(index, demCallbackOBDDTCStatusChanged)
					}
				}
			}
			
			
			static class DemCallbackOBDDTCStatusChanged implements IWrapper<GContainer> {
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof DemCallbackOBDDTCStatusChanged)){
						return false
					}
					this.target == (object as DemCallbackOBDDTCStatusChanged).target
				}
			
				def String getDemCallbackDTCStatusChangedFnc(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCallbackDTCStatusChangedFnc"].getStringValue()
				}
				
				def void setDemCallbackDTCStatusChangedFnc(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemCallbackDTCStatusChangedFnc"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemCallbackDTCStatusChangedFnc"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
		}
		
		static class DemGroupOfDTC implements IWrapper<GContainer> {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof DemGroupOfDTC)){
					return false
				}
				this.target == (object as DemGroupOfDTC).target
			}
		
			def BigInteger getDemGroupDTCs(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemGroupDTCs"].getBigIntegerValue()
			}
			
			def void setDemGroupDTCs(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemGroupDTCs"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemGroupDTCs"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
		static class DemNvRamBlockId implements IWrapper<GContainer> {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof DemNvRamBlockId)){
					return false
				}
				this.target == (object as DemNvRamBlockId).target
			}
		
			
			def org.artop.ecuc.autosar444.accessors.NvM.NvMBlockDescriptor getDemNvRamBlockIdRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.NvM.NvMBlockDescriptor), "DemNvRamBlockIdRef")
			}
			
			def void setDemNvRamBlockIdRef(org.artop.ecuc.autosar444.accessors.NvM.NvMBlockDescriptor object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DemNvRamBlockIdRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class DemOperationCycle implements IWrapper<GContainer> {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof DemOperationCycle)){
					return false
				}
				this.target == (object as DemOperationCycle).target
			}
		
			def Boolean getDemOperationCycleAutostart(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOperationCycleAutostart"].getBooleanValue()
			}
			
			def void setDemOperationCycleAutostart(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOperationCycleAutostart"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemOperationCycleAutostart"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getDemOperationCycleId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOperationCycleId"].getBigIntegerValue()
			}
			
			def void setDemOperationCycleId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemOperationCycleId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemOperationCycleId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemOperationCycle getDemLeadingCycleRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemOperationCycle), "DemLeadingCycleRef")
			}
			
			def void setDemLeadingCycleRef(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemOperationCycle object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DemLeadingCycleRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class DemRatio implements IWrapper<GContainer> {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof DemRatio)){
					return false
				}
				this.target == (object as DemRatio).target
			}
		
			def DemIUMPRDenGroup getDemIUMPRDenGroup(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemIUMPRDenGroup"].getDemIUMPRDenGroupValue()
			}
			
			def void setDemIUMPRDenGroup(DemIUMPRDenGroup value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemIUMPRDenGroup"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemIUMPRDenGroup"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum DemIUMPRDenGroup {
				DEM_IUMPR_DEN_500MILL, 
				DEM_IUMPR_DEN_COLDSTART, 
				DEM_IUMPR_DEN_EVAP, 
				DEM_IUMPR_DEN_NONE, 
				DEM_IUMPR_DEN_PHYS_API
			}
			
			def DemIUMPRDenGroup getDemIUMPRDenGroupValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "DEM_IUMPR_DEN_500MILL" : DemIUMPRDenGroup.DEM_IUMPR_DEN_500MILL
					case "DEM_IUMPR_DEN_COLDSTART" : DemIUMPRDenGroup.DEM_IUMPR_DEN_COLDSTART
					case "DEM_IUMPR_DEN_EVAP" : DemIUMPRDenGroup.DEM_IUMPR_DEN_EVAP
					case "DEM_IUMPR_DEN_NONE" : DemIUMPRDenGroup.DEM_IUMPR_DEN_NONE
					case "DEM_IUMPR_DEN_PHYS_API" : DemIUMPRDenGroup.DEM_IUMPR_DEN_PHYS_API
				}
			}
			
			def void setDemIUMPRDenGroupValue(GParameterValue parameterValue, DemIUMPRDenGroup value){
				parameterValue.setValue(value)
			}
			
			def DemIUMPRGroup getDemIUMPRGroup(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemIUMPRGroup"].getDemIUMPRGroupValue()
			}
			
			def void setDemIUMPRGroup(DemIUMPRGroup value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemIUMPRGroup"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemIUMPRGroup"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum DemIUMPRGroup {
				DEM_IUMPR_AFRI1, 
				DEM_IUMPR_AFRI2, 
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
				DEM_IUMPR_PF1, 
				DEM_IUMPR_PF2, 
				DEM_IUMPR_PMFILTER, 
				DEM_IUMPR_PRIVATE, 
				DEM_IUMPR_SAIR, 
				DEM_IUMPR_SECOXS1, 
				DEM_IUMPR_SECOXS2
			}
			
			def DemIUMPRGroup getDemIUMPRGroupValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "DEM_IUMPR_AFRI1" : DemIUMPRGroup.DEM_IUMPR_AFRI1
					case "DEM_IUMPR_AFRI2" : DemIUMPRGroup.DEM_IUMPR_AFRI2
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
					case "DEM_IUMPR_PF1" : DemIUMPRGroup.DEM_IUMPR_PF1
					case "DEM_IUMPR_PF2" : DemIUMPRGroup.DEM_IUMPR_PF2
					case "DEM_IUMPR_PMFILTER" : DemIUMPRGroup.DEM_IUMPR_PMFILTER
					case "DEM_IUMPR_PRIVATE" : DemIUMPRGroup.DEM_IUMPR_PRIVATE
					case "DEM_IUMPR_SAIR" : DemIUMPRGroup.DEM_IUMPR_SAIR
					case "DEM_IUMPR_SECOXS1" : DemIUMPRGroup.DEM_IUMPR_SECOXS1
					case "DEM_IUMPR_SECOXS2" : DemIUMPRGroup.DEM_IUMPR_SECOXS2
				}
			}
			
			def void setDemIUMPRGroupValue(GParameterValue parameterValue, DemIUMPRGroup value){
				parameterValue.setValue(value)
			}
			
			def BigInteger getDemRatioId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemRatioId"].getBigIntegerValue()
			}
			
			def void setDemRatioId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemRatioId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemRatioId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def DemRatioKind getDemRatioKind(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemRatioKind"].getDemRatioKindValue()
			}
			
			def void setDemRatioKind(DemRatioKind value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemRatioKind"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemRatioKind"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum DemRatioKind {
				DEM_RATIO_API, 
				DEM_RATIO_OBSERVER
			}
			
			def DemRatioKind getDemRatioKindValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "DEM_RATIO_API" : DemRatioKind.DEM_RATIO_API
					case "DEM_RATIO_OBSERVER" : DemRatioKind.DEM_RATIO_OBSERVER
				}
			}
			
			def void setDemRatioKindValue(GParameterValue parameterValue, DemRatioKind value){
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter getDemDiagnosticEventRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter), "DemDiagnosticEventRef")
			}
			
			def void setDemDiagnosticEventRef(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DemDiagnosticEventRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar444.accessors.FiM.FiMConfigSet.FiMFID getDemFunctionIdRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.FiM.FiMConfigSet.FiMFID), "DemFunctionIdRef")
			}
			
			def void setDemFunctionIdRef(org.artop.ecuc.autosar444.accessors.FiM.FiMConfigSet.FiMFID object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DemFunctionIdRef"], object.getTarget())
				}
			}
			
			def List<org.artop.ecuc.autosar444.accessors.FiM.FiMConfigSet.FiMFID> getDemSecondaryFunctionIdRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "DemSecondaryFunctionIdRef"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "DemSecondaryFunctionIdRef")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar444.accessors.FiM.FiMConfigSet.FiMFID>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar444.accessors.FiM.FiMConfigSet.FiMFID)) {
					override protected wrap(org.artop.ecuc.autosar444.accessors.FiM.FiMConfigSet.FiMFID object) throws CoreException {
						if (object !== null) {
							val container = object.getTarget()
							val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
							referenceValue.gSetDefinition(referenceValueDef)
							referenceValue.gSetValue(container)
							return referenceValue
						}
					}
			
					override protected unwrap(GReferenceValue referenceValue) {
						if (referenceValue !== null) {
							val referenceValueValue = referenceValue.gGetValue
							if (referenceValueValue instanceof GContainer) {
								return new org.artop.ecuc.autosar444.accessors.FiM.FiMConfigSet.FiMFID(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			
		}
		
		static class DemStorageCondition implements IWrapper<GContainer> {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof DemStorageCondition)){
					return false
				}
				this.target == (object as DemStorageCondition).target
			}
		
			def BigInteger getDemStorageConditionId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemStorageConditionId"].getBigIntegerValue()
			}
			
			def void setDemStorageConditionId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemStorageConditionId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemStorageConditionId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getDemStorageConditionStatus(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemStorageConditionStatus"].getBooleanValue()
			}
			
			def void setDemStorageConditionStatus(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DemStorageConditionStatus"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DemStorageConditionStatus"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			def org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter getDemStorageConditionReplacementEventRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter), "DemStorageConditionReplacementEventRef")
			}
			
			def void setDemStorageConditionReplacementEventRef(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DemStorageConditionReplacementEventRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class DemStorageConditionGroup implements IWrapper<GContainer> {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof DemStorageConditionGroup)){
					return false
				}
				this.target == (object as DemStorageConditionGroup).target
			}
		
			
			def List<org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemStorageCondition> getDemStorageConditionRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "DemStorageConditionRef"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "DemStorageConditionRef")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemStorageCondition>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemStorageCondition)) {
					override protected wrap(org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemStorageCondition object) throws CoreException {
						if (object !== null) {
							val container = object.getTarget()
							val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
							referenceValue.gSetDefinition(referenceValueDef)
							referenceValue.gSetValue(container)
							return referenceValue
						}
					}
			
					override protected unwrap(GReferenceValue referenceValue) {
						if (referenceValue !== null) {
							val referenceValueValue = referenceValue.gGetValue
							if (referenceValueValue instanceof GContainer) {
								return new org.artop.ecuc.autosar444.accessors.Dem.DemGeneral.DemStorageCondition(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			
		}
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof Dem)){
			return false
		}
		this.target == (object as Dem).target
	}

	private static def boolean accept(EObject child, Class<? extends GIdentifiable> ecucTypeDefType, String ecucTypeDefName) {
		val EStructuralFeature definitionFeature = child.eClass().getEStructuralFeature("definition") //$NON-NLS-1$
		if (definitionFeature !== null) {
			val definition = child.eGet(definitionFeature)
			if (ecucTypeDefType.isInstance(definition)) {
				return ecucTypeDefType.cast(definition).gGetShortName.equals(ecucTypeDefName)
			}
		}
		return false
	}
}
