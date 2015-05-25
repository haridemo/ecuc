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
import org.artop.ecuc.autosar421.accessors.lib.BigIntegerValueUnwrappingEList
import org.artop.ecuc.autosar421.accessors.lib.BigDecimalValueUnwrappingEList
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
import java.math.BigInteger
import java.math.BigDecimal

class Mcu implements IWrapper<GModuleConfiguration> {
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
	
	static class McuGeneralConfiguration implements IWrapper<GContainer> {
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
	        if (!(object instanceof McuGeneralConfiguration)){
				return false
			}
			this.target == (object as McuGeneralConfiguration).target
		}
		
		def Boolean getMcuDevErrorDetect(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuDevErrorDetect"])
		}
		
		def void setMcuDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "McuDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getMcuGetRamStateApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuGetRamStateApi"])
		}
		
		def void setMcuGetRamStateApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuGetRamStateApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "McuGetRamStateApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getMcuInitClock(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuInitClock"])
		}
		
		def void setMcuInitClock(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuInitClock"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "McuInitClock"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getMcuNoPll(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuNoPll"])
		}
		
		def void setMcuNoPll(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuNoPll"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "McuNoPll"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getMcuPerformResetApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuPerformResetApi"])
		}
		
		def void setMcuPerformResetApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuPerformResetApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "McuPerformResetApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getMcuVersionInfoApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuVersionInfoApi"])
		}
		
		def void setMcuVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "McuVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}
	static class McuModuleConfiguration implements IWrapper<GContainer> {
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
	        if (!(object instanceof McuModuleConfiguration)){
				return false
			}
			this.target == (object as McuModuleConfiguration).target
		}
		
		def McuClockSrcFailureNotification getMcuClockSrcFailureNotification(){
			getMcuClockSrcFailureNotificationValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuClockSrcFailureNotification"])
		}
		
		def void setMcuClockSrcFailureNotification(McuClockSrcFailureNotification value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuClockSrcFailureNotification"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "McuClockSrcFailureNotification"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		def BigInteger getMcuNumberOfMcuModes(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuNumberOfMcuModes"])
		}
		
		def void setMcuNumberOfMcuModes(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuNumberOfMcuModes"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "McuNumberOfMcuModes"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getMcuRamSectors(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuRamSectors"])
		}
		
		def void setMcuRamSectors(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuRamSectors"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "McuRamSectors"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getMcuResetSetting(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuResetSetting"])
		}
		
		def void setMcuResetSetting(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuResetSetting"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "McuResetSetting"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<McuClockSettingConfig> getMcuClockSettingConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "McuClockSettingConfig")
				}
			}
			return new BasicWrappingEList<McuClockSettingConfig, GContainer>(filteredContainers, typeof(McuClockSettingConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Mcu$McuModuleConfiguration$McuClockSettingConfig mcuClockSettingConfig) {
					mcuClockSettingConfig.target?.gSetDefinition(containerValue.getContainerDefinition("McuClockSettingConfig"))
					super.delegateAdd(mcuClockSettingConfig)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Mcu$McuModuleConfiguration$McuClockSettingConfig mcuClockSettingConfig) {
					mcuClockSettingConfig.target?.gSetDefinition(containerValue.getContainerDefinition("McuClockSettingConfig"))
					super.delegateAdd(index, mcuClockSettingConfig)
				}	
			}
		}
		
		def McuDemEventParameterRefs getMcuDemEventParameterRefs(){
			containerValue.getByType(typeof(McuDemEventParameterRefs))
		}
		
		def void setMcuDemEventParameterRefs(McuDemEventParameterRefs mcuDemEventParameterRefs){
			val GContainer subContainer = mcuDemEventParameterRefs.getTarget()
			containerValue.setContainer(subContainer, "McuDemEventParameterRefs")
		}
		
		def List<McuModeSettingConf> getMcuModeSettingConfs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "McuModeSettingConf")
				}
			}
			return new BasicWrappingEList<McuModeSettingConf, GContainer>(filteredContainers, typeof(McuModeSettingConf), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Mcu$McuModuleConfiguration$McuModeSettingConf mcuModeSettingConf) {
					mcuModeSettingConf.target?.gSetDefinition(containerValue.getContainerDefinition("McuModeSettingConf"))
					super.delegateAdd(mcuModeSettingConf)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Mcu$McuModuleConfiguration$McuModeSettingConf mcuModeSettingConf) {
					mcuModeSettingConf.target?.gSetDefinition(containerValue.getContainerDefinition("McuModeSettingConf"))
					super.delegateAdd(index, mcuModeSettingConf)
				}	
			}
		}
		
		def List<McuRamSectorSettingConf> getMcuRamSectorSettingConfs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "McuRamSectorSettingConf")
				}
			}
			return new BasicWrappingEList<McuRamSectorSettingConf, GContainer>(filteredContainers, typeof(McuRamSectorSettingConf), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Mcu$McuModuleConfiguration$McuRamSectorSettingConf mcuRamSectorSettingConf) {
					mcuRamSectorSettingConf.target?.gSetDefinition(containerValue.getContainerDefinition("McuRamSectorSettingConf"))
					super.delegateAdd(mcuRamSectorSettingConf)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Mcu$McuModuleConfiguration$McuRamSectorSettingConf mcuRamSectorSettingConf) {
					mcuRamSectorSettingConf.target?.gSetDefinition(containerValue.getContainerDefinition("McuRamSectorSettingConf"))
					super.delegateAdd(index, mcuRamSectorSettingConf)
				}	
			}
		}
		
		
		static class McuClockSettingConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof McuClockSettingConfig)){
					return false
				}
				this.target == (object as McuClockSettingConfig).target
			}
			
			def BigInteger getMcuClockSettingId(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuClockSettingId"])
			}
			
			def void setMcuClockSettingId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuClockSettingId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "McuClockSettingId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			def List<McuClockReferencePoint> getMcuClockReferencePoints(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "McuClockReferencePoint")
					}
				}
				return new BasicWrappingEList<McuClockReferencePoint, GContainer>(filteredContainers, typeof(McuClockReferencePoint), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Mcu$McuModuleConfiguration$McuClockSettingConfig$McuClockReferencePoint mcuClockReferencePoint) {
						mcuClockReferencePoint.target?.gSetDefinition(containerValue.getContainerDefinition("McuClockReferencePoint"))
						super.delegateAdd(mcuClockReferencePoint)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Mcu$McuModuleConfiguration$McuClockSettingConfig$McuClockReferencePoint mcuClockReferencePoint) {
						mcuClockReferencePoint.target?.gSetDefinition(containerValue.getContainerDefinition("McuClockReferencePoint"))
						super.delegateAdd(index, mcuClockReferencePoint)
					}	
				}
			}
			
			
			static class McuClockReferencePoint implements IWrapper<GContainer> {
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
			        if (!(object instanceof McuClockReferencePoint)){
						return false
					}
					this.target == (object as McuClockReferencePoint).target
				}
				
				def BigDecimal getMcuClockReferencePointFrequency(){
					EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuClockReferencePointFrequency"])
				}
				
				def void setMcuClockReferencePointFrequency(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuClockReferencePointFrequency"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "McuClockReferencePointFrequency"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				
				
			}
			
		}
		
		static class McuDemEventParameterRefs implements IWrapper<GContainer> {
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
		        if (!(object instanceof McuDemEventParameterRefs)){
					return false
				}
				this.target == (object as McuDemEventParameterRefs).target
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
		
		static class McuModeSettingConf implements IWrapper<GContainer> {
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
		        if (!(object instanceof McuModeSettingConf)){
					return false
				}
				this.target == (object as McuModeSettingConf).target
			}
			
			def BigInteger getMcuMode(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuMode"])
			}
			
			def void setMcuMode(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuMode"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "McuMode"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
		static class McuRamSectorSettingConf implements IWrapper<GContainer> {
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
		        if (!(object instanceof McuRamSectorSettingConf)){
					return false
				}
				this.target == (object as McuRamSectorSettingConf).target
			}
			
			def BigInteger getMcuRamDefaultValue(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuRamDefaultValue"])
			}
			
			def void setMcuRamDefaultValue(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuRamDefaultValue"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "McuRamDefaultValue"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getMcuRamSectionBaseAddress(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuRamSectionBaseAddress"])
			}
			
			def void setMcuRamSectionBaseAddress(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuRamSectionBaseAddress"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "McuRamSectionBaseAddress"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getMcuRamSectionSize(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuRamSectionSize"])
			}
			
			def void setMcuRamSectionSize(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuRamSectionSize"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "McuRamSectionSize"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class McuPublishedInformation implements IWrapper<GContainer> {
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
	        if (!(object instanceof McuPublishedInformation)){
				return false
			}
			this.target == (object as McuPublishedInformation).target
		}
		
		
		
		def List<McuResetReasonConf> getMcuResetReasonConfs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "McuResetReasonConf")
				}
			}
			return new BasicWrappingEList<McuResetReasonConf, GContainer>(filteredContainers, typeof(McuResetReasonConf), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Mcu$McuPublishedInformation$McuResetReasonConf mcuResetReasonConf) {
					mcuResetReasonConf.target?.gSetDefinition(containerValue.getContainerDefinition("McuResetReasonConf"))
					super.delegateAdd(mcuResetReasonConf)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Mcu$McuPublishedInformation$McuResetReasonConf mcuResetReasonConf) {
					mcuResetReasonConf.target?.gSetDefinition(containerValue.getContainerDefinition("McuResetReasonConf"))
					super.delegateAdd(index, mcuResetReasonConf)
				}	
			}
		}
		
		
		static class McuResetReasonConf implements IWrapper<GContainer> {
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
		        if (!(object instanceof McuResetReasonConf)){
					return false
				}
				this.target == (object as McuResetReasonConf).target
			}
			
			def BigInteger getMcuResetReason(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuResetReason"])
			}
			
			def void setMcuResetReason(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "McuResetReason"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "McuResetReason"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	
	override def boolean equals(Object object) {
        if (!(object instanceof Mcu)){
			return false
		}
		this.target == (object as Mcu).target
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
