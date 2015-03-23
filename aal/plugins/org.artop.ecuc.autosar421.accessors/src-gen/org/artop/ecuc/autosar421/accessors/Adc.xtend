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

class Adc implements IWrapper<GModuleConfiguration> {
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
	
	def AdcConfigSet getAdcConfigSet(){
		moduleConfiguration.getByType(typeof(AdcConfigSet))
	}
	
	def void setAdcConfigSet(AdcConfigSet adcConfigSet){
		val GContainer container = adcConfigSet.getTarget() 
	    moduleConfiguration.setContainer(container, "AdcConfigSet")
	}
	def AdcGeneral getAdcGeneral(){
		moduleConfiguration.getByType(typeof(AdcGeneral))
	}
	
	def void setAdcGeneral(AdcGeneral adcGeneral){
		val GContainer container = adcGeneral.getTarget() 
	    moduleConfiguration.setContainer(container, "AdcGeneral")
	}
	def AdcPublishedInformation getAdcPublishedInformation(){
		moduleConfiguration.getByType(typeof(AdcPublishedInformation))
	}
	
	def void setAdcPublishedInformation(AdcPublishedInformation adcPublishedInformation){
		val GContainer container = adcPublishedInformation.getTarget() 
	    moduleConfiguration.setContainer(container, "AdcPublishedInformation")
	}
	
	static class AdcConfigSet implements IWrapper<GContainer> {
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
		
		
		
		def List<AdcHwUnit> getAdcHwUnits(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "AdcHwUnit")
				}
			}
			return new BasicWrappingEList<AdcHwUnit, GContainer>(filteredContainers, typeof(AdcHwUnit), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Adc$AdcConfigSet$AdcHwUnit adcHwUnit) {
					adcHwUnit.target?.gSetDefinition(containerValue.getContainerDefinition("AdcHwUnit"))
					super.delegateAdd(adcHwUnit)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Adc$AdcConfigSet$AdcHwUnit adcHwUnit) {
					adcHwUnit.target?.gSetDefinition(containerValue.getContainerDefinition("AdcHwUnit"))
					super.delegateAdd(index, adcHwUnit)
				}	
			}
		}
		
		
		static class AdcHwUnit implements IWrapper<GContainer> {
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
			
			def AdcClockSource getAdcClockSource(){
				getAdcClockSourceValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcClockSource"])
			}
			
			def void setAdcClockSource(AdcClockSource value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcClockSource"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcClockSource"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum AdcClockSource {
			}
				
			def AdcClockSource getAdcClockSourceValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
				}
			}
			
			def void setAdcClockSourceValue(GParameterValue paramValue, AdcClockSource value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			def AdcHwUnitId getAdcHwUnitId(){
				getAdcHwUnitIdValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcHwUnitId"])
			}
			
			def void setAdcHwUnitId(AdcHwUnitId value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcHwUnitId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcHwUnitId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum AdcHwUnitId {
			}
				
			def AdcHwUnitId getAdcHwUnitIdValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
				}
			}
			
			def void setAdcHwUnitIdValue(GParameterValue paramValue, AdcHwUnitId value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			def BigInteger getAdcPrescale(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcPrescale"])
			}
			
			def void setAdcPrescale(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcPrescale"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcPrescale"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			def List<AdcChannel> getAdcChannels(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "AdcChannel")
					}
				}
				return new BasicWrappingEList<AdcChannel, GContainer>(filteredContainers, typeof(AdcChannel), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Adc$AdcConfigSet$AdcHwUnit$AdcChannel adcChannel) {
						adcChannel.target?.gSetDefinition(containerValue.getContainerDefinition("AdcChannel"))
						super.delegateAdd(adcChannel)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Adc$AdcConfigSet$AdcHwUnit$AdcChannel adcChannel) {
						adcChannel.target?.gSetDefinition(containerValue.getContainerDefinition("AdcChannel"))
						super.delegateAdd(index, adcChannel)
					}	
				}
			}
			
			def List<AdcGroup> getAdcGroups(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "AdcGroup")
					}
				}
				return new BasicWrappingEList<AdcGroup, GContainer>(filteredContainers, typeof(AdcGroup), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Adc$AdcConfigSet$AdcHwUnit$AdcGroup adcGroup) {
						adcGroup.target?.gSetDefinition(containerValue.getContainerDefinition("AdcGroup"))
						super.delegateAdd(adcGroup)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Adc$AdcConfigSet$AdcHwUnit$AdcGroup adcGroup) {
						adcGroup.target?.gSetDefinition(containerValue.getContainerDefinition("AdcGroup"))
						super.delegateAdd(index, adcGroup)
					}	
				}
			}
			
			
			static class AdcChannel implements IWrapper<GContainer> {
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
				
				def BigInteger getAdcChannelConvTime(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelConvTime"])
				}
				
				def void setAdcChannelConvTime(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelConvTime"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcChannelConvTime"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigInteger getAdcChannelHighLimit(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelHighLimit"])
				}
				
				def void setAdcChannelHighLimit(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelHighLimit"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcChannelHighLimit"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigInteger getAdcChannelId(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelId"])
				}
				
				def void setAdcChannelId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcChannelId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def Boolean getAdcChannelLimitCheck(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelLimitCheck"])
				}
				
				def void setAdcChannelLimitCheck(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelLimitCheck"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcChannelLimitCheck"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigInteger getAdcChannelLowLimit(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelLowLimit"])
				}
				
				def void setAdcChannelLowLimit(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelLowLimit"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcChannelLowLimit"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def AdcChannelRangeSelect getAdcChannelRangeSelect(){
					getAdcChannelRangeSelectValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelRangeSelect"])
				}
				
				def void setAdcChannelRangeSelect(AdcChannelRangeSelect value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelRangeSelect"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcChannelRangeSelect"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum AdcChannelRangeSelect {
					ADC_RANGE_ALWAYS, 
					ADC_RANGE_BETWEEN, 
					ADC_RANGE_NOT_BETWEEN, 
					ADC_RANGE_NOT_OVER_HIGH, 
					ADC_RANGE_NOT_UNDER_LOW, 
					ADC_RANGE_OVER_HIGH, 
					ADC_RANGE_UNDER_LOW
				}
					
				def AdcChannelRangeSelect getAdcChannelRangeSelectValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "ADC_RANGE_ALWAYS" : AdcChannelRangeSelect.ADC_RANGE_ALWAYS
						case "ADC_RANGE_BETWEEN" : AdcChannelRangeSelect.ADC_RANGE_BETWEEN
						case "ADC_RANGE_NOT_BETWEEN" : AdcChannelRangeSelect.ADC_RANGE_NOT_BETWEEN
						case "ADC_RANGE_NOT_OVER_HIGH" : AdcChannelRangeSelect.ADC_RANGE_NOT_OVER_HIGH
						case "ADC_RANGE_NOT_UNDER_LOW" : AdcChannelRangeSelect.ADC_RANGE_NOT_UNDER_LOW
						case "ADC_RANGE_OVER_HIGH" : AdcChannelRangeSelect.ADC_RANGE_OVER_HIGH
						case "ADC_RANGE_UNDER_LOW" : AdcChannelRangeSelect.ADC_RANGE_UNDER_LOW
					}
				}
				
				def void setAdcChannelRangeSelectValue(GParameterValue paramValue, AdcChannelRangeSelect value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				def AdcChannelRefVoltsrcHigh getAdcChannelRefVoltsrcHigh(){
					getAdcChannelRefVoltsrcHighValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelRefVoltsrcHigh"])
				}
				
				def void setAdcChannelRefVoltsrcHigh(AdcChannelRefVoltsrcHigh value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelRefVoltsrcHigh"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcChannelRefVoltsrcHigh"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum AdcChannelRefVoltsrcHigh {
				}
					
				def AdcChannelRefVoltsrcHigh getAdcChannelRefVoltsrcHighValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
					}
				}
				
				def void setAdcChannelRefVoltsrcHighValue(GParameterValue paramValue, AdcChannelRefVoltsrcHigh value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				def AdcChannelRefVoltsrcLow getAdcChannelRefVoltsrcLow(){
					getAdcChannelRefVoltsrcLowValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelRefVoltsrcLow"])
				}
				
				def void setAdcChannelRefVoltsrcLow(AdcChannelRefVoltsrcLow value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelRefVoltsrcLow"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcChannelRefVoltsrcLow"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum AdcChannelRefVoltsrcLow {
				}
					
				def AdcChannelRefVoltsrcLow getAdcChannelRefVoltsrcLowValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
					}
				}
				
				def void setAdcChannelRefVoltsrcLowValue(GParameterValue paramValue, AdcChannelRefVoltsrcLow value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				def BigInteger getAdcChannelResolution(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelResolution"])
				}
				
				def void setAdcChannelResolution(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelResolution"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcChannelResolution"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigInteger getAdcChannelSampTime(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelSampTime"])
				}
				
				def void setAdcChannelSampTime(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelSampTime"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcChannelSampTime"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				
				
			}
			
			static class AdcGroup implements IWrapper<GContainer> {
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
				
				def AdcGroupAccessMode getAdcGroupAccessMode(){
					getAdcGroupAccessModeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcGroupAccessMode"])
				}
				
				def void setAdcGroupAccessMode(AdcGroupAccessMode value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcGroupAccessMode"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcGroupAccessMode"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum AdcGroupAccessMode {
					ADC_ACCESS_MODE_SINGLE, 
					ADC_ACCESS_MODE_STREAMING
				}
					
				def AdcGroupAccessMode getAdcGroupAccessModeValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "ADC_ACCESS_MODE_SINGLE" : AdcGroupAccessMode.ADC_ACCESS_MODE_SINGLE
						case "ADC_ACCESS_MODE_STREAMING" : AdcGroupAccessMode.ADC_ACCESS_MODE_STREAMING
					}
				}
				
				def void setAdcGroupAccessModeValue(GParameterValue paramValue, AdcGroupAccessMode value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				def AdcGroupConversionMode getAdcGroupConversionMode(){
					getAdcGroupConversionModeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcGroupConversionMode"])
				}
				
				def void setAdcGroupConversionMode(AdcGroupConversionMode value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcGroupConversionMode"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcGroupConversionMode"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum AdcGroupConversionMode {
					ADC_CONV_MODE_CONTINUOUS, 
					ADC_CONV_MODE_ONESHOT
				}
					
				def AdcGroupConversionMode getAdcGroupConversionModeValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "ADC_CONV_MODE_CONTINUOUS" : AdcGroupConversionMode.ADC_CONV_MODE_CONTINUOUS
						case "ADC_CONV_MODE_ONESHOT" : AdcGroupConversionMode.ADC_CONV_MODE_ONESHOT
					}
				}
				
				def void setAdcGroupConversionModeValue(GParameterValue paramValue, AdcGroupConversionMode value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				def BigInteger getAdcGroupId(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcGroupId"])
				}
				
				def void setAdcGroupId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcGroupId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcGroupId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigInteger getAdcGroupPriority(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcGroupPriority"])
				}
				
				def void setAdcGroupPriority(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcGroupPriority"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcGroupPriority"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def AdcGroupReplacement getAdcGroupReplacement(){
					getAdcGroupReplacementValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcGroupReplacement"])
				}
				
				def void setAdcGroupReplacement(AdcGroupReplacement value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcGroupReplacement"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcGroupReplacement"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum AdcGroupReplacement {
					ADC_GROUP_REPL_ABORT_RESTART, 
					ADC_GROUP_REPL_SUSPEND_RESUME
				}
					
				def AdcGroupReplacement getAdcGroupReplacementValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "ADC_GROUP_REPL_ABORT_RESTART" : AdcGroupReplacement.ADC_GROUP_REPL_ABORT_RESTART
						case "ADC_GROUP_REPL_SUSPEND_RESUME" : AdcGroupReplacement.ADC_GROUP_REPL_SUSPEND_RESUME
					}
				}
				
				def void setAdcGroupReplacementValue(GParameterValue paramValue, AdcGroupReplacement value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				def AdcGroupTriggSrc getAdcGroupTriggSrc(){
					getAdcGroupTriggSrcValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcGroupTriggSrc"])
				}
				
				def void setAdcGroupTriggSrc(AdcGroupTriggSrc value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcGroupTriggSrc"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcGroupTriggSrc"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum AdcGroupTriggSrc {
					ADC_TRIGG_SRC_HW, 
					ADC_TRIGG_SRC_SW
				}
					
				def AdcGroupTriggSrc getAdcGroupTriggSrcValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "ADC_TRIGG_SRC_HW" : AdcGroupTriggSrc.ADC_TRIGG_SRC_HW
						case "ADC_TRIGG_SRC_SW" : AdcGroupTriggSrc.ADC_TRIGG_SRC_SW
					}
				}
				
				def void setAdcGroupTriggSrcValue(GParameterValue paramValue, AdcGroupTriggSrc value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				def AdcHwTrigSignal getAdcHwTrigSignal(){
					getAdcHwTrigSignalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcHwTrigSignal"])
				}
				
				def void setAdcHwTrigSignal(AdcHwTrigSignal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcHwTrigSignal"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcHwTrigSignal"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum AdcHwTrigSignal {
					ADC_HW_TRIG_BOTH_EDGES, 
					ADC_HW_TRIG_FALLING_EDGE, 
					ADC_HW_TRIG_RISING_EDGE
				}
					
				def AdcHwTrigSignal getAdcHwTrigSignalValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "ADC_HW_TRIG_BOTH_EDGES" : AdcHwTrigSignal.ADC_HW_TRIG_BOTH_EDGES
						case "ADC_HW_TRIG_FALLING_EDGE" : AdcHwTrigSignal.ADC_HW_TRIG_FALLING_EDGE
						case "ADC_HW_TRIG_RISING_EDGE" : AdcHwTrigSignal.ADC_HW_TRIG_RISING_EDGE
					}
				}
				
				def void setAdcHwTrigSignalValue(GParameterValue paramValue, AdcHwTrigSignal value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				def BigInteger getAdcHwTrigTimer(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcHwTrigTimer"])
				}
				
				def void setAdcHwTrigTimer(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcHwTrigTimer"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcHwTrigTimer"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def String getAdcNotification(){
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcNotification"])
				}
				
				def void setAdcNotification(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcNotification"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcNotification"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def AdcStreamingBufferMode getAdcStreamingBufferMode(){
					getAdcStreamingBufferModeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcStreamingBufferMode"])
				}
				
				def void setAdcStreamingBufferMode(AdcStreamingBufferMode value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcStreamingBufferMode"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcStreamingBufferMode"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum AdcStreamingBufferMode {
					ADC_STREAM_BUFFER_CIRCULAR, 
					ADC_STREAM_BUFFER_LINEAR
				}
					
				def AdcStreamingBufferMode getAdcStreamingBufferModeValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "ADC_STREAM_BUFFER_CIRCULAR" : AdcStreamingBufferMode.ADC_STREAM_BUFFER_CIRCULAR
						case "ADC_STREAM_BUFFER_LINEAR" : AdcStreamingBufferMode.ADC_STREAM_BUFFER_LINEAR
					}
				}
				
				def void setAdcStreamingBufferModeValue(GParameterValue paramValue, AdcStreamingBufferMode value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				def BigInteger getAdcStreamingNumSamples(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcStreamingNumSamples"])
				}
				
				def void setAdcStreamingNumSamples(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcStreamingNumSamples"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcStreamingNumSamples"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				def List<org.artop.ecuc.autosar421.accessors.Adc.AdcConfigSet.AdcHwUnit.AdcChannel> getAdcGroupDefinitions(){
					val containerDef = containerValue.gGetDefinition
					val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
						containerDef.gGetReferences.findFirst[gGetShortName == "AdcGroupDefinition"] else null
									
					val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
						override protected accept(GReferenceValue item) {
							return accept(item, typeof(GConfigReference), "AdcGroupDefinition")
						}
					}
					
					return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Adc.AdcConfigSet.AdcHwUnit.AdcChannel>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Adc.AdcConfigSet.AdcHwUnit.AdcChannel)) {
						override protected wrap(org.artop.ecuc.autosar421.accessors.Adc.AdcConfigSet.AdcHwUnit.AdcChannel object) throws CoreException {
							if (object != null) {
								val container = object.getTarget()
								val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
								referenceValue.gSetDefinition(referenceValueDef)
								referenceValue.gSetValue(container)
								return referenceValue
							}
						}
						
						override protected unwrap(GReferenceValue referenceValue) {
							if (referenceValue != null) {
								val referenceValueValue = referenceValue.gGetValue
								if (referenceValueValue instanceof GContainer) {
									return new org.artop.ecuc.autosar421.accessors.Adc.AdcConfigSet.AdcHwUnit.AdcChannel(referenceValueValue as GContainer)
								}
							}
						}
					}
				}
				
				
				
			}
			
		}
		
	}
	static class AdcGeneral implements IWrapper<GContainer> {
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
		
		def Boolean getAdcDeInitApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcDeInitApi"])
		}
		
		def void setAdcDeInitApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcDeInitApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcDeInitApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getAdcDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcDevErrorDetect"])
		}
		
		def void setAdcDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getAdcEnableLimitCheck(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcEnableLimitCheck"])
		}
		
		def void setAdcEnableLimitCheck(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcEnableLimitCheck"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcEnableLimitCheck"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getAdcEnableQueuing(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcEnableQueuing"])
		}
		
		def void setAdcEnableQueuing(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcEnableQueuing"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcEnableQueuing"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getAdcEnableStartStopGroupApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcEnableStartStopGroupApi"])
		}
		
		def void setAdcEnableStartStopGroupApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcEnableStartStopGroupApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcEnableStartStopGroupApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getAdcGrpNotifCapability(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcGrpNotifCapability"])
		}
		
		def void setAdcGrpNotifCapability(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcGrpNotifCapability"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcGrpNotifCapability"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getAdcHwTriggerApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcHwTriggerApi"])
		}
		
		def void setAdcHwTriggerApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcHwTriggerApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcHwTriggerApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getAdcLowPowerStatesSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcLowPowerStatesSupport"])
		}
		
		def void setAdcLowPowerStatesSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcLowPowerStatesSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcLowPowerStatesSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getAdcPowerStateAsynchTransitionMode(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcPowerStateAsynchTransitionMode"])
		}
		
		def void setAdcPowerStateAsynchTransitionMode(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcPowerStateAsynchTransitionMode"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcPowerStateAsynchTransitionMode"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def AdcPriorityImplementation getAdcPriorityImplementation(){
			getAdcPriorityImplementationValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcPriorityImplementation"])
		}
		
		def void setAdcPriorityImplementation(AdcPriorityImplementation value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcPriorityImplementation"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcPriorityImplementation"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		enum AdcPriorityImplementation {
			ADC_PRIORITY_HW, 
			ADC_PRIORITY_HW_SW, 
			ADC_PRIORITY_NONE
		}
			
		def AdcPriorityImplementation getAdcPriorityImplementationValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "ADC_PRIORITY_HW" : AdcPriorityImplementation.ADC_PRIORITY_HW
				case "ADC_PRIORITY_HW_SW" : AdcPriorityImplementation.ADC_PRIORITY_HW_SW
				case "ADC_PRIORITY_NONE" : AdcPriorityImplementation.ADC_PRIORITY_NONE
			}
		}
		
		def void setAdcPriorityImplementationValue(GParameterValue paramValue, AdcPriorityImplementation value){
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		def Boolean getAdcReadGroupApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcReadGroupApi"])
		}
		
		def void setAdcReadGroupApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcReadGroupApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcReadGroupApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def AdcResultAlignment getAdcResultAlignment(){
			getAdcResultAlignmentValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcResultAlignment"])
		}
		
		def void setAdcResultAlignment(AdcResultAlignment value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcResultAlignment"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcResultAlignment"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		enum AdcResultAlignment {
			ADC_ALIGN_LEFT, 
			ADC_ALIGN_RIGHT
		}
			
		def AdcResultAlignment getAdcResultAlignmentValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "ADC_ALIGN_LEFT" : AdcResultAlignment.ADC_ALIGN_LEFT
				case "ADC_ALIGN_RIGHT" : AdcResultAlignment.ADC_ALIGN_RIGHT
			}
		}
		
		def void setAdcResultAlignmentValue(GParameterValue paramValue, AdcResultAlignment value){
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		def Boolean getAdcVersionInfoApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcVersionInfoApi"])
		}
		
		def void setAdcVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<AdcPowerStateConfig> getAdcPowerStateConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "AdcPowerStateConfig")
				}
			}
			return new BasicWrappingEList<AdcPowerStateConfig, GContainer>(filteredContainers, typeof(AdcPowerStateConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Adc$AdcGeneral$AdcPowerStateConfig adcPowerStateConfig) {
					adcPowerStateConfig.target?.gSetDefinition(containerValue.getContainerDefinition("AdcPowerStateConfig"))
					super.delegateAdd(adcPowerStateConfig)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Adc$AdcGeneral$AdcPowerStateConfig adcPowerStateConfig) {
					adcPowerStateConfig.target?.gSetDefinition(containerValue.getContainerDefinition("AdcPowerStateConfig"))
					super.delegateAdd(index, adcPowerStateConfig)
				}	
			}
		}
		
		
		static class AdcPowerStateConfig implements IWrapper<GContainer> {
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
			
			def BigInteger getAdcPowerState(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcPowerState"])
			}
			
			def void setAdcPowerState(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcPowerState"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcPowerState"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getAdcPowerStateReadyCbkRef(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcPowerStateReadyCbkRef"])
			}
			
			def void setAdcPowerStateReadyCbkRef(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcPowerStateReadyCbkRef"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcPowerStateReadyCbkRef"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class AdcPublishedInformation implements IWrapper<GContainer> {
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
		
		def Boolean getAdcChannelValueSigned(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelValueSigned"])
		}
		
		def void setAdcChannelValueSigned(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelValueSigned"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcChannelValueSigned"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getAdcGroupFirstChannelFixed(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcGroupFirstChannelFixed"])
		}
		
		def void setAdcGroupFirstChannelFixed(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcGroupFirstChannelFixed"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcGroupFirstChannelFixed"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getAdcMaxChannelResolution(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcMaxChannelResolution"])
		}
		
		def void setAdcMaxChannelResolution(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcMaxChannelResolution"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "AdcMaxChannelResolution"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
