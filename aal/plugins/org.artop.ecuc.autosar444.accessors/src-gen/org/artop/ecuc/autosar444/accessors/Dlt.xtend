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

class Dlt implements IWrapper<GModuleConfiguration> {
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

	def DltConfigSet getDltConfigSet(){
		moduleConfiguration.getByType(typeof(DltConfigSet))
	}

	def void setDltConfigSet(DltConfigSet dltConfigSet){
		val GContainer container = dltConfigSet.getTarget()
	    moduleConfiguration.setContainer(container, "DltConfigSet")
	}
	def DltGeneral getDltGeneral(){
		moduleConfiguration.getByType(typeof(DltGeneral))
	}

	def void setDltGeneral(DltGeneral dltGeneral){
		val GContainer container = dltGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "DltGeneral")
	}
	def List<DltSwc> getDltSwcs(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "DltSwc")
			}
		}
		return new BasicWrappingEList<DltSwc, GContainer>(filteredContainers, typeof(DltSwc), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dlt.DltSwc dltSwc) {
				dltSwc.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("DltSwc"))
				super.delegateAdd(dltSwc)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dlt.DltSwc dltSwc) {
				dltSwc.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("DltSwc"))
				super.delegateAdd(index, dltSwc)
			}
		}
	}

	static class DltConfigSet implements IWrapper<GContainer> {
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
	        if (!(object instanceof DltConfigSet)){
				return false
			}
			this.target == (object as DltConfigSet).target
		}
	
		
		
		def DltLogLevelSetting getDltLogLevelSetting(){
			containerValue.getByType(typeof(DltLogLevelSetting))
		}
		
		def void setDltLogLevelSetting(DltLogLevelSetting dltLogLevelSetting){
			val GContainer subContainer = dltLogLevelSetting.getTarget()
			containerValue.setContainer(subContainer, "DltLogLevelSetting")
		}
		
		def DltLogOutput getDltLogOutput(){
			containerValue.getByType(typeof(DltLogOutput))
		}
		
		def void setDltLogOutput(DltLogOutput dltLogOutput){
			val GContainer subContainer = dltLogOutput.getTarget()
			containerValue.setContainer(subContainer, "DltLogOutput")
		}
		
		def DltProtocol getDltProtocol(){
			containerValue.getByType(typeof(DltProtocol))
		}
		
		def void setDltProtocol(DltProtocol dltProtocol){
			val GContainer subContainer = dltProtocol.getTarget()
			containerValue.setContainer(subContainer, "DltProtocol")
		}
		
		def List<DltRxPdu> getDltRxPdus(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DltRxPdu")
				}
			}
			return new BasicWrappingEList<DltRxPdu, GContainer>(filteredContainers, typeof(DltRxPdu), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dlt.DltConfigSet.DltRxPdu dltRxPdu) {
					dltRxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("DltRxPdu"))
					super.delegateAdd(dltRxPdu)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dlt.DltConfigSet.DltRxPdu dltRxPdu) {
					dltRxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("DltRxPdu"))
					super.delegateAdd(index, dltRxPdu)
				}
			}
		}
		
		def DltTraceStatusSetting getDltTraceStatusSetting(){
			containerValue.getByType(typeof(DltTraceStatusSetting))
		}
		
		def void setDltTraceStatusSetting(DltTraceStatusSetting dltTraceStatusSetting){
			val GContainer subContainer = dltTraceStatusSetting.getTarget()
			containerValue.setContainer(subContainer, "DltTraceStatusSetting")
		}
		
		
		static class DltLogLevelSetting implements IWrapper<GContainer> {
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
		        if (!(object instanceof DltLogLevelSetting)){
					return false
				}
				this.target == (object as DltLogLevelSetting).target
			}
		
			def DltDefaultLogLevel getDltDefaultLogLevel(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltDefaultLogLevel"].getDltDefaultLogLevelValue()
			}
			
			def void setDltDefaultLogLevel(DltDefaultLogLevel value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltDefaultLogLevel"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltDefaultLogLevel"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum DltDefaultLogLevel {
				DLT_LOG_DEBUG, 
				DLT_LOG_ERROR, 
				DLT_LOG_FATAL, 
				DLT_LOG_INFO, 
				DLT_LOG_OFF, 
				DLT_LOG_VERBOSE, 
				DLT_LOG_WARN
			}
			
			def DltDefaultLogLevel getDltDefaultLogLevelValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "DLT_LOG_DEBUG" : DltDefaultLogLevel.DLT_LOG_DEBUG
					case "DLT_LOG_ERROR" : DltDefaultLogLevel.DLT_LOG_ERROR
					case "DLT_LOG_FATAL" : DltDefaultLogLevel.DLT_LOG_FATAL
					case "DLT_LOG_INFO" : DltDefaultLogLevel.DLT_LOG_INFO
					case "DLT_LOG_OFF" : DltDefaultLogLevel.DLT_LOG_OFF
					case "DLT_LOG_VERBOSE" : DltDefaultLogLevel.DLT_LOG_VERBOSE
					case "DLT_LOG_WARN" : DltDefaultLogLevel.DLT_LOG_WARN
				}
			}
			
			def void setDltDefaultLogLevelValue(GParameterValue parameterValue, DltDefaultLogLevel value){
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
		static class DltLogOutput implements IWrapper<GContainer> {
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
		        if (!(object instanceof DltLogOutput)){
					return false
				}
				this.target == (object as DltLogOutput).target
			}
		
			
			def org.artop.ecuc.autosar444.accessors.Dlt.DltConfigSet.DltLogOutput.DltLogChannel getDltDefaultLogChannelRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dlt.DltConfigSet.DltLogOutput.DltLogChannel), "DltDefaultLogChannelRef")
			}
			
			def void setDltDefaultLogChannelRef(org.artop.ecuc.autosar444.accessors.Dlt.DltConfigSet.DltLogOutput.DltLogChannel object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DltDefaultLogChannelRef"], object.getTarget())
				}
			}
			
			
			def List<DltLogChannel> getDltLogChannels(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DltLogChannel")
					}
				}
				return new BasicWrappingEList<DltLogChannel, GContainer>(filteredContainers, typeof(DltLogChannel), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dlt.DltConfigSet.DltLogOutput.DltLogChannel dltLogChannel) {
						dltLogChannel.target?.gSetDefinition(containerValue.getContainerDefinition("DltLogChannel"))
						super.delegateAdd(dltLogChannel)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dlt.DltConfigSet.DltLogOutput.DltLogChannel dltLogChannel) {
						dltLogChannel.target?.gSetDefinition(containerValue.getContainerDefinition("DltLogChannel"))
						super.delegateAdd(index, dltLogChannel)
					}
				}
			}
			
			def List<DltLogChannelAssignment> getDltLogChannelAssignments(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DltLogChannelAssignment")
					}
				}
				return new BasicWrappingEList<DltLogChannelAssignment, GContainer>(filteredContainers, typeof(DltLogChannelAssignment), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dlt.DltConfigSet.DltLogOutput.DltLogChannelAssignment dltLogChannelAssignment) {
						dltLogChannelAssignment.target?.gSetDefinition(containerValue.getContainerDefinition("DltLogChannelAssignment"))
						super.delegateAdd(dltLogChannelAssignment)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dlt.DltConfigSet.DltLogOutput.DltLogChannelAssignment dltLogChannelAssignment) {
						dltLogChannelAssignment.target?.gSetDefinition(containerValue.getContainerDefinition("DltLogChannelAssignment"))
						super.delegateAdd(index, dltLogChannelAssignment)
					}
				}
			}
			
			
			static class DltLogChannel implements IWrapper<GContainer> {
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
			        if (!(object instanceof DltLogChannel)){
						return false
					}
					this.target == (object as DltLogChannel).target
				}
			
				def BigDecimal getDltLogChannelBufferOverflowTimer(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltLogChannelBufferOverflowTimer"].getBigDecimalValue()
				}
				
				def void setDltLogChannelBufferOverflowTimer(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltLogChannelBufferOverflowTimer"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltLogChannelBufferOverflowTimer"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getDltLogChannelBufferSize(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltLogChannelBufferSize"].getBigIntegerValue()
				}
				
				def void setDltLogChannelBufferSize(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltLogChannelBufferSize"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltLogChannelBufferSize"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def String getDltLogChannelId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltLogChannelId"].getStringValue()
				}
				
				def void setDltLogChannelId(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltLogChannelId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltLogChannelId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getDltLogChannelMaxMessageLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltLogChannelMaxMessageLength"].getBigIntegerValue()
				}
				
				def void setDltLogChannelMaxMessageLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltLogChannelMaxMessageLength"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltLogChannelMaxMessageLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getDltLogChannelMaxNumOfRetries(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltLogChannelMaxNumOfRetries"].getBigIntegerValue()
				}
				
				def void setDltLogChannelMaxNumOfRetries(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltLogChannelMaxNumOfRetries"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltLogChannelMaxNumOfRetries"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def DltLogChannelThreshold getDltLogChannelThreshold(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltLogChannelThreshold"].getDltLogChannelThresholdValue()
				}
				
				def void setDltLogChannelThreshold(DltLogChannelThreshold value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltLogChannelThreshold"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltLogChannelThreshold"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum DltLogChannelThreshold {
					DLT_LOG_DEBUG, 
					DLT_LOG_ERROR, 
					DLT_LOG_FATAL, 
					DLT_LOG_INFO, 
					DLT_LOG_OFF, 
					DLT_LOG_VERBOSE, 
					DLT_LOG_WARN
				}
				
				def DltLogChannelThreshold getDltLogChannelThresholdValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "DLT_LOG_DEBUG" : DltLogChannelThreshold.DLT_LOG_DEBUG
						case "DLT_LOG_ERROR" : DltLogChannelThreshold.DLT_LOG_ERROR
						case "DLT_LOG_FATAL" : DltLogChannelThreshold.DLT_LOG_FATAL
						case "DLT_LOG_INFO" : DltLogChannelThreshold.DLT_LOG_INFO
						case "DLT_LOG_OFF" : DltLogChannelThreshold.DLT_LOG_OFF
						case "DLT_LOG_VERBOSE" : DltLogChannelThreshold.DLT_LOG_VERBOSE
						case "DLT_LOG_WARN" : DltLogChannelThreshold.DLT_LOG_WARN
					}
				}
				
				def void setDltLogChannelThresholdValue(GParameterValue parameterValue, DltLogChannelThreshold value){
					parameterValue.setValue(value)
				}
				
				def BigInteger getDltLogChannelTrafficShapingBandwidth(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltLogChannelTrafficShapingBandwidth"].getBigIntegerValue()
				}
				
				def void setDltLogChannelTrafficShapingBandwidth(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltLogChannelTrafficShapingBandwidth"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltLogChannelTrafficShapingBandwidth"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigDecimal getDltLogChannelTransmitCycle(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltLogChannelTransmitCycle"].getBigDecimalValue()
				}
				
				def void setDltLogChannelTransmitCycle(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltLogChannelTransmitCycle"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltLogChannelTransmitCycle"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def Boolean getDltLogTraceStatusFlag(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltLogTraceStatusFlag"].getBooleanValue()
				}
				
				def void setDltLogTraceStatusFlag(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltLogTraceStatusFlag"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltLogTraceStatusFlag"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				
				
				def DltTxPdu getDltTxPdu(){
					containerValue.getByType(typeof(DltTxPdu))
				}
				
				def void setDltTxPdu(DltTxPdu dltTxPdu){
					val GContainer subContainer = dltTxPdu.getTarget()
					containerValue.setContainer(subContainer, "DltTxPdu")
				}
				
				
				static class DltTxPdu implements IWrapper<GContainer> {
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
				        if (!(object instanceof DltTxPdu)){
							return false
						}
						this.target == (object as DltTxPdu).target
					}
				
					def BigInteger getDltITxPduHandleId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltITxPduHandleId"].getBigIntegerValue()
					}
					
					def void setDltITxPduHandleId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltITxPduHandleId"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltITxPduHandleId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def Boolean getDltITxPduUsesTp(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltITxPduUsesTp"].getBooleanValue()
					}
					
					def void setDltITxPduUsesTp(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltITxPduUsesTp"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltITxPduUsesTp"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					
					def org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getDltTxPduIdRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "DltTxPduIdRef")
					}
					
					def void setDltTxPduIdRef(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DltTxPduIdRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
			static class DltLogChannelAssignment implements IWrapper<GContainer> {
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
			        if (!(object instanceof DltLogChannelAssignment)){
						return false
					}
					this.target == (object as DltLogChannelAssignment).target
				}
			
				
				def org.artop.ecuc.autosar444.accessors.Dlt.DltSwc.DltSwcContext getDltLogChannelAssignmentSwcContextRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dlt.DltSwc.DltSwcContext), "DltLogChannelAssignmentSwcContextRef")
				}
				
				def void setDltLogChannelAssignmentSwcContextRef(org.artop.ecuc.autosar444.accessors.Dlt.DltSwc.DltSwcContext object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DltLogChannelAssignmentSwcContextRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar444.accessors.Dlt.DltConfigSet.DltLogOutput.DltLogChannel getDltLogChannelRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dlt.DltConfigSet.DltLogOutput.DltLogChannel), "DltLogChannelRef")
				}
				
				def void setDltLogChannelRef(org.artop.ecuc.autosar444.accessors.Dlt.DltConfigSet.DltLogOutput.DltLogChannel object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DltLogChannelRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class DltProtocol implements IWrapper<GContainer> {
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
		        if (!(object instanceof DltProtocol)){
					return false
				}
				this.target == (object as DltProtocol).target
			}
		
			def Boolean getDltHeaderUseEcuId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltHeaderUseEcuId"].getBooleanValue()
			}
			
			def void setDltHeaderUseEcuId(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltHeaderUseEcuId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltHeaderUseEcuId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getDltHeaderUseSessionID(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltHeaderUseSessionID"].getBooleanValue()
			}
			
			def void setDltHeaderUseSessionID(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltHeaderUseSessionID"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltHeaderUseSessionID"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getDltHeaderUseTimestamp(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltHeaderUseTimestamp"].getBooleanValue()
			}
			
			def void setDltHeaderUseTimestamp(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltHeaderUseTimestamp"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltHeaderUseTimestamp"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getDltUseExtHeaderInNonVerbMode(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltUseExtHeaderInNonVerbMode"].getBooleanValue()
			}
			
			def void setDltUseExtHeaderInNonVerbMode(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltUseExtHeaderInNonVerbMode"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltUseExtHeaderInNonVerbMode"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getDltUseVerboseMode(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltUseVerboseMode"].getBooleanValue()
			}
			
			def void setDltUseVerboseMode(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltUseVerboseMode"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltUseVerboseMode"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			
			def DltEcuId getDltEcuId(){
				containerValue.getByType(typeof(DltEcuId))
			}
			
			def void setDltEcuId(DltEcuId dltEcuId){
				val GContainer subContainer = dltEcuId.getTarget()
				containerValue.setContainer(subContainer, "DltEcuId")
			}
			
			
			static class DltEcuId implements IWrapper<GContainer> {
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
			        if (!(object instanceof DltEcuId)){
						return false
					}
					this.target == (object as DltEcuId).target
				}
			
				def DltEcuIdCalloutChoice getDltEcuIdCalloutChoice(){
					containerValue.getByType(typeof(DltEcuIdCalloutChoice))
				}
				
				def void setDltEcuIdCalloutChoice(DltEcuIdCalloutChoice dltEcuIdCalloutChoice){
					val GContainer subContainer = dltEcuIdCalloutChoice.getTarget()
					containerValue.setContainer(subContainer, "DltEcuIdCalloutChoice")
				}
				def DltEcuIdValueChoice getDltEcuIdValueChoice(){
					containerValue.getByType(typeof(DltEcuIdValueChoice))
				}
				
				def void setDltEcuIdValueChoice(DltEcuIdValueChoice dltEcuIdValueChoice){
					val GContainer subContainer = dltEcuIdValueChoice.getTarget()
					containerValue.setContainer(subContainer, "DltEcuIdValueChoice")
				}
				
				static class DltEcuIdCalloutChoice implements IWrapper<GContainer> {
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
				        if (!(object instanceof DltEcuIdCalloutChoice)){
							return false
						}
						this.target == (object as DltEcuIdCalloutChoice).target
					}
				
					def String getDltEcuIdCallout(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltEcuIdCallout"].getStringValue()
					}
					
					def void setDltEcuIdCallout(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltEcuIdCallout"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltEcuIdCallout"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					
					
				}
				
				static class DltEcuIdValueChoice implements IWrapper<GContainer> {
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
				        if (!(object instanceof DltEcuIdValueChoice)){
							return false
						}
						this.target == (object as DltEcuIdValueChoice).target
					}
				
					def String getDltEcuIdValue(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltEcuIdValue"].getStringValue()
					}
					
					def void setDltEcuIdValue(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltEcuIdValue"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltEcuIdValue"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					
					
				}
				
			}
			
		}
		
		static class DltRxPdu implements IWrapper<GContainer> {
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
		        if (!(object instanceof DltRxPdu)){
					return false
				}
				this.target == (object as DltRxPdu).target
			}
		
			def BigInteger getDltIRxPduHandleId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltIRxPduHandleId"].getBigIntegerValue()
			}
			
			def void setDltIRxPduHandleId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltIRxPduHandleId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltIRxPduHandleId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getDltIRxPduUsesTp(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltIRxPduUsesTp"].getBooleanValue()
			}
			
			def void setDltIRxPduUsesTp(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltIRxPduUsesTp"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltIRxPduUsesTp"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			def org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getDltRxPduIdRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "DltRxPduIdRef")
			}
			
			def void setDltRxPduIdRef(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DltRxPduIdRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class DltTraceStatusSetting implements IWrapper<GContainer> {
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
		        if (!(object instanceof DltTraceStatusSetting)){
					return false
				}
				this.target == (object as DltTraceStatusSetting).target
			}
		
			def Boolean getDltDefaultTraceStatus(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltDefaultTraceStatus"].getBooleanValue()
			}
			
			def void setDltDefaultTraceStatus(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltDefaultTraceStatus"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltDefaultTraceStatus"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			
			def List<DltTraceStatusAssignment> getDltTraceStatusAssignments(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "DltTraceStatusAssignment")
					}
				}
				return new BasicWrappingEList<DltTraceStatusAssignment, GContainer>(filteredContainers, typeof(DltTraceStatusAssignment), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dlt.DltConfigSet.DltTraceStatusSetting.DltTraceStatusAssignment dltTraceStatusAssignment) {
						dltTraceStatusAssignment.target?.gSetDefinition(containerValue.getContainerDefinition("DltTraceStatusAssignment"))
						super.delegateAdd(dltTraceStatusAssignment)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dlt.DltConfigSet.DltTraceStatusSetting.DltTraceStatusAssignment dltTraceStatusAssignment) {
						dltTraceStatusAssignment.target?.gSetDefinition(containerValue.getContainerDefinition("DltTraceStatusAssignment"))
						super.delegateAdd(index, dltTraceStatusAssignment)
					}
				}
			}
			
			
			static class DltTraceStatusAssignment implements IWrapper<GContainer> {
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
			        if (!(object instanceof DltTraceStatusAssignment)){
						return false
					}
					this.target == (object as DltTraceStatusAssignment).target
				}
			
				def Boolean getDltTraceStatus(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltTraceStatus"].getBooleanValue()
				}
				
				def void setDltTraceStatus(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltTraceStatus"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltTraceStatus"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				
				def org.artop.ecuc.autosar444.accessors.Dlt.DltSwc.DltSwcContext getDltTraceStatusAssignmentSwcContextRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dlt.DltSwc.DltSwcContext), "DltTraceStatusAssignmentSwcContextRef")
				}
				
				def void setDltTraceStatusAssignmentSwcContextRef(org.artop.ecuc.autosar444.accessors.Dlt.DltSwc.DltSwcContext object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DltTraceStatusAssignmentSwcContextRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
	}
	static class DltGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof DltGeneral)){
				return false
			}
			this.target == (object as DltGeneral).target
		}
	
		def Boolean getDltGeneralDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltGeneralDevErrorDetect"].getBooleanValue()
		}
		
		def void setDltGeneralDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltGeneralDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltGeneralDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getDltGeneralInjectionSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltGeneralInjectionSupport"].getBooleanValue()
		}
		
		def void setDltGeneralInjectionSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltGeneralInjectionSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltGeneralInjectionSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getDltGeneralRegisterContextNotification(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltGeneralRegisterContextNotification"].getBooleanValue()
		}
		
		def void setDltGeneralRegisterContextNotification(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltGeneralRegisterContextNotification"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltGeneralRegisterContextNotification"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getDltGeneralRxDataPathSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltGeneralRxDataPathSupport"].getBooleanValue()
		}
		
		def void setDltGeneralRxDataPathSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltGeneralRxDataPathSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltGeneralRxDataPathSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getDltGeneralStartUpDelayTimer(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltGeneralStartUpDelayTimer"].getBigDecimalValue()
		}
		
		def void setDltGeneralStartUpDelayTimer(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltGeneralStartUpDelayTimer"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltGeneralStartUpDelayTimer"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getDltGeneralTimeStampSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltGeneralTimeStampSupport"].getBooleanValue()
		}
		
		def void setDltGeneralTimeStampSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltGeneralTimeStampSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltGeneralTimeStampSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getDltGeneralTrafficShapingSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltGeneralTrafficShapingSupport"].getBooleanValue()
		}
		
		def void setDltGeneralTrafficShapingSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltGeneralTrafficShapingSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltGeneralTrafficShapingSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getDltGeneralVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltGeneralVersionInfoApi"].getBooleanValue()
		}
		
		def void setDltGeneralVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltGeneralVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltGeneralVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		def org.artop.ecuc.autosar444.accessors.Gpt.GptChannelConfigSet.GptChannelConfiguration getDltGeneralGptChannelRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Gpt.GptChannelConfigSet.GptChannelConfiguration), "DltGeneralGptChannelRef")
		}
		
		def void setDltGeneralGptChannelRef(org.artop.ecuc.autosar444.accessors.Gpt.GptChannelConfigSet.GptChannelConfiguration object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DltGeneralGptChannelRef"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar444.accessors.NvM.NvMBlockDescriptor getDltGeneralNvRamRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.NvM.NvMBlockDescriptor), "DltGeneralNvRamRef")
		}
		
		def void setDltGeneralNvRamRef(org.artop.ecuc.autosar444.accessors.NvM.NvMBlockDescriptor object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DltGeneralNvRamRef"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar444.accessors.StbM.StbMSynchronizedTimeBase getDltGeneralStbMTimeBaseRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.StbM.StbMSynchronizedTimeBase), "DltGeneralStbMTimeBaseRef")
		}
		
		def void setDltGeneralStbMTimeBaseRef(org.artop.ecuc.autosar444.accessors.StbM.StbMSynchronizedTimeBase object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DltGeneralStbMTimeBaseRef"], object.getTarget())
			}
		}
		
		
		
	}
	static class DltSwc implements IWrapper<GContainer> {
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
	        if (!(object instanceof DltSwc)){
				return false
			}
			this.target == (object as DltSwc).target
		}
	
		def BigInteger getDltSwcSessionId(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltSwcSessionId"].getBigIntegerValue()
		}
		
		def void setDltSwcSessionId(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltSwcSessionId"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltSwcSessionId"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getDltSwcSupportLogLevelChangeNotification(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltSwcSupportLogLevelChangeNotification"].getBooleanValue()
		}
		
		def void setDltSwcSupportLogLevelChangeNotification(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltSwcSupportLogLevelChangeNotification"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltSwcSupportLogLevelChangeNotification"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getMaxSwcLogMessageLength(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "MaxSwcLogMessageLength"].getBigIntegerValue()
		}
		
		def void setMaxSwcLogMessageLength(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "MaxSwcLogMessageLength"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "MaxSwcLogMessageLength"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getMaxSwcTraceMessageLength(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "MaxSwcTraceMessageLength"].getBigIntegerValue()
		}
		
		def void setMaxSwcTraceMessageLength(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "MaxSwcTraceMessageLength"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "MaxSwcTraceMessageLength"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<DltSwcContext> getDltSwcContexts(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "DltSwcContext")
				}
			}
			return new BasicWrappingEList<DltSwcContext, GContainer>(filteredContainers, typeof(DltSwcContext), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.Dlt.DltSwc.DltSwcContext dltSwcContext) {
					dltSwcContext.target?.gSetDefinition(containerValue.getContainerDefinition("DltSwcContext"))
					super.delegateAdd(dltSwcContext)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.Dlt.DltSwc.DltSwcContext dltSwcContext) {
					dltSwcContext.target?.gSetDefinition(containerValue.getContainerDefinition("DltSwcContext"))
					super.delegateAdd(index, dltSwcContext)
				}
			}
		}
		
		
		static class DltSwcContext implements IWrapper<GContainer> {
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
		        if (!(object instanceof DltSwcContext)){
					return false
				}
				this.target == (object as DltSwcContext).target
			}
		
			def String getDltSwcApplicationId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltSwcApplicationId"].getStringValue()
			}
			
			def void setDltSwcApplicationId(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltSwcApplicationId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltSwcApplicationId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getDltSwcContextId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltSwcContextId"].getStringValue()
			}
			
			def void setDltSwcContextId(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltSwcContextId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltSwcContextId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof Dlt)){
			return false
		}
		this.target == (object as Dlt).target
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
