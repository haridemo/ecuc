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

class Gpt implements BasicWrappingEList.IWrapper<GModuleConfiguration> {
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
	
	def GptChannelConfigSet getGptChannelConfigSet(){
		moduleConfiguration.getByType(typeof(GptChannelConfigSet))
	}
	
	def void setGptChannelConfigSet(GptChannelConfigSet gptChannelConfigSet){
		val GContainer container = gptChannelConfigSet.getTarget() 
	    moduleConfiguration.setContainer(container, "GptChannelConfigSet")
	}
	def GptConfigurationOfOptApiServices getGptConfigurationOfOptApiServices(){
		moduleConfiguration.getByType(typeof(GptConfigurationOfOptApiServices))
	}
	
	def void setGptConfigurationOfOptApiServices(GptConfigurationOfOptApiServices gptConfigurationOfOptApiServices){
		val GContainer container = gptConfigurationOfOptApiServices.getTarget() 
	    moduleConfiguration.setContainer(container, "GptConfigurationOfOptApiServices")
	}
	def GptDriverConfiguration getGptDriverConfiguration(){
		moduleConfiguration.getByType(typeof(GptDriverConfiguration))
	}
	
	def void setGptDriverConfiguration(GptDriverConfiguration gptDriverConfiguration){
		val GContainer container = gptDriverConfiguration.getTarget() 
	    moduleConfiguration.setContainer(container, "GptDriverConfiguration")
	}
	
	static class GptChannelConfigSet implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		
		
		def List<GptChannelConfiguration> getGptChannelConfigurations(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "GptChannelConfiguration")
				}
			}
			return new BasicWrappingEList<GptChannelConfiguration, GContainer>(filteredContainers, typeof(GptChannelConfiguration), typeof(GContainer))
		}
		
		
		static class GptChannelConfiguration implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Integer getGptChannelId(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptChannelId"])
			}
			
			def void setGptChannelId(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptChannelId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "GptChannelId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def GptChannelMode getGptChannelMode(){
				getGptChannelModeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptChannelMode"])
			}
			
			def void setGptChannelMode(GptChannelMode value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptChannelMode"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "GptChannelMode"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum GptChannelMode {
				GPT_CH_MODE_CONTINUOUS, 
				GPT_CH_MODE_ONESHOT
			}
				
			def GptChannelMode getGptChannelModeValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "GPT_CH_MODE_CONTINUOUS" : GptChannelMode.GPT_CH_MODE_CONTINUOUS
					case "GPT_CH_MODE_ONESHOT" : GptChannelMode.GPT_CH_MODE_ONESHOT
				}
			}
			
			def void setGptChannelModeValue(GParameterValue paramValue, GptChannelMode value){
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def Float getGptChannelTickFrequency(){
				EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptChannelTickFrequency"])
			}
			
			def void setGptChannelTickFrequency(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptChannelTickFrequency"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "GptChannelTickFrequency"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getGptChannelTickValueMax(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptChannelTickValueMax"])
			}
			
			def void setGptChannelTickValueMax(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptChannelTickValueMax"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "GptChannelTickValueMax"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getGptEnableWakeup(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptEnableWakeup"])
			}
			
			def void setGptEnableWakeup(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptEnableWakeup"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "GptEnableWakeup"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def String getGptNotification(){
				EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptNotification"])
			}
			
			def void setGptNotification(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptNotification"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "GptNotification"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.Gpt.GptDriverConfiguration.GptClockReferencePoint getGptChannelClkSrcRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Gpt.GptDriverConfiguration.GptClockReferencePoint), "GptChannelClkSrcRef")
			}
					
			def void setGptChannelClkSrcRef(org.artop.ecuc.autosar421.accessors.Gpt.GptDriverConfiguration.GptClockReferencePoint object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "GptChannelClkSrcRef"], object.getTarget())
				}
			}
			
			
			def GptWakeupConfiguration getGptWakeupConfiguration(){
				containerValue.getByType(typeof(GptWakeupConfiguration))
			}
			
			def void setGptWakeupConfiguration(GContainer subContainer){
				containerValue.setContainer(subContainer, "GptWakeupConfiguration")
			}
			
			
			static class GptWakeupConfiguration implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				
				def org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource getGptWakeupSourceRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource), "GptWakeupSourceRef")
				}
						
				def void setGptWakeupSourceRef(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "GptWakeupSourceRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
	}
	static class GptConfigurationOfOptApiServices implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		def Boolean getGptDeinitApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptDeinitApi"])
		}
		
		def void setGptDeinitApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptDeinitApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "GptDeinitApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getGptEnableDisableNotificationApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptEnableDisableNotificationApi"])
		}
		
		def void setGptEnableDisableNotificationApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptEnableDisableNotificationApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "GptEnableDisableNotificationApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getGptTimeElapsedApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptTimeElapsedApi"])
		}
		
		def void setGptTimeElapsedApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptTimeElapsedApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "GptTimeElapsedApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getGptTimeRemainingApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptTimeRemainingApi"])
		}
		
		def void setGptTimeRemainingApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptTimeRemainingApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "GptTimeRemainingApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getGptVersionInfoApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptVersionInfoApi"])
		}
		
		def void setGptVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "GptVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getGptWakeupFunctionalityApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptWakeupFunctionalityApi"])
		}
		
		def void setGptWakeupFunctionalityApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptWakeupFunctionalityApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "GptWakeupFunctionalityApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		
		
		
	}
	static class GptDriverConfiguration implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		def Boolean getGptDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptDevErrorDetect"])
		}
		
		def void setGptDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "GptDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getGptPredefTimer100us32bitEnable(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptPredefTimer100us32bitEnable"])
		}
		
		def void setGptPredefTimer100us32bitEnable(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptPredefTimer100us32bitEnable"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "GptPredefTimer100us32bitEnable"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def GptPredefTimer1usEnablingGrade getGptPredefTimer1usEnablingGrade(){
			getGptPredefTimer1usEnablingGradeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptPredefTimer1usEnablingGrade"])
		}
		
		def void setGptPredefTimer1usEnablingGrade(GptPredefTimer1usEnablingGrade value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptPredefTimer1usEnablingGrade"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "GptPredefTimer1usEnablingGrade"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum GptPredefTimer1usEnablingGrade {
			GPT_PREDEF_TIMER_1US_16BIT_ENABLED, 
			GPT_PREDEF_TIMER_1US_16_24BIT_ENABLED, 
			GPT_PREDEF_TIMER_1US_16_24_32BIT_ENABLED, 
			GPT_PREDEF_TIMER_1US_DISABLED
		}
			
		def GptPredefTimer1usEnablingGrade getGptPredefTimer1usEnablingGradeValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "GPT_PREDEF_TIMER_1US_16BIT_ENABLED" : GptPredefTimer1usEnablingGrade.GPT_PREDEF_TIMER_1US_16BIT_ENABLED
				case "GPT_PREDEF_TIMER_1US_16_24BIT_ENABLED" : GptPredefTimer1usEnablingGrade.GPT_PREDEF_TIMER_1US_16_24BIT_ENABLED
				case "GPT_PREDEF_TIMER_1US_16_24_32BIT_ENABLED" : GptPredefTimer1usEnablingGrade.GPT_PREDEF_TIMER_1US_16_24_32BIT_ENABLED
				case "GPT_PREDEF_TIMER_1US_DISABLED" : GptPredefTimer1usEnablingGrade.GPT_PREDEF_TIMER_1US_DISABLED
			}
		}
		
		def void setGptPredefTimer1usEnablingGradeValue(GParameterValue paramValue, GptPredefTimer1usEnablingGrade value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def Boolean getGptReportWakeupSource(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptReportWakeupSource"])
		}
		
		def void setGptReportWakeupSource(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptReportWakeupSource"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "GptReportWakeupSource"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<GptClockReferencePoint> getGptClockReferencePoints(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "GptClockReferencePoint")
				}
			}
			return new BasicWrappingEList<GptClockReferencePoint, GContainer>(filteredContainers, typeof(GptClockReferencePoint), typeof(GContainer))
		}
		
		
		static class GptClockReferencePoint implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			
			def org.artop.ecuc.autosar421.accessors.Mcu.McuModuleConfiguration.McuClockSettingConfig.McuClockReferencePoint getGptClockReference(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Mcu.McuModuleConfiguration.McuClockSettingConfig.McuClockReferencePoint), "GptClockReference")
			}
					
			def void setGptClockReference(org.artop.ecuc.autosar421.accessors.Mcu.McuModuleConfiguration.McuClockSettingConfig.McuClockReferencePoint object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "GptClockReference"], object.getTarget())
				}
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