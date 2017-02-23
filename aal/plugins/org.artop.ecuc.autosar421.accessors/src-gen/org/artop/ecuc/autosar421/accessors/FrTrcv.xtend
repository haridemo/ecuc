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
		return new BasicWrappingEList<FrTrcvChannel, GContainer>(filteredContainers, typeof(FrTrcvChannel), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar421.accessors.FrTrcv.FrTrcvChannel frTrcvChannel) {
				frTrcvChannel.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("FrTrcvChannel"))
				super.delegateAdd(frTrcvChannel)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.FrTrcv.FrTrcvChannel frTrcvChannel) {
				frTrcvChannel.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("FrTrcvChannel"))
				super.delegateAdd(index, frTrcvChannel)
			}
		}
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof FrTrcvChannel)){
				return false
			}
			this.target == (object as FrTrcvChannel).target
		}
	
		def BigInteger getFrTrcvChannelId(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvChannelId"].getBigIntegerValue()
		}
		
		def void setFrTrcvChannelId(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvChannelId"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvChannelId"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getFrTrcvChannelUsed(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvChannelUsed"].getBooleanValue()
		}
		
		def void setFrTrcvChannelUsed(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvChannelUsed"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvChannelUsed"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFrTrcvControlsPowerSupply(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvControlsPowerSupply"].getBooleanValue()
		}
		
		def void setFrTrcvControlsPowerSupply(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvControlsPowerSupply"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvControlsPowerSupply"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def String getFrTrcvEnableInterruptCallout(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvEnableInterruptCallout"].getStringValue()
		}
		
		def void setFrTrcvEnableInterruptCallout(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvEnableInterruptCallout"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvEnableInterruptCallout"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def FrTrcvInitState getFrTrcvInitState(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvInitState"].getFrTrcvInitStateValue()
		}
		
		def void setFrTrcvInitState(FrTrcvInitState value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvInitState"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvInitState"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum FrTrcvInitState {
			FRTRCV_TRCVMODE_NORMAL, 
			FRTRCV_TRCVMODE_RECEIVEONLY, 
			FRTRCV_TRCVMODE_SLEEP, 
			FRTRCV_TRCVMODE_STANDBY
		}
		
		def FrTrcvInitState getFrTrcvInitStateValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "FRTRCV_TRCVMODE_NORMAL" : FrTrcvInitState.FRTRCV_TRCVMODE_NORMAL
				case "FRTRCV_TRCVMODE_RECEIVEONLY" : FrTrcvInitState.FRTRCV_TRCVMODE_RECEIVEONLY
				case "FRTRCV_TRCVMODE_SLEEP" : FrTrcvInitState.FRTRCV_TRCVMODE_SLEEP
				case "FRTRCV_TRCVMODE_STANDBY" : FrTrcvInitState.FRTRCV_TRCVMODE_STANDBY
			}
		}
		
		def void setFrTrcvInitStateValue(GParameterValue parameterValue, FrTrcvInitState value){
			parameterValue.setValue(value)
		}
		
		def FrTrcvMaxBaudrate getFrTrcvMaxBaudrate(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvMaxBaudrate"].getFrTrcvMaxBaudrateValue()
		}
		
		def void setFrTrcvMaxBaudrate(FrTrcvMaxBaudrate value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvMaxBaudrate"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvMaxBaudrate"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum FrTrcvMaxBaudrate {
			FR_10M, 
			FR_2M5, 
			FR_5M0
		}
		
		def FrTrcvMaxBaudrate getFrTrcvMaxBaudrateValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "FR_10M" : FrTrcvMaxBaudrate.FR_10M
				case "FR_2M5" : FrTrcvMaxBaudrate.FR_2M5
				case "FR_5M0" : FrTrcvMaxBaudrate.FR_5M0
			}
		}
		
		def void setFrTrcvMaxBaudrateValue(GParameterValue parameterValue, FrTrcvMaxBaudrate value){
			parameterValue.setValue(value)
		}
		
		def Boolean getFrTrcvWakeupByBusUsed(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvWakeupByBusUsed"].getBooleanValue()
		}
		
		def void setFrTrcvWakeupByBusUsed(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvWakeupByBusUsed"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvWakeupByBusUsed"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		def org.artop.ecuc.autosar421.accessors.Icu.IcuConfigSet.IcuChannel getFrTrcvIcuChannelRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Icu.IcuConfigSet.IcuChannel), "FrTrcvIcuChannelRef")
		}
		
		def void setFrTrcvIcuChannelRef(org.artop.ecuc.autosar421.accessors.Icu.IcuConfigSet.IcuChannel object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FrTrcvIcuChannelRef"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource getFrTrcvWakeupSourceRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource), "FrTrcvWakeupSourceRef")
		}
		
		def void setFrTrcvWakeupSourceRef(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FrTrcvWakeupSourceRef"], object.getTarget())
			}
		}
		
		
		def FrTrcvAccess getFrTrcvAccess(){
			containerValue.getByType(typeof(FrTrcvAccess))
		}
		
		def void setFrTrcvAccess(FrTrcvAccess frTrcvAccess){
			val GContainer subContainer = frTrcvAccess.getTarget()
			containerValue.setContainer(subContainer, "FrTrcvAccess")
		}
		
		def List<FrTrcvBranchIdContainer> getFrTrcvBranchIdContainers(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "FrTrcvBranchIdContainer")
				}
			}
			return new BasicWrappingEList<FrTrcvBranchIdContainer, GContainer>(filteredContainers, typeof(FrTrcvBranchIdContainer), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.FrTrcv.FrTrcvChannel.FrTrcvBranchIdContainer frTrcvBranchIdContainer) {
					frTrcvBranchIdContainer.target?.gSetDefinition(containerValue.getContainerDefinition("FrTrcvBranchIdContainer"))
					super.delegateAdd(frTrcvBranchIdContainer)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.FrTrcv.FrTrcvChannel.FrTrcvBranchIdContainer frTrcvBranchIdContainer) {
					frTrcvBranchIdContainer.target?.gSetDefinition(containerValue.getContainerDefinition("FrTrcvBranchIdContainer"))
					super.delegateAdd(index, frTrcvBranchIdContainer)
				}
			}
		}
		
		def FrTrcvChannelDemEventParameterRefs getFrTrcvChannelDemEventParameterRefs(){
			containerValue.getByType(typeof(FrTrcvChannelDemEventParameterRefs))
		}
		
		def void setFrTrcvChannelDemEventParameterRefs(FrTrcvChannelDemEventParameterRefs frTrcvChannelDemEventParameterRefs){
			val GContainer subContainer = frTrcvChannelDemEventParameterRefs.getTarget()
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof FrTrcvAccess)){
					return false
				}
				this.target == (object as FrTrcvAccess).target
			}
		
			def FrTrcvDioAccess getFrTrcvDioAccess(){
				containerValue.getByType(typeof(FrTrcvDioAccess))
			}
			
			def void setFrTrcvDioAccess(FrTrcvDioAccess frTrcvDioAccess){
				val GContainer subContainer = frTrcvDioAccess.getTarget()
				containerValue.setContainer(subContainer, "FrTrcvDioAccess")
			}
			def FrTrcvSpiSequence getFrTrcvSpiSequence(){
				containerValue.getByType(typeof(FrTrcvSpiSequence))
			}
			
			def void setFrTrcvSpiSequence(FrTrcvSpiSequence frTrcvSpiSequence){
				val GContainer subContainer = frTrcvSpiSequence.getTarget()
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof FrTrcvDioAccess)){
						return false
					}
					this.target == (object as FrTrcvDioAccess).target
				}
			
				
				
				def List<FrTrcvDioChannelAccess> getFrTrcvDioChannelAccess(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "FrTrcvDioChannelAccess")
						}
					}
					return new BasicWrappingEList<FrTrcvDioChannelAccess, GContainer>(filteredContainers, typeof(FrTrcvDioChannelAccess), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.FrTrcv.FrTrcvChannel.FrTrcvAccess.FrTrcvDioAccess.FrTrcvDioChannelAccess frTrcvDioChannelAccess) {
							frTrcvDioChannelAccess.target?.gSetDefinition(containerValue.getContainerDefinition("FrTrcvDioChannelAccess"))
							super.delegateAdd(frTrcvDioChannelAccess)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.FrTrcv.FrTrcvChannel.FrTrcvAccess.FrTrcvDioAccess.FrTrcvDioChannelAccess frTrcvDioChannelAccess) {
							frTrcvDioChannelAccess.target?.gSetDefinition(containerValue.getContainerDefinition("FrTrcvDioChannelAccess"))
							super.delegateAdd(index, frTrcvDioChannelAccess)
						}
					}
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
				
					override def boolean equals(Object object) {
				        if (!(object instanceof FrTrcvDioChannelAccess)){
							return false
						}
						this.target == (object as FrTrcvDioChannelAccess).target
					}
				
					def String getFrTrcvHardwareInterfaceName(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvHardwareInterfaceName"].getStringValue()
					}
					
					def void setFrTrcvHardwareInterfaceName(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvHardwareInterfaceName"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvHardwareInterfaceName"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof FrTrcvSpiSequence)){
						return false
					}
					this.target == (object as FrTrcvSpiSequence).target
				}
			
				
				def org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiSequence getFrTrcvSpiSequenceName(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiSequence), "FrTrcvSpiSequenceName")
				}
				
				def void setFrTrcvSpiSequenceName(org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiSequence object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FrTrcvSpiSequenceName"], object.getTarget())
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof FrTrcvBranchIdContainer)){
					return false
				}
				this.target == (object as FrTrcvBranchIdContainer).target
			}
		
			def BigInteger getFrTrcvBranchId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvBranchId"].getBigIntegerValue()
			}
			
			def void setFrTrcvBranchId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvBranchId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvBranchId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof FrTrcvChannelDemEventParameterRefs)){
					return false
				}
				this.target == (object as FrTrcvChannelDemEventParameterRefs).target
			}
		
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getFRTRCV_E_FR_BUSERROR_TRCV(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "FRTRCV_E_FR_BUSERROR_TRCV")
			}
			
			def void setFRTRCV_E_FR_BUSERROR_TRCV(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FRTRCV_E_FR_BUSERROR_TRCV"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getFRTRCV_E_FR_ERRN_TRCV(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "FRTRCV_E_FR_ERRN_TRCV")
			}
			
			def void setFRTRCV_E_FR_ERRN_TRCV(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FRTRCV_E_FR_ERRN_TRCV"], object.getTarget())
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof FrTrcvGeneral)){
				return false
			}
			this.target == (object as FrTrcvGeneral).target
		}
	
		def String getFrTrcvDemReportErrorStatusConfiguration(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvDemReportErrorStatusConfiguration"].getStringValue()
		}
		
		def void setFrTrcvDemReportErrorStatusConfiguration(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvDemReportErrorStatusConfiguration"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvDemReportErrorStatusConfiguration"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getFrTrcvDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvDevErrorDetect"].getBooleanValue()
		}
		
		def void setFrTrcvDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFrTrcvErrorCheckDuringCommunication(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvErrorCheckDuringCommunication"].getBooleanValue()
		}
		
		def void setFrTrcvErrorCheckDuringCommunication(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvErrorCheckDuringCommunication"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvErrorCheckDuringCommunication"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFrTrcvErrorCheckInInit(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvErrorCheckInInit"].getBooleanValue()
		}
		
		def void setFrTrcvErrorCheckInInit(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvErrorCheckInInit"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvErrorCheckInInit"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFrTrcvGetVersionInfo(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvGetVersionInfo"].getBooleanValue()
		}
		
		def void setFrTrcvGetVersionInfo(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvGetVersionInfo"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvGetVersionInfo"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getFrTrcvIndex(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvIndex"].getBigIntegerValue()
		}
		
		def void setFrTrcvIndex(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvIndex"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvIndex"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getFrTrcvMainFunctionCycleTime(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvMainFunctionCycleTime"].getBigDecimalValue()
		}
		
		def void setFrTrcvMainFunctionCycleTime(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvMainFunctionCycleTime"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvMainFunctionCycleTime"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getFrTrcvRetryCountInInit(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvRetryCountInInit"].getBigIntegerValue()
		}
		
		def void setFrTrcvRetryCountInInit(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvRetryCountInInit"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvRetryCountInInit"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def FrTrcvTimerType getFrTrcvTimerType(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvTimerType"].getFrTrcvTimerTypeValue()
		}
		
		def void setFrTrcvTimerType(FrTrcvTimerType value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvTimerType"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvTimerType"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum FrTrcvTimerType {
			None, 
			Timer_1us16bit
		}
		
		def FrTrcvTimerType getFrTrcvTimerTypeValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "None" : FrTrcvTimerType.None
				case "Timer_1us16bit" : FrTrcvTimerType.Timer_1us16bit
			}
		}
		
		def void setFrTrcvTimerTypeValue(GParameterValue parameterValue, FrTrcvTimerType value){
			parameterValue.setValue(value)
		}
		
		def BigDecimal getFrTrcvWaitTime(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvWaitTime"].getBigDecimalValue()
		}
		
		def void setFrTrcvWaitTime(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvWaitTime"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvWaitTime"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def FrTrcvWakeUpSupport getFrTrcvWakeUpSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvWakeUpSupport"].getFrTrcvWakeUpSupportValue()
		}
		
		def void setFrTrcvWakeUpSupport(FrTrcvWakeUpSupport value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTrcvWakeUpSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTrcvWakeUpSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum FrTrcvWakeUpSupport {
			FRTRCV_WAKEUP_BY_POLLING, 
			FRTRCV_WAKEUP_NOT_SUPPORTED
		}
		
		def FrTrcvWakeUpSupport getFrTrcvWakeUpSupportValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "FRTRCV_WAKEUP_BY_POLLING" : FrTrcvWakeUpSupport.FRTRCV_WAKEUP_BY_POLLING
				case "FRTRCV_WAKEUP_NOT_SUPPORTED" : FrTrcvWakeUpSupport.FRTRCV_WAKEUP_NOT_SUPPORTED
			}
		}
		
		def void setFrTrcvWakeUpSupportValue(GParameterValue parameterValue, FrTrcvWakeUpSupport value){
			parameterValue.setValue(value)
		}
		
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof FrTrcv)){
			return false
		}
		this.target == (object as FrTrcv).target
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
