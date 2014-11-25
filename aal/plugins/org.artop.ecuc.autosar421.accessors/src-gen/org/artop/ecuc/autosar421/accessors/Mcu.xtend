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
import gautosar.gecucparameterdef.GContainerDef
import gautosar.gecucparameterdef.GParamConfContainerDef
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable
import static extension org.artop.ecuc.gautosar.accessors.lib.EcucValueAccessorUtil.*
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EStructuralFeature
import org.eclipse.sphinx.emf.util.AbstractUnwrappingEList
import org.eclipse.core.runtime.CoreException

class Mcu implements BasicWrappingEList.IWrapper<GModuleConfiguration> {
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
	
	def McuGeneralConfiguration getMcuGeneralConfiguration(){
		moduleConfiguration.getByType(typeof(McuGeneralConfiguration))
	}
	
	def void setMcuGeneralConfiguration(McuGeneralConfiguration mcuGeneralConfiguration){
		val GContainer container = mcuGeneralConfiguration.getTarget() 
	    moduleConfiguration.setContainer(container, "McuGeneralConfiguration")
	}
	def McuModuleConfiguration getMcuModuleConfiguration(){
		moduleConfiguration.getByType(typeof(McuModuleConfiguration))
	}
	
	def void setMcuModuleConfiguration(McuModuleConfiguration mcuModuleConfiguration){
		val GContainer container = mcuModuleConfiguration.getTarget() 
	    moduleConfiguration.setContainer(container, "McuModuleConfiguration")
	}
	def McuPublishedInformation getMcuPublishedInformation(){
		moduleConfiguration.getByType(typeof(McuPublishedInformation))
	}
	
	def void setMcuPublishedInformation(McuPublishedInformation mcuPublishedInformation){
		val GContainer container = mcuPublishedInformation.getTarget() 
	    moduleConfiguration.setContainer(container, "McuPublishedInformation")
	}
	
	static class McuGeneralConfiguration implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		def Boolean getMcuDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuDevErrorDetect"])
		}
		
		def void setMcuDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "McuDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getMcuGetRamStateApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuGetRamStateApi"])
		}
		
		def void setMcuGetRamStateApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuGetRamStateApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "McuGetRamStateApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getMcuInitClock(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuInitClock"])
		}
		
		def void setMcuInitClock(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuInitClock"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "McuInitClock"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getMcuNoPll(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuNoPll"])
		}
		
		def void setMcuNoPll(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuNoPll"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "McuNoPll"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getMcuPerformResetApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuPerformResetApi"])
		}
		
		def void setMcuPerformResetApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuPerformResetApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "McuPerformResetApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getMcuVersionInfoApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuVersionInfoApi"])
		}
		
		def void setMcuVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "McuVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		
		
		
	}
	static class McuModuleConfiguration implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		def McuClockSrcFailureNotification getMcuClockSrcFailureNotification(){
			getMcuClockSrcFailureNotificationValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuClockSrcFailureNotification"])
		}
		
		def void setMcuClockSrcFailureNotification(McuClockSrcFailureNotification value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuClockSrcFailureNotification"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "McuClockSrcFailureNotification"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum McuClockSrcFailureNotification {
			DISABLED, 
			ENABLED
		}
			
		def McuClockSrcFailureNotification getMcuClockSrcFailureNotificationValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "DISABLED" : McuClockSrcFailureNotification.DISABLED
				case "ENABLED" : McuClockSrcFailureNotification.ENABLED
			}
		}
		
		def void setMcuClockSrcFailureNotificationValue(GParameterValue paramValue, McuClockSrcFailureNotification value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def Integer getMcuNumberOfMcuModes(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuNumberOfMcuModes"])
		}
		
		def void setMcuNumberOfMcuModes(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuNumberOfMcuModes"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "McuNumberOfMcuModes"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getMcuRamSectors(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuRamSectors"])
		}
		
		def void setMcuRamSectors(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuRamSectors"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "McuRamSectors"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getMcuResetSetting(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuResetSetting"])
		}
		
		def void setMcuResetSetting(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuResetSetting"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "McuResetSetting"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<McuClockSettingConfig> getMcuClockSettingConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "McuClockSettingConfig")
				}
			}
			return new BasicWrappingEList<McuClockSettingConfig, GContainer>(filteredContainers, typeof(McuClockSettingConfig), typeof(GContainer))
		}
		
		def McuDemEventParameterRefs getMcuDemEventParameterRefs(){
			containerValue.getByType(typeof(McuDemEventParameterRefs))
		}
		
		def void setMcuDemEventParameterRefs(GContainer subContainer){
			containerValue.setContainer(subContainer, "McuDemEventParameterRefs")
		}
		
		def List<McuModeSettingConf> getMcuModeSettingConfs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "McuModeSettingConf")
				}
			}
			return new BasicWrappingEList<McuModeSettingConf, GContainer>(filteredContainers, typeof(McuModeSettingConf), typeof(GContainer))
		}
		
		def List<McuRamSectorSettingConf> getMcuRamSectorSettingConfs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "McuRamSectorSettingConf")
				}
			}
			return new BasicWrappingEList<McuRamSectorSettingConf, GContainer>(filteredContainers, typeof(McuRamSectorSettingConf), typeof(GContainer))
		}
		
		
		static class McuClockSettingConfig implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Integer getMcuClockSettingId(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuClockSettingId"])
			}
			
			def void setMcuClockSettingId(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuClockSettingId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "McuClockSettingId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			
			def List<McuClockReferencePoint> getMcuClockReferencePoints(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "McuClockReferencePoint")
					}
				}
				return new BasicWrappingEList<McuClockReferencePoint, GContainer>(filteredContainers, typeof(McuClockReferencePoint), typeof(GContainer))
			}
			
			
			static class McuClockReferencePoint implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def Float getMcuClockReferencePointFrequency(){
					EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuClockReferencePointFrequency"])
				}
				
				def void setMcuClockReferencePointFrequency(Float value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuClockReferencePointFrequency"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "McuClockReferencePointFrequency"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				
				
			}
			
		}
		
		static class McuDemEventParameterRefs implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getMCU_E_CLOCK_FAILURE(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "MCU_E_CLOCK_FAILURE")
			}
					
			def void setMCU_E_CLOCK_FAILURE(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "MCU_E_CLOCK_FAILURE"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class McuModeSettingConf implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Integer getMcuMode(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuMode"])
			}
			
			def void setMcuMode(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuMode"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "McuMode"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
		static class McuRamSectorSettingConf implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Integer getMcuRamDefaultValue(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuRamDefaultValue"])
			}
			
			def void setMcuRamDefaultValue(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuRamDefaultValue"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "McuRamDefaultValue"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getMcuRamSectionBaseAddress(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuRamSectionBaseAddress"])
			}
			
			def void setMcuRamSectionBaseAddress(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuRamSectionBaseAddress"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "McuRamSectionBaseAddress"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getMcuRamSectionSize(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuRamSectionSize"])
			}
			
			def void setMcuRamSectionSize(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuRamSectionSize"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "McuRamSectionSize"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class McuPublishedInformation implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		
		
		def List<McuResetReasonConf> getMcuResetReasonConfs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "McuResetReasonConf")
				}
			}
			return new BasicWrappingEList<McuResetReasonConf, GContainer>(filteredContainers, typeof(McuResetReasonConf), typeof(GContainer))
		}
		
		
		static class McuResetReasonConf implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Integer getMcuResetReason(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuResetReason"])
			}
			
			def void setMcuResetReason(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuResetReason"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "McuResetReason"])
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