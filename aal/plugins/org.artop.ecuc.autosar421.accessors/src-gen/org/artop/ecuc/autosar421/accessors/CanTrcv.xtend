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

class CanTrcv implements IWrapper<GModuleConfiguration> {
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

	static class CanTrcvConfigSet implements IWrapper<GContainer> {
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
	        if (!(object instanceof CanTrcvConfigSet)){
				return false
			}
			this.target == (object as CanTrcvConfigSet).target
		}
	
		def BigInteger getCanTrcvSPICommRetries(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvSPICommRetries"].getBigIntegerValue()
		}
		
		def void setCanTrcvSPICommRetries(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvSPICommRetries"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvSPICommRetries"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCanTrcvSPICommTimeout(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvSPICommTimeout"].getBigIntegerValue()
		}
		
		def void setCanTrcvSPICommTimeout(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvSPICommTimeout"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvSPICommTimeout"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CanTrcvChannel> getCanTrcvChannels(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CanTrcvChannel")
				}
			}
			return new BasicWrappingEList<CanTrcvChannel, GContainer>(filteredContainers, typeof(CanTrcvChannel), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.CanTrcv.CanTrcvConfigSet.CanTrcvChannel canTrcvChannel) {
					canTrcvChannel.target?.gSetDefinition(containerValue.getContainerDefinition("CanTrcvChannel"))
					super.delegateAdd(canTrcvChannel)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.CanTrcv.CanTrcvConfigSet.CanTrcvChannel canTrcvChannel) {
					canTrcvChannel.target?.gSetDefinition(containerValue.getContainerDefinition("CanTrcvChannel"))
					super.delegateAdd(index, canTrcvChannel)
				}
			}
		}
		
		
		static class CanTrcvChannel implements IWrapper<GContainer> {
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
		        if (!(object instanceof CanTrcvChannel)){
					return false
				}
				this.target == (object as CanTrcvChannel).target
			}
		
			def BigInteger getCanTrcvChannelId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvChannelId"].getBigIntegerValue()
			}
			
			def void setCanTrcvChannelId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvChannelId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvChannelId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getCanTrcvChannelUsed(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvChannelUsed"].getBooleanValue()
			}
			
			def void setCanTrcvChannelUsed(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvChannelUsed"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvChannelUsed"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getCanTrcvControlsPowerSupply(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvControlsPowerSupply"].getBooleanValue()
			}
			
			def void setCanTrcvControlsPowerSupply(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvControlsPowerSupply"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvControlsPowerSupply"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getCanTrcvHwPnSupport(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvHwPnSupport"].getBooleanValue()
			}
			
			def void setCanTrcvHwPnSupport(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvHwPnSupport"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvHwPnSupport"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def CanTrcvInitState getCanTrcvInitState(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvInitState"].getCanTrcvInitStateValue()
			}
			
			def void setCanTrcvInitState(CanTrcvInitState value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvInitState"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvInitState"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum CanTrcvInitState {
				CANTRCV_OP_MODE_NORMAL, 
				CANTRCV_OP_MODE_SLEEP, 
				CANTRCV_OP_MODE_STANDBY
			}
			
			def CanTrcvInitState getCanTrcvInitStateValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "CANTRCV_OP_MODE_NORMAL" : CanTrcvInitState.CANTRCV_OP_MODE_NORMAL
					case "CANTRCV_OP_MODE_SLEEP" : CanTrcvInitState.CANTRCV_OP_MODE_SLEEP
					case "CANTRCV_OP_MODE_STANDBY" : CanTrcvInitState.CANTRCV_OP_MODE_STANDBY
				}
			}
			
			def void setCanTrcvInitStateValue(GParameterValue parameterValue, CanTrcvInitState value){
				parameterValue.setValue(value)
			}
			
			def BigInteger getCanTrcvMaxBaudrate(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvMaxBaudrate"].getBigIntegerValue()
			}
			
			def void setCanTrcvMaxBaudrate(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvMaxBaudrate"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvMaxBaudrate"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getCanTrcvWakeupByBusUsed(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvWakeupByBusUsed"].getBooleanValue()
			}
			
			def void setCanTrcvWakeupByBusUsed(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvWakeupByBusUsed"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvWakeupByBusUsed"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			def org.artop.ecuc.autosar421.accessors.Icu.IcuConfigSet.IcuChannel getCanTrcvIcuChannelRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Icu.IcuConfigSet.IcuChannel), "CanTrcvIcuChannelRef")
			}
			
			def void setCanTrcvIcuChannelRef(org.artop.ecuc.autosar421.accessors.Icu.IcuConfigSet.IcuChannel object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanTrcvIcuChannelRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource getCanTrcvWakeupSourceRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource), "CanTrcvWakeupSourceRef")
			}
			
			def void setCanTrcvWakeupSourceRef(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanTrcvWakeupSourceRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource getCanTrcvPorWakeupSourceRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource), "CanTrcvPorWakeupSourceRef")
			}
			
			def void setCanTrcvPorWakeupSourceRef(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanTrcvPorWakeupSourceRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource getCanTrcvSyserrWakeupSourceRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource), "CanTrcvSyserrWakeupSourceRef")
			}
			
			def void setCanTrcvSyserrWakeupSourceRef(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanTrcvSyserrWakeupSourceRef"], object.getTarget())
				}
			}
			
			
			def CanTrcvAccess getCanTrcvAccess(){
				containerValue.getByType(typeof(CanTrcvAccess))
			}
			
			def void setCanTrcvAccess(CanTrcvAccess canTrcvAccess){
				val GContainer subContainer = canTrcvAccess.getTarget()
				containerValue.setContainer(subContainer, "CanTrcvAccess")
			}
			
			def CanTrcvDemEventParameterRefs getCanTrcvDemEventParameterRefs(){
				containerValue.getByType(typeof(CanTrcvDemEventParameterRefs))
			}
			
			def void setCanTrcvDemEventParameterRefs(CanTrcvDemEventParameterRefs canTrcvDemEventParameterRefs){
				val GContainer subContainer = canTrcvDemEventParameterRefs.getTarget()
				containerValue.setContainer(subContainer, "CanTrcvDemEventParameterRefs")
			}
			
			def CanTrcvPartialNetwork getCanTrcvPartialNetwork(){
				containerValue.getByType(typeof(CanTrcvPartialNetwork))
			}
			
			def void setCanTrcvPartialNetwork(CanTrcvPartialNetwork canTrcvPartialNetwork){
				val GContainer subContainer = canTrcvPartialNetwork.getTarget()
				containerValue.setContainer(subContainer, "CanTrcvPartialNetwork")
			}
			
			
			static class CanTrcvAccess implements IWrapper<GContainer> {
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
			        if (!(object instanceof CanTrcvAccess)){
						return false
					}
					this.target == (object as CanTrcvAccess).target
				}
			
				def CanTrcvDioAccess getCanTrcvDioAccess(){
					containerValue.getByType(typeof(CanTrcvDioAccess))
				}
				
				def void setCanTrcvDioAccess(CanTrcvDioAccess canTrcvDioAccess){
					val GContainer subContainer = canTrcvDioAccess.getTarget()
					containerValue.setContainer(subContainer, "CanTrcvDioAccess")
				}
				def CanTrcvSpiAccess getCanTrcvSpiAccess(){
					containerValue.getByType(typeof(CanTrcvSpiAccess))
				}
				
				def void setCanTrcvSpiAccess(CanTrcvSpiAccess canTrcvSpiAccess){
					val GContainer subContainer = canTrcvSpiAccess.getTarget()
					containerValue.setContainer(subContainer, "CanTrcvSpiAccess")
				}
				
				static class CanTrcvDioAccess implements IWrapper<GContainer> {
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
				        if (!(object instanceof CanTrcvDioAccess)){
							return false
						}
						this.target == (object as CanTrcvDioAccess).target
					}
				
					
					
					def List<CanTrcvDioChannelAccess> getCanTrcvDioChannelAccess(){
						val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
							override protected accept(GContainer item) {
								return accept(item, typeof(GContainerDef), "CanTrcvDioChannelAccess")
							}
						}
						return new BasicWrappingEList<CanTrcvDioChannelAccess, GContainer>(filteredContainers, typeof(CanTrcvDioChannelAccess), typeof(GContainer)) {
							override protected delegateAdd(org.artop.ecuc.autosar421.accessors.CanTrcv.CanTrcvConfigSet.CanTrcvChannel.CanTrcvAccess.CanTrcvDioAccess.CanTrcvDioChannelAccess canTrcvDioChannelAccess) {
								canTrcvDioChannelAccess.target?.gSetDefinition(containerValue.getContainerDefinition("CanTrcvDioChannelAccess"))
								super.delegateAdd(canTrcvDioChannelAccess)
							}
					
							override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.CanTrcv.CanTrcvConfigSet.CanTrcvChannel.CanTrcvAccess.CanTrcvDioAccess.CanTrcvDioChannelAccess canTrcvDioChannelAccess) {
								canTrcvDioChannelAccess.target?.gSetDefinition(containerValue.getContainerDefinition("CanTrcvDioChannelAccess"))
								super.delegateAdd(index, canTrcvDioChannelAccess)
							}
						}
					}
					
					
					static class CanTrcvDioChannelAccess implements IWrapper<GContainer> {
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
					        if (!(object instanceof CanTrcvDioChannelAccess)){
								return false
							}
							this.target == (object as CanTrcvDioChannelAccess).target
						}
					
						def String getCanTrcvHardwareInterfaceName(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvHardwareInterfaceName"].getStringValue()
						}
						
						def void setCanTrcvHardwareInterfaceName(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvHardwareInterfaceName"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvHardwareInterfaceName"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						
						
						
						
					}
					
				}
				
				static class CanTrcvSpiAccess implements IWrapper<GContainer> {
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
				        if (!(object instanceof CanTrcvSpiAccess)){
							return false
						}
						this.target == (object as CanTrcvSpiAccess).target
					}
				
					
					
					def List<CanTrcvSpiSequence> getCanTrcvSpiSequences(){
						val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
							override protected accept(GContainer item) {
								return accept(item, typeof(GContainerDef), "CanTrcvSpiSequence")
							}
						}
						return new BasicWrappingEList<CanTrcvSpiSequence, GContainer>(filteredContainers, typeof(CanTrcvSpiSequence), typeof(GContainer)) {
							override protected delegateAdd(org.artop.ecuc.autosar421.accessors.CanTrcv.CanTrcvConfigSet.CanTrcvChannel.CanTrcvAccess.CanTrcvSpiAccess.CanTrcvSpiSequence canTrcvSpiSequence) {
								canTrcvSpiSequence.target?.gSetDefinition(containerValue.getContainerDefinition("CanTrcvSpiSequence"))
								super.delegateAdd(canTrcvSpiSequence)
							}
					
							override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.CanTrcv.CanTrcvConfigSet.CanTrcvChannel.CanTrcvAccess.CanTrcvSpiAccess.CanTrcvSpiSequence canTrcvSpiSequence) {
								canTrcvSpiSequence.target?.gSetDefinition(containerValue.getContainerDefinition("CanTrcvSpiSequence"))
								super.delegateAdd(index, canTrcvSpiSequence)
							}
						}
					}
					
					
					static class CanTrcvSpiSequence implements IWrapper<GContainer> {
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
					        if (!(object instanceof CanTrcvSpiSequence)){
								return false
							}
							this.target == (object as CanTrcvSpiSequence).target
						}
					
						def Boolean getCanTrcvSpiAccessSynchronous(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvSpiAccessSynchronous"].getBooleanValue()
						}
						
						def void setCanTrcvSpiAccessSynchronous(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvSpiAccessSynchronous"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvSpiAccessSynchronous"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(getBooleanParameterValueValue(value, true))
						}
						
						
						def List<org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiSequence> getCanTrcvSpiSequenceNames(){
							val containerDef = containerValue.gGetDefinition
							val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
								containerDef.gGetReferences.findFirst[gGetShortName == "CanTrcvSpiSequenceName"] else null
						
							val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
								override protected accept(GReferenceValue item) {
									return accept(item, typeof(GConfigReference), "CanTrcvSpiSequenceName")
								}
							}
						
							return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiSequence>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiSequence)) {
								override protected wrap(org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiSequence object) throws CoreException {
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
											return new org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiSequence(referenceValueValue as GContainer)
										}
									}
								}
							}
						}
						
						
						
					}
					
				}
				
			}
			
			static class CanTrcvDemEventParameterRefs implements IWrapper<GContainer> {
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
			        if (!(object instanceof CanTrcvDemEventParameterRefs)){
						return false
					}
					this.target == (object as CanTrcvDemEventParameterRefs).target
				}
			
				
				def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getCANTRCV_E_BUS_ERROR(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "CANTRCV_E_BUS_ERROR")
				}
				
				def void setCANTRCV_E_BUS_ERROR(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CANTRCV_E_BUS_ERROR"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class CanTrcvPartialNetwork implements IWrapper<GContainer> {
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
			        if (!(object instanceof CanTrcvPartialNetwork)){
						return false
					}
					this.target == (object as CanTrcvPartialNetwork).target
				}
			
				def BigInteger getCanTrcvBaudRate(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvBaudRate"].getBigIntegerValue()
				}
				
				def void setCanTrcvBaudRate(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvBaudRate"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvBaudRate"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def Boolean getCanTrcvBusErrFlag(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvBusErrFlag"].getBooleanValue()
				}
				
				def void setCanTrcvBusErrFlag(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvBusErrFlag"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvBusErrFlag"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				def Boolean getCanTrcvPnCanIdIsExtended(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvPnCanIdIsExtended"].getBooleanValue()
				}
				
				def void setCanTrcvPnCanIdIsExtended(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvPnCanIdIsExtended"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvPnCanIdIsExtended"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				def Boolean getCanTrcvPnEnabled(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvPnEnabled"].getBooleanValue()
				}
				
				def void setCanTrcvPnEnabled(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvPnEnabled"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvPnEnabled"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				def BigInteger getCanTrcvPnFrameCanId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvPnFrameCanId"].getBigIntegerValue()
				}
				
				def void setCanTrcvPnFrameCanId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvPnFrameCanId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvPnFrameCanId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCanTrcvPnFrameCanIdMask(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvPnFrameCanIdMask"].getBigIntegerValue()
				}
				
				def void setCanTrcvPnFrameCanIdMask(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvPnFrameCanIdMask"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvPnFrameCanIdMask"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCanTrcvPnFrameDlc(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvPnFrameDlc"].getBigIntegerValue()
				}
				
				def void setCanTrcvPnFrameDlc(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvPnFrameDlc"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvPnFrameDlc"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def Boolean getCanTrcvPowerOnFlag(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvPowerOnFlag"].getBooleanValue()
				}
				
				def void setCanTrcvPowerOnFlag(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvPowerOnFlag"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvPowerOnFlag"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				
				
				def List<CanTrcvPnFrameDataMaskSpec> getCanTrcvPnFrameDataMaskSpecs(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "CanTrcvPnFrameDataMaskSpec")
						}
					}
					return new BasicWrappingEList<CanTrcvPnFrameDataMaskSpec, GContainer>(filteredContainers, typeof(CanTrcvPnFrameDataMaskSpec), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.CanTrcv.CanTrcvConfigSet.CanTrcvChannel.CanTrcvPartialNetwork.CanTrcvPnFrameDataMaskSpec canTrcvPnFrameDataMaskSpec) {
							canTrcvPnFrameDataMaskSpec.target?.gSetDefinition(containerValue.getContainerDefinition("CanTrcvPnFrameDataMaskSpec"))
							super.delegateAdd(canTrcvPnFrameDataMaskSpec)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.CanTrcv.CanTrcvConfigSet.CanTrcvChannel.CanTrcvPartialNetwork.CanTrcvPnFrameDataMaskSpec canTrcvPnFrameDataMaskSpec) {
							canTrcvPnFrameDataMaskSpec.target?.gSetDefinition(containerValue.getContainerDefinition("CanTrcvPnFrameDataMaskSpec"))
							super.delegateAdd(index, canTrcvPnFrameDataMaskSpec)
						}
					}
				}
				
				
				static class CanTrcvPnFrameDataMaskSpec implements IWrapper<GContainer> {
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
				        if (!(object instanceof CanTrcvPnFrameDataMaskSpec)){
							return false
						}
						this.target == (object as CanTrcvPnFrameDataMaskSpec).target
					}
				
					def BigInteger getCanTrcvPnFrameDataMask(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvPnFrameDataMask"].getBigIntegerValue()
					}
					
					def void setCanTrcvPnFrameDataMask(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvPnFrameDataMask"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvPnFrameDataMask"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getCanTrcvPnFrameDataMaskIndex(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvPnFrameDataMaskIndex"].getBigIntegerValue()
					}
					
					def void setCanTrcvPnFrameDataMaskIndex(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvPnFrameDataMaskIndex"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvPnFrameDataMaskIndex"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					
					
				}
				
			}
			
		}
		
	}
	static class CanTrcvGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof CanTrcvGeneral)){
				return false
			}
			this.target == (object as CanTrcvGeneral).target
		}
	
		def Boolean getCanTrcvDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvDevErrorDetect"].getBooleanValue()
		}
		
		def void setCanTrcvDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanTrcvGetVersionInfo(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvGetVersionInfo"].getBooleanValue()
		}
		
		def void setCanTrcvGetVersionInfo(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvGetVersionInfo"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvGetVersionInfo"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getCanTrcvIndex(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvIndex"].getBigIntegerValue()
		}
		
		def void setCanTrcvIndex(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvIndex"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvIndex"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getCanTrcvMainFunctionDiagnosticsPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvMainFunctionDiagnosticsPeriod"].getBigDecimalValue()
		}
		
		def void setCanTrcvMainFunctionDiagnosticsPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvMainFunctionDiagnosticsPeriod"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvMainFunctionDiagnosticsPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getCanTrcvMainFunctionPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvMainFunctionPeriod"].getBigDecimalValue()
		}
		
		def void setCanTrcvMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvMainFunctionPeriod"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvMainFunctionPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def CanTrcvTimerType getCanTrcvTimerType(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvTimerType"].getCanTrcvTimerTypeValue()
		}
		
		def void setCanTrcvTimerType(CanTrcvTimerType value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvTimerType"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvTimerType"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum CanTrcvTimerType {
			None, 
			Timer_1us16bit
		}
		
		def CanTrcvTimerType getCanTrcvTimerTypeValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "None" : CanTrcvTimerType.None
				case "Timer_1us16bit" : CanTrcvTimerType.Timer_1us16bit
			}
		}
		
		def void setCanTrcvTimerTypeValue(GParameterValue parameterValue, CanTrcvTimerType value){
			parameterValue.setValue(value)
		}
		
		def BigDecimal getCanTrcvWaitTime(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvWaitTime"].getBigDecimalValue()
		}
		
		def void setCanTrcvWaitTime(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvWaitTime"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvWaitTime"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def CanTrcvWakeUpSupport getCanTrcvWakeUpSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvWakeUpSupport"].getCanTrcvWakeUpSupportValue()
		}
		
		def void setCanTrcvWakeUpSupport(CanTrcvWakeUpSupport value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTrcvWakeUpSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTrcvWakeUpSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum CanTrcvWakeUpSupport {
			CANTRCV_WAKEUP_BY_POLLING, 
			CANTRCV_WAKEUP_NOT_SUPPORTED
		}
		
		def CanTrcvWakeUpSupport getCanTrcvWakeUpSupportValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "CANTRCV_WAKEUP_BY_POLLING" : CanTrcvWakeUpSupport.CANTRCV_WAKEUP_BY_POLLING
				case "CANTRCV_WAKEUP_NOT_SUPPORTED" : CanTrcvWakeUpSupport.CANTRCV_WAKEUP_NOT_SUPPORTED
			}
		}
		
		def void setCanTrcvWakeUpSupportValue(GParameterValue parameterValue, CanTrcvWakeUpSupport value){
			parameterValue.setValue(value)
		}
		
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof CanTrcv)){
			return false
		}
		this.target == (object as CanTrcv).target
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
