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

class Wdg implements BasicWrappingEList.IWrapper<GModuleConfiguration> {
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
	
	def WdgDemEventParameterRefs getWdgDemEventParameterRefs(){
		moduleConfiguration.getByType(typeof(WdgDemEventParameterRefs))
	}
	
	def void setWdgDemEventParameterRefs(WdgDemEventParameterRefs wdgDemEventParameterRefs){
		val GContainer container = wdgDemEventParameterRefs.getTarget() 
	    moduleConfiguration.setContainer(container, "WdgDemEventParameterRefs")
	}
	def WdgGeneral getWdgGeneral(){
		moduleConfiguration.getByType(typeof(WdgGeneral))
	}
	
	def void setWdgGeneral(WdgGeneral wdgGeneral){
		val GContainer container = wdgGeneral.getTarget() 
	    moduleConfiguration.setContainer(container, "WdgGeneral")
	}
	def WdgPublishedInformation getWdgPublishedInformation(){
		moduleConfiguration.getByType(typeof(WdgPublishedInformation))
	}
	
	def void setWdgPublishedInformation(WdgPublishedInformation wdgPublishedInformation){
		val GContainer container = wdgPublishedInformation.getTarget() 
	    moduleConfiguration.setContainer(container, "WdgPublishedInformation")
	}
	def WdgSettingsConfig getWdgSettingsConfig(){
		moduleConfiguration.getByType(typeof(WdgSettingsConfig))
	}
	
	def void setWdgSettingsConfig(WdgSettingsConfig wdgSettingsConfig){
		val GContainer container = wdgSettingsConfig.getTarget() 
	    moduleConfiguration.setContainer(container, "WdgSettingsConfig")
	}
	
	static class WdgDemEventParameterRefs implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		
		def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getWDG_E_DISABLE_REJECTED(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "WDG_E_DISABLE_REJECTED")
		}
				
		def void setWDG_E_DISABLE_REJECTED(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "WDG_E_DISABLE_REJECTED"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getWDG_E_MODE_FAILED(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "WDG_E_MODE_FAILED")
		}
				
		def void setWDG_E_MODE_FAILED(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "WDG_E_MODE_FAILED"], object.getTarget())
			}
		}
		
		
		
	}
	static class WdgGeneral implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		def Boolean getWdgDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgDevErrorDetect"])
		}
		
		def void setWdgDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getWdgDisableAllowed(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgDisableAllowed"])
		}
		
		def void setWdgDisableAllowed(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgDisableAllowed"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgDisableAllowed"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getWdgIndex(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgIndex"])
		}
		
		def void setWdgIndex(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgIndex"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgIndex"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Float getWdgInitialTimeout(){
			EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgInitialTimeout"])
		}
		
		def void setWdgInitialTimeout(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgInitialTimeout"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgInitialTimeout"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Float getWdgMaxTimeout(){
			EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMaxTimeout"])
		}
		
		def void setWdgMaxTimeout(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMaxTimeout"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgMaxTimeout"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def WdgRunArea getWdgRunArea(){
			getWdgRunAreaValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgRunArea"])
		}
		
		def void setWdgRunArea(WdgRunArea value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgRunArea"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgRunArea"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum WdgRunArea {
			RAM, 
			ROM
		}
			
		def WdgRunArea getWdgRunAreaValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "RAM" : WdgRunArea.RAM
				case "ROM" : WdgRunArea.ROM
			}
		}
		
		def void setWdgRunAreaValue(GParameterValue paramValue, WdgRunArea value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def String getWdgTriggerLocation(){
			EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgTriggerLocation"])
		}
		
		def void setWdgTriggerLocation(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgTriggerLocation"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgTriggerLocation"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getWdgVersionInfoApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgVersionInfoApi"])
		}
		
		def void setWdgVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		
		
		
	}
	static class WdgPublishedInformation implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		def WdgTriggerMode getWdgTriggerMode(){
			getWdgTriggerModeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgTriggerMode"])
		}
		
		def void setWdgTriggerMode(WdgTriggerMode value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgTriggerMode"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgTriggerMode"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum WdgTriggerMode {
			WDG_BOTH, 
			WDG_TOGGLE, 
			WDG_WINDOW
		}
			
		def WdgTriggerMode getWdgTriggerModeValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "WDG_BOTH" : WdgTriggerMode.WDG_BOTH
				case "WDG_TOGGLE" : WdgTriggerMode.WDG_TOGGLE
				case "WDG_WINDOW" : WdgTriggerMode.WDG_WINDOW
			}
		}
		
		def void setWdgTriggerModeValue(GParameterValue paramValue, WdgTriggerMode value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		
		
		
	}
	static class WdgSettingsConfig implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		def WdgDefaultMode getWdgDefaultMode(){
			getWdgDefaultModeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgDefaultMode"])
		}
		
		def void setWdgDefaultMode(WdgDefaultMode value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgDefaultMode"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgDefaultMode"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum WdgDefaultMode {
			WDGIF_FAST_MODE, 
			WDGIF_OFF_MODE, 
			WDGIF_SLOW_MODE
		}
			
		def WdgDefaultMode getWdgDefaultModeValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "WDGIF_FAST_MODE" : WdgDefaultMode.WDGIF_FAST_MODE
				case "WDGIF_OFF_MODE" : WdgDefaultMode.WDGIF_OFF_MODE
				case "WDGIF_SLOW_MODE" : WdgDefaultMode.WDGIF_SLOW_MODE
			}
		}
		
		def void setWdgDefaultModeValue(GParameterValue paramValue, WdgDefaultMode value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		
		
		def WdgExternalConfiguration getWdgExternalConfiguration(){
			containerValue.getByType(typeof(WdgExternalConfiguration))
		}
		
		def void setWdgExternalConfiguration(GContainer subContainer){
			containerValue.setContainer(subContainer, "WdgExternalConfiguration")
		}
		
		def WdgSettingsFast getWdgSettingsFast(){
			containerValue.getByType(typeof(WdgSettingsFast))
		}
		
		def void setWdgSettingsFast(GContainer subContainer){
			containerValue.setContainer(subContainer, "WdgSettingsFast")
		}
		
		def WdgSettingsOff getWdgSettingsOff(){
			containerValue.getByType(typeof(WdgSettingsOff))
		}
		
		def void setWdgSettingsOff(GContainer subContainer){
			containerValue.setContainer(subContainer, "WdgSettingsOff")
		}
		
		def WdgSettingsSlow getWdgSettingsSlow(){
			containerValue.getByType(typeof(WdgSettingsSlow))
		}
		
		def void setWdgSettingsSlow(GContainer subContainer){
			containerValue.setContainer(subContainer, "WdgSettingsSlow")
		}
		
		
		static class WdgExternalConfiguration implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			
			
			
			
		}
		
		static class WdgSettingsFast implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			
			
			
		}
		
		static class WdgSettingsOff implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			
			
			
		}
		
		static class WdgSettingsSlow implements BasicWrappingEList.IWrapper<GContainer> {
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