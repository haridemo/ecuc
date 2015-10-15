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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof AdcConfigSet)){
				return false
			}
			this.target == (object as AdcConfigSet).target
		}
	
		
		
		def List<AdcHwUnit> getAdcHwUnits(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "AdcHwUnit")
				}
			}
			return new BasicWrappingEList<AdcHwUnit, GContainer>(filteredContainers, typeof(AdcHwUnit), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Adc.AdcConfigSet.AdcHwUnit adcHwUnit) {
					adcHwUnit.target?.gSetDefinition(containerValue.getContainerDefinition("AdcHwUnit"))
					super.delegateAdd(adcHwUnit)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Adc.AdcConfigSet.AdcHwUnit adcHwUnit) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof AdcHwUnit)){
					return false
				}
				this.target == (object as AdcHwUnit).target
			}
		
			def AdcClockSource getAdcClockSource(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcClockSource"].getAdcClockSourceValue()
			}
			
			def void setAdcClockSource(AdcClockSource value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcClockSource"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcClockSource"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum AdcClockSource {
			}
			
			def AdcClockSource getAdcClockSourceValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
				}
			}
			
			def void setAdcClockSourceValue(GParameterValue parameterValue, AdcClockSource value){
				parameterValue.setValue(value)
			}
			
			def AdcHwUnitId getAdcHwUnitId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcHwUnitId"].getAdcHwUnitIdValue()
			}
			
			def void setAdcHwUnitId(AdcHwUnitId value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcHwUnitId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcHwUnitId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum AdcHwUnitId {
			}
			
			def AdcHwUnitId getAdcHwUnitIdValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
				}
			}
			
			def void setAdcHwUnitIdValue(GParameterValue parameterValue, AdcHwUnitId value){
				parameterValue.setValue(value)
			}
			
			def BigInteger getAdcPrescale(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcPrescale"].getBigIntegerValue()
			}
			
			def void setAdcPrescale(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcPrescale"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcPrescale"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			def List<AdcChannel> getAdcChannels(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "AdcChannel")
					}
				}
				return new BasicWrappingEList<AdcChannel, GContainer>(filteredContainers, typeof(AdcChannel), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Adc.AdcConfigSet.AdcHwUnit.AdcChannel adcChannel) {
						adcChannel.target?.gSetDefinition(containerValue.getContainerDefinition("AdcChannel"))
						super.delegateAdd(adcChannel)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Adc.AdcConfigSet.AdcHwUnit.AdcChannel adcChannel) {
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
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Adc.AdcConfigSet.AdcHwUnit.AdcGroup adcGroup) {
						adcGroup.target?.gSetDefinition(containerValue.getContainerDefinition("AdcGroup"))
						super.delegateAdd(adcGroup)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Adc.AdcConfigSet.AdcHwUnit.AdcGroup adcGroup) {
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof AdcChannel)){
						return false
					}
					this.target == (object as AdcChannel).target
				}
			
				def BigInteger getAdcChannelConvTime(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelConvTime"].getBigIntegerValue()
				}
				
				def void setAdcChannelConvTime(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelConvTime"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcChannelConvTime"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getAdcChannelHighLimit(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelHighLimit"].getBigIntegerValue()
				}
				
				def void setAdcChannelHighLimit(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelHighLimit"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcChannelHighLimit"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getAdcChannelId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelId"].getBigIntegerValue()
				}
				
				def void setAdcChannelId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcChannelId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def Boolean getAdcChannelLimitCheck(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelLimitCheck"].getBooleanValue()
				}
				
				def void setAdcChannelLimitCheck(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelLimitCheck"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcChannelLimitCheck"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				def BigInteger getAdcChannelLowLimit(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelLowLimit"].getBigIntegerValue()
				}
				
				def void setAdcChannelLowLimit(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelLowLimit"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcChannelLowLimit"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def AdcChannelRangeSelect getAdcChannelRangeSelect(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelRangeSelect"].getAdcChannelRangeSelectValue()
				}
				
				def void setAdcChannelRangeSelect(AdcChannelRangeSelect value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelRangeSelect"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcChannelRangeSelect"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
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
				
				def AdcChannelRangeSelect getAdcChannelRangeSelectValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "ADC_RANGE_ALWAYS" : AdcChannelRangeSelect.ADC_RANGE_ALWAYS
						case "ADC_RANGE_BETWEEN" : AdcChannelRangeSelect.ADC_RANGE_BETWEEN
						case "ADC_RANGE_NOT_BETWEEN" : AdcChannelRangeSelect.ADC_RANGE_NOT_BETWEEN
						case "ADC_RANGE_NOT_OVER_HIGH" : AdcChannelRangeSelect.ADC_RANGE_NOT_OVER_HIGH
						case "ADC_RANGE_NOT_UNDER_LOW" : AdcChannelRangeSelect.ADC_RANGE_NOT_UNDER_LOW
						case "ADC_RANGE_OVER_HIGH" : AdcChannelRangeSelect.ADC_RANGE_OVER_HIGH
						case "ADC_RANGE_UNDER_LOW" : AdcChannelRangeSelect.ADC_RANGE_UNDER_LOW
					}
				}
				
				def void setAdcChannelRangeSelectValue(GParameterValue parameterValue, AdcChannelRangeSelect value){
					parameterValue.setValue(value)
				}
				
				def AdcChannelRefVoltsrcHigh getAdcChannelRefVoltsrcHigh(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelRefVoltsrcHigh"].getAdcChannelRefVoltsrcHighValue()
				}
				
				def void setAdcChannelRefVoltsrcHigh(AdcChannelRefVoltsrcHigh value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelRefVoltsrcHigh"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcChannelRefVoltsrcHigh"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum AdcChannelRefVoltsrcHigh {
				}
				
				def AdcChannelRefVoltsrcHigh getAdcChannelRefVoltsrcHighValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
					}
				}
				
				def void setAdcChannelRefVoltsrcHighValue(GParameterValue parameterValue, AdcChannelRefVoltsrcHigh value){
					parameterValue.setValue(value)
				}
				
				def AdcChannelRefVoltsrcLow getAdcChannelRefVoltsrcLow(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelRefVoltsrcLow"].getAdcChannelRefVoltsrcLowValue()
				}
				
				def void setAdcChannelRefVoltsrcLow(AdcChannelRefVoltsrcLow value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelRefVoltsrcLow"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcChannelRefVoltsrcLow"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum AdcChannelRefVoltsrcLow {
				}
				
				def AdcChannelRefVoltsrcLow getAdcChannelRefVoltsrcLowValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
					}
				}
				
				def void setAdcChannelRefVoltsrcLowValue(GParameterValue parameterValue, AdcChannelRefVoltsrcLow value){
					parameterValue.setValue(value)
				}
				
				def BigInteger getAdcChannelResolution(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelResolution"].getBigIntegerValue()
				}
				
				def void setAdcChannelResolution(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelResolution"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcChannelResolution"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getAdcChannelSampTime(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelSampTime"].getBigIntegerValue()
				}
				
				def void setAdcChannelSampTime(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelSampTime"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcChannelSampTime"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof AdcGroup)){
						return false
					}
					this.target == (object as AdcGroup).target
				}
			
				def AdcGroupAccessMode getAdcGroupAccessMode(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcGroupAccessMode"].getAdcGroupAccessModeValue()
				}
				
				def void setAdcGroupAccessMode(AdcGroupAccessMode value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcGroupAccessMode"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcGroupAccessMode"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum AdcGroupAccessMode {
					ADC_ACCESS_MODE_SINGLE, 
					ADC_ACCESS_MODE_STREAMING
				}
				
				def AdcGroupAccessMode getAdcGroupAccessModeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "ADC_ACCESS_MODE_SINGLE" : AdcGroupAccessMode.ADC_ACCESS_MODE_SINGLE
						case "ADC_ACCESS_MODE_STREAMING" : AdcGroupAccessMode.ADC_ACCESS_MODE_STREAMING
					}
				}
				
				def void setAdcGroupAccessModeValue(GParameterValue parameterValue, AdcGroupAccessMode value){
					parameterValue.setValue(value)
				}
				
				def AdcGroupConversionMode getAdcGroupConversionMode(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcGroupConversionMode"].getAdcGroupConversionModeValue()
				}
				
				def void setAdcGroupConversionMode(AdcGroupConversionMode value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcGroupConversionMode"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcGroupConversionMode"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum AdcGroupConversionMode {
					ADC_CONV_MODE_CONTINUOUS, 
					ADC_CONV_MODE_ONESHOT
				}
				
				def AdcGroupConversionMode getAdcGroupConversionModeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "ADC_CONV_MODE_CONTINUOUS" : AdcGroupConversionMode.ADC_CONV_MODE_CONTINUOUS
						case "ADC_CONV_MODE_ONESHOT" : AdcGroupConversionMode.ADC_CONV_MODE_ONESHOT
					}
				}
				
				def void setAdcGroupConversionModeValue(GParameterValue parameterValue, AdcGroupConversionMode value){
					parameterValue.setValue(value)
				}
				
				def BigInteger getAdcGroupId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcGroupId"].getBigIntegerValue()
				}
				
				def void setAdcGroupId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcGroupId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcGroupId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getAdcGroupPriority(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcGroupPriority"].getBigIntegerValue()
				}
				
				def void setAdcGroupPriority(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcGroupPriority"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcGroupPriority"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def AdcGroupReplacement getAdcGroupReplacement(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcGroupReplacement"].getAdcGroupReplacementValue()
				}
				
				def void setAdcGroupReplacement(AdcGroupReplacement value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcGroupReplacement"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcGroupReplacement"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum AdcGroupReplacement {
					ADC_GROUP_REPL_ABORT_RESTART, 
					ADC_GROUP_REPL_SUSPEND_RESUME
				}
				
				def AdcGroupReplacement getAdcGroupReplacementValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "ADC_GROUP_REPL_ABORT_RESTART" : AdcGroupReplacement.ADC_GROUP_REPL_ABORT_RESTART
						case "ADC_GROUP_REPL_SUSPEND_RESUME" : AdcGroupReplacement.ADC_GROUP_REPL_SUSPEND_RESUME
					}
				}
				
				def void setAdcGroupReplacementValue(GParameterValue parameterValue, AdcGroupReplacement value){
					parameterValue.setValue(value)
				}
				
				def AdcGroupTriggSrc getAdcGroupTriggSrc(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcGroupTriggSrc"].getAdcGroupTriggSrcValue()
				}
				
				def void setAdcGroupTriggSrc(AdcGroupTriggSrc value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcGroupTriggSrc"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcGroupTriggSrc"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum AdcGroupTriggSrc {
					ADC_TRIGG_SRC_HW, 
					ADC_TRIGG_SRC_SW
				}
				
				def AdcGroupTriggSrc getAdcGroupTriggSrcValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "ADC_TRIGG_SRC_HW" : AdcGroupTriggSrc.ADC_TRIGG_SRC_HW
						case "ADC_TRIGG_SRC_SW" : AdcGroupTriggSrc.ADC_TRIGG_SRC_SW
					}
				}
				
				def void setAdcGroupTriggSrcValue(GParameterValue parameterValue, AdcGroupTriggSrc value){
					parameterValue.setValue(value)
				}
				
				def AdcHwTrigSignal getAdcHwTrigSignal(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcHwTrigSignal"].getAdcHwTrigSignalValue()
				}
				
				def void setAdcHwTrigSignal(AdcHwTrigSignal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcHwTrigSignal"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcHwTrigSignal"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum AdcHwTrigSignal {
					ADC_HW_TRIG_BOTH_EDGES, 
					ADC_HW_TRIG_FALLING_EDGE, 
					ADC_HW_TRIG_RISING_EDGE
				}
				
				def AdcHwTrigSignal getAdcHwTrigSignalValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "ADC_HW_TRIG_BOTH_EDGES" : AdcHwTrigSignal.ADC_HW_TRIG_BOTH_EDGES
						case "ADC_HW_TRIG_FALLING_EDGE" : AdcHwTrigSignal.ADC_HW_TRIG_FALLING_EDGE
						case "ADC_HW_TRIG_RISING_EDGE" : AdcHwTrigSignal.ADC_HW_TRIG_RISING_EDGE
					}
				}
				
				def void setAdcHwTrigSignalValue(GParameterValue parameterValue, AdcHwTrigSignal value){
					parameterValue.setValue(value)
				}
				
				def BigInteger getAdcHwTrigTimer(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcHwTrigTimer"].getBigIntegerValue()
				}
				
				def void setAdcHwTrigTimer(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcHwTrigTimer"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcHwTrigTimer"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def String getAdcNotification(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcNotification"].getStringValue()
				}
				
				def void setAdcNotification(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcNotification"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcNotification"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def AdcStreamingBufferMode getAdcStreamingBufferMode(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcStreamingBufferMode"].getAdcStreamingBufferModeValue()
				}
				
				def void setAdcStreamingBufferMode(AdcStreamingBufferMode value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcStreamingBufferMode"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcStreamingBufferMode"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum AdcStreamingBufferMode {
					ADC_STREAM_BUFFER_CIRCULAR, 
					ADC_STREAM_BUFFER_LINEAR
				}
				
				def AdcStreamingBufferMode getAdcStreamingBufferModeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "ADC_STREAM_BUFFER_CIRCULAR" : AdcStreamingBufferMode.ADC_STREAM_BUFFER_CIRCULAR
						case "ADC_STREAM_BUFFER_LINEAR" : AdcStreamingBufferMode.ADC_STREAM_BUFFER_LINEAR
					}
				}
				
				def void setAdcStreamingBufferModeValue(GParameterValue parameterValue, AdcStreamingBufferMode value){
					parameterValue.setValue(value)
				}
				
				def BigInteger getAdcStreamingNumSamples(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcStreamingNumSamples"].getBigIntegerValue()
				}
				
				def void setAdcStreamingNumSamples(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcStreamingNumSamples"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcStreamingNumSamples"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof AdcGeneral)){
				return false
			}
			this.target == (object as AdcGeneral).target
		}
	
		def Boolean getAdcDeInitApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcDeInitApi"].getBooleanValue()
		}
		
		def void setAdcDeInitApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcDeInitApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcDeInitApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getAdcDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcDevErrorDetect"].getBooleanValue()
		}
		
		def void setAdcDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getAdcEnableLimitCheck(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcEnableLimitCheck"].getBooleanValue()
		}
		
		def void setAdcEnableLimitCheck(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcEnableLimitCheck"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcEnableLimitCheck"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getAdcEnableQueuing(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcEnableQueuing"].getBooleanValue()
		}
		
		def void setAdcEnableQueuing(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcEnableQueuing"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcEnableQueuing"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getAdcEnableStartStopGroupApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcEnableStartStopGroupApi"].getBooleanValue()
		}
		
		def void setAdcEnableStartStopGroupApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcEnableStartStopGroupApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcEnableStartStopGroupApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getAdcGrpNotifCapability(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcGrpNotifCapability"].getBooleanValue()
		}
		
		def void setAdcGrpNotifCapability(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcGrpNotifCapability"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcGrpNotifCapability"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getAdcHwTriggerApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcHwTriggerApi"].getBooleanValue()
		}
		
		def void setAdcHwTriggerApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcHwTriggerApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcHwTriggerApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getAdcLowPowerStatesSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcLowPowerStatesSupport"].getBooleanValue()
		}
		
		def void setAdcLowPowerStatesSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcLowPowerStatesSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcLowPowerStatesSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getAdcPowerStateAsynchTransitionMode(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcPowerStateAsynchTransitionMode"].getBooleanValue()
		}
		
		def void setAdcPowerStateAsynchTransitionMode(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcPowerStateAsynchTransitionMode"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcPowerStateAsynchTransitionMode"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def AdcPriorityImplementation getAdcPriorityImplementation(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcPriorityImplementation"].getAdcPriorityImplementationValue()
		}
		
		def void setAdcPriorityImplementation(AdcPriorityImplementation value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcPriorityImplementation"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcPriorityImplementation"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum AdcPriorityImplementation {
			ADC_PRIORITY_HW, 
			ADC_PRIORITY_HW_SW, 
			ADC_PRIORITY_NONE
		}
		
		def AdcPriorityImplementation getAdcPriorityImplementationValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "ADC_PRIORITY_HW" : AdcPriorityImplementation.ADC_PRIORITY_HW
				case "ADC_PRIORITY_HW_SW" : AdcPriorityImplementation.ADC_PRIORITY_HW_SW
				case "ADC_PRIORITY_NONE" : AdcPriorityImplementation.ADC_PRIORITY_NONE
			}
		}
		
		def void setAdcPriorityImplementationValue(GParameterValue parameterValue, AdcPriorityImplementation value){
			parameterValue.setValue(value)
		}
		
		def Boolean getAdcReadGroupApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcReadGroupApi"].getBooleanValue()
		}
		
		def void setAdcReadGroupApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcReadGroupApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcReadGroupApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def AdcResultAlignment getAdcResultAlignment(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcResultAlignment"].getAdcResultAlignmentValue()
		}
		
		def void setAdcResultAlignment(AdcResultAlignment value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcResultAlignment"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcResultAlignment"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum AdcResultAlignment {
			ADC_ALIGN_LEFT, 
			ADC_ALIGN_RIGHT
		}
		
		def AdcResultAlignment getAdcResultAlignmentValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "ADC_ALIGN_LEFT" : AdcResultAlignment.ADC_ALIGN_LEFT
				case "ADC_ALIGN_RIGHT" : AdcResultAlignment.ADC_ALIGN_RIGHT
			}
		}
		
		def void setAdcResultAlignmentValue(GParameterValue parameterValue, AdcResultAlignment value){
			parameterValue.setValue(value)
		}
		
		def Boolean getAdcVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcVersionInfoApi"].getBooleanValue()
		}
		
		def void setAdcVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		def List<AdcPowerStateConfig> getAdcPowerStateConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "AdcPowerStateConfig")
				}
			}
			return new BasicWrappingEList<AdcPowerStateConfig, GContainer>(filteredContainers, typeof(AdcPowerStateConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Adc.AdcGeneral.AdcPowerStateConfig adcPowerStateConfig) {
					adcPowerStateConfig.target?.gSetDefinition(containerValue.getContainerDefinition("AdcPowerStateConfig"))
					super.delegateAdd(adcPowerStateConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Adc.AdcGeneral.AdcPowerStateConfig adcPowerStateConfig) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof AdcPowerStateConfig)){
					return false
				}
				this.target == (object as AdcPowerStateConfig).target
			}
		
			def BigInteger getAdcPowerState(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcPowerState"].getBigIntegerValue()
			}
			
			def void setAdcPowerState(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcPowerState"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcPowerState"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getAdcPowerStateReadyCbkRef(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcPowerStateReadyCbkRef"].getStringValue()
			}
			
			def void setAdcPowerStateReadyCbkRef(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcPowerStateReadyCbkRef"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcPowerStateReadyCbkRef"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof AdcPublishedInformation)){
				return false
			}
			this.target == (object as AdcPublishedInformation).target
		}
	
		def Boolean getAdcChannelValueSigned(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelValueSigned"].getBooleanValue()
		}
		
		def void setAdcChannelValueSigned(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcChannelValueSigned"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcChannelValueSigned"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getAdcGroupFirstChannelFixed(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcGroupFirstChannelFixed"].getBooleanValue()
		}
		
		def void setAdcGroupFirstChannelFixed(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcGroupFirstChannelFixed"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcGroupFirstChannelFixed"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getAdcMaxChannelResolution(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcMaxChannelResolution"].getBigIntegerValue()
		}
		
		def void setAdcMaxChannelResolution(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "AdcMaxChannelResolution"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "AdcMaxChannelResolution"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof Adc)){
			return false
		}
		this.target == (object as Adc).target
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
