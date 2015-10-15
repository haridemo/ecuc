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
package org.artop.ecuc.autosar422.accessors

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

class Gpt implements IWrapper<GModuleConfiguration> {
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

	static class GptChannelConfigSet implements IWrapper<GContainer> {
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
	        if (!(object instanceof GptChannelConfigSet)){
				return false
			}
			this.target == (object as GptChannelConfigSet).target
		}
	
		
		
		def List<GptChannelConfiguration> getGptChannelConfigurations(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "GptChannelConfiguration")
				}
			}
			return new BasicWrappingEList<GptChannelConfiguration, GContainer>(filteredContainers, typeof(GptChannelConfiguration), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.Gpt.GptChannelConfigSet.GptChannelConfiguration gptChannelConfiguration) {
					gptChannelConfiguration.target?.gSetDefinition(containerValue.getContainerDefinition("GptChannelConfiguration"))
					super.delegateAdd(gptChannelConfiguration)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.Gpt.GptChannelConfigSet.GptChannelConfiguration gptChannelConfiguration) {
					gptChannelConfiguration.target?.gSetDefinition(containerValue.getContainerDefinition("GptChannelConfiguration"))
					super.delegateAdd(index, gptChannelConfiguration)
				}
			}
		}
		
		
		static class GptChannelConfiguration implements IWrapper<GContainer> {
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
		        if (!(object instanceof GptChannelConfiguration)){
					return false
				}
				this.target == (object as GptChannelConfiguration).target
			}
		
			def BigInteger getGptChannelId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptChannelId"].getBigIntegerValue()
			}
			
			def void setGptChannelId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptChannelId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "GptChannelId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def GptChannelMode getGptChannelMode(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptChannelMode"].getGptChannelModeValue()
			}
			
			def void setGptChannelMode(GptChannelMode value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptChannelMode"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "GptChannelMode"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum GptChannelMode {
				GPT_CH_MODE_CONTINUOUS, 
				GPT_CH_MODE_ONESHOT
			}
			
			def GptChannelMode getGptChannelModeValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "GPT_CH_MODE_CONTINUOUS" : GptChannelMode.GPT_CH_MODE_CONTINUOUS
					case "GPT_CH_MODE_ONESHOT" : GptChannelMode.GPT_CH_MODE_ONESHOT
				}
			}
			
			def void setGptChannelModeValue(GParameterValue parameterValue, GptChannelMode value){
				parameterValue.setValue(value)
			}
			
			def BigDecimal getGptChannelTickFrequency(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptChannelTickFrequency"].getBigDecimalValue()
			}
			
			def void setGptChannelTickFrequency(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptChannelTickFrequency"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "GptChannelTickFrequency"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getGptChannelTickValueMax(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptChannelTickValueMax"].getBigIntegerValue()
			}
			
			def void setGptChannelTickValueMax(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptChannelTickValueMax"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "GptChannelTickValueMax"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getGptEnableWakeup(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptEnableWakeup"].getBooleanValue()
			}
			
			def void setGptEnableWakeup(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptEnableWakeup"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "GptEnableWakeup"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def String getGptNotification(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptNotification"].getStringValue()
			}
			
			def void setGptNotification(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptNotification"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "GptNotification"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar422.accessors.Gpt.GptDriverConfiguration.GptClockReferencePoint getGptChannelClkSrcRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar422.accessors.Gpt.GptDriverConfiguration.GptClockReferencePoint), "GptChannelClkSrcRef")
			}
			
			def void setGptChannelClkSrcRef(org.artop.ecuc.autosar422.accessors.Gpt.GptDriverConfiguration.GptClockReferencePoint object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "GptChannelClkSrcRef"], object.getTarget())
				}
			}
			
			
			def GptWakeupConfiguration getGptWakeupConfiguration(){
				containerValue.getByType(typeof(GptWakeupConfiguration))
			}
			
			def void setGptWakeupConfiguration(GptWakeupConfiguration gptWakeupConfiguration){
				val GContainer subContainer = gptWakeupConfiguration.getTarget()
				containerValue.setContainer(subContainer, "GptWakeupConfiguration")
			}
			
			
			static class GptWakeupConfiguration implements IWrapper<GContainer> {
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
			        if (!(object instanceof GptWakeupConfiguration)){
						return false
					}
					this.target == (object as GptWakeupConfiguration).target
				}
			
				
				def org.artop.ecuc.autosar422.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource getGptWakeupSourceRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar422.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource), "GptWakeupSourceRef")
				}
				
				def void setGptWakeupSourceRef(org.artop.ecuc.autosar422.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "GptWakeupSourceRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
	}
	static class GptConfigurationOfOptApiServices implements IWrapper<GContainer> {
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
	        if (!(object instanceof GptConfigurationOfOptApiServices)){
				return false
			}
			this.target == (object as GptConfigurationOfOptApiServices).target
		}
	
		def Boolean getGptDeinitApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptDeinitApi"].getBooleanValue()
		}
		
		def void setGptDeinitApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptDeinitApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "GptDeinitApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getGptEnableDisableNotificationApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptEnableDisableNotificationApi"].getBooleanValue()
		}
		
		def void setGptEnableDisableNotificationApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptEnableDisableNotificationApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "GptEnableDisableNotificationApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getGptTimeElapsedApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptTimeElapsedApi"].getBooleanValue()
		}
		
		def void setGptTimeElapsedApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptTimeElapsedApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "GptTimeElapsedApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getGptTimeRemainingApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptTimeRemainingApi"].getBooleanValue()
		}
		
		def void setGptTimeRemainingApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptTimeRemainingApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "GptTimeRemainingApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getGptVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptVersionInfoApi"].getBooleanValue()
		}
		
		def void setGptVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "GptVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getGptWakeupFunctionalityApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptWakeupFunctionalityApi"].getBooleanValue()
		}
		
		def void setGptWakeupFunctionalityApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptWakeupFunctionalityApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "GptWakeupFunctionalityApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}
	static class GptDriverConfiguration implements IWrapper<GContainer> {
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
	        if (!(object instanceof GptDriverConfiguration)){
				return false
			}
			this.target == (object as GptDriverConfiguration).target
		}
	
		def Boolean getGptDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptDevErrorDetect"].getBooleanValue()
		}
		
		def void setGptDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "GptDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getGptPredefTimer100us32bitEnable(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptPredefTimer100us32bitEnable"].getBooleanValue()
		}
		
		def void setGptPredefTimer100us32bitEnable(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptPredefTimer100us32bitEnable"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "GptPredefTimer100us32bitEnable"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def GptPredefTimer1usEnablingGrade getGptPredefTimer1usEnablingGrade(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptPredefTimer1usEnablingGrade"].getGptPredefTimer1usEnablingGradeValue()
		}
		
		def void setGptPredefTimer1usEnablingGrade(GptPredefTimer1usEnablingGrade value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptPredefTimer1usEnablingGrade"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "GptPredefTimer1usEnablingGrade"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum GptPredefTimer1usEnablingGrade {
			GPT_PREDEF_TIMER_1US_16BIT_ENABLED, 
			GPT_PREDEF_TIMER_1US_16_24BIT_ENABLED, 
			GPT_PREDEF_TIMER_1US_16_24_32BIT_ENABLED, 
			GPT_PREDEF_TIMER_1US_DISABLED
		}
		
		def GptPredefTimer1usEnablingGrade getGptPredefTimer1usEnablingGradeValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "GPT_PREDEF_TIMER_1US_16BIT_ENABLED" : GptPredefTimer1usEnablingGrade.GPT_PREDEF_TIMER_1US_16BIT_ENABLED
				case "GPT_PREDEF_TIMER_1US_16_24BIT_ENABLED" : GptPredefTimer1usEnablingGrade.GPT_PREDEF_TIMER_1US_16_24BIT_ENABLED
				case "GPT_PREDEF_TIMER_1US_16_24_32BIT_ENABLED" : GptPredefTimer1usEnablingGrade.GPT_PREDEF_TIMER_1US_16_24_32BIT_ENABLED
				case "GPT_PREDEF_TIMER_1US_DISABLED" : GptPredefTimer1usEnablingGrade.GPT_PREDEF_TIMER_1US_DISABLED
			}
		}
		
		def void setGptPredefTimer1usEnablingGradeValue(GParameterValue parameterValue, GptPredefTimer1usEnablingGrade value){
			parameterValue.setValue(value)
		}
		
		def Boolean getGptReportWakeupSource(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptReportWakeupSource"].getBooleanValue()
		}
		
		def void setGptReportWakeupSource(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "GptReportWakeupSource"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "GptReportWakeupSource"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		def List<GptClockReferencePoint> getGptClockReferencePoints(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "GptClockReferencePoint")
				}
			}
			return new BasicWrappingEList<GptClockReferencePoint, GContainer>(filteredContainers, typeof(GptClockReferencePoint), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.Gpt.GptDriverConfiguration.GptClockReferencePoint gptClockReferencePoint) {
					gptClockReferencePoint.target?.gSetDefinition(containerValue.getContainerDefinition("GptClockReferencePoint"))
					super.delegateAdd(gptClockReferencePoint)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.Gpt.GptDriverConfiguration.GptClockReferencePoint gptClockReferencePoint) {
					gptClockReferencePoint.target?.gSetDefinition(containerValue.getContainerDefinition("GptClockReferencePoint"))
					super.delegateAdd(index, gptClockReferencePoint)
				}
			}
		}
		
		
		static class GptClockReferencePoint implements IWrapper<GContainer> {
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
		        if (!(object instanceof GptClockReferencePoint)){
					return false
				}
				this.target == (object as GptClockReferencePoint).target
			}
		
			
			def org.artop.ecuc.autosar422.accessors.Mcu.McuModuleConfiguration.McuClockSettingConfig.McuClockReferencePoint getGptClockReference(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar422.accessors.Mcu.McuModuleConfiguration.McuClockSettingConfig.McuClockReferencePoint), "GptClockReference")
			}
			
			def void setGptClockReference(org.artop.ecuc.autosar422.accessors.Mcu.McuModuleConfiguration.McuClockSettingConfig.McuClockReferencePoint object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "GptClockReference"], object.getTarget())
				}
			}
			
			
			
		}
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof Gpt)){
			return false
		}
		this.target == (object as Gpt).target
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
