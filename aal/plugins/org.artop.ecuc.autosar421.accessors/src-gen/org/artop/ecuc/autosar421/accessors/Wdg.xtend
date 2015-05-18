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

class Wdg implements IWrapper<GModuleConfiguration> {
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
	
	static class WdgDemEventParameterRefs implements IWrapper<GContainer> {
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
	        if (!(object instanceof WdgDemEventParameterRefs)){
				return false
			}
			this.target == (object as WdgDemEventParameterRefs).target
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
	static class WdgGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof WdgGeneral)){
				return false
			}
			this.target == (object as WdgGeneral).target
		}
		
		def Boolean getWdgDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgDevErrorDetect"])
		}
		
		def void setWdgDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getWdgDisableAllowed(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgDisableAllowed"])
		}
		
		def void setWdgDisableAllowed(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgDisableAllowed"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgDisableAllowed"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getWdgIndex(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgIndex"])
		}
		
		def void setWdgIndex(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgIndex"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgIndex"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigDecimal getWdgInitialTimeout(){
			EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgInitialTimeout"])
		}
		
		def void setWdgInitialTimeout(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgInitialTimeout"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgInitialTimeout"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigDecimal getWdgMaxTimeout(){
			EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMaxTimeout"])
		}
		
		def void setWdgMaxTimeout(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMaxTimeout"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgMaxTimeout"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def WdgRunArea getWdgRunArea(){
			getWdgRunAreaValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgRunArea"])
		}
		
		def void setWdgRunArea(WdgRunArea value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgRunArea"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgRunArea"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		def String getWdgTriggerLocation(){
			EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgTriggerLocation"])
		}
		
		def void setWdgTriggerLocation(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgTriggerLocation"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgTriggerLocation"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getWdgVersionInfoApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgVersionInfoApi"])
		}
		
		def void setWdgVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		
	}
	static class WdgPublishedInformation implements IWrapper<GContainer> {
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
	        if (!(object instanceof WdgPublishedInformation)){
				return false
			}
			this.target == (object as WdgPublishedInformation).target
		}
		
		def WdgTriggerMode getWdgTriggerMode(){
			getWdgTriggerModeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgTriggerMode"])
		}
		
		def void setWdgTriggerMode(WdgTriggerMode value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgTriggerMode"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgTriggerMode"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		
		
		
	}
	static class WdgSettingsConfig implements IWrapper<GContainer> {
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
	        if (!(object instanceof WdgSettingsConfig)){
				return false
			}
			this.target == (object as WdgSettingsConfig).target
		}
		
		def WdgDefaultMode getWdgDefaultMode(){
			getWdgDefaultModeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgDefaultMode"])
		}
		
		def void setWdgDefaultMode(WdgDefaultMode value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgDefaultMode"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgDefaultMode"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		
		
		def WdgExternalConfiguration getWdgExternalConfiguration(){
			containerValue.getByType(typeof(WdgExternalConfiguration))
		}
		
		def void setWdgExternalConfiguration(WdgExternalConfiguration wdgExternalConfiguration){
			val GContainer subContainer = wdgExternalConfiguration.getTarget()
			containerValue.setContainer(subContainer, "WdgExternalConfiguration")
		}
		
		def WdgSettingsFast getWdgSettingsFast(){
			containerValue.getByType(typeof(WdgSettingsFast))
		}
		
		def void setWdgSettingsFast(WdgSettingsFast wdgSettingsFast){
			val GContainer subContainer = wdgSettingsFast.getTarget()
			containerValue.setContainer(subContainer, "WdgSettingsFast")
		}
		
		def WdgSettingsOff getWdgSettingsOff(){
			containerValue.getByType(typeof(WdgSettingsOff))
		}
		
		def void setWdgSettingsOff(WdgSettingsOff wdgSettingsOff){
			val GContainer subContainer = wdgSettingsOff.getTarget()
			containerValue.setContainer(subContainer, "WdgSettingsOff")
		}
		
		def WdgSettingsSlow getWdgSettingsSlow(){
			containerValue.getByType(typeof(WdgSettingsSlow))
		}
		
		def void setWdgSettingsSlow(WdgSettingsSlow wdgSettingsSlow){
			val GContainer subContainer = wdgSettingsSlow.getTarget()
			containerValue.setContainer(subContainer, "WdgSettingsSlow")
		}
		
		
		static class WdgExternalConfiguration implements IWrapper<GContainer> {
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
		        if (!(object instanceof WdgExternalConfiguration)){
					return false
				}
				this.target == (object as WdgExternalConfiguration).target
			}
			
			
			
			
			
		}
		
		static class WdgSettingsFast implements IWrapper<GContainer> {
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
		        if (!(object instanceof WdgSettingsFast)){
					return false
				}
				this.target == (object as WdgSettingsFast).target
			}
			
			
			
			
		}
		
		static class WdgSettingsOff implements IWrapper<GContainer> {
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
		        if (!(object instanceof WdgSettingsOff)){
					return false
				}
				this.target == (object as WdgSettingsOff).target
			}
			
			
			
			
		}
		
		static class WdgSettingsSlow implements IWrapper<GContainer> {
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
		        if (!(object instanceof WdgSettingsSlow)){
					return false
				}
				this.target == (object as WdgSettingsSlow).target
			}
			
			
			
			
		}
		
	}
	
	override def boolean equals(Object object) {
        if (!(object instanceof Wdg)){
			return false
		}
		this.target == (object as Wdg).target
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
