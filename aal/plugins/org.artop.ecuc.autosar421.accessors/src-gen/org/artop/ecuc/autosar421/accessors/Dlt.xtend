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

	def DltGeneral getDltGeneral(){
		moduleConfiguration.getByType(typeof(DltGeneral))
	}

	def void setDltGeneral(DltGeneral dltGeneral){
		val GContainer container = dltGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "DltGeneral")
	}
	def DltMemory getDltMemory(){
		moduleConfiguration.getByType(typeof(DltMemory))
	}

	def void setDltMemory(DltMemory dltMemory){
		val GContainer container = dltMemory.getTarget()
	    moduleConfiguration.setContainer(container, "DltMemory")
	}
	def DltMultipleConfigurationContainer getDltMultipleConfigurationContainer(){
		moduleConfiguration.getByType(typeof(DltMultipleConfigurationContainer))
	}

	def void setDltMultipleConfigurationContainer(DltMultipleConfigurationContainer dltMultipleConfigurationContainer){
		val GContainer container = dltMultipleConfigurationContainer.getTarget()
	    moduleConfiguration.setContainer(container, "DltMultipleConfigurationContainer")
	}
	def List<DltVfbTrace> getDltVfbTraces(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "DltVfbTrace")
			}
		}
		return new BasicWrappingEList<DltVfbTrace, GContainer>(filteredContainers, typeof(DltVfbTrace), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Dlt.DltVfbTrace dltVfbTrace) {
				dltVfbTrace.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("DltVfbTrace"))
				super.delegateAdd(dltVfbTrace)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Dlt.DltVfbTrace dltVfbTrace) {
				dltVfbTrace.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("DltVfbTrace"))
				super.delegateAdd(index, dltVfbTrace)
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
	
		def Boolean getDltDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltDevErrorDetect"].getBooleanValue()
		}
		
		def void setDltDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getDltImplementAppIdContextIdQuery(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltImplementAppIdContextIdQuery"].getBooleanValue()
		}
		
		def void setDltImplementAppIdContextIdQuery(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltImplementAppIdContextIdQuery"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltImplementAppIdContextIdQuery"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getDltImplementExtendedHeader(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltImplementExtendedHeader"].getBooleanValue()
		}
		
		def void setDltImplementExtendedHeader(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltImplementExtendedHeader"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltImplementExtendedHeader"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getDltImplementFilterMessages(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltImplementFilterMessages"].getBooleanValue()
		}
		
		def void setDltImplementFilterMessages(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltImplementFilterMessages"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltImplementFilterMessages"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getDltImplementNVRamStorage(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltImplementNVRamStorage"].getBooleanValue()
		}
		
		def void setDltImplementNVRamStorage(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltImplementNVRamStorage"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltImplementNVRamStorage"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getDltImplementSWCInjection(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltImplementSWCInjection"].getBooleanValue()
		}
		
		def void setDltImplementSWCInjection(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltImplementSWCInjection"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltImplementSWCInjection"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getDltImplementTimestamp(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltImplementTimestamp"].getBooleanValue()
		}
		
		def void setDltImplementTimestamp(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltImplementTimestamp"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltImplementTimestamp"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getDltImplementVerboseMode(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltImplementVerboseMode"].getBooleanValue()
		}
		
		def void setDltImplementVerboseMode(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltImplementVerboseMode"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltImplementVerboseMode"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getDltImplementVfbTrace(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltImplementVfbTrace"].getBooleanValue()
		}
		
		def void setDltImplementVfbTrace(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltImplementVfbTrace"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltImplementVfbTrace"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getDltVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltVersionInfoApi"].getBooleanValue()
		}
		
		def void setDltVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getDltVfbTraceLogLevel(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltVfbTraceLogLevel"].getBigIntegerValue()
		}
		
		def void setDltVfbTraceLogLevel(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltVfbTraceLogLevel"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltVfbTraceLogLevel"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		def org.artop.ecuc.autosar421.accessors.Gpt.GptChannelConfigSet.GptChannelConfiguration getDltGptChannel(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Gpt.GptChannelConfigSet.GptChannelConfiguration), "DltGptChannel")
		}
		
		def void setDltGptChannel(org.artop.ecuc.autosar421.accessors.Gpt.GptChannelConfigSet.GptChannelConfiguration object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DltGptChannel"], object.getTarget())
			}
		}
		
		
		
	}
	static class DltMemory implements IWrapper<GContainer> {
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
	        if (!(object instanceof DltMemory)){
				return false
			}
			this.target == (object as DltMemory).target
		}
	
		def BigInteger getDltInitBufferSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltInitBufferSize"].getBigIntegerValue()
		}
		
		def void setDltInitBufferSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltInitBufferSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltInitBufferSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getDltMaxCountAppIds(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltMaxCountAppIds"].getBigIntegerValue()
		}
		
		def void setDltMaxCountAppIds(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltMaxCountAppIds"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltMaxCountAppIds"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getDltMaxCountContextIds(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltMaxCountContextIds"].getBigIntegerValue()
		}
		
		def void setDltMaxCountContextIds(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltMaxCountContextIds"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltMaxCountContextIds"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getDltMaxCountContextIdsPerAppId(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltMaxCountContextIdsPerAppId"].getBigIntegerValue()
		}
		
		def void setDltMaxCountContextIdsPerAppId(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltMaxCountContextIdsPerAppId"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltMaxCountContextIdsPerAppId"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getDltMessageBufferSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltMessageBufferSize"].getBigIntegerValue()
		}
		
		def void setDltMessageBufferSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltMessageBufferSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltMessageBufferSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		
	}
	static class DltMultipleConfigurationContainer implements IWrapper<GContainer> {
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
	        if (!(object instanceof DltMultipleConfigurationContainer)){
				return false
			}
			this.target == (object as DltMultipleConfigurationContainer).target
		}
	
		
		def org.artop.ecuc.autosar421.accessors.NvM.NvMBlockDescriptor getDltNvRamBlockRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.NvM.NvMBlockDescriptor), "DltNvRamBlockRef")
		}
		
		def void setDltNvRamBlockRef(org.artop.ecuc.autosar421.accessors.NvM.NvMBlockDescriptor object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "DltNvRamBlockRef"], object.getTarget())
			}
		}
		
		
		def DltBandwidth getDltBandwidth(){
			containerValue.getByType(typeof(DltBandwidth))
		}
		
		def void setDltBandwidth(DltBandwidth dltBandwidth){
			val GContainer subContainer = dltBandwidth.getTarget()
			containerValue.setContainer(subContainer, "DltBandwidth")
		}
		
		def DltMessageFiltering getDltMessageFiltering(){
			containerValue.getByType(typeof(DltMessageFiltering))
		}
		
		def void setDltMessageFiltering(DltMessageFiltering dltMessageFiltering){
			val GContainer subContainer = dltMessageFiltering.getTarget()
			containerValue.setContainer(subContainer, "DltMessageFiltering")
		}
		
		def DltProtocol getDltProtocol(){
			containerValue.getByType(typeof(DltProtocol))
		}
		
		def void setDltProtocol(DltProtocol dltProtocol){
			val GContainer subContainer = dltProtocol.getTarget()
			containerValue.setContainer(subContainer, "DltProtocol")
		}
		
		
		static class DltBandwidth implements IWrapper<GContainer> {
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
		        if (!(object instanceof DltBandwidth)){
					return false
				}
				this.target == (object as DltBandwidth).target
			}
		
			def BigInteger getDltBandwidthForComModule(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltBandwidthForComModule"].getBigIntegerValue()
			}
			
			def void setDltBandwidthForComModule(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltBandwidthForComModule"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltBandwidthForComModule"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getDltBandwidthForDiagChannel(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltBandwidthForDiagChannel"].getBigIntegerValue()
			}
			
			def void setDltBandwidthForDiagChannel(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltBandwidthForDiagChannel"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltBandwidthForDiagChannel"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getDltTimePeriodTrafficShaping(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltTimePeriodTrafficShaping"].getBigDecimalValue()
			}
			
			def void setDltTimePeriodTrafficShaping(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltTimePeriodTrafficShaping"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltTimePeriodTrafficShaping"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
		static class DltMessageFiltering implements IWrapper<GContainer> {
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
		        if (!(object instanceof DltMessageFiltering)){
					return false
				}
				this.target == (object as DltMessageFiltering).target
			}
		
			def BigInteger getDltDefaultMaxLogLevel(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltDefaultMaxLogLevel"].getBigIntegerValue()
			}
			
			def void setDltDefaultMaxLogLevel(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltDefaultMaxLogLevel"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltDefaultMaxLogLevel"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
			
			def BigInteger getDltFactoryDefaultMaxLogLevel(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltFactoryDefaultMaxLogLevel"].getBigIntegerValue()
			}
			
			def void setDltFactoryDefaultMaxLogLevel(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltFactoryDefaultMaxLogLevel"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltFactoryDefaultMaxLogLevel"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getDltFilterMessages(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltFilterMessages"].getBooleanValue()
			}
			
			def void setDltFilterMessages(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltFilterMessages"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltFilterMessages"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
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
		
			def String getDltEcuId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltEcuId"].getStringValue()
			}
			
			def void setDltEcuId(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltEcuId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltEcuId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def DltHeaderPayloadEndianes getDltHeaderPayloadEndianes(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltHeaderPayloadEndianes"].getDltHeaderPayloadEndianesValue()
			}
			
			def void setDltHeaderPayloadEndianes(DltHeaderPayloadEndianes value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltHeaderPayloadEndianes"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltHeaderPayloadEndianes"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum DltHeaderPayloadEndianes {
				BigEndian, 
				LittleEndian
			}
			
			def DltHeaderPayloadEndianes getDltHeaderPayloadEndianesValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "BigEndian" : DltHeaderPayloadEndianes.BigEndian
					case "LittleEndian" : DltHeaderPayloadEndianes.LittleEndian
				}
			}
			
			def void setDltHeaderPayloadEndianesValue(GParameterValue parameterValue, DltHeaderPayloadEndianes value){
				parameterValue.setValue(value)
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
			
			def Boolean getDltHeaderUseExtendedHeader(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltHeaderUseExtendedHeader"].getBooleanValue()
			}
			
			def void setDltHeaderUseExtendedHeader(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltHeaderUseExtendedHeader"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltHeaderUseExtendedHeader"].createParameterValue()
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
			
			def BigInteger getDltMaxMessageLength(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltMaxMessageLength"].getBigIntegerValue()
			}
			
			def void setDltMaxMessageLength(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltMaxMessageLength"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltMaxMessageLength"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
			
			
			
			
		}
		
	}
	static class DltVfbTrace implements IWrapper<GContainer> {
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
	        if (!(object instanceof DltVfbTrace)){
				return false
			}
			this.target == (object as DltVfbTrace).target
		}
	
		def String getDltVfbTraceFunction(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltVfbTraceFunction"].getStringValue()
		}
		
		def void setDltVfbTraceFunction(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "DltVfbTraceFunction"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "DltVfbTraceFunction"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
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
