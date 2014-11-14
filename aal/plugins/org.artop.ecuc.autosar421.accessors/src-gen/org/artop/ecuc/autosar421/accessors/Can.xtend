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

class Can implements BasicWrappingEList.IWrapper<GModuleConfiguration> {
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
	
	def CanConfigSet getCanConfigSet(){
		moduleConfiguration.getByType(typeof(CanConfigSet))
	}
	
	def void setCanConfigSet(CanConfigSet canConfigSet){
		val GContainer container = canConfigSet.getTarget() 
	    moduleConfiguration.setContainer(container, "CanConfigSet")
	}
	def CanGeneral getCanGeneral(){
		moduleConfiguration.getByType(typeof(CanGeneral))
	}
	
	def void setCanGeneral(CanGeneral canGeneral){
		val GContainer container = canGeneral.getTarget() 
	    moduleConfiguration.setContainer(container, "CanGeneral")
	}
	
	static class CanConfigSet implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		
		
		def List<CanController> getCanControllers(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CanController")
				}
			}
			return new BasicWrappingEList<CanController, GContainer>(filteredContainers, typeof(CanController), typeof(GContainer))
		}
		
		def List<CanHardwareObject> getCanHardwareObjects(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CanHardwareObject")
				}
			}
			return new BasicWrappingEList<CanHardwareObject, GContainer>(filteredContainers, typeof(CanHardwareObject), typeof(GContainer))
		}
		
		def CanIcom getCanIcom(){
			containerValue.getByType(typeof(CanIcom))
		}
		
		def void setCanIcom(GContainer subContainer){
			containerValue.setContainer(subContainer, "CanIcom")
		}
		
		
		static class CanController implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def CanBusoffProcessing getCanBusoffProcessing(){
				getCanBusoffProcessingValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanBusoffProcessing"])
			}
			
			def void setCanBusoffProcessing(CanBusoffProcessing value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanBusoffProcessing"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanBusoffProcessing"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum CanBusoffProcessing {
				INTERRUPT, 
				POLLING
			}
				
			def CanBusoffProcessing getCanBusoffProcessingValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "INTERRUPT" : CanBusoffProcessing.INTERRUPT
					case "POLLING" : CanBusoffProcessing.POLLING
				}
			}
			
			def void setCanBusoffProcessingValue(GParameterValue paramValue, CanBusoffProcessing value){
				ParameterValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def Boolean getCanControllerActivation(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerActivation"])
			}
			
			def void setCanControllerActivation(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerActivation"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanControllerActivation"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getCanControllerBaseAddress(){
				ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerBaseAddress"])
			}
			
			def void setCanControllerBaseAddress(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerBaseAddress"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanControllerBaseAddress"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getCanControllerId(){
				ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerId"])
			}
			
			def void setCanControllerId(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanControllerId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def CanRxProcessing getCanRxProcessing(){
				getCanRxProcessingValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanRxProcessing"])
			}
			
			def void setCanRxProcessing(CanRxProcessing value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanRxProcessing"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanRxProcessing"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum CanRxProcessing {
				INTERRUPT, 
				POLLING
			}
				
			def CanRxProcessing getCanRxProcessingValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "INTERRUPT" : CanRxProcessing.INTERRUPT
					case "POLLING" : CanRxProcessing.POLLING
				}
			}
			
			def void setCanRxProcessingValue(GParameterValue paramValue, CanRxProcessing value){
				ParameterValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def CanTxProcessing getCanTxProcessing(){
				getCanTxProcessingValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTxProcessing"])
			}
			
			def void setCanTxProcessing(CanTxProcessing value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTxProcessing"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTxProcessing"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum CanTxProcessing {
				INTERRUPT, 
				POLLING
			}
				
			def CanTxProcessing getCanTxProcessingValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "INTERRUPT" : CanTxProcessing.INTERRUPT
					case "POLLING" : CanTxProcessing.POLLING
				}
			}
			
			def void setCanTxProcessingValue(GParameterValue paramValue, CanTxProcessing value){
				ParameterValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def Boolean getCanWakeupFunctionalityAPI(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanWakeupFunctionalityAPI"])
			}
			
			def void setCanWakeupFunctionalityAPI(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanWakeupFunctionalityAPI"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanWakeupFunctionalityAPI"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def CanWakeupProcessing getCanWakeupProcessing(){
				getCanWakeupProcessingValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanWakeupProcessing"])
			}
			
			def void setCanWakeupProcessing(CanWakeupProcessing value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanWakeupProcessing"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanWakeupProcessing"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum CanWakeupProcessing {
				INTERRUPT, 
				POLLING
			}
				
			def CanWakeupProcessing getCanWakeupProcessingValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "INTERRUPT" : CanWakeupProcessing.INTERRUPT
					case "POLLING" : CanWakeupProcessing.POLLING
				}
			}
			
			def void setCanWakeupProcessingValue(GParameterValue paramValue, CanWakeupProcessing value){
				ParameterValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def Boolean getCanWakeupSupport(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanWakeupSupport"])
			}
			
			def void setCanWakeupSupport(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanWakeupSupport"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanWakeupSupport"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.Can.CanConfigSet.CanController.CanControllerBaudrateConfig getCanControllerDefaultBaudrate(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Can.CanConfigSet.CanController.CanControllerBaudrateConfig), "CanControllerDefaultBaudrate")
			}
					
			def void setCanControllerDefaultBaudrate(org.artop.ecuc.autosar421.accessors.Can.CanConfigSet.CanController.CanControllerBaudrateConfig object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CanControllerDefaultBaudrate"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Mcu.McuModuleConfiguration.McuClockSettingConfig.McuClockReferencePoint getCanCpuClockRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Mcu.McuModuleConfiguration.McuClockSettingConfig.McuClockReferencePoint), "CanCpuClockRef")
			}
					
			def void setCanCpuClockRef(org.artop.ecuc.autosar421.accessors.Mcu.McuModuleConfiguration.McuClockSettingConfig.McuClockReferencePoint object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CanCpuClockRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource getCanWakeupSourceRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource), "CanWakeupSourceRef")
			}
					
			def void setCanWakeupSourceRef(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CanWakeupSourceRef"], object.getTarget())
				}
			}
			
			
			def List<CanControllerBaudrateConfig> getCanControllerBaudrateConfigs(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CanControllerBaudrateConfig")
					}
				}
				return new BasicWrappingEList<CanControllerBaudrateConfig, GContainer>(filteredContainers, typeof(CanControllerBaudrateConfig), typeof(GContainer))
			}
			
			def CanTTController getCanTTController(){
				containerValue.getByType(typeof(CanTTController))
			}
			
			def void setCanTTController(GContainer subContainer){
				containerValue.setContainer(subContainer, "CanTTController")
			}
			
			
			static class CanControllerBaudrateConfig implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def Integer getCanControllerBaudRate(){
					ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerBaudRate"])
				}
				
				def void setCanControllerBaudRate(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerBaudRate"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanControllerBaudRate"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getCanControllerBaudRateConfigID(){
					ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerBaudRateConfigID"])
				}
				
				def void setCanControllerBaudRateConfigID(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerBaudRateConfigID"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanControllerBaudRateConfigID"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getCanControllerPropSeg(){
					ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerPropSeg"])
				}
				
				def void setCanControllerPropSeg(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerPropSeg"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanControllerPropSeg"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getCanControllerSeg1(){
					ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerSeg1"])
				}
				
				def void setCanControllerSeg1(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerSeg1"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanControllerSeg1"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getCanControllerSeg2(){
					ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerSeg2"])
				}
				
				def void setCanControllerSeg2(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerSeg2"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanControllerSeg2"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getCanControllerSyncJumpWidth(){
					ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerSyncJumpWidth"])
				}
				
				def void setCanControllerSyncJumpWidth(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerSyncJumpWidth"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanControllerSyncJumpWidth"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				
				def CanControllerFdBaudrateConfig getCanControllerFdBaudrateConfig(){
					containerValue.getByType(typeof(CanControllerFdBaudrateConfig))
				}
				
				def void setCanControllerFdBaudrateConfig(GContainer subContainer){
					containerValue.setContainer(subContainer, "CanControllerFdBaudrateConfig")
				}
				
				
				static class CanControllerFdBaudrateConfig implements BasicWrappingEList.IWrapper<GContainer> {
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
					
					def Integer getCanControllerFdBaudRate(){
						ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerFdBaudRate"])
					}
					
					def void setCanControllerFdBaudRate(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerFdBaudRate"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanControllerFdBaudRate"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Integer getCanControllerPropSeg(){
						ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerPropSeg"])
					}
					
					def void setCanControllerPropSeg(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerPropSeg"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanControllerPropSeg"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Integer getCanControllerSeg1(){
						ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerSeg1"])
					}
					
					def void setCanControllerSeg1(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerSeg1"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanControllerSeg1"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Integer getCanControllerSeg2(){
						ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerSeg2"])
					}
					
					def void setCanControllerSeg2(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerSeg2"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanControllerSeg2"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Integer getCanControllerSyncJumpWidth(){
						ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerSyncJumpWidth"])
					}
					
					def void setCanControllerSyncJumpWidth(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerSyncJumpWidth"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanControllerSyncJumpWidth"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Integer getCanControllerTrcvDelayCompensationOffset(){
						ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerTrcvDelayCompensationOffset"])
					}
					
					def void setCanControllerTrcvDelayCompensationOffset(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerTrcvDelayCompensationOffset"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanControllerTrcvDelayCompensationOffset"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Boolean getCanControllerTxBitRateSwitch(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerTxBitRateSwitch"])
					}
					
					def void setCanControllerTxBitRateSwitch(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerTxBitRateSwitch"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanControllerTxBitRateSwitch"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					
					
					
				}
				
			}
			
			static class CanTTController implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def Integer getCanTTControllerApplWatchdogLimit(){
					ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerApplWatchdogLimit"])
				}
				
				def void setCanTTControllerApplWatchdogLimit(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerApplWatchdogLimit"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTTControllerApplWatchdogLimit"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getCanTTControllerCycleCountMax(){
					ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerCycleCountMax"])
				}
				
				def void setCanTTControllerCycleCountMax(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerCycleCountMax"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTTControllerCycleCountMax"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getCanTTControllerExpectedTxTrigger(){
					ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerExpectedTxTrigger"])
				}
				
				def void setCanTTControllerExpectedTxTrigger(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerExpectedTxTrigger"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTTControllerExpectedTxTrigger"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Boolean getCanTTControllerExternalClockSynchronisation(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerExternalClockSynchronisation"])
				}
				
				def void setCanTTControllerExternalClockSynchronisation(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerExternalClockSynchronisation"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTTControllerExternalClockSynchronisation"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Boolean getCanTTControllerGlobalTimeFiltering(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerGlobalTimeFiltering"])
				}
				
				def void setCanTTControllerGlobalTimeFiltering(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerGlobalTimeFiltering"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTTControllerGlobalTimeFiltering"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getCanTTControllerInitialRefOffset(){
					ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerInitialRefOffset"])
				}
				
				def void setCanTTControllerInitialRefOffset(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerInitialRefOffset"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTTControllerInitialRefOffset"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getCanTTControllerInterruptEnable(){
					ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerInterruptEnable"])
				}
				
				def void setCanTTControllerInterruptEnable(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerInterruptEnable"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTTControllerInterruptEnable"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Boolean getCanTTControllerLevel2(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerLevel2"])
				}
				
				def void setCanTTControllerLevel2(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerLevel2"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTTControllerLevel2"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Float getCanTTControllerNTUConfig(){
					ParameterValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerNTUConfig"])
				}
				
				def void setCanTTControllerNTUConfig(Float value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerNTUConfig"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTTControllerNTUConfig"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def CanTTControllerOperationMode getCanTTControllerOperationMode(){
					getCanTTControllerOperationModeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerOperationMode"])
				}
				
				def void setCanTTControllerOperationMode(CanTTControllerOperationMode value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerOperationMode"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTTControllerOperationMode"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				enum CanTTControllerOperationMode {
					CAN_TT_EVENT_SYNC_TIME_TRIGGERED, 
					CAN_TT_EVENT_TRIGGERED, 
					CAN_TT_TIME_TRIGGERED
				}
					
				def CanTTControllerOperationMode getCanTTControllerOperationModeValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "CAN_TT_EVENT_SYNC_TIME_TRIGGERED" : CanTTControllerOperationMode.CAN_TT_EVENT_SYNC_TIME_TRIGGERED
						case "CAN_TT_EVENT_TRIGGERED" : CanTTControllerOperationMode.CAN_TT_EVENT_TRIGGERED
						case "CAN_TT_TIME_TRIGGERED" : CanTTControllerOperationMode.CAN_TT_TIME_TRIGGERED
					}
				}
				
				def void setCanTTControllerOperationModeValue(GParameterValue paramValue, CanTTControllerOperationMode value){
					ParameterValueAccessor4xUtil.setParameterValue(paramValue, value)
				}
				
				def Float getCanTTControllerSyncDeviation(){
					ParameterValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerSyncDeviation"])
				}
				
				def void setCanTTControllerSyncDeviation(Float value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerSyncDeviation"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTTControllerSyncDeviation"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Boolean getCanTTControllerTURRestore(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerTURRestore"])
				}
				
				def void setCanTTControllerTURRestore(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerTURRestore"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTTControllerTURRestore"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Boolean getCanTTControllerTimeMaster(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerTimeMaster"])
				}
				
				def void setCanTTControllerTimeMaster(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerTimeMaster"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTTControllerTimeMaster"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getCanTTControllerTimeMasterPriority(){
					ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerTimeMasterPriority"])
				}
				
				def void setCanTTControllerTimeMasterPriority(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerTimeMasterPriority"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTTControllerTimeMasterPriority"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getCanTTControllerTxEnableWindowLength(){
					ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerTxEnableWindowLength"])
				}
				
				def void setCanTTControllerTxEnableWindowLength(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerTxEnableWindowLength"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTTControllerTxEnableWindowLength"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getCanTTControllerWatchTriggerGapTimeMark(){
					ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerWatchTriggerGapTimeMark"])
				}
				
				def void setCanTTControllerWatchTriggerGapTimeMark(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerWatchTriggerGapTimeMark"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTTControllerWatchTriggerGapTimeMark"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getCanTTControllerWatchTriggerTimeMark(){
					ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerWatchTriggerTimeMark"])
				}
				
				def void setCanTTControllerWatchTriggerTimeMark(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerWatchTriggerTimeMark"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTTControllerWatchTriggerTimeMark"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def CanTTIRQProcessing getCanTTIRQProcessing(){
					getCanTTIRQProcessingValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTIRQProcessing"])
				}
				
				def void setCanTTIRQProcessing(CanTTIRQProcessing value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTIRQProcessing"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTTIRQProcessing"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				enum CanTTIRQProcessing {
					INTERRUPT, 
					POLLING
				}
					
				def CanTTIRQProcessing getCanTTIRQProcessingValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "INTERRUPT" : CanTTIRQProcessing.INTERRUPT
						case "POLLING" : CanTTIRQProcessing.POLLING
					}
				}
				
				def void setCanTTIRQProcessingValue(GParameterValue paramValue, CanTTIRQProcessing value){
					ParameterValueAccessor4xUtil.setParameterValue(paramValue, value)
				}
				
				
				
				
			}
			
		}
		
		static class CanHardwareObject implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def CanHandleType getCanHandleType(){
				getCanHandleTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanHandleType"])
			}
			
			def void setCanHandleType(CanHandleType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanHandleType"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanHandleType"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum CanHandleType {
				BASIC, 
				FULL
			}
				
			def CanHandleType getCanHandleTypeValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "BASIC" : CanHandleType.BASIC
					case "FULL" : CanHandleType.FULL
				}
			}
			
			def void setCanHandleTypeValue(GParameterValue paramValue, CanHandleType value){
				ParameterValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def Integer getCanHwObjectCount(){
				ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanHwObjectCount"])
			}
			
			def void setCanHwObjectCount(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanHwObjectCount"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanHwObjectCount"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def CanIdType getCanIdType(){
				getCanIdTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIdType"])
			}
			
			def void setCanIdType(CanIdType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIdType"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIdType"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum CanIdType {
				EXTENDED, 
				MIXED, 
				STANDARD
			}
				
			def CanIdType getCanIdTypeValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "EXTENDED" : CanIdType.EXTENDED
					case "MIXED" : CanIdType.MIXED
					case "STANDARD" : CanIdType.STANDARD
				}
			}
			
			def void setCanIdTypeValue(GParameterValue paramValue, CanIdType value){
				ParameterValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def Integer getCanObjectId(){
				ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanObjectId"])
			}
			
			def void setCanObjectId(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanObjectId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanObjectId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def CanObjectType getCanObjectType(){
				getCanObjectTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanObjectType"])
			}
			
			def void setCanObjectType(CanObjectType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanObjectType"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanObjectType"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum CanObjectType {
				RECEIVE, 
				TRANSMIT
			}
				
			def CanObjectType getCanObjectTypeValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "RECEIVE" : CanObjectType.RECEIVE
					case "TRANSMIT" : CanObjectType.TRANSMIT
				}
			}
			
			def void setCanObjectTypeValue(GParameterValue paramValue, CanObjectType value){
				ParameterValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.Can.CanConfigSet.CanController getCanControllerRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Can.CanConfigSet.CanController), "CanControllerRef")
			}
					
			def void setCanControllerRef(org.artop.ecuc.autosar421.accessors.Can.CanConfigSet.CanController object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CanControllerRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Can.CanGeneral.CanMainFunctionRWPeriods getCanMainFunctionRWPeriodRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Can.CanGeneral.CanMainFunctionRWPeriods), "CanMainFunctionRWPeriodRef")
			}
					
			def void setCanMainFunctionRWPeriodRef(org.artop.ecuc.autosar421.accessors.Can.CanGeneral.CanMainFunctionRWPeriods object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CanMainFunctionRWPeriodRef"], object.getTarget())
				}
			}
			
			
			def List<CanHwFilter> getCanHwFilters(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CanHwFilter")
					}
				}
				return new BasicWrappingEList<CanHwFilter, GContainer>(filteredContainers, typeof(CanHwFilter), typeof(GContainer))
			}
			
			def List<CanTTHardwareObjectTrigger> getCanTTHardwareObjectTriggers(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CanTTHardwareObjectTrigger")
					}
				}
				return new BasicWrappingEList<CanTTHardwareObjectTrigger, GContainer>(filteredContainers, typeof(CanTTHardwareObjectTrigger), typeof(GContainer))
			}
			
			
			static class CanHwFilter implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def Integer getCanHwFilterCode(){
					ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanHwFilterCode"])
				}
				
				def void setCanHwFilterCode(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanHwFilterCode"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanHwFilterCode"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getCanHwFilterMask(){
					ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanHwFilterMask"])
				}
				
				def void setCanHwFilterMask(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanHwFilterMask"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanHwFilterMask"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				
				
			}
			
			static class CanTTHardwareObjectTrigger implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def Integer getCanTTHardwareObjectBaseCycle(){
					ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTHardwareObjectBaseCycle"])
				}
				
				def void setCanTTHardwareObjectBaseCycle(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTHardwareObjectBaseCycle"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTTHardwareObjectBaseCycle"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getCanTTHardwareObjectCycleRepetition(){
					ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTHardwareObjectCycleRepetition"])
				}
				
				def void setCanTTHardwareObjectCycleRepetition(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTHardwareObjectCycleRepetition"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTTHardwareObjectCycleRepetition"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getCanTTHardwareObjectTimeMark(){
					ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTHardwareObjectTimeMark"])
				}
				
				def void setCanTTHardwareObjectTimeMark(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTHardwareObjectTimeMark"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTTHardwareObjectTimeMark"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getCanTTHardwareObjectTriggerId(){
					ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTHardwareObjectTriggerId"])
				}
				
				def void setCanTTHardwareObjectTriggerId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTHardwareObjectTriggerId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTTHardwareObjectTriggerId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def CanTTHardwareObjectTriggerType getCanTTHardwareObjectTriggerType(){
					getCanTTHardwareObjectTriggerTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTHardwareObjectTriggerType"])
				}
				
				def void setCanTTHardwareObjectTriggerType(CanTTHardwareObjectTriggerType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTHardwareObjectTriggerType"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTTHardwareObjectTriggerType"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				enum CanTTHardwareObjectTriggerType {
					CAN_TT_RX_TRIGGER, 
					CAN_TT_TX_REF_TRIGGER, 
					CAN_TT_TX_REF_TRIGGER_GAP, 
					CAN_TT_TX_TRIGGER_EXCLUSIVE, 
					CAN_TT_TX_TRIGGER_MERGED, 
					CAN_TT_TX_TRIGGER_SINGLE
				}
					
				def CanTTHardwareObjectTriggerType getCanTTHardwareObjectTriggerTypeValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "CAN_TT_RX_TRIGGER" : CanTTHardwareObjectTriggerType.CAN_TT_RX_TRIGGER
						case "CAN_TT_TX_REF_TRIGGER" : CanTTHardwareObjectTriggerType.CAN_TT_TX_REF_TRIGGER
						case "CAN_TT_TX_REF_TRIGGER_GAP" : CanTTHardwareObjectTriggerType.CAN_TT_TX_REF_TRIGGER_GAP
						case "CAN_TT_TX_TRIGGER_EXCLUSIVE" : CanTTHardwareObjectTriggerType.CAN_TT_TX_TRIGGER_EXCLUSIVE
						case "CAN_TT_TX_TRIGGER_MERGED" : CanTTHardwareObjectTriggerType.CAN_TT_TX_TRIGGER_MERGED
						case "CAN_TT_TX_TRIGGER_SINGLE" : CanTTHardwareObjectTriggerType.CAN_TT_TX_TRIGGER_SINGLE
					}
				}
				
				def void setCanTTHardwareObjectTriggerTypeValue(GParameterValue paramValue, CanTTHardwareObjectTriggerType value){
					ParameterValueAccessor4xUtil.setParameterValue(paramValue, value)
				}
				
				
				
				
			}
			
		}
		
		static class CanIcom implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			
			
			def List<CanIcomConfig> getCanIcomConfigs(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CanIcomConfig")
					}
				}
				return new BasicWrappingEList<CanIcomConfig, GContainer>(filteredContainers, typeof(CanIcomConfig), typeof(GContainer))
			}
			
			
			static class CanIcomConfig implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def Integer getCanIcomConfigId(){
					ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomConfigId"])
				}
				
				def void setCanIcomConfigId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomConfigId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIcomConfigId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Boolean getCanIcomWakeOnBusOff(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomWakeOnBusOff"])
				}
				
				def void setCanIcomWakeOnBusOff(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomWakeOnBusOff"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIcomWakeOnBusOff"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				
				def CanIcomWakeupCauses getCanIcomWakeupCauses(){
					containerValue.getByType(typeof(CanIcomWakeupCauses))
				}
				
				def void setCanIcomWakeupCauses(GContainer subContainer){
					containerValue.setContainer(subContainer, "CanIcomWakeupCauses")
				}
				
				
				static class CanIcomWakeupCauses implements BasicWrappingEList.IWrapper<GContainer> {
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
					
					
					
					def List<CanIcomRxMessage> getCanIcomRxMessages(){
						val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
							override protected accept(GContainer item) {
								return accept(item, typeof(GContainerDef), "CanIcomRxMessage")
							}
						}
						return new BasicWrappingEList<CanIcomRxMessage, GContainer>(filteredContainers, typeof(CanIcomRxMessage), typeof(GContainer))
					}
					
					
					static class CanIcomRxMessage implements BasicWrappingEList.IWrapper<GContainer> {
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
						
						def Integer getCanIcomCounterValue(){
							ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomCounterValue"])
						}
						
						def void setCanIcomCounterValue(Integer value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomCounterValue"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIcomCounterValue"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
						}
						
						def Integer getCanIcomMessageId(){
							ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomMessageId"])
						}
						
						def void setCanIcomMessageId(Integer value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomMessageId"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIcomMessageId"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
						}
						
						def Integer getCanIcomMessageIdMask(){
							ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomMessageIdMask"])
						}
						
						def void setCanIcomMessageIdMask(Integer value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomMessageIdMask"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIcomMessageIdMask"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
						}
						
						def Float getCanIcomMissingMessageTimerValue(){
							ParameterValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomMissingMessageTimerValue"])
						}
						
						def void setCanIcomMissingMessageTimerValue(Float value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomMissingMessageTimerValue"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIcomMissingMessageTimerValue"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
						}
						
						def Boolean getCanIcomPayloadLengthError(){
							getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomPayloadLengthError"])
						}
						
						def void setCanIcomPayloadLengthError(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomPayloadLengthError"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIcomPayloadLengthError"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
						}
						
						
						
						def List<CanIcomRxMessageSignalConfig> getCanIcomRxMessageSignalConfigs(){
							val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
								override protected accept(GContainer item) {
									return accept(item, typeof(GContainerDef), "CanIcomRxMessageSignalConfig")
								}
							}
							return new BasicWrappingEList<CanIcomRxMessageSignalConfig, GContainer>(filteredContainers, typeof(CanIcomRxMessageSignalConfig), typeof(GContainer))
						}
						
						
						static class CanIcomRxMessageSignalConfig implements BasicWrappingEList.IWrapper<GContainer> {
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
							
							def CanIcomSignalOperation getCanIcomSignalOperation(){
								getCanIcomSignalOperationValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomSignalOperation"])
							}
							
							def void setCanIcomSignalOperation(CanIcomSignalOperation value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomSignalOperation"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIcomSignalOperation"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
							}
							
							enum CanIcomSignalOperation {
								AND, 
								EQUAL, 
								GREATER, 
								OR, 
								SMALLER, 
								XOR
							}
								
							def CanIcomSignalOperation getCanIcomSignalOperationValue(GParameterValue paramValue){
								val castedParamValue = paramValue as EcucTextualParamValue
								switch (castedParamValue.value){
									case "AND" : CanIcomSignalOperation.AND
									case "EQUAL" : CanIcomSignalOperation.EQUAL
									case "GREATER" : CanIcomSignalOperation.GREATER
									case "OR" : CanIcomSignalOperation.OR
									case "SMALLER" : CanIcomSignalOperation.SMALLER
									case "XOR" : CanIcomSignalOperation.XOR
								}
							}
							
							def void setCanIcomSignalOperationValue(GParameterValue paramValue, CanIcomSignalOperation value){
								ParameterValueAccessor4xUtil.setParameterValue(paramValue, value)
							}
							
							
							def org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComSignal getCanIcomSignalRef(){
								containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComSignal), "CanIcomSignalRef")
							}
									
							def void setCanIcomSignalRef(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComSignal object){
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CanIcomSignalRef"], object.getTarget())
								}
							}
							
							
							def List<CanIcomSignalMask> getCanIcomSignalMasks(){
								val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
									override protected accept(GContainer item) {
										return accept(item, typeof(GContainerDef), "CanIcomSignalMask")
									}
								}
								return new BasicWrappingEList<CanIcomSignalMask, GContainer>(filteredContainers, typeof(CanIcomSignalMask), typeof(GContainer))
							}
							
							def List<CanIcomSignalValue> getCanIcomSignalValues(){
								val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
									override protected accept(GContainer item) {
										return accept(item, typeof(GContainerDef), "CanIcomSignalValue")
									}
								}
								return new BasicWrappingEList<CanIcomSignalValue, GContainer>(filteredContainers, typeof(CanIcomSignalValue), typeof(GContainer))
							}
							
							
							static class CanIcomSignalMask implements BasicWrappingEList.IWrapper<GContainer> {
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
								
								def Integer getCanIcomSignalMaskIndex(){
									ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomSignalMaskIndex"])
								}
								
								def void setCanIcomSignalMaskIndex(Integer value){
									var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomSignalMaskIndex"]
									if (parameterValue == null) {
										val containerDef = containerValue.gGetDefinition
										if (containerDef instanceof GParamConfContainerDef) {
											parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIcomSignalMaskIndex"])
											containerValue.gGetParameterValues += parameterValue
										}
									}
									ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
								}
								
								def Integer getCanIcomSignalMaskValue(){
									ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomSignalMaskValue"])
								}
								
								def void setCanIcomSignalMaskValue(Integer value){
									var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomSignalMaskValue"]
									if (parameterValue == null) {
										val containerDef = containerValue.gGetDefinition
										if (containerDef instanceof GParamConfContainerDef) {
											parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIcomSignalMaskValue"])
											containerValue.gGetParameterValues += parameterValue
										}
									}
									ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
								}
								
								
								
								
							}
							
							static class CanIcomSignalValue implements BasicWrappingEList.IWrapper<GContainer> {
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
								
								def Integer getCanIcomSignalValueIndex(){
									ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomSignalValueIndex"])
								}
								
								def void setCanIcomSignalValueIndex(Integer value){
									var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomSignalValueIndex"]
									if (parameterValue == null) {
										val containerDef = containerValue.gGetDefinition
										if (containerDef instanceof GParamConfContainerDef) {
											parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIcomSignalValueIndex"])
											containerValue.gGetParameterValues += parameterValue
										}
									}
									ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
								}
								
								def Integer getCanIcomSignalValueValue(){
									ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomSignalValueValue"])
								}
								
								def void setCanIcomSignalValueValue(Integer value){
									var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomSignalValueValue"]
									if (parameterValue == null) {
										val containerDef = containerValue.gGetDefinition
										if (containerDef instanceof GParamConfContainerDef) {
											parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIcomSignalValueValue"])
											containerValue.gGetParameterValues += parameterValue
										}
									}
									ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
								}
								
								
								
								
							}
							
						}
						
					}
					
				}
				
			}
			
		}
		
	}
	static class CanGeneral implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		def Boolean getCanDevErrorDetection(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanDevErrorDetection"])
		}
		
		def void setCanDevErrorDetection(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanDevErrorDetection"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanDevErrorDetection"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getCanIndex(){
			ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIndex"])
		}
		
		def void setCanIndex(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIndex"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIndex"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def String getCanLPduReceiveCalloutFunction(){
			ParameterValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanLPduReceiveCalloutFunction"])
		}
		
		def void setCanLPduReceiveCalloutFunction(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanLPduReceiveCalloutFunction"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanLPduReceiveCalloutFunction"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Float getCanMainFunctionBusoffPeriod(){
			ParameterValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanMainFunctionBusoffPeriod"])
		}
		
		def void setCanMainFunctionBusoffPeriod(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanMainFunctionBusoffPeriod"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanMainFunctionBusoffPeriod"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Float getCanMainFunctionModePeriod(){
			ParameterValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanMainFunctionModePeriod"])
		}
		
		def void setCanMainFunctionModePeriod(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanMainFunctionModePeriod"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanMainFunctionModePeriod"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Float getCanMainFunctionWakeupPeriod(){
			ParameterValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanMainFunctionWakeupPeriod"])
		}
		
		def void setCanMainFunctionWakeupPeriod(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanMainFunctionWakeupPeriod"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanMainFunctionWakeupPeriod"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getCanMultiplexedTransmission(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanMultiplexedTransmission"])
		}
		
		def void setCanMultiplexedTransmission(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanMultiplexedTransmission"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanMultiplexedTransmission"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getCanPublicIcomSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanPublicIcomSupport"])
		}
		
		def void setCanPublicIcomSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanPublicIcomSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanPublicIcomSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getCanSetBaudrateApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSetBaudrateApi"])
		}
		
		def void setCanSetBaudrateApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSetBaudrateApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanSetBaudrateApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Float getCanTimeoutDuration(){
			ParameterValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTimeoutDuration"])
		}
		
		def void setCanTimeoutDuration(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTimeoutDuration"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTimeoutDuration"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getCanVersionInfoApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanVersionInfoApi"])
		}
		
		def void setCanVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		
		def org.artop.ecuc.autosar421.accessors.Os.OsCounter getCanOsCounterRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsCounter), "CanOsCounterRef")
		}
				
		def void setCanOsCounterRef(org.artop.ecuc.autosar421.accessors.Os.OsCounter object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CanOsCounterRef"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.CanIf.CanIfPrivateCfg getCanSupportTTCANRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.CanIf.CanIfPrivateCfg), "CanSupportTTCANRef")
		}
				
		def void setCanSupportTTCANRef(org.artop.ecuc.autosar421.accessors.CanIf.CanIfPrivateCfg object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CanSupportTTCANRef"], object.getTarget())
			}
		}
		
		
		def CanIcomGeneral getCanIcomGeneral(){
			containerValue.getByType(typeof(CanIcomGeneral))
		}
		
		def void setCanIcomGeneral(GContainer subContainer){
			containerValue.setContainer(subContainer, "CanIcomGeneral")
		}
		
		def CanMainFunctionRWPeriods getCanMainFunctionRWPeriods(){
			containerValue.getByType(typeof(CanMainFunctionRWPeriods))
		}
		
		def void setCanMainFunctionRWPeriods(GContainer subContainer){
			containerValue.setContainer(subContainer, "CanMainFunctionRWPeriods")
		}
		
		
		static class CanIcomGeneral implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def CanIcomLevel getCanIcomLevel(){
				getCanIcomLevelValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomLevel"])
			}
			
			def void setCanIcomLevel(CanIcomLevel value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomLevel"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIcomLevel"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum CanIcomLevel {
				CAN_ICOM_LEVEL_ONE, 
				CAN_ICOM_LEVEL_TWO
			}
				
			def CanIcomLevel getCanIcomLevelValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "CAN_ICOM_LEVEL_ONE" : CanIcomLevel.CAN_ICOM_LEVEL_ONE
					case "CAN_ICOM_LEVEL_TWO" : CanIcomLevel.CAN_ICOM_LEVEL_TWO
				}
			}
			
			def void setCanIcomLevelValue(GParameterValue paramValue, CanIcomLevel value){
				ParameterValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def CanIcomVariant getCanIcomVariant(){
				getCanIcomVariantValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomVariant"])
			}
			
			def void setCanIcomVariant(CanIcomVariant value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomVariant"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanIcomVariant"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum CanIcomVariant {
				CAN_ICOM_VARIANT_HW, 
				CAN_ICOM_VARIANT_NONE, 
				CAN_ICOM_VARIANT_SW
			}
				
			def CanIcomVariant getCanIcomVariantValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "CAN_ICOM_VARIANT_HW" : CanIcomVariant.CAN_ICOM_VARIANT_HW
					case "CAN_ICOM_VARIANT_NONE" : CanIcomVariant.CAN_ICOM_VARIANT_NONE
					case "CAN_ICOM_VARIANT_SW" : CanIcomVariant.CAN_ICOM_VARIANT_SW
				}
			}
			
			def void setCanIcomVariantValue(GParameterValue paramValue, CanIcomVariant value){
				ParameterValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			
			
			
		}
		
		static class CanMainFunctionRWPeriods implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Float getCanMainFunctionPeriod(){
				ParameterValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanMainFunctionPeriod"])
			}
			
			def void setCanMainFunctionPeriod(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanMainFunctionPeriod"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanMainFunctionPeriod"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
