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
package org.artop.ecuc.autosar422.accessors

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

class FiM implements IWrapper<GModuleConfiguration> {
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

	def FiMConfigSet getFiMConfigSet(){
		moduleConfiguration.getByType(typeof(FiMConfigSet))
	}

	def void setFiMConfigSet(FiMConfigSet fiMConfigSet){
		val GContainer container = fiMConfigSet.getTarget()
	    moduleConfiguration.setContainer(container, "FiMConfigSet")
	}
	def FiMGeneral getFiMGeneral(){
		moduleConfiguration.getByType(typeof(FiMGeneral))
	}

	def void setFiMGeneral(FiMGeneral fiMGeneral){
		val GContainer container = fiMGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "FiMGeneral")
	}

	static class FiMConfigSet implements IWrapper<GContainer> {
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
	        if (!(object instanceof FiMConfigSet)){
				return false
			}
			this.target == (object as FiMConfigSet).target
		}
	
		
		
		def List<FiMFID> getFiMFIDs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "FiMFID")
				}
			}
			return new BasicWrappingEList<FiMFID, GContainer>(filteredContainers, typeof(FiMFID), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.FiM.FiMConfigSet.FiMFID fiMFID) {
					fiMFID.target?.gSetDefinition(containerValue.getContainerDefinition("FiMFID"))
					super.delegateAdd(fiMFID)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.FiM.FiMConfigSet.FiMFID fiMFID) {
					fiMFID.target?.gSetDefinition(containerValue.getContainerDefinition("FiMFID"))
					super.delegateAdd(index, fiMFID)
				}
			}
		}
		
		def List<FiMInhibitionConfiguration> getFiMInhibitionConfigurations(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "FiMInhibitionConfiguration")
				}
			}
			return new BasicWrappingEList<FiMInhibitionConfiguration, GContainer>(filteredContainers, typeof(FiMInhibitionConfiguration), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.FiM.FiMConfigSet.FiMInhibitionConfiguration fiMInhibitionConfiguration) {
					fiMInhibitionConfiguration.target?.gSetDefinition(containerValue.getContainerDefinition("FiMInhibitionConfiguration"))
					super.delegateAdd(fiMInhibitionConfiguration)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.FiM.FiMConfigSet.FiMInhibitionConfiguration fiMInhibitionConfiguration) {
					fiMInhibitionConfiguration.target?.gSetDefinition(containerValue.getContainerDefinition("FiMInhibitionConfiguration"))
					super.delegateAdd(index, fiMInhibitionConfiguration)
				}
			}
		}
		
		def List<FiMSummaryEvent> getFiMSummaryEvents(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "FiMSummaryEvent")
				}
			}
			return new BasicWrappingEList<FiMSummaryEvent, GContainer>(filteredContainers, typeof(FiMSummaryEvent), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.FiM.FiMConfigSet.FiMSummaryEvent fiMSummaryEvent) {
					fiMSummaryEvent.target?.gSetDefinition(containerValue.getContainerDefinition("FiMSummaryEvent"))
					super.delegateAdd(fiMSummaryEvent)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.FiM.FiMConfigSet.FiMSummaryEvent fiMSummaryEvent) {
					fiMSummaryEvent.target?.gSetDefinition(containerValue.getContainerDefinition("FiMSummaryEvent"))
					super.delegateAdd(index, fiMSummaryEvent)
				}
			}
		}
		
		
		static class FiMFID implements IWrapper<GContainer> {
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
		        if (!(object instanceof FiMFID)){
					return false
				}
				this.target == (object as FiMFID).target
			}
		
			def BigInteger getFiMFunctionId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMFunctionId"].getBigIntegerValue()
			}
			
			def void setFiMFunctionId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMFunctionId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FiMFunctionId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
		static class FiMInhibitionConfiguration implements IWrapper<GContainer> {
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
		        if (!(object instanceof FiMInhibitionConfiguration)){
					return false
				}
				this.target == (object as FiMInhibitionConfiguration).target
			}
		
			def FiMInhInhibitionMask getFiMInhInhibitionMask(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMInhInhibitionMask"].getFiMInhInhibitionMaskValue()
			}
			
			def void setFiMInhInhibitionMask(FiMInhInhibitionMask value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMInhInhibitionMask"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FiMInhInhibitionMask"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum FiMInhInhibitionMask {
				FIM_LAST_FAILED, 
				FIM_NOT_TESTED, 
				FIM_TESTED, 
				FIM_TESTED_AND_FAILED
			}
			
			def FiMInhInhibitionMask getFiMInhInhibitionMaskValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "FIM_LAST_FAILED" : FiMInhInhibitionMask.FIM_LAST_FAILED
					case "FIM_NOT_TESTED" : FiMInhInhibitionMask.FIM_NOT_TESTED
					case "FIM_TESTED" : FiMInhInhibitionMask.FIM_TESTED
					case "FIM_TESTED_AND_FAILED" : FiMInhInhibitionMask.FIM_TESTED_AND_FAILED
				}
			}
			
			def void setFiMInhInhibitionMaskValue(GParameterValue parameterValue, FiMInhInhibitionMask value){
				parameterValue.setValue(value)
			}
			
			
			def List<org.artop.ecuc.autosar422.accessors.Dem.DemConfigSet.DemComponent> getFiMInhComponentRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "FiMInhComponentRef"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "FiMInhComponentRef")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar422.accessors.Dem.DemConfigSet.DemComponent>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar422.accessors.Dem.DemConfigSet.DemComponent)) {
					override protected wrap(org.artop.ecuc.autosar422.accessors.Dem.DemConfigSet.DemComponent object) throws CoreException {
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
								return new org.artop.ecuc.autosar422.accessors.Dem.DemConfigSet.DemComponent(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			def org.artop.ecuc.autosar422.accessors.FiM.FiMConfigSet.FiMFID getFiMInhFunctionIdRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar422.accessors.FiM.FiMConfigSet.FiMFID), "FiMInhFunctionIdRef")
			}
			
			def void setFiMInhFunctionIdRef(org.artop.ecuc.autosar422.accessors.FiM.FiMConfigSet.FiMFID object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FiMInhFunctionIdRef"], object.getTarget())
				}
			}
			
			def List<org.artop.ecuc.autosar422.accessors.FiM.FiMConfigSet.FiMSummaryEvent> getFiMInhSumRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "FiMInhSumRef"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "FiMInhSumRef")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar422.accessors.FiM.FiMConfigSet.FiMSummaryEvent>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar422.accessors.FiM.FiMConfigSet.FiMSummaryEvent)) {
					override protected wrap(org.artop.ecuc.autosar422.accessors.FiM.FiMConfigSet.FiMSummaryEvent object) throws CoreException {
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
								return new org.artop.ecuc.autosar422.accessors.FiM.FiMConfigSet.FiMSummaryEvent(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			def List<org.artop.ecuc.autosar422.accessors.Dem.DemConfigSet.DemEventParameter> getFiMInhEventRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "FiMInhEventRef"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "FiMInhEventRef")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar422.accessors.Dem.DemConfigSet.DemEventParameter>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar422.accessors.Dem.DemConfigSet.DemEventParameter)) {
					override protected wrap(org.artop.ecuc.autosar422.accessors.Dem.DemConfigSet.DemEventParameter object) throws CoreException {
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
								return new org.artop.ecuc.autosar422.accessors.Dem.DemConfigSet.DemEventParameter(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			
		}
		
		static class FiMSummaryEvent implements IWrapper<GContainer> {
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
		        if (!(object instanceof FiMSummaryEvent)){
					return false
				}
				this.target == (object as FiMSummaryEvent).target
			}
		
			
			def List<org.artop.ecuc.autosar422.accessors.Dem.DemConfigSet.DemEventParameter> getFiMInputEventRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "FiMInputEventRef"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "FiMInputEventRef")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar422.accessors.Dem.DemConfigSet.DemEventParameter>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar422.accessors.Dem.DemConfigSet.DemEventParameter)) {
					override protected wrap(org.artop.ecuc.autosar422.accessors.Dem.DemConfigSet.DemEventParameter object) throws CoreException {
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
								return new org.artop.ecuc.autosar422.accessors.Dem.DemConfigSet.DemEventParameter(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			
		}
		
	}
	static class FiMGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof FiMGeneral)){
				return false
			}
			this.target == (object as FiMGeneral).target
		}
	
		def Boolean getFiMAvailabilitySupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMAvailabilitySupport"].getBooleanValue()
		}
		
		def void setFiMAvailabilitySupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMAvailabilitySupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FiMAvailabilitySupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFiMDataFixed(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMDataFixed"].getBooleanValue()
		}
		
		def void setFiMDataFixed(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMDataFixed"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FiMDataFixed"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFiMDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMDevErrorDetect"].getBooleanValue()
		}
		
		def void setFiMDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FiMDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFiMEventUpdateTriggeredByDem(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMEventUpdateTriggeredByDem"].getBooleanValue()
		}
		
		def void setFiMEventUpdateTriggeredByDem(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMEventUpdateTriggeredByDem"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FiMEventUpdateTriggeredByDem"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getFiMMaxEventsPerFidInhibitionConfiguration(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMMaxEventsPerFidInhibitionConfiguration"].getBigIntegerValue()
		}
		
		def void setFiMMaxEventsPerFidInhibitionConfiguration(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMMaxEventsPerFidInhibitionConfiguration"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FiMMaxEventsPerFidInhibitionConfiguration"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getFiMMaxFiMInhibitionConfigurations(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMMaxFiMInhibitionConfigurations"].getBigIntegerValue()
		}
		
		def void setFiMMaxFiMInhibitionConfigurations(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMMaxFiMInhibitionConfigurations"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FiMMaxFiMInhibitionConfigurations"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getFiMMaxInputEventsPerSummaryEvents(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMMaxInputEventsPerSummaryEvents"].getBigIntegerValue()
		}
		
		def void setFiMMaxInputEventsPerSummaryEvents(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMMaxInputEventsPerSummaryEvents"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FiMMaxInputEventsPerSummaryEvents"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getFiMMaxSumEventsPerFidInhibitionConfiguration(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMMaxSumEventsPerFidInhibitionConfiguration"].getBigIntegerValue()
		}
		
		def void setFiMMaxSumEventsPerFidInhibitionConfiguration(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMMaxSumEventsPerFidInhibitionConfiguration"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FiMMaxSumEventsPerFidInhibitionConfiguration"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getFiMMaxSummaryEvents(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMMaxSummaryEvents"].getBigIntegerValue()
		}
		
		def void setFiMMaxSummaryEvents(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMMaxSummaryEvents"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FiMMaxSummaryEvents"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getFiMTaskTime(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMTaskTime"].getBigDecimalValue()
		}
		
		def void setFiMTaskTime(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMTaskTime"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FiMTaskTime"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getFiMVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMVersionInfoApi"].getBooleanValue()
		}
		
		def void setFiMVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FiMVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FiMVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof FiM)){
			return false
		}
		this.target == (object as FiM).target
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
