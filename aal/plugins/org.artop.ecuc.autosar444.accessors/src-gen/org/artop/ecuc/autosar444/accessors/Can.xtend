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

class Can implements IWrapper<GModuleConfiguration> {
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

	static class CanConfigSet implements IWrapper<GContainer> {
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
	        if (!(object instanceof CanConfigSet)){
				return false
			}
			this.target == (object as CanConfigSet).target
		}
	
		
		
		def List<CanController> getCanControllers(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CanController")
				}
			}
			return new BasicWrappingEList<CanController, GContainer>(filteredContainers, typeof(CanController), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Can.CanConfigSet.CanController canController) {
					canController.target?.gSetDefinition(containerValue.getContainerDefinition("CanController"))
					super.delegateAdd(canController)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Can.CanConfigSet.CanController canController) {
					canController.target?.gSetDefinition(containerValue.getContainerDefinition("CanController"))
					super.delegateAdd(index, canController)
				}
			}
		}
		
		def List<CanHardwareObject> getCanHardwareObjects(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CanHardwareObject")
				}
			}
			return new BasicWrappingEList<CanHardwareObject, GContainer>(filteredContainers, typeof(CanHardwareObject), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Can.CanConfigSet.CanHardwareObject canHardwareObject) {
					canHardwareObject.target?.gSetDefinition(containerValue.getContainerDefinition("CanHardwareObject"))
					super.delegateAdd(canHardwareObject)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Can.CanConfigSet.CanHardwareObject canHardwareObject) {
					canHardwareObject.target?.gSetDefinition(containerValue.getContainerDefinition("CanHardwareObject"))
					super.delegateAdd(index, canHardwareObject)
				}
			}
		}
		
		def CanIcom getCanIcom(){
			containerValue.getByType(typeof(CanIcom))
		}
		
		def void setCanIcom(CanIcom canIcom){
			val GContainer subContainer = canIcom.getTarget()
			containerValue.setContainer(subContainer, "CanIcom")
		}
		
		
		static class CanController implements IWrapper<GContainer> {
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
		        if (!(object instanceof CanController)){
					return false
				}
				this.target == (object as CanController).target
			}
		
			def CanBusoffProcessing getCanBusoffProcessing(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanBusoffProcessing"].getCanBusoffProcessingValue()
			}
			
			def void setCanBusoffProcessing(CanBusoffProcessing value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanBusoffProcessing"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanBusoffProcessing"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum CanBusoffProcessing {
				INTERRUPT, 
				POLLING
			}
			
			def CanBusoffProcessing getCanBusoffProcessingValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "INTERRUPT" : CanBusoffProcessing.INTERRUPT
					case "POLLING" : CanBusoffProcessing.POLLING
				}
			}
			
			def void setCanBusoffProcessingValue(GParameterValue parameterValue, CanBusoffProcessing value){
				parameterValue.setValue(value)
			}
			
			def Boolean getCanControllerActivation(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerActivation"].getBooleanValue()
			}
			
			def void setCanControllerActivation(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerActivation"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanControllerActivation"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getCanControllerBaseAddress(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerBaseAddress"].getBigIntegerValue()
			}
			
			def void setCanControllerBaseAddress(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerBaseAddress"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanControllerBaseAddress"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getCanControllerId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerId"].getBigIntegerValue()
			}
			
			def void setCanControllerId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanControllerId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def CanRxProcessing getCanRxProcessing(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanRxProcessing"].getCanRxProcessingValue()
			}
			
			def void setCanRxProcessing(CanRxProcessing value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanRxProcessing"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanRxProcessing"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum CanRxProcessing {
				INTERRUPT, 
				MIXED, 
				POLLING
			}
			
			def CanRxProcessing getCanRxProcessingValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "INTERRUPT" : CanRxProcessing.INTERRUPT
					case "MIXED" : CanRxProcessing.MIXED
					case "POLLING" : CanRxProcessing.POLLING
				}
			}
			
			def void setCanRxProcessingValue(GParameterValue parameterValue, CanRxProcessing value){
				parameterValue.setValue(value)
			}
			
			def CanTxProcessing getCanTxProcessing(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTxProcessing"].getCanTxProcessingValue()
			}
			
			def void setCanTxProcessing(CanTxProcessing value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTxProcessing"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTxProcessing"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum CanTxProcessing {
				INTERRUPT, 
				MIXED, 
				POLLING
			}
			
			def CanTxProcessing getCanTxProcessingValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "INTERRUPT" : CanTxProcessing.INTERRUPT
					case "MIXED" : CanTxProcessing.MIXED
					case "POLLING" : CanTxProcessing.POLLING
				}
			}
			
			def void setCanTxProcessingValue(GParameterValue parameterValue, CanTxProcessing value){
				parameterValue.setValue(value)
			}
			
			def Boolean getCanWakeupFunctionalityAPI(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanWakeupFunctionalityAPI"].getBooleanValue()
			}
			
			def void setCanWakeupFunctionalityAPI(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanWakeupFunctionalityAPI"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanWakeupFunctionalityAPI"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def CanWakeupProcessing getCanWakeupProcessing(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanWakeupProcessing"].getCanWakeupProcessingValue()
			}
			
			def void setCanWakeupProcessing(CanWakeupProcessing value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanWakeupProcessing"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanWakeupProcessing"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum CanWakeupProcessing {
				INTERRUPT, 
				POLLING
			}
			
			def CanWakeupProcessing getCanWakeupProcessingValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "INTERRUPT" : CanWakeupProcessing.INTERRUPT
					case "POLLING" : CanWakeupProcessing.POLLING
				}
			}
			
			def void setCanWakeupProcessingValue(GParameterValue parameterValue, CanWakeupProcessing value){
				parameterValue.setValue(value)
			}
			
			def Boolean getCanWakeupSupport(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanWakeupSupport"].getBooleanValue()
			}
			
			def void setCanWakeupSupport(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanWakeupSupport"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanWakeupSupport"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			def org.artop.ecuc.autosar444.accessors.Can.CanConfigSet.CanController.CanControllerBaudrateConfig getCanControllerDefaultBaudrate(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Can.CanConfigSet.CanController.CanControllerBaudrateConfig), "CanControllerDefaultBaudrate")
			}
			
			def void setCanControllerDefaultBaudrate(org.artop.ecuc.autosar444.accessors.Can.CanConfigSet.CanController.CanControllerBaudrateConfig object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanControllerDefaultBaudrate"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar444.accessors.Mcu.McuModuleConfiguration.McuClockSettingConfig.McuClockReferencePoint getCanCpuClockRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Mcu.McuModuleConfiguration.McuClockSettingConfig.McuClockReferencePoint), "CanCpuClockRef")
			}
			
			def void setCanCpuClockRef(org.artop.ecuc.autosar444.accessors.Mcu.McuModuleConfiguration.McuClockSettingConfig.McuClockReferencePoint object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanCpuClockRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource getCanWakeupSourceRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource), "CanWakeupSourceRef")
			}
			
			def void setCanWakeupSourceRef(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanWakeupSourceRef"], object.getTarget())
				}
			}
			
			
			def List<CanControllerBaudrateConfig> getCanControllerBaudrateConfigs(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CanControllerBaudrateConfig")
					}
				}
				return new BasicWrappingEList<CanControllerBaudrateConfig, GContainer>(filteredContainers, typeof(CanControllerBaudrateConfig), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Can.CanConfigSet.CanController.CanControllerBaudrateConfig canControllerBaudrateConfig) {
						canControllerBaudrateConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CanControllerBaudrateConfig"))
						super.delegateAdd(canControllerBaudrateConfig)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Can.CanConfigSet.CanController.CanControllerBaudrateConfig canControllerBaudrateConfig) {
						canControllerBaudrateConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CanControllerBaudrateConfig"))
						super.delegateAdd(index, canControllerBaudrateConfig)
					}
				}
			}
			
			def CanTTController getCanTTController(){
				containerValue.getByType(typeof(CanTTController))
			}
			
			def void setCanTTController(CanTTController canTTController){
				val GContainer subContainer = canTTController.getTarget()
				containerValue.setContainer(subContainer, "CanTTController")
			}
			
			
			static class CanControllerBaudrateConfig implements IWrapper<GContainer> {
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
			        if (!(object instanceof CanControllerBaudrateConfig)){
						return false
					}
					this.target == (object as CanControllerBaudrateConfig).target
				}
			
				def BigInteger getCanControllerBaudRate(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerBaudRate"].getBigIntegerValue()
				}
				
				def void setCanControllerBaudRate(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerBaudRate"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanControllerBaudRate"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCanControllerBaudRateConfigID(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerBaudRateConfigID"].getBigIntegerValue()
				}
				
				def void setCanControllerBaudRateConfigID(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerBaudRateConfigID"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanControllerBaudRateConfigID"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCanControllerPropSeg(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerPropSeg"].getBigIntegerValue()
				}
				
				def void setCanControllerPropSeg(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerPropSeg"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanControllerPropSeg"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCanControllerSeg1(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerSeg1"].getBigIntegerValue()
				}
				
				def void setCanControllerSeg1(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerSeg1"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanControllerSeg1"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCanControllerSeg2(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerSeg2"].getBigIntegerValue()
				}
				
				def void setCanControllerSeg2(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerSeg2"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanControllerSeg2"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCanControllerSyncJumpWidth(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerSyncJumpWidth"].getBigIntegerValue()
				}
				
				def void setCanControllerSyncJumpWidth(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerSyncJumpWidth"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanControllerSyncJumpWidth"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				def CanControllerFdBaudrateConfig getCanControllerFdBaudrateConfig(){
					containerValue.getByType(typeof(CanControllerFdBaudrateConfig))
				}
				
				def void setCanControllerFdBaudrateConfig(CanControllerFdBaudrateConfig canControllerFdBaudrateConfig){
					val GContainer subContainer = canControllerFdBaudrateConfig.getTarget()
					containerValue.setContainer(subContainer, "CanControllerFdBaudrateConfig")
				}
				
				
				static class CanControllerFdBaudrateConfig implements IWrapper<GContainer> {
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
				        if (!(object instanceof CanControllerFdBaudrateConfig)){
							return false
						}
						this.target == (object as CanControllerFdBaudrateConfig).target
					}
				
					def BigInteger getCanControllerFdBaudRate(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerFdBaudRate"].getBigIntegerValue()
					}
					
					def void setCanControllerFdBaudRate(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerFdBaudRate"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanControllerFdBaudRate"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getCanControllerPropSeg(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerPropSeg"].getBigIntegerValue()
					}
					
					def void setCanControllerPropSeg(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerPropSeg"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanControllerPropSeg"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getCanControllerSeg1(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerSeg1"].getBigIntegerValue()
					}
					
					def void setCanControllerSeg1(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerSeg1"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanControllerSeg1"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getCanControllerSeg2(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerSeg2"].getBigIntegerValue()
					}
					
					def void setCanControllerSeg2(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerSeg2"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanControllerSeg2"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getCanControllerSyncJumpWidth(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerSyncJumpWidth"].getBigIntegerValue()
					}
					
					def void setCanControllerSyncJumpWidth(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerSyncJumpWidth"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanControllerSyncJumpWidth"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getCanControllerTrcvDelayCompensationOffset(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerTrcvDelayCompensationOffset"].getBigIntegerValue()
					}
					
					def void setCanControllerTrcvDelayCompensationOffset(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerTrcvDelayCompensationOffset"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanControllerTrcvDelayCompensationOffset"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def Boolean getCanControllerTxBitRateSwitch(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerTxBitRateSwitch"].getBooleanValue()
					}
					
					def void setCanControllerTxBitRateSwitch(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanControllerTxBitRateSwitch"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanControllerTxBitRateSwitch"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					
					
					
				}
				
			}
			
			static class CanTTController implements IWrapper<GContainer> {
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
			        if (!(object instanceof CanTTController)){
						return false
					}
					this.target == (object as CanTTController).target
				}
			
				def BigInteger getCanTTControllerApplWatchdogLimit(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerApplWatchdogLimit"].getBigIntegerValue()
				}
				
				def void setCanTTControllerApplWatchdogLimit(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerApplWatchdogLimit"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTTControllerApplWatchdogLimit"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCanTTControllerCycleCountMax(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerCycleCountMax"].getBigIntegerValue()
				}
				
				def void setCanTTControllerCycleCountMax(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerCycleCountMax"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTTControllerCycleCountMax"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCanTTControllerExpectedTxTrigger(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerExpectedTxTrigger"].getBigIntegerValue()
				}
				
				def void setCanTTControllerExpectedTxTrigger(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerExpectedTxTrigger"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTTControllerExpectedTxTrigger"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def Boolean getCanTTControllerExternalClockSynchronisation(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerExternalClockSynchronisation"].getBooleanValue()
				}
				
				def void setCanTTControllerExternalClockSynchronisation(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerExternalClockSynchronisation"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTTControllerExternalClockSynchronisation"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				def Boolean getCanTTControllerGlobalTimeFiltering(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerGlobalTimeFiltering"].getBooleanValue()
				}
				
				def void setCanTTControllerGlobalTimeFiltering(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerGlobalTimeFiltering"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTTControllerGlobalTimeFiltering"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				def BigInteger getCanTTControllerInitialRefOffset(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerInitialRefOffset"].getBigIntegerValue()
				}
				
				def void setCanTTControllerInitialRefOffset(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerInitialRefOffset"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTTControllerInitialRefOffset"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCanTTControllerInterruptEnable(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerInterruptEnable"].getBigIntegerValue()
				}
				
				def void setCanTTControllerInterruptEnable(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerInterruptEnable"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTTControllerInterruptEnable"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def Boolean getCanTTControllerLevel2(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerLevel2"].getBooleanValue()
				}
				
				def void setCanTTControllerLevel2(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerLevel2"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTTControllerLevel2"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				def BigDecimal getCanTTControllerNTUConfig(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerNTUConfig"].getBigDecimalValue()
				}
				
				def void setCanTTControllerNTUConfig(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerNTUConfig"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTTControllerNTUConfig"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def CanTTControllerOperationMode getCanTTControllerOperationMode(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerOperationMode"].getCanTTControllerOperationModeValue()
				}
				
				def void setCanTTControllerOperationMode(CanTTControllerOperationMode value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerOperationMode"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTTControllerOperationMode"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CanTTControllerOperationMode {
					CAN_TT_EVENT_SYNC_TIME_TRIGGERED, 
					CAN_TT_EVENT_TRIGGERED, 
					CAN_TT_TIME_TRIGGERED
				}
				
				def CanTTControllerOperationMode getCanTTControllerOperationModeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CAN_TT_EVENT_SYNC_TIME_TRIGGERED" : CanTTControllerOperationMode.CAN_TT_EVENT_SYNC_TIME_TRIGGERED
						case "CAN_TT_EVENT_TRIGGERED" : CanTTControllerOperationMode.CAN_TT_EVENT_TRIGGERED
						case "CAN_TT_TIME_TRIGGERED" : CanTTControllerOperationMode.CAN_TT_TIME_TRIGGERED
					}
				}
				
				def void setCanTTControllerOperationModeValue(GParameterValue parameterValue, CanTTControllerOperationMode value){
					parameterValue.setValue(value)
				}
				
				def BigDecimal getCanTTControllerSyncDeviation(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerSyncDeviation"].getBigDecimalValue()
				}
				
				def void setCanTTControllerSyncDeviation(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerSyncDeviation"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTTControllerSyncDeviation"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def Boolean getCanTTControllerTimeMaster(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerTimeMaster"].getBooleanValue()
				}
				
				def void setCanTTControllerTimeMaster(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerTimeMaster"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTTControllerTimeMaster"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				def BigInteger getCanTTControllerTimeMasterPriority(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerTimeMasterPriority"].getBigIntegerValue()
				}
				
				def void setCanTTControllerTimeMasterPriority(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerTimeMasterPriority"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTTControllerTimeMasterPriority"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def Boolean getCanTTControllerTURRestore(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerTURRestore"].getBooleanValue()
				}
				
				def void setCanTTControllerTURRestore(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerTURRestore"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTTControllerTURRestore"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				def BigInteger getCanTTControllerTxEnableWindowLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerTxEnableWindowLength"].getBigIntegerValue()
				}
				
				def void setCanTTControllerTxEnableWindowLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerTxEnableWindowLength"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTTControllerTxEnableWindowLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCanTTControllerWatchTriggerGapTimeMark(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerWatchTriggerGapTimeMark"].getBigIntegerValue()
				}
				
				def void setCanTTControllerWatchTriggerGapTimeMark(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerWatchTriggerGapTimeMark"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTTControllerWatchTriggerGapTimeMark"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCanTTControllerWatchTriggerTimeMark(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerWatchTriggerTimeMark"].getBigIntegerValue()
				}
				
				def void setCanTTControllerWatchTriggerTimeMark(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTControllerWatchTriggerTimeMark"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTTControllerWatchTriggerTimeMark"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def CanTTIRQProcessing getCanTTIRQProcessing(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTIRQProcessing"].getCanTTIRQProcessingValue()
				}
				
				def void setCanTTIRQProcessing(CanTTIRQProcessing value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTIRQProcessing"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTTIRQProcessing"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CanTTIRQProcessing {
					INTERRUPT, 
					POLLING
				}
				
				def CanTTIRQProcessing getCanTTIRQProcessingValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "INTERRUPT" : CanTTIRQProcessing.INTERRUPT
						case "POLLING" : CanTTIRQProcessing.POLLING
					}
				}
				
				def void setCanTTIRQProcessingValue(GParameterValue parameterValue, CanTTIRQProcessing value){
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
		}
		
		static class CanHardwareObject implements IWrapper<GContainer> {
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
		        if (!(object instanceof CanHardwareObject)){
					return false
				}
				this.target == (object as CanHardwareObject).target
			}
		
			def BigInteger getCanFdPaddingValue(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanFdPaddingValue"].getBigIntegerValue()
			}
			
			def void setCanFdPaddingValue(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanFdPaddingValue"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanFdPaddingValue"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def CanHandleType getCanHandleType(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanHandleType"].getCanHandleTypeValue()
			}
			
			def void setCanHandleType(CanHandleType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanHandleType"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanHandleType"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum CanHandleType {
				BASIC, 
				FULL
			}
			
			def CanHandleType getCanHandleTypeValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "BASIC" : CanHandleType.BASIC
					case "FULL" : CanHandleType.FULL
				}
			}
			
			def void setCanHandleTypeValue(GParameterValue parameterValue, CanHandleType value){
				parameterValue.setValue(value)
			}
			
			def Boolean getCanHardwareObjectUsesPolling(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanHardwareObjectUsesPolling"].getBooleanValue()
			}
			
			def void setCanHardwareObjectUsesPolling(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanHardwareObjectUsesPolling"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanHardwareObjectUsesPolling"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getCanHwObjectCount(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanHwObjectCount"].getBigIntegerValue()
			}
			
			def void setCanHwObjectCount(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanHwObjectCount"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanHwObjectCount"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def CanIdType getCanIdType(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIdType"].getCanIdTypeValue()
			}
			
			def void setCanIdType(CanIdType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIdType"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIdType"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum CanIdType {
				EXTENDED, 
				MIXED, 
				STANDARD
			}
			
			def CanIdType getCanIdTypeValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "EXTENDED" : CanIdType.EXTENDED
					case "MIXED" : CanIdType.MIXED
					case "STANDARD" : CanIdType.STANDARD
				}
			}
			
			def void setCanIdTypeValue(GParameterValue parameterValue, CanIdType value){
				parameterValue.setValue(value)
			}
			
			def BigInteger getCanObjectId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanObjectId"].getBigIntegerValue()
			}
			
			def void setCanObjectId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanObjectId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanObjectId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def CanObjectType getCanObjectType(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanObjectType"].getCanObjectTypeValue()
			}
			
			def void setCanObjectType(CanObjectType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanObjectType"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanObjectType"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum CanObjectType {
				RECEIVE, 
				TRANSMIT
			}
			
			def CanObjectType getCanObjectTypeValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "RECEIVE" : CanObjectType.RECEIVE
					case "TRANSMIT" : CanObjectType.TRANSMIT
				}
			}
			
			def void setCanObjectTypeValue(GParameterValue parameterValue, CanObjectType value){
				parameterValue.setValue(value)
			}
			
			def Boolean getCanTriggerTransmitEnable(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTriggerTransmitEnable"].getBooleanValue()
			}
			
			def void setCanTriggerTransmitEnable(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTriggerTransmitEnable"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTriggerTransmitEnable"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			def org.artop.ecuc.autosar444.accessors.Can.CanConfigSet.CanController getCanControllerRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Can.CanConfigSet.CanController), "CanControllerRef")
			}
			
			def void setCanControllerRef(org.artop.ecuc.autosar444.accessors.Can.CanConfigSet.CanController object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanControllerRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar444.accessors.Can.CanGeneral.CanMainFunctionRWPeriods getCanMainFunctionRWPeriodRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Can.CanGeneral.CanMainFunctionRWPeriods), "CanMainFunctionRWPeriodRef")
			}
			
			def void setCanMainFunctionRWPeriodRef(org.artop.ecuc.autosar444.accessors.Can.CanGeneral.CanMainFunctionRWPeriods object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanMainFunctionRWPeriodRef"], object.getTarget())
				}
			}
			
			
			def List<CanHwFilter> getCanHwFilters(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CanHwFilter")
					}
				}
				return new BasicWrappingEList<CanHwFilter, GContainer>(filteredContainers, typeof(CanHwFilter), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Can.CanConfigSet.CanHardwareObject.CanHwFilter canHwFilter) {
						canHwFilter.target?.gSetDefinition(containerValue.getContainerDefinition("CanHwFilter"))
						super.delegateAdd(canHwFilter)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Can.CanConfigSet.CanHardwareObject.CanHwFilter canHwFilter) {
						canHwFilter.target?.gSetDefinition(containerValue.getContainerDefinition("CanHwFilter"))
						super.delegateAdd(index, canHwFilter)
					}
				}
			}
			
			def List<CanTTHardwareObjectTrigger> getCanTTHardwareObjectTriggers(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CanTTHardwareObjectTrigger")
					}
				}
				return new BasicWrappingEList<CanTTHardwareObjectTrigger, GContainer>(filteredContainers, typeof(CanTTHardwareObjectTrigger), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Can.CanConfigSet.CanHardwareObject.CanTTHardwareObjectTrigger canTTHardwareObjectTrigger) {
						canTTHardwareObjectTrigger.target?.gSetDefinition(containerValue.getContainerDefinition("CanTTHardwareObjectTrigger"))
						super.delegateAdd(canTTHardwareObjectTrigger)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Can.CanConfigSet.CanHardwareObject.CanTTHardwareObjectTrigger canTTHardwareObjectTrigger) {
						canTTHardwareObjectTrigger.target?.gSetDefinition(containerValue.getContainerDefinition("CanTTHardwareObjectTrigger"))
						super.delegateAdd(index, canTTHardwareObjectTrigger)
					}
				}
			}
			
			
			static class CanHwFilter implements IWrapper<GContainer> {
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
			        if (!(object instanceof CanHwFilter)){
						return false
					}
					this.target == (object as CanHwFilter).target
				}
			
				def BigInteger getCanHwFilterCode(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanHwFilterCode"].getBigIntegerValue()
				}
				
				def void setCanHwFilterCode(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanHwFilterCode"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanHwFilterCode"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCanHwFilterMask(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanHwFilterMask"].getBigIntegerValue()
				}
				
				def void setCanHwFilterMask(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanHwFilterMask"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanHwFilterMask"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
			static class CanTTHardwareObjectTrigger implements IWrapper<GContainer> {
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
			        if (!(object instanceof CanTTHardwareObjectTrigger)){
						return false
					}
					this.target == (object as CanTTHardwareObjectTrigger).target
				}
			
				def BigInteger getCanTTHardwareObjectBaseCycle(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTHardwareObjectBaseCycle"].getBigIntegerValue()
				}
				
				def void setCanTTHardwareObjectBaseCycle(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTHardwareObjectBaseCycle"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTTHardwareObjectBaseCycle"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCanTTHardwareObjectCycleRepetition(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTHardwareObjectCycleRepetition"].getBigIntegerValue()
				}
				
				def void setCanTTHardwareObjectCycleRepetition(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTHardwareObjectCycleRepetition"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTTHardwareObjectCycleRepetition"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCanTTHardwareObjectTimeMark(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTHardwareObjectTimeMark"].getBigIntegerValue()
				}
				
				def void setCanTTHardwareObjectTimeMark(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTHardwareObjectTimeMark"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTTHardwareObjectTimeMark"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCanTTHardwareObjectTriggerId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTHardwareObjectTriggerId"].getBigIntegerValue()
				}
				
				def void setCanTTHardwareObjectTriggerId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTHardwareObjectTriggerId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTTHardwareObjectTriggerId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def CanTTHardwareObjectTriggerType getCanTTHardwareObjectTriggerType(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTHardwareObjectTriggerType"].getCanTTHardwareObjectTriggerTypeValue()
				}
				
				def void setCanTTHardwareObjectTriggerType(CanTTHardwareObjectTriggerType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTTHardwareObjectTriggerType"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTTHardwareObjectTriggerType"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CanTTHardwareObjectTriggerType {
					CAN_TT_RX_TRIGGER, 
					CAN_TT_TX_REF_TRIGGER, 
					CAN_TT_TX_REF_TRIGGER_GAP, 
					CAN_TT_TX_TRIGGER_EXCLUSIVE, 
					CAN_TT_TX_TRIGGER_MERGED, 
					CAN_TT_TX_TRIGGER_SINGLE
				}
				
				def CanTTHardwareObjectTriggerType getCanTTHardwareObjectTriggerTypeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CAN_TT_RX_TRIGGER" : CanTTHardwareObjectTriggerType.CAN_TT_RX_TRIGGER
						case "CAN_TT_TX_REF_TRIGGER" : CanTTHardwareObjectTriggerType.CAN_TT_TX_REF_TRIGGER
						case "CAN_TT_TX_REF_TRIGGER_GAP" : CanTTHardwareObjectTriggerType.CAN_TT_TX_REF_TRIGGER_GAP
						case "CAN_TT_TX_TRIGGER_EXCLUSIVE" : CanTTHardwareObjectTriggerType.CAN_TT_TX_TRIGGER_EXCLUSIVE
						case "CAN_TT_TX_TRIGGER_MERGED" : CanTTHardwareObjectTriggerType.CAN_TT_TX_TRIGGER_MERGED
						case "CAN_TT_TX_TRIGGER_SINGLE" : CanTTHardwareObjectTriggerType.CAN_TT_TX_TRIGGER_SINGLE
					}
				}
				
				def void setCanTTHardwareObjectTriggerTypeValue(GParameterValue parameterValue, CanTTHardwareObjectTriggerType value){
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
		}
		
		static class CanIcom implements IWrapper<GContainer> {
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
		        if (!(object instanceof CanIcom)){
					return false
				}
				this.target == (object as CanIcom).target
			}
		
			
			
			def List<CanIcomConfig> getCanIcomConfigs(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CanIcomConfig")
					}
				}
				return new BasicWrappingEList<CanIcomConfig, GContainer>(filteredContainers, typeof(CanIcomConfig), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Can.CanConfigSet.CanIcom.CanIcomConfig canIcomConfig) {
						canIcomConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CanIcomConfig"))
						super.delegateAdd(canIcomConfig)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Can.CanConfigSet.CanIcom.CanIcomConfig canIcomConfig) {
						canIcomConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CanIcomConfig"))
						super.delegateAdd(index, canIcomConfig)
					}
				}
			}
			
			
			static class CanIcomConfig implements IWrapper<GContainer> {
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
			        if (!(object instanceof CanIcomConfig)){
						return false
					}
					this.target == (object as CanIcomConfig).target
				}
			
				def BigInteger getCanIcomConfigId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomConfigId"].getBigIntegerValue()
				}
				
				def void setCanIcomConfigId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomConfigId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIcomConfigId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def Boolean getCanIcomWakeOnBusOff(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomWakeOnBusOff"].getBooleanValue()
				}
				
				def void setCanIcomWakeOnBusOff(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomWakeOnBusOff"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIcomWakeOnBusOff"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				
				
				def CanIcomWakeupCauses getCanIcomWakeupCauses(){
					containerValue.getByType(typeof(CanIcomWakeupCauses))
				}
				
				def void setCanIcomWakeupCauses(CanIcomWakeupCauses canIcomWakeupCauses){
					val GContainer subContainer = canIcomWakeupCauses.getTarget()
					containerValue.setContainer(subContainer, "CanIcomWakeupCauses")
				}
				
				
				static class CanIcomWakeupCauses implements IWrapper<GContainer> {
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
				        if (!(object instanceof CanIcomWakeupCauses)){
							return false
						}
						this.target == (object as CanIcomWakeupCauses).target
					}
				
					
					
					def List<CanIcomRxMessage> getCanIcomRxMessages(){
						val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
							override protected accept(GContainer item) {
								return accept(item, typeof(GContainerDef), "CanIcomRxMessage")
							}
						}
						return new BasicWrappingEList<CanIcomRxMessage, GContainer>(filteredContainers, typeof(CanIcomRxMessage), typeof(GContainer)) {
							override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Can.CanConfigSet.CanIcom.CanIcomConfig.CanIcomWakeupCauses.CanIcomRxMessage canIcomRxMessage) {
								canIcomRxMessage.target?.gSetDefinition(containerValue.getContainerDefinition("CanIcomRxMessage"))
								super.delegateAdd(canIcomRxMessage)
							}
					
							override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Can.CanConfigSet.CanIcom.CanIcomConfig.CanIcomWakeupCauses.CanIcomRxMessage canIcomRxMessage) {
								canIcomRxMessage.target?.gSetDefinition(containerValue.getContainerDefinition("CanIcomRxMessage"))
								super.delegateAdd(index, canIcomRxMessage)
							}
						}
					}
					
					
					static class CanIcomRxMessage implements IWrapper<GContainer> {
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
					        if (!(object instanceof CanIcomRxMessage)){
								return false
							}
							this.target == (object as CanIcomRxMessage).target
						}
					
						def BigInteger getCanIcomCounterValue(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomCounterValue"].getBigIntegerValue()
						}
						
						def void setCanIcomCounterValue(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomCounterValue"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIcomCounterValue"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						def BigInteger getCanIcomMessageId(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomMessageId"].getBigIntegerValue()
						}
						
						def void setCanIcomMessageId(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomMessageId"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIcomMessageId"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						def BigInteger getCanIcomMessageIdMask(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomMessageIdMask"].getBigIntegerValue()
						}
						
						def void setCanIcomMessageIdMask(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomMessageIdMask"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIcomMessageIdMask"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						def BigDecimal getCanIcomMissingMessageTimerValue(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomMissingMessageTimerValue"].getBigDecimalValue()
						}
						
						def void setCanIcomMissingMessageTimerValue(BigDecimal value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomMissingMessageTimerValue"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIcomMissingMessageTimerValue"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						def Boolean getCanIcomPayloadLengthError(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomPayloadLengthError"].getBooleanValue()
						}
						
						def void setCanIcomPayloadLengthError(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomPayloadLengthError"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIcomPayloadLengthError"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(getBooleanParameterValueValue(value, true))
						}
						
						
						
						def List<CanIcomRxMessageSignalConfig> getCanIcomRxMessageSignalConfigs(){
							val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
								override protected accept(GContainer item) {
									return accept(item, typeof(GContainerDef), "CanIcomRxMessageSignalConfig")
								}
							}
							return new BasicWrappingEList<CanIcomRxMessageSignalConfig, GContainer>(filteredContainers, typeof(CanIcomRxMessageSignalConfig), typeof(GContainer)) {
								override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Can.CanConfigSet.CanIcom.CanIcomConfig.CanIcomWakeupCauses.CanIcomRxMessage.CanIcomRxMessageSignalConfig canIcomRxMessageSignalConfig) {
									canIcomRxMessageSignalConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CanIcomRxMessageSignalConfig"))
									super.delegateAdd(canIcomRxMessageSignalConfig)
								}
						
								override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Can.CanConfigSet.CanIcom.CanIcomConfig.CanIcomWakeupCauses.CanIcomRxMessage.CanIcomRxMessageSignalConfig canIcomRxMessageSignalConfig) {
									canIcomRxMessageSignalConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CanIcomRxMessageSignalConfig"))
									super.delegateAdd(index, canIcomRxMessageSignalConfig)
								}
							}
						}
						
						
						static class CanIcomRxMessageSignalConfig implements IWrapper<GContainer> {
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
						        if (!(object instanceof CanIcomRxMessageSignalConfig)){
									return false
								}
								this.target == (object as CanIcomRxMessageSignalConfig).target
							}
						
							def BigInteger getCanIcomSignalMask(){
								containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomSignalMask"].getBigIntegerValue()
							}
							
							def void setCanIcomSignalMask(BigInteger value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomSignalMask"]
								if (parameterValue === null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIcomSignalMask"].createParameterValue()
										containerValue.gGetParameterValues += parameterValue
									}
								}
								parameterValue.setValue(value)
							}
							
							def CanIcomSignalOperation getCanIcomSignalOperation(){
								containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomSignalOperation"].getCanIcomSignalOperationValue()
							}
							
							def void setCanIcomSignalOperation(CanIcomSignalOperation value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomSignalOperation"]
								if (parameterValue === null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIcomSignalOperation"].createParameterValue()
										containerValue.gGetParameterValues += parameterValue
									}
								}
								parameterValue.setValue(value)
							}
							
							enum CanIcomSignalOperation {
								AND, 
								EQUAL, 
								GREATER, 
								SMALLER, 
								XOR
							}
							
							def CanIcomSignalOperation getCanIcomSignalOperationValue(GParameterValue parameterValue){
								val castedParameterValue = parameterValue as EcucTextualParamValue
								switch (castedParameterValue.value){
									case "AND" : CanIcomSignalOperation.AND
									case "EQUAL" : CanIcomSignalOperation.EQUAL
									case "GREATER" : CanIcomSignalOperation.GREATER
									case "SMALLER" : CanIcomSignalOperation.SMALLER
									case "XOR" : CanIcomSignalOperation.XOR
								}
							}
							
							def void setCanIcomSignalOperationValue(GParameterValue parameterValue, CanIcomSignalOperation value){
								parameterValue.setValue(value)
							}
							
							def BigInteger getCanIcomSignalValue(){
								containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomSignalValue"].getBigIntegerValue()
							}
							
							def void setCanIcomSignalValue(BigInteger value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomSignalValue"]
								if (parameterValue === null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIcomSignalValue"].createParameterValue()
										containerValue.gGetParameterValues += parameterValue
									}
								}
								parameterValue.setValue(value)
							}
							
							
							def org.artop.ecuc.autosar444.accessors.Com.ComConfig.ComSignal getCanIcomSignalRef(){
								containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Com.ComConfig.ComSignal), "CanIcomSignalRef")
							}
							
							def void setCanIcomSignalRef(org.artop.ecuc.autosar444.accessors.Com.ComConfig.ComSignal object){
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanIcomSignalRef"], object.getTarget())
								}
							}
							
							
							
						}
						
					}
					
				}
				
			}
			
		}
		
	}
	static class CanGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof CanGeneral)){
				return false
			}
			this.target == (object as CanGeneral).target
		}
	
		def Boolean getCanDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanDevErrorDetect"].getBooleanValue()
		}
		
		def void setCanDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getCanIndex(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIndex"].getBigIntegerValue()
		}
		
		def void setCanIndex(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIndex"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIndex"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def String getCanLPduReceiveCalloutFunction(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanLPduReceiveCalloutFunction"].getStringValue()
		}
		
		def void setCanLPduReceiveCalloutFunction(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanLPduReceiveCalloutFunction"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanLPduReceiveCalloutFunction"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getCanMainFunctionBusoffPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanMainFunctionBusoffPeriod"].getBigDecimalValue()
		}
		
		def void setCanMainFunctionBusoffPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanMainFunctionBusoffPeriod"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanMainFunctionBusoffPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getCanMainFunctionModePeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanMainFunctionModePeriod"].getBigDecimalValue()
		}
		
		def void setCanMainFunctionModePeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanMainFunctionModePeriod"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanMainFunctionModePeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getCanMainFunctionWakeupPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanMainFunctionWakeupPeriod"].getBigDecimalValue()
		}
		
		def void setCanMainFunctionWakeupPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanMainFunctionWakeupPeriod"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanMainFunctionWakeupPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getCanMultiplexedTransmission(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanMultiplexedTransmission"].getBooleanValue()
		}
		
		def void setCanMultiplexedTransmission(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanMultiplexedTransmission"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanMultiplexedTransmission"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanPublicIcomSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanPublicIcomSupport"].getBooleanValue()
		}
		
		def void setCanPublicIcomSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanPublicIcomSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanPublicIcomSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanSetBaudrateApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSetBaudrateApi"].getBooleanValue()
		}
		
		def void setCanSetBaudrateApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSetBaudrateApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanSetBaudrateApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getCanTimeoutDuration(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTimeoutDuration"].getBigDecimalValue()
		}
		
		def void setCanTimeoutDuration(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTimeoutDuration"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTimeoutDuration"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getCanVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanVersionInfoApi"].getBooleanValue()
		}
		
		def void setCanVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		def org.artop.ecuc.autosar444.accessors.Os.OsCounter getCanOsCounterRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Os.OsCounter), "CanOsCounterRef")
		}
		
		def void setCanOsCounterRef(org.artop.ecuc.autosar444.accessors.Os.OsCounter object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanOsCounterRef"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar444.accessors.CanIf.CanIfPrivateCfg getCanSupportTTCANRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.CanIf.CanIfPrivateCfg), "CanSupportTTCANRef")
		}
		
		def void setCanSupportTTCANRef(org.artop.ecuc.autosar444.accessors.CanIf.CanIfPrivateCfg object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanSupportTTCANRef"], object.getTarget())
			}
		}
		
		
		def CanIcomGeneral getCanIcomGeneral(){
			containerValue.getByType(typeof(CanIcomGeneral))
		}
		
		def void setCanIcomGeneral(CanIcomGeneral canIcomGeneral){
			val GContainer subContainer = canIcomGeneral.getTarget()
			containerValue.setContainer(subContainer, "CanIcomGeneral")
		}
		
		def List<CanMainFunctionRWPeriods> getCanMainFunctionRWPeriods(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CanMainFunctionRWPeriods")
				}
			}
			return new BasicWrappingEList<CanMainFunctionRWPeriods, GContainer>(filteredContainers, typeof(CanMainFunctionRWPeriods), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Can.CanGeneral.CanMainFunctionRWPeriods canMainFunctionRWPeriods) {
					canMainFunctionRWPeriods.target?.gSetDefinition(containerValue.getContainerDefinition("CanMainFunctionRWPeriods"))
					super.delegateAdd(canMainFunctionRWPeriods)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Can.CanGeneral.CanMainFunctionRWPeriods canMainFunctionRWPeriods) {
					canMainFunctionRWPeriods.target?.gSetDefinition(containerValue.getContainerDefinition("CanMainFunctionRWPeriods"))
					super.delegateAdd(index, canMainFunctionRWPeriods)
				}
			}
		}
		
		
		static class CanIcomGeneral implements IWrapper<GContainer> {
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
		        if (!(object instanceof CanIcomGeneral)){
					return false
				}
				this.target == (object as CanIcomGeneral).target
			}
		
			def CanIcomLevel getCanIcomLevel(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomLevel"].getCanIcomLevelValue()
			}
			
			def void setCanIcomLevel(CanIcomLevel value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomLevel"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIcomLevel"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum CanIcomLevel {
				CAN_ICOM_LEVEL_ONE, 
				CAN_ICOM_LEVEL_TWO
			}
			
			def CanIcomLevel getCanIcomLevelValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "CAN_ICOM_LEVEL_ONE" : CanIcomLevel.CAN_ICOM_LEVEL_ONE
					case "CAN_ICOM_LEVEL_TWO" : CanIcomLevel.CAN_ICOM_LEVEL_TWO
				}
			}
			
			def void setCanIcomLevelValue(GParameterValue parameterValue, CanIcomLevel value){
				parameterValue.setValue(value)
			}
			
			def CanIcomVariant getCanIcomVariant(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomVariant"].getCanIcomVariantValue()
			}
			
			def void setCanIcomVariant(CanIcomVariant value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanIcomVariant"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanIcomVariant"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum CanIcomVariant {
				CAN_ICOM_VARIANT_HW, 
				CAN_ICOM_VARIANT_NONE, 
				CAN_ICOM_VARIANT_SW
			}
			
			def CanIcomVariant getCanIcomVariantValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "CAN_ICOM_VARIANT_HW" : CanIcomVariant.CAN_ICOM_VARIANT_HW
					case "CAN_ICOM_VARIANT_NONE" : CanIcomVariant.CAN_ICOM_VARIANT_NONE
					case "CAN_ICOM_VARIANT_SW" : CanIcomVariant.CAN_ICOM_VARIANT_SW
				}
			}
			
			def void setCanIcomVariantValue(GParameterValue parameterValue, CanIcomVariant value){
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
		static class CanMainFunctionRWPeriods implements IWrapper<GContainer> {
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
		        if (!(object instanceof CanMainFunctionRWPeriods)){
					return false
				}
				this.target == (object as CanMainFunctionRWPeriods).target
			}
		
			def BigDecimal getCanMainFunctionPeriod(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanMainFunctionPeriod"].getBigDecimalValue()
			}
			
			def void setCanMainFunctionPeriod(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanMainFunctionPeriod"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanMainFunctionPeriod"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof Can)){
			return false
		}
		this.target == (object as Can).target
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
