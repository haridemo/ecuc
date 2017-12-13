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

class Pwm implements IWrapper<GModuleConfiguration> {
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

	def PwmChannelConfigSet getPwmChannelConfigSet(){
		moduleConfiguration.getByType(typeof(PwmChannelConfigSet))
	}

	def void setPwmChannelConfigSet(PwmChannelConfigSet pwmChannelConfigSet){
		val GContainer container = pwmChannelConfigSet.getTarget()
	    moduleConfiguration.setContainer(container, "PwmChannelConfigSet")
	}
	def PwmConfigurationOfOptApiServices getPwmConfigurationOfOptApiServices(){
		moduleConfiguration.getByType(typeof(PwmConfigurationOfOptApiServices))
	}

	def void setPwmConfigurationOfOptApiServices(PwmConfigurationOfOptApiServices pwmConfigurationOfOptApiServices){
		val GContainer container = pwmConfigurationOfOptApiServices.getTarget()
	    moduleConfiguration.setContainer(container, "PwmConfigurationOfOptApiServices")
	}
	def PwmGeneral getPwmGeneral(){
		moduleConfiguration.getByType(typeof(PwmGeneral))
	}

	def void setPwmGeneral(PwmGeneral pwmGeneral){
		val GContainer container = pwmGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "PwmGeneral")
	}

	static class PwmChannelConfigSet implements IWrapper<GContainer> {
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
	        if (!(object instanceof PwmChannelConfigSet)){
				return false
			}
			this.target == (object as PwmChannelConfigSet).target
		}
	
		
		
		def List<PwmChannel> getPwmChannels(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "PwmChannel")
				}
			}
			return new BasicWrappingEList<PwmChannel, GContainer>(filteredContainers, typeof(PwmChannel), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Pwm.PwmChannelConfigSet.PwmChannel pwmChannel) {
					pwmChannel.target?.gSetDefinition(containerValue.getContainerDefinition("PwmChannel"))
					super.delegateAdd(pwmChannel)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Pwm.PwmChannelConfigSet.PwmChannel pwmChannel) {
					pwmChannel.target?.gSetDefinition(containerValue.getContainerDefinition("PwmChannel"))
					super.delegateAdd(index, pwmChannel)
				}
			}
		}
		
		
		static class PwmChannel implements IWrapper<GContainer> {
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
		        if (!(object instanceof PwmChannel)){
					return false
				}
				this.target == (object as PwmChannel).target
			}
		
			def PwmChannelClass getPwmChannelClass(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmChannelClass"].getPwmChannelClassValue()
			}
			
			def void setPwmChannelClass(PwmChannelClass value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmChannelClass"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PwmChannelClass"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum PwmChannelClass {
				PWM_FIXED_PERIOD, 
				PWM_FIXED_PERIOD_SHIFTED, 
				PWM_VARIABLE_PERIOD
			}
			
			def PwmChannelClass getPwmChannelClassValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "PWM_FIXED_PERIOD" : PwmChannelClass.PWM_FIXED_PERIOD
					case "PWM_FIXED_PERIOD_SHIFTED" : PwmChannelClass.PWM_FIXED_PERIOD_SHIFTED
					case "PWM_VARIABLE_PERIOD" : PwmChannelClass.PWM_VARIABLE_PERIOD
				}
			}
			
			def void setPwmChannelClassValue(GParameterValue parameterValue, PwmChannelClass value){
				parameterValue.setValue(value)
			}
			
			def BigInteger getPwmChannelId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmChannelId"].getBigIntegerValue()
			}
			
			def void setPwmChannelId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmChannelId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PwmChannelId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getPwmDutycycleDefault(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmDutycycleDefault"].getBigIntegerValue()
			}
			
			def void setPwmDutycycleDefault(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmDutycycleDefault"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PwmDutycycleDefault"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def PwmIdleState getPwmIdleState(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmIdleState"].getPwmIdleStateValue()
			}
			
			def void setPwmIdleState(PwmIdleState value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmIdleState"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PwmIdleState"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum PwmIdleState {
				PWM_HIGH, 
				PWM_LOW
			}
			
			def PwmIdleState getPwmIdleStateValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "PWM_HIGH" : PwmIdleState.PWM_HIGH
					case "PWM_LOW" : PwmIdleState.PWM_LOW
				}
			}
			
			def void setPwmIdleStateValue(GParameterValue parameterValue, PwmIdleState value){
				parameterValue.setValue(value)
			}
			
			def String getPwmNotification(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmNotification"].getStringValue()
			}
			
			def void setPwmNotification(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmNotification"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PwmNotification"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getPwmPeriodDefault(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmPeriodDefault"].getBigDecimalValue()
			}
			
			def void setPwmPeriodDefault(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmPeriodDefault"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PwmPeriodDefault"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def PwmPolarity getPwmPolarity(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmPolarity"].getPwmPolarityValue()
			}
			
			def void setPwmPolarity(PwmPolarity value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmPolarity"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PwmPolarity"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum PwmPolarity {
				PWM_HIGH, 
				PWM_LOW
			}
			
			def PwmPolarity getPwmPolarityValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "PWM_HIGH" : PwmPolarity.PWM_HIGH
					case "PWM_LOW" : PwmPolarity.PWM_LOW
				}
			}
			
			def void setPwmPolarityValue(GParameterValue parameterValue, PwmPolarity value){
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar444.accessors.Mcu.McuModuleConfiguration.McuClockSettingConfig.McuClockReferencePoint getPwmMcuClockReferencePoint(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Mcu.McuModuleConfiguration.McuClockSettingConfig.McuClockReferencePoint), "PwmMcuClockReferencePoint")
			}
			
			def void setPwmMcuClockReferencePoint(org.artop.ecuc.autosar444.accessors.Mcu.McuModuleConfiguration.McuClockSettingConfig.McuClockReferencePoint object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "PwmMcuClockReferencePoint"], object.getTarget())
				}
			}
			
			
			
		}
		
	}
	static class PwmConfigurationOfOptApiServices implements IWrapper<GContainer> {
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
	        if (!(object instanceof PwmConfigurationOfOptApiServices)){
				return false
			}
			this.target == (object as PwmConfigurationOfOptApiServices).target
		}
	
		def Boolean getPwmDeInitApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmDeInitApi"].getBooleanValue()
		}
		
		def void setPwmDeInitApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmDeInitApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PwmDeInitApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getPwmGetOutputState(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmGetOutputState"].getBooleanValue()
		}
		
		def void setPwmGetOutputState(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmGetOutputState"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PwmGetOutputState"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getPwmSetDutyCycle(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmSetDutyCycle"].getBooleanValue()
		}
		
		def void setPwmSetDutyCycle(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmSetDutyCycle"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PwmSetDutyCycle"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getPwmSetOutputToIdle(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmSetOutputToIdle"].getBooleanValue()
		}
		
		def void setPwmSetOutputToIdle(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmSetOutputToIdle"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PwmSetOutputToIdle"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getPwmSetPeriodAndDuty(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmSetPeriodAndDuty"].getBooleanValue()
		}
		
		def void setPwmSetPeriodAndDuty(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmSetPeriodAndDuty"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PwmSetPeriodAndDuty"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getPwmVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmVersionInfoApi"].getBooleanValue()
		}
		
		def void setPwmVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PwmVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}
	static class PwmGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof PwmGeneral)){
				return false
			}
			this.target == (object as PwmGeneral).target
		}
	
		def Boolean getPwmDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmDevErrorDetect"].getBooleanValue()
		}
		
		def void setPwmDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PwmDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getPwmDutycycleUpdatedEndperiod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmDutycycleUpdatedEndperiod"].getBooleanValue()
		}
		
		def void setPwmDutycycleUpdatedEndperiod(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmDutycycleUpdatedEndperiod"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PwmDutycycleUpdatedEndperiod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getPwmIndex(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmIndex"].getBigIntegerValue()
		}
		
		def void setPwmIndex(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmIndex"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PwmIndex"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getPwmLowPowerStatesSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmLowPowerStatesSupport"].getBooleanValue()
		}
		
		def void setPwmLowPowerStatesSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmLowPowerStatesSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PwmLowPowerStatesSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getPwmNotificationSupported(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmNotificationSupported"].getBooleanValue()
		}
		
		def void setPwmNotificationSupported(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmNotificationSupported"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PwmNotificationSupported"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getPwmPeriodUpdatedEndperiod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmPeriodUpdatedEndperiod"].getBooleanValue()
		}
		
		def void setPwmPeriodUpdatedEndperiod(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmPeriodUpdatedEndperiod"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PwmPeriodUpdatedEndperiod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getPwmPowerStateAsynchTransitionMode(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmPowerStateAsynchTransitionMode"].getBooleanValue()
		}
		
		def void setPwmPowerStateAsynchTransitionMode(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmPowerStateAsynchTransitionMode"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PwmPowerStateAsynchTransitionMode"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		def List<PwmPowerStateConfig> getPwmPowerStateConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "PwmPowerStateConfig")
				}
			}
			return new BasicWrappingEList<PwmPowerStateConfig, GContainer>(filteredContainers, typeof(PwmPowerStateConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Pwm.PwmGeneral.PwmPowerStateConfig pwmPowerStateConfig) {
					pwmPowerStateConfig.target?.gSetDefinition(containerValue.getContainerDefinition("PwmPowerStateConfig"))
					super.delegateAdd(pwmPowerStateConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Pwm.PwmGeneral.PwmPowerStateConfig pwmPowerStateConfig) {
					pwmPowerStateConfig.target?.gSetDefinition(containerValue.getContainerDefinition("PwmPowerStateConfig"))
					super.delegateAdd(index, pwmPowerStateConfig)
				}
			}
		}
		
		
		static class PwmPowerStateConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof PwmPowerStateConfig)){
					return false
				}
				this.target == (object as PwmPowerStateConfig).target
			}
		
			def BigInteger getPwmPowerState(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmPowerState"].getBigIntegerValue()
			}
			
			def void setPwmPowerState(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmPowerState"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PwmPowerState"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getPwmPowerStateReadyCbkRef(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmPowerStateReadyCbkRef"].getStringValue()
			}
			
			def void setPwmPowerStateReadyCbkRef(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PwmPowerStateReadyCbkRef"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PwmPowerStateReadyCbkRef"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof Pwm)){
			return false
		}
		this.target == (object as Pwm).target
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
