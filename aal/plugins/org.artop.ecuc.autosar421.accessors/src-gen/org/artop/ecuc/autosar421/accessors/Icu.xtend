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

class Icu implements IWrapper<GModuleConfiguration> {
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
	
	def IcuConfigSet getIcuConfigSet(){
		moduleConfiguration.getByType(typeof(IcuConfigSet))
	}
	
	def void setIcuConfigSet(IcuConfigSet icuConfigSet){
		val GContainer container = icuConfigSet.getTarget() 
	    moduleConfiguration.setContainer(container, "IcuConfigSet")
	}
	def IcuGeneral getIcuGeneral(){
		moduleConfiguration.getByType(typeof(IcuGeneral))
	}
	
	def void setIcuGeneral(IcuGeneral icuGeneral){
		val GContainer container = icuGeneral.getTarget() 
	    moduleConfiguration.setContainer(container, "IcuGeneral")
	}
	def IcuOptionalApis getIcuOptionalApis(){
		moduleConfiguration.getByType(typeof(IcuOptionalApis))
	}
	
	def void setIcuOptionalApis(IcuOptionalApis icuOptionalApis){
		val GContainer container = icuOptionalApis.getTarget() 
	    moduleConfiguration.setContainer(container, "IcuOptionalApis")
	}
	
	static class IcuConfigSet implements IWrapper<GContainer> {
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
	        if (!(object instanceof IcuConfigSet)){
				return false
			}
			this.target == (object as IcuConfigSet).target
		}
		
		def BigInteger getIcuMaxChannel(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuMaxChannel"])
		}
		
		def void setIcuMaxChannel(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuMaxChannel"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IcuMaxChannel"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<IcuChannel> getIcuChannels(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "IcuChannel")
				}
			}
			return new BasicWrappingEList<IcuChannel, GContainer>(filteredContainers, typeof(IcuChannel), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Icu$IcuConfigSet$IcuChannel icuChannel) {
					icuChannel.target?.gSetDefinition(containerValue.getContainerDefinition("IcuChannel"))
					super.delegateAdd(icuChannel)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Icu$IcuConfigSet$IcuChannel icuChannel) {
					icuChannel.target?.gSetDefinition(containerValue.getContainerDefinition("IcuChannel"))
					super.delegateAdd(index, icuChannel)
				}	
			}
		}
		
		
		static class IcuChannel implements IWrapper<GContainer> {
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
		        if (!(object instanceof IcuChannel)){
					return false
				}
				this.target == (object as IcuChannel).target
			}
			
			def BigInteger getIcuChannelId(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuChannelId"])
			}
			
			def void setIcuChannelId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuChannelId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IcuChannelId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def IcuDefaultStartEdge getIcuDefaultStartEdge(){
				getIcuDefaultStartEdgeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuDefaultStartEdge"])
			}
			
			def void setIcuDefaultStartEdge(IcuDefaultStartEdge value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuDefaultStartEdge"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IcuDefaultStartEdge"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum IcuDefaultStartEdge {
				ICU_BOTH_EDGES, 
				ICU_FALLING_EDGE, 
				ICU_RISING_EDGE
			}
				
			def IcuDefaultStartEdge getIcuDefaultStartEdgeValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "ICU_BOTH_EDGES" : IcuDefaultStartEdge.ICU_BOTH_EDGES
					case "ICU_FALLING_EDGE" : IcuDefaultStartEdge.ICU_FALLING_EDGE
					case "ICU_RISING_EDGE" : IcuDefaultStartEdge.ICU_RISING_EDGE
				}
			}
			
			def void setIcuDefaultStartEdgeValue(GParameterValue paramValue, IcuDefaultStartEdge value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			def IcuMeasurementMode getIcuMeasurementMode(){
				getIcuMeasurementModeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuMeasurementMode"])
			}
			
			def void setIcuMeasurementMode(IcuMeasurementMode value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuMeasurementMode"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IcuMeasurementMode"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum IcuMeasurementMode {
				ICU_MODE_EDGE_COUNTER, 
				ICU_MODE_SIGNAL_EDGE_DETECT, 
				ICU_MODE_SIGNAL_MEASUREMENT, 
				ICU_MODE_TIMESTAMP
			}
				
			def IcuMeasurementMode getIcuMeasurementModeValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "ICU_MODE_EDGE_COUNTER" : IcuMeasurementMode.ICU_MODE_EDGE_COUNTER
					case "ICU_MODE_SIGNAL_EDGE_DETECT" : IcuMeasurementMode.ICU_MODE_SIGNAL_EDGE_DETECT
					case "ICU_MODE_SIGNAL_MEASUREMENT" : IcuMeasurementMode.ICU_MODE_SIGNAL_MEASUREMENT
					case "ICU_MODE_TIMESTAMP" : IcuMeasurementMode.ICU_MODE_TIMESTAMP
				}
			}
			
			def void setIcuMeasurementModeValue(GParameterValue paramValue, IcuMeasurementMode value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			def Boolean getIcuWakeupCapability(){
				EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuWakeupCapability"])
			}
			
			def void setIcuWakeupCapability(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuWakeupCapability"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IcuWakeupCapability"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
			}
			
			
			
			def IcuSignalEdgeDetection getIcuSignalEdgeDetection(){
				containerValue.getByType(typeof(IcuSignalEdgeDetection))
			}
			
			def void setIcuSignalEdgeDetection(IcuSignalEdgeDetection icuSignalEdgeDetection){
				val GContainer subContainer = icuSignalEdgeDetection.getTarget()
				containerValue.setContainer(subContainer, "IcuSignalEdgeDetection")
			}
			
			def IcuSignalMeasurement getIcuSignalMeasurement(){
				containerValue.getByType(typeof(IcuSignalMeasurement))
			}
			
			def void setIcuSignalMeasurement(IcuSignalMeasurement icuSignalMeasurement){
				val GContainer subContainer = icuSignalMeasurement.getTarget()
				containerValue.setContainer(subContainer, "IcuSignalMeasurement")
			}
			
			def IcuTimestampMeasurement getIcuTimestampMeasurement(){
				containerValue.getByType(typeof(IcuTimestampMeasurement))
			}
			
			def void setIcuTimestampMeasurement(IcuTimestampMeasurement icuTimestampMeasurement){
				val GContainer subContainer = icuTimestampMeasurement.getTarget()
				containerValue.setContainer(subContainer, "IcuTimestampMeasurement")
			}
			
			def IcuWakeup getIcuWakeup(){
				containerValue.getByType(typeof(IcuWakeup))
			}
			
			def void setIcuWakeup(IcuWakeup icuWakeup){
				val GContainer subContainer = icuWakeup.getTarget()
				containerValue.setContainer(subContainer, "IcuWakeup")
			}
			
			
			static class IcuSignalEdgeDetection implements IWrapper<GContainer> {
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
			        if (!(object instanceof IcuSignalEdgeDetection)){
						return false
					}
					this.target == (object as IcuSignalEdgeDetection).target
				}
				
				def String getIcuSignalNotification(){
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuSignalNotification"])
				}
				
				def void setIcuSignalNotification(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuSignalNotification"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IcuSignalNotification"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				
				
			}
			
			static class IcuSignalMeasurement implements IWrapper<GContainer> {
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
			        if (!(object instanceof IcuSignalMeasurement)){
						return false
					}
					this.target == (object as IcuSignalMeasurement).target
				}
				
				def IcuSignalMeasurementProperty getIcuSignalMeasurementProperty(){
					getIcuSignalMeasurementPropertyValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuSignalMeasurementProperty"])
				}
				
				def void setIcuSignalMeasurementProperty(IcuSignalMeasurementProperty value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuSignalMeasurementProperty"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IcuSignalMeasurementProperty"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum IcuSignalMeasurementProperty {
					ICU_DUTY_CYCLE, 
					ICU_HIGH_TIME, 
					ICU_LOW_TIME, 
					ICU_PERIOD_TIME
				}
					
				def IcuSignalMeasurementProperty getIcuSignalMeasurementPropertyValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "ICU_DUTY_CYCLE" : IcuSignalMeasurementProperty.ICU_DUTY_CYCLE
						case "ICU_HIGH_TIME" : IcuSignalMeasurementProperty.ICU_HIGH_TIME
						case "ICU_LOW_TIME" : IcuSignalMeasurementProperty.ICU_LOW_TIME
						case "ICU_PERIOD_TIME" : IcuSignalMeasurementProperty.ICU_PERIOD_TIME
					}
				}
				
				def void setIcuSignalMeasurementPropertyValue(GParameterValue paramValue, IcuSignalMeasurementProperty value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				
				
				
			}
			
			static class IcuTimestampMeasurement implements IWrapper<GContainer> {
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
			        if (!(object instanceof IcuTimestampMeasurement)){
						return false
					}
					this.target == (object as IcuTimestampMeasurement).target
				}
				
				def IcuTimestampMeasurementProperty getIcuTimestampMeasurementProperty(){
					getIcuTimestampMeasurementPropertyValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuTimestampMeasurementProperty"])
				}
				
				def void setIcuTimestampMeasurementProperty(IcuTimestampMeasurementProperty value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuTimestampMeasurementProperty"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IcuTimestampMeasurementProperty"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum IcuTimestampMeasurementProperty {
					ICU_CIRCULAR_BUFFER, 
					ICU_LINEAR_BUFFER
				}
					
				def IcuTimestampMeasurementProperty getIcuTimestampMeasurementPropertyValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "ICU_CIRCULAR_BUFFER" : IcuTimestampMeasurementProperty.ICU_CIRCULAR_BUFFER
						case "ICU_LINEAR_BUFFER" : IcuTimestampMeasurementProperty.ICU_LINEAR_BUFFER
					}
				}
				
				def void setIcuTimestampMeasurementPropertyValue(GParameterValue paramValue, IcuTimestampMeasurementProperty value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				def String getIcuTimestampNotification(){
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuTimestampNotification"])
				}
				
				def void setIcuTimestampNotification(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuTimestampNotification"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IcuTimestampNotification"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				
				
			}
			
			static class IcuWakeup implements IWrapper<GContainer> {
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
			        if (!(object instanceof IcuWakeup)){
						return false
					}
					this.target == (object as IcuWakeup).target
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource getIcuChannelWakeupInfo(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource), "IcuChannelWakeupInfo")
				}
						
				def void setIcuChannelWakeupInfo(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "IcuChannelWakeupInfo"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
	}
	static class IcuGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof IcuGeneral)){
				return false
			}
			this.target == (object as IcuGeneral).target
		}
		
		def Boolean getIcuDevErrorDetect(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuDevErrorDetect"])
		}
		
		def void setIcuDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IcuDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getIcuIndex(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuIndex"])
		}
		
		def void setIcuIndex(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuIndex"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IcuIndex"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getIcuReportWakeupSource(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuReportWakeupSource"])
		}
		
		def void setIcuReportWakeupSource(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuReportWakeupSource"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IcuReportWakeupSource"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}
	static class IcuOptionalApis implements IWrapper<GContainer> {
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
	        if (!(object instanceof IcuOptionalApis)){
				return false
			}
			this.target == (object as IcuOptionalApis).target
		}
		
		def Boolean getIcuDeInitApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuDeInitApi"])
		}
		
		def void setIcuDeInitApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuDeInitApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IcuDeInitApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getIcuDisableWakeupApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuDisableWakeupApi"])
		}
		
		def void setIcuDisableWakeupApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuDisableWakeupApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IcuDisableWakeupApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getIcuEdgeCountApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuEdgeCountApi"])
		}
		
		def void setIcuEdgeCountApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuEdgeCountApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IcuEdgeCountApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getIcuEdgeDetectApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuEdgeDetectApi"])
		}
		
		def void setIcuEdgeDetectApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuEdgeDetectApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IcuEdgeDetectApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getIcuEnableWakeupApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuEnableWakeupApi"])
		}
		
		def void setIcuEnableWakeupApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuEnableWakeupApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IcuEnableWakeupApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getIcuGetDutyCycleValuesApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuGetDutyCycleValuesApi"])
		}
		
		def void setIcuGetDutyCycleValuesApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuGetDutyCycleValuesApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IcuGetDutyCycleValuesApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getIcuGetInputStateApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuGetInputStateApi"])
		}
		
		def void setIcuGetInputStateApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuGetInputStateApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IcuGetInputStateApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getIcuGetTimeElapsedApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuGetTimeElapsedApi"])
		}
		
		def void setIcuGetTimeElapsedApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuGetTimeElapsedApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IcuGetTimeElapsedApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getIcuGetVersionInfoApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuGetVersionInfoApi"])
		}
		
		def void setIcuGetVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuGetVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IcuGetVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getIcuSetModeApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuSetModeApi"])
		}
		
		def void setIcuSetModeApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuSetModeApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IcuSetModeApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getIcuSignalMeasurementApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuSignalMeasurementApi"])
		}
		
		def void setIcuSignalMeasurementApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuSignalMeasurementApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IcuSignalMeasurementApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getIcuTimestampApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuTimestampApi"])
		}
		
		def void setIcuTimestampApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuTimestampApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IcuTimestampApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getIcuWakeupFunctionalityApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuWakeupFunctionalityApi"])
		}
		
		def void setIcuWakeupFunctionalityApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IcuWakeupFunctionalityApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IcuWakeupFunctionalityApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}
	
	override def boolean equals(Object object) {
        if (!(object instanceof Icu)){
			return false
		}
		this.target == (object as Icu).target
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
