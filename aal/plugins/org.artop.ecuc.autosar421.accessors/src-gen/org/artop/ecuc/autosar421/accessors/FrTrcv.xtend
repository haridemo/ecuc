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

import static extension org.artop.ecuc.autosar421.accessors.lib.EcucValueAccessor421Util.*
import org.artop.ecuc.autosar421.accessors.lib.EcucValueAccessor421Util
import org.artop.ecuc.autosar421.accessors.lib.IntegerValueUnwrappingEList
import org.artop.ecuc.autosar421.accessors.lib.FloatValueUnwrappingEList
import org.artop.ecuc.autosar421.accessors.lib.BooleanValueUnwrappingEList
import org.artop.ecuc.autosar421.accessors.lib.StringValueUnwrappingEList
import org.artop.ecuc.autosar421.accessors.lib.DocumentationBlockValueUnwrappingEList

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

class FrTrcv implements IWrapper<GModuleConfiguration> {
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
	
	def List<FrTrcvChannel> getFrTrcvChannels(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "FrTrcvChannel")
			}
		}
		return new BasicWrappingEList<FrTrcvChannel, GContainer>(filteredContainers, typeof(FrTrcvChannel), typeof(GContainer))
	}
	def FrTrcvGeneral getFrTrcvGeneral(){
		moduleConfiguration.getByType(typeof(FrTrcvGeneral))
	}
	
	def void setFrTrcvGeneral(FrTrcvGeneral frTrcvGeneral){
		val GContainer container = frTrcvGeneral.getTarget() 
	    moduleConfiguration.setContainer(container, "FrTrcvGeneral")
	}
	
	static class FrTrcvChannel implements IWrapper<GContainer> {
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
		
		def Integer getFrTrcvChannelId(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvChannelId"])
		}
		
		def void setFrTrcvChannelId(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvChannelId"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvChannelId"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFrTrcvChannelUsed(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvChannelUsed"])
		}
		
		def void setFrTrcvChannelUsed(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvChannelUsed"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvChannelUsed"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFrTrcvControlsPowerSupply(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvControlsPowerSupply"])
		}
		
		def void setFrTrcvControlsPowerSupply(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvControlsPowerSupply"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvControlsPowerSupply"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def String getFrTrcvEnableInterruptCallout(){
			EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvEnableInterruptCallout"])
		}
		
		def void setFrTrcvEnableInterruptCallout(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvEnableInterruptCallout"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvEnableInterruptCallout"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def FrTrcvInitState getFrTrcvInitState(){
			getFrTrcvInitStateValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvInitState"])
		}
		
		def void setFrTrcvInitState(FrTrcvInitState value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvInitState"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvInitState"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		enum FrTrcvInitState {
			FRTRCV_TRCVMODE_NORMAL, 
			FRTRCV_TRCVMODE_RECEIVEONLY, 
			FRTRCV_TRCVMODE_SLEEP, 
			FRTRCV_TRCVMODE_STANDBY
		}
			
		def FrTrcvInitState getFrTrcvInitStateValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "FRTRCV_TRCVMODE_NORMAL" : FrTrcvInitState.FRTRCV_TRCVMODE_NORMAL
				case "FRTRCV_TRCVMODE_RECEIVEONLY" : FrTrcvInitState.FRTRCV_TRCVMODE_RECEIVEONLY
				case "FRTRCV_TRCVMODE_SLEEP" : FrTrcvInitState.FRTRCV_TRCVMODE_SLEEP
				case "FRTRCV_TRCVMODE_STANDBY" : FrTrcvInitState.FRTRCV_TRCVMODE_STANDBY
			}
		}
		
		def void setFrTrcvInitStateValue(GParameterValue paramValue, FrTrcvInitState value){
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		def FrTrcvMaxBaudrate getFrTrcvMaxBaudrate(){
			getFrTrcvMaxBaudrateValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvMaxBaudrate"])
		}
		
		def void setFrTrcvMaxBaudrate(FrTrcvMaxBaudrate value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvMaxBaudrate"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvMaxBaudrate"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		enum FrTrcvMaxBaudrate {
			FR_10M, 
			FR_2M5, 
			FR_5M0
		}
			
		def FrTrcvMaxBaudrate getFrTrcvMaxBaudrateValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "FR_10M" : FrTrcvMaxBaudrate.FR_10M
				case "FR_2M5" : FrTrcvMaxBaudrate.FR_2M5
				case "FR_5M0" : FrTrcvMaxBaudrate.FR_5M0
			}
		}
		
		def void setFrTrcvMaxBaudrateValue(GParameterValue paramValue, FrTrcvMaxBaudrate value){
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		def Boolean getFrTrcvWakeupByBusUsed(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvWakeupByBusUsed"])
		}
		
		def void setFrTrcvWakeupByBusUsed(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvWakeupByBusUsed"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvWakeupByBusUsed"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		def org.artop.ecuc.autosar421.accessors.Icu.IcuConfigSet.IcuChannel getFrTrcvIcuChannelRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Icu.IcuConfigSet.IcuChannel), "FrTrcvIcuChannelRef")
		}
				
		def void setFrTrcvIcuChannelRef(org.artop.ecuc.autosar421.accessors.Icu.IcuConfigSet.IcuChannel object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FrTrcvIcuChannelRef"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource getFrTrcvWakeupSourceRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource), "FrTrcvWakeupSourceRef")
		}
				
		def void setFrTrcvWakeupSourceRef(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FrTrcvWakeupSourceRef"], object.getTarget())
			}
		}
		
		
		def FrTrcvAccess getFrTrcvAccess(){
			containerValue.getByType(typeof(FrTrcvAccess))
		}
		
		def void setFrTrcvAccess(GContainer subContainer){
			containerValue.setContainer(subContainer, "FrTrcvAccess")
		}
		
		def List<FrTrcvBranchIdContainer> getFrTrcvBranchIdContainers(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "FrTrcvBranchIdContainer")
				}
			}
			return new BasicWrappingEList<FrTrcvBranchIdContainer, GContainer>(filteredContainers, typeof(FrTrcvBranchIdContainer), typeof(GContainer))
		}
		
		def FrTrcvChannelDemEventParameterRefs getFrTrcvChannelDemEventParameterRefs(){
			containerValue.getByType(typeof(FrTrcvChannelDemEventParameterRefs))
		}
		
		def void setFrTrcvChannelDemEventParameterRefs(GContainer subContainer){
			containerValue.setContainer(subContainer, "FrTrcvChannelDemEventParameterRefs")
		}
		
		
		static class FrTrcvAccess implements IWrapper<GContainer> {
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
			
			def FrTrcvDioAccess getFrTrcvDioAccess(){
				containerValue.getByType(typeof(FrTrcvDioAccess))
			}
			
			def void setFrTrcvDioAccess(GContainer subContainer){
				containerValue.setContainer(subContainer, "FrTrcvDioAccess")
			}
			def FrTrcvSpiSequence getFrTrcvSpiSequence(){
				containerValue.getByType(typeof(FrTrcvSpiSequence))
			}
			
			def void setFrTrcvSpiSequence(GContainer subContainer){
				containerValue.setContainer(subContainer, "FrTrcvSpiSequence")
			}
			
			static class FrTrcvDioAccess implements IWrapper<GContainer> {
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
				
				
				
				def List<FrTrcvDioChannelAccess> getFrTrcvDioChannelAccess(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "FrTrcvDioChannelAccess")
						}
					}
					return new BasicWrappingEList<FrTrcvDioChannelAccess, GContainer>(filteredContainers, typeof(FrTrcvDioChannelAccess), typeof(GContainer))
				}
				
				
				static class FrTrcvDioChannelAccess implements IWrapper<GContainer> {
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
					
					def String getFrTrcvHardwareInterfaceName(){
						EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvHardwareInterfaceName"])
					}
					
					def void setFrTrcvHardwareInterfaceName(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvHardwareInterfaceName"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvHardwareInterfaceName"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					
					
					
				}
				
			}
			
			static class FrTrcvSpiSequence implements IWrapper<GContainer> {
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
				
				
				def org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiSequence getFrTrcvSpiSequenceName(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiSequence), "FrTrcvSpiSequenceName")
				}
						
				def void setFrTrcvSpiSequenceName(org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiSequence object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FrTrcvSpiSequenceName"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class FrTrcvBranchIdContainer implements IWrapper<GContainer> {
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
			
			def Integer getFrTrcvBranchId(){
				EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvBranchId"])
			}
			
			def void setFrTrcvBranchId(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvBranchId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvBranchId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
		static class FrTrcvChannelDemEventParameterRefs implements IWrapper<GContainer> {
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
			
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getFRTRCV_E_FR_BUSERROR_TRCV(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "FRTRCV_E_FR_BUSERROR_TRCV")
			}
					
			def void setFRTRCV_E_FR_BUSERROR_TRCV(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FRTRCV_E_FR_BUSERROR_TRCV"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getFRTRCV_E_FR_ERRN_TRCV(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "FRTRCV_E_FR_ERRN_TRCV")
			}
					
			def void setFRTRCV_E_FR_ERRN_TRCV(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FRTRCV_E_FR_ERRN_TRCV"], object.getTarget())
				}
			}
			
			
			
		}
		
	}
	static class FrTrcvGeneral implements IWrapper<GContainer> {
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
		
		def String getFrTrcvDemReportErrorStatusConfiguration(){
			EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvDemReportErrorStatusConfiguration"])
		}
		
		def void setFrTrcvDemReportErrorStatusConfiguration(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvDemReportErrorStatusConfiguration"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvDemReportErrorStatusConfiguration"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFrTrcvDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvDevErrorDetect"])
		}
		
		def void setFrTrcvDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFrTrcvErrorCheckDuringCommunication(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvErrorCheckDuringCommunication"])
		}
		
		def void setFrTrcvErrorCheckDuringCommunication(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvErrorCheckDuringCommunication"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvErrorCheckDuringCommunication"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFrTrcvErrorCheckInInit(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvErrorCheckInInit"])
		}
		
		def void setFrTrcvErrorCheckInInit(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvErrorCheckInInit"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvErrorCheckInInit"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFrTrcvGetVersionInfo(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvGetVersionInfo"])
		}
		
		def void setFrTrcvGetVersionInfo(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvGetVersionInfo"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvGetVersionInfo"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getFrTrcvIndex(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvIndex"])
		}
		
		def void setFrTrcvIndex(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvIndex"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvIndex"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Float getFrTrcvMainFunctionCycleTime(){
			EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvMainFunctionCycleTime"])
		}
		
		def void setFrTrcvMainFunctionCycleTime(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvMainFunctionCycleTime"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvMainFunctionCycleTime"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getFrTrcvRetryCountInInit(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvRetryCountInInit"])
		}
		
		def void setFrTrcvRetryCountInInit(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvRetryCountInInit"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvRetryCountInInit"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def FrTrcvTimerType getFrTrcvTimerType(){
			getFrTrcvTimerTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvTimerType"])
		}
		
		def void setFrTrcvTimerType(FrTrcvTimerType value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvTimerType"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvTimerType"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		enum FrTrcvTimerType {
			None, 
			Timer_1us16bit
		}
			
		def FrTrcvTimerType getFrTrcvTimerTypeValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "None" : FrTrcvTimerType.None
				case "Timer_1us16bit" : FrTrcvTimerType.Timer_1us16bit
			}
		}
		
		def void setFrTrcvTimerTypeValue(GParameterValue paramValue, FrTrcvTimerType value){
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		def Float getFrTrcvWaitTime(){
			EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvWaitTime"])
		}
		
		def void setFrTrcvWaitTime(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvWaitTime"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvWaitTime"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def FrTrcvWakeUpSupport getFrTrcvWakeUpSupport(){
			getFrTrcvWakeUpSupportValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvWakeUpSupport"])
		}
		
		def void setFrTrcvWakeUpSupport(FrTrcvWakeUpSupport value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvWakeUpSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvWakeUpSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		enum FrTrcvWakeUpSupport {
			FRTRCV_WAKEUP_BY_POLLING, 
			FRTRCV_WAKEUP_NOT_SUPPORTED
		}
			
		def FrTrcvWakeUpSupport getFrTrcvWakeUpSupportValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "FRTRCV_WAKEUP_BY_POLLING" : FrTrcvWakeUpSupport.FRTRCV_WAKEUP_BY_POLLING
				case "FRTRCV_WAKEUP_NOT_SUPPORTED" : FrTrcvWakeUpSupport.FRTRCV_WAKEUP_NOT_SUPPORTED
			}
		}
		
		def void setFrTrcvWakeUpSupportValue(GParameterValue paramValue, FrTrcvWakeUpSupport value){
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
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
