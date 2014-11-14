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

import static extension org.artop.ecuc.autosar4x.accessors.lib.ParameterValueAccessor4xUtil.*
import org.artop.ecuc.autosar4x.accessors.lib.ParameterValueAccessor4xUtil
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
import gautosar.gecucparameterdef.GContainerDef
import gautosar.gecucparameterdef.GParamConfContainerDef
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable
import static extension org.artop.ecuc.gautosar.accessors.lib.ParameterValueAccessorUtil.*
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EStructuralFeature
import org.eclipse.sphinx.emf.util.AbstractUnwrappingEList
import org.eclipse.core.runtime.CoreException

class CanTrcv implements BasicWrappingEList.IWrapper<GModuleConfiguration> {
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
	
	def CanTrcvConfigSet getCanTrcvConfigSet(){
		moduleConfiguration.getByType(typeof(CanTrcvConfigSet))
	}
	
	def void setCanTrcvConfigSet(CanTrcvConfigSet canTrcvConfigSet){
		val GContainer container = canTrcvConfigSet.getTarget() 
	    moduleConfiguration.setContainer(container, "CanTrcvConfigSet")
	}
	def CanTrcvGeneral getCanTrcvGeneral(){
		moduleConfiguration.getByType(typeof(CanTrcvGeneral))
	}
	
	def void setCanTrcvGeneral(CanTrcvGeneral canTrcvGeneral){
		val GContainer container = canTrcvGeneral.getTarget() 
	    moduleConfiguration.setContainer(container, "CanTrcvGeneral")
	}
	
	static class CanTrcvConfigSet implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		def Integer getCanTrcvSPICommRetries(){
			ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvSPICommRetries"])
		}
		
		def void setCanTrcvSPICommRetries(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvSPICommRetries"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvSPICommRetries"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getCanTrcvSPICommTimeout(){
			ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvSPICommTimeout"])
		}
		
		def void setCanTrcvSPICommTimeout(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvSPICommTimeout"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvSPICommTimeout"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CanTrcvChannel> getCanTrcvChannels(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CanTrcvChannel")
				}
			}
			return new BasicWrappingEList<CanTrcvChannel, GContainer>(filteredContainers, typeof(CanTrcvChannel), typeof(GContainer))
		}
		
		
		static class CanTrcvChannel implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Integer getCanTrcvChannelId(){
				ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvChannelId"])
			}
			
			def void setCanTrcvChannelId(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvChannelId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvChannelId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getCanTrcvChannelUsed(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvChannelUsed"])
			}
			
			def void setCanTrcvChannelUsed(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvChannelUsed"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvChannelUsed"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getCanTrcvControlsPowerSupply(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvControlsPowerSupply"])
			}
			
			def void setCanTrcvControlsPowerSupply(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvControlsPowerSupply"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvControlsPowerSupply"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getCanTrcvHwPnSupport(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvHwPnSupport"])
			}
			
			def void setCanTrcvHwPnSupport(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvHwPnSupport"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvHwPnSupport"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def CanTrcvInitState getCanTrcvInitState(){
				getCanTrcvInitStateValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvInitState"])
			}
			
			def void setCanTrcvInitState(CanTrcvInitState value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvInitState"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvInitState"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum CanTrcvInitState {
				CANTRCV_OP_MODE_NORMAL, 
				CANTRCV_OP_MODE_SLEEP, 
				CANTRCV_OP_MODE_STANDBY
			}
				
			def CanTrcvInitState getCanTrcvInitStateValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "CANTRCV_OP_MODE_NORMAL" : CanTrcvInitState.CANTRCV_OP_MODE_NORMAL
					case "CANTRCV_OP_MODE_SLEEP" : CanTrcvInitState.CANTRCV_OP_MODE_SLEEP
					case "CANTRCV_OP_MODE_STANDBY" : CanTrcvInitState.CANTRCV_OP_MODE_STANDBY
				}
			}
			
			def void setCanTrcvInitStateValue(GParameterValue paramValue, CanTrcvInitState value){
				ParameterValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def Integer getCanTrcvMaxBaudrate(){
				ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvMaxBaudrate"])
			}
			
			def void setCanTrcvMaxBaudrate(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvMaxBaudrate"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvMaxBaudrate"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getCanTrcvWakeupByBusUsed(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvWakeupByBusUsed"])
			}
			
			def void setCanTrcvWakeupByBusUsed(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvWakeupByBusUsed"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvWakeupByBusUsed"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.Icu.IcuConfigSet.IcuChannel getCanTrcvIcuChannelRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Icu.IcuConfigSet.IcuChannel), "CanTrcvIcuChannelRef")
			}
					
			def void setCanTrcvIcuChannelRef(org.artop.ecuc.autosar421.accessors.Icu.IcuConfigSet.IcuChannel object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CanTrcvIcuChannelRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource getCanTrcvWakeupSourceRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource), "CanTrcvWakeupSourceRef")
			}
					
			def void setCanTrcvWakeupSourceRef(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CanTrcvWakeupSourceRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource getCanTrcvPorWakeupSourceRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource), "CanTrcvPorWakeupSourceRef")
			}
					
			def void setCanTrcvPorWakeupSourceRef(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CanTrcvPorWakeupSourceRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource getCanTrcvSyserrWakeupSourceRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource), "CanTrcvSyserrWakeupSourceRef")
			}
					
			def void setCanTrcvSyserrWakeupSourceRef(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CanTrcvSyserrWakeupSourceRef"], object.getTarget())
				}
			}
			
			
			def CanTrcvAccess getCanTrcvAccess(){
				containerValue.getByType(typeof(CanTrcvAccess))
			}
			
			def void setCanTrcvAccess(GContainer subContainer){
				containerValue.setContainer(subContainer, "CanTrcvAccess")
			}
			
			def CanTrcvDemEventParameterRefs getCanTrcvDemEventParameterRefs(){
				containerValue.getByType(typeof(CanTrcvDemEventParameterRefs))
			}
			
			def void setCanTrcvDemEventParameterRefs(GContainer subContainer){
				containerValue.setContainer(subContainer, "CanTrcvDemEventParameterRefs")
			}
			
			def CanTrcvPartialNetwork getCanTrcvPartialNetwork(){
				containerValue.getByType(typeof(CanTrcvPartialNetwork))
			}
			
			def void setCanTrcvPartialNetwork(GContainer subContainer){
				containerValue.setContainer(subContainer, "CanTrcvPartialNetwork")
			}
			
			
			static class CanTrcvAccess implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def CanTrcvDioAccess getCanTrcvDioAccess(){
					containerValue.getByType(typeof(CanTrcvDioAccess))
				}
				
				def void setCanTrcvDioAccess(GContainer subContainer){
					containerValue.setContainer(subContainer, "CanTrcvDioAccess")
				}
				def CanTrcvSpiAccess getCanTrcvSpiAccess(){
					containerValue.getByType(typeof(CanTrcvSpiAccess))
				}
				
				def void setCanTrcvSpiAccess(GContainer subContainer){
					containerValue.setContainer(subContainer, "CanTrcvSpiAccess")
				}
				
				static class CanTrcvDioAccess implements BasicWrappingEList.IWrapper<GContainer> {
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
					
					
					
					def List<CanTrcvDioChannelAccess> getCanTrcvDioChannelAccess(){
						val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
							override protected accept(GContainer item) {
								return accept(item, typeof(GContainerDef), "CanTrcvDioChannelAccess")
							}
						}
						return new BasicWrappingEList<CanTrcvDioChannelAccess, GContainer>(filteredContainers, typeof(CanTrcvDioChannelAccess), typeof(GContainer))
					}
					
					
					static class CanTrcvDioChannelAccess implements BasicWrappingEList.IWrapper<GContainer> {
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
						
						def String getCanTrcvHardwareInterfaceName(){
							ParameterValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvHardwareInterfaceName"])
						}
						
						def void setCanTrcvHardwareInterfaceName(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvHardwareInterfaceName"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvHardwareInterfaceName"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
						}
						
						
						
						
						
					}
					
				}
				
				static class CanTrcvSpiAccess implements BasicWrappingEList.IWrapper<GContainer> {
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
					
					
					
					def List<CanTrcvSpiSequence> getCanTrcvSpiSequences(){
						val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
							override protected accept(GContainer item) {
								return accept(item, typeof(GContainerDef), "CanTrcvSpiSequence")
							}
						}
						return new BasicWrappingEList<CanTrcvSpiSequence, GContainer>(filteredContainers, typeof(CanTrcvSpiSequence), typeof(GContainer))
					}
					
					
					static class CanTrcvSpiSequence implements BasicWrappingEList.IWrapper<GContainer> {
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
						
						def Boolean getCanTrcvSpiAccessSynchronous(){
							getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvSpiAccessSynchronous"])
						}
						
						def void setCanTrcvSpiAccessSynchronous(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvSpiAccessSynchronous"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvSpiAccessSynchronous"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
						}
						
						
						def org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiSequence getCanTrcvSpiSequenceName(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiSequence), "CanTrcvSpiSequenceName")
						}
								
						def void setCanTrcvSpiSequenceName(org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiSequence object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CanTrcvSpiSequenceName"], object.getTarget())
							}
						}
						
						
						
					}
					
				}
				
			}
			
			static class CanTrcvDemEventParameterRefs implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				
				def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getCANTRCV_E_BUS_ERROR(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "CANTRCV_E_BUS_ERROR")
				}
						
				def void setCANTRCV_E_BUS_ERROR(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CANTRCV_E_BUS_ERROR"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class CanTrcvPartialNetwork implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def Integer getCanTrcvBaudRate(){
					ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvBaudRate"])
				}
				
				def void setCanTrcvBaudRate(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvBaudRate"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvBaudRate"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Boolean getCanTrcvBusErrFlag(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvBusErrFlag"])
				}
				
				def void setCanTrcvBusErrFlag(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvBusErrFlag"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvBusErrFlag"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Boolean getCanTrcvPnCanIdIsExtended(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvPnCanIdIsExtended"])
				}
				
				def void setCanTrcvPnCanIdIsExtended(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvPnCanIdIsExtended"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvPnCanIdIsExtended"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Boolean getCanTrcvPnEnabled(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvPnEnabled"])
				}
				
				def void setCanTrcvPnEnabled(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvPnEnabled"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvPnEnabled"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getCanTrcvPnFrameCanId(){
					ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvPnFrameCanId"])
				}
				
				def void setCanTrcvPnFrameCanId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvPnFrameCanId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvPnFrameCanId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getCanTrcvPnFrameCanIdMask(){
					ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvPnFrameCanIdMask"])
				}
				
				def void setCanTrcvPnFrameCanIdMask(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvPnFrameCanIdMask"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvPnFrameCanIdMask"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getCanTrcvPnFrameDlc(){
					ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvPnFrameDlc"])
				}
				
				def void setCanTrcvPnFrameDlc(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvPnFrameDlc"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvPnFrameDlc"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Boolean getCanTrcvPowerOnFlag(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvPowerOnFlag"])
				}
				
				def void setCanTrcvPowerOnFlag(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvPowerOnFlag"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvPowerOnFlag"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				
				def List<CanTrcvPnFrameDataMaskSpec> getCanTrcvPnFrameDataMaskSpecs(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "CanTrcvPnFrameDataMaskSpec")
						}
					}
					return new BasicWrappingEList<CanTrcvPnFrameDataMaskSpec, GContainer>(filteredContainers, typeof(CanTrcvPnFrameDataMaskSpec), typeof(GContainer))
				}
				
				
				static class CanTrcvPnFrameDataMaskSpec implements BasicWrappingEList.IWrapper<GContainer> {
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
					
					def Integer getCanTrcvPnFrameDataMask(){
						ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvPnFrameDataMask"])
					}
					
					def void setCanTrcvPnFrameDataMask(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvPnFrameDataMask"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvPnFrameDataMask"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Integer getCanTrcvPnFrameDataMaskIndex(){
						ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvPnFrameDataMaskIndex"])
					}
					
					def void setCanTrcvPnFrameDataMaskIndex(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvPnFrameDataMaskIndex"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvPnFrameDataMaskIndex"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					
					
					
				}
				
			}
			
		}
		
	}
	static class CanTrcvGeneral implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		def Boolean getCanTrcvDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvDevErrorDetect"])
		}
		
		def void setCanTrcvDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getCanTrcvGetVersionInfo(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvGetVersionInfo"])
		}
		
		def void setCanTrcvGetVersionInfo(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvGetVersionInfo"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvGetVersionInfo"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getCanTrcvIndex(){
			ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvIndex"])
		}
		
		def void setCanTrcvIndex(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvIndex"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvIndex"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Float getCanTrcvMainFunctionDiagnosticsPeriod(){
			ParameterValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvMainFunctionDiagnosticsPeriod"])
		}
		
		def void setCanTrcvMainFunctionDiagnosticsPeriod(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvMainFunctionDiagnosticsPeriod"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvMainFunctionDiagnosticsPeriod"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Float getCanTrcvMainFunctionPeriod(){
			ParameterValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvMainFunctionPeriod"])
		}
		
		def void setCanTrcvMainFunctionPeriod(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvMainFunctionPeriod"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvMainFunctionPeriod"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def CanTrcvTimerType getCanTrcvTimerType(){
			getCanTrcvTimerTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvTimerType"])
		}
		
		def void setCanTrcvTimerType(CanTrcvTimerType value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvTimerType"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvTimerType"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum CanTrcvTimerType {
			None, 
			Timer_1us16bit
		}
			
		def CanTrcvTimerType getCanTrcvTimerTypeValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "None" : CanTrcvTimerType.None
				case "Timer_1us16bit" : CanTrcvTimerType.Timer_1us16bit
			}
		}
		
		def void setCanTrcvTimerTypeValue(GParameterValue paramValue, CanTrcvTimerType value){
			ParameterValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def Float getCanTrcvWaitTime(){
			ParameterValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvWaitTime"])
		}
		
		def void setCanTrcvWaitTime(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvWaitTime"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvWaitTime"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def CanTrcvWakeUpSupport getCanTrcvWakeUpSupport(){
			getCanTrcvWakeUpSupportValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvWakeUpSupport"])
		}
		
		def void setCanTrcvWakeUpSupport(CanTrcvWakeUpSupport value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvWakeUpSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvWakeUpSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum CanTrcvWakeUpSupport {
			CANTRCV_WAKEUP_BY_POLLING, 
			CANTRCV_WAKEUP_NOT_SUPPORTED
		}
			
		def CanTrcvWakeUpSupport getCanTrcvWakeUpSupportValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "CANTRCV_WAKEUP_BY_POLLING" : CanTrcvWakeUpSupport.CANTRCV_WAKEUP_BY_POLLING
				case "CANTRCV_WAKEUP_NOT_SUPPORTED" : CanTrcvWakeUpSupport.CANTRCV_WAKEUP_NOT_SUPPORTED
			}
		}
		
		def void setCanTrcvWakeUpSupportValue(GParameterValue paramValue, CanTrcvWakeUpSupport value){
			ParameterValueAccessor4xUtil.setParameterValue(paramValue, value)
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
