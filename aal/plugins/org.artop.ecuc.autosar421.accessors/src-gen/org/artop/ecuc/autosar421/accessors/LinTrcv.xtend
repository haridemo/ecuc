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

class LinTrcv implements BasicWrappingEList.IWrapper<GModuleConfiguration> {
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
	
	def List<LinTrcvChannel> getLinTrcvChannels(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "LinTrcvChannel")
			}
		}
		return new BasicWrappingEList<LinTrcvChannel, GContainer>(filteredContainers, typeof(LinTrcvChannel), typeof(GContainer))
	}
	def LinTrcvGeneral getLinTrcvGeneral(){
		moduleConfiguration.getByType(typeof(LinTrcvGeneral))
	}
	
	def void setLinTrcvGeneral(LinTrcvGeneral linTrcvGeneral){
		val GContainer container = linTrcvGeneral.getTarget() 
	    moduleConfiguration.setContainer(container, "LinTrcvGeneral")
	}
	
	static class LinTrcvChannel implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		def Integer getLinTrcvChannelId(){
			ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvChannelId"])
		}
		
		def void setLinTrcvChannelId(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvChannelId"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinTrcvChannelId"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getLinTrcvChannelUsed(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvChannelUsed"])
		}
		
		def void setLinTrcvChannelUsed(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvChannelUsed"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinTrcvChannelUsed"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def LinTrcvInitState getLinTrcvInitState(){
			getLinTrcvInitStateValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvInitState"])
		}
		
		def void setLinTrcvInitState(LinTrcvInitState value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvInitState"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinTrcvInitState"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum LinTrcvInitState {
			LINTRCV_TRCV_MODE_NORMAL, 
			LINTRCV_TRCV_MODE_SLEEP, 
			LINTRCV_TRCV_MODE_STANDBY
		}
			
		def LinTrcvInitState getLinTrcvInitStateValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "LINTRCV_TRCV_MODE_NORMAL" : LinTrcvInitState.LINTRCV_TRCV_MODE_NORMAL
				case "LINTRCV_TRCV_MODE_SLEEP" : LinTrcvInitState.LINTRCV_TRCV_MODE_SLEEP
				case "LINTRCV_TRCV_MODE_STANDBY" : LinTrcvInitState.LINTRCV_TRCV_MODE_STANDBY
			}
		}
		
		def void setLinTrcvInitStateValue(GParameterValue paramValue, LinTrcvInitState value){
			ParameterValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def Boolean getLinTrcvWakeupByBusUsed(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvWakeupByBusUsed"])
		}
		
		def void setLinTrcvWakeupByBusUsed(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvWakeupByBusUsed"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinTrcvWakeupByBusUsed"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		
		def org.artop.ecuc.autosar421.accessors.Icu.IcuConfigSet.IcuChannel getLinTrcvIcuChannelRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Icu.IcuConfigSet.IcuChannel), "LinTrcvIcuChannelRef")
		}
				
		def void setLinTrcvIcuChannelRef(org.artop.ecuc.autosar421.accessors.Icu.IcuConfigSet.IcuChannel object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "LinTrcvIcuChannelRef"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource getLinTrcvWakeupSourceRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource), "LinTrcvWakeupSourceRef")
		}
				
		def void setLinTrcvWakeupSourceRef(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "LinTrcvWakeupSourceRef"], object.getTarget())
			}
		}
		
		
		def LinTrcvAccess getLinTrcvAccess(){
			containerValue.getByType(typeof(LinTrcvAccess))
		}
		
		def void setLinTrcvAccess(GContainer subContainer){
			containerValue.setContainer(subContainer, "LinTrcvAccess")
		}
		
		
		static class LinTrcvAccess implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def LinTrcvDioAccess getLinTrcvDioAccess(){
				containerValue.getByType(typeof(LinTrcvDioAccess))
			}
			
			def void setLinTrcvDioAccess(GContainer subContainer){
				containerValue.setContainer(subContainer, "LinTrcvDioAccess")
			}
			def LinTrcvSpiSequence getLinTrcvSpiSequence(){
				containerValue.getByType(typeof(LinTrcvSpiSequence))
			}
			
			def void setLinTrcvSpiSequence(GContainer subContainer){
				containerValue.setContainer(subContainer, "LinTrcvSpiSequence")
			}
			
			static class LinTrcvDioAccess implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				
				
				def List<LinTrcvDioChannelAccess> getLinTrcvDioChannelAccess(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "LinTrcvDioChannelAccess")
						}
					}
					return new BasicWrappingEList<LinTrcvDioChannelAccess, GContainer>(filteredContainers, typeof(LinTrcvDioChannelAccess), typeof(GContainer))
				}
				
				
				static class LinTrcvDioChannelAccess implements BasicWrappingEList.IWrapper<GContainer> {
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
					
					def String getLinTrcvHardwareInterfaceName(){
						ParameterValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvHardwareInterfaceName"])
					}
					
					def void setLinTrcvHardwareInterfaceName(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvHardwareInterfaceName"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinTrcvHardwareInterfaceName"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					
					
					
					
				}
				
			}
			
			static class LinTrcvSpiSequence implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				
				def org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiSequence getLinTrcvSpiSequenceName(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiSequence), "LinTrcvSpiSequenceName")
				}
						
				def void setLinTrcvSpiSequenceName(org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiSequence object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "LinTrcvSpiSequenceName"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
	}
	static class LinTrcvGeneral implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		def Boolean getLinTrcvDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvDevErrorDetect"])
		}
		
		def void setLinTrcvDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinTrcvDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getLinTrcvGetVersionInfo(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvGetVersionInfo"])
		}
		
		def void setLinTrcvGetVersionInfo(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvGetVersionInfo"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinTrcvGetVersionInfo"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getLinTrcvIndex(){
			ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvIndex"])
		}
		
		def void setLinTrcvIndex(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvIndex"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinTrcvIndex"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def LinTrcvTimerType getLinTrcvTimerType(){
			getLinTrcvTimerTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvTimerType"])
		}
		
		def void setLinTrcvTimerType(LinTrcvTimerType value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvTimerType"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinTrcvTimerType"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum LinTrcvTimerType {
			None, 
			Timer_1us16bit
		}
			
		def LinTrcvTimerType getLinTrcvTimerTypeValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "None" : LinTrcvTimerType.None
				case "Timer_1us16bit" : LinTrcvTimerType.Timer_1us16bit
			}
		}
		
		def void setLinTrcvTimerTypeValue(GParameterValue paramValue, LinTrcvTimerType value){
			ParameterValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def Float getLinTrcvWaitTime(){
			ParameterValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvWaitTime"])
		}
		
		def void setLinTrcvWaitTime(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvWaitTime"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinTrcvWaitTime"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getLinTrcvWakeUpSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvWakeUpSupport"])
		}
		
		def void setLinTrcvWakeUpSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTrcvWakeUpSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "LinTrcvWakeUpSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
