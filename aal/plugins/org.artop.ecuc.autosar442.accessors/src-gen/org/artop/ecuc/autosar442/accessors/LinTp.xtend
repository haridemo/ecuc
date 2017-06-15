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
package org.artop.ecuc.autosar442.accessors

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

class LinTp implements IWrapper<GModuleConfiguration> {
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

	def LinTpGeneral getLinTpGeneral(){
		moduleConfiguration.getByType(typeof(LinTpGeneral))
	}

	def void setLinTpGeneral(LinTpGeneral linTpGeneral){
		val GContainer container = linTpGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "LinTpGeneral")
	}
	def LinTpGlobalConfig getLinTpGlobalConfig(){
		moduleConfiguration.getByType(typeof(LinTpGlobalConfig))
	}

	def void setLinTpGlobalConfig(LinTpGlobalConfig linTpGlobalConfig){
		val GContainer container = linTpGlobalConfig.getTarget()
	    moduleConfiguration.setContainer(container, "LinTpGlobalConfig")
	}

	static class LinTpGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof LinTpGeneral)){
				return false
			}
			this.target == (object as LinTpGeneral).target
		}
	
		def Boolean getLinTpChangeParameterApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTpChangeParameterApi"].getBooleanValue()
		}
		
		def void setLinTpChangeParameterApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTpChangeParameterApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinTpChangeParameterApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getLinTpVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTpVersionInfoApi"].getBooleanValue()
		}
		
		def void setLinTpVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTpVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinTpVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}
	static class LinTpGlobalConfig implements IWrapper<GContainer> {
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
	        if (!(object instanceof LinTpGlobalConfig)){
				return false
			}
			this.target == (object as LinTpGlobalConfig).target
		}
	
		def BigInteger getLinTpMaxNumberOfRespPendingFrames(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTpMaxNumberOfRespPendingFrames"].getBigIntegerValue()
		}
		
		def void setLinTpMaxNumberOfRespPendingFrames(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTpMaxNumberOfRespPendingFrames"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinTpMaxNumberOfRespPendingFrames"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getLinTpMaxRxNSduCnt(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTpMaxRxNSduCnt"].getBigIntegerValue()
		}
		
		def void setLinTpMaxRxNSduCnt(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTpMaxRxNSduCnt"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinTpMaxRxNSduCnt"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getLinTpMaxTxNSduCnt(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTpMaxTxNSduCnt"].getBigIntegerValue()
		}
		
		def void setLinTpMaxTxNSduCnt(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTpMaxTxNSduCnt"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinTpMaxTxNSduCnt"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getLinTpP2Max(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTpP2Max"].getBigDecimalValue()
		}
		
		def void setLinTpP2Max(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTpP2Max"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinTpP2Max"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getLinTpP2Timing(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTpP2Timing"].getBigDecimalValue()
		}
		
		def void setLinTpP2Timing(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTpP2Timing"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinTpP2Timing"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<LinTpChannelConfig> getLinTpChannelConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "LinTpChannelConfig")
				}
			}
			return new BasicWrappingEList<LinTpChannelConfig, GContainer>(filteredContainers, typeof(LinTpChannelConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar442.accessors.LinTp.LinTpGlobalConfig.LinTpChannelConfig linTpChannelConfig) {
					linTpChannelConfig.target?.gSetDefinition(containerValue.getContainerDefinition("LinTpChannelConfig"))
					super.delegateAdd(linTpChannelConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar442.accessors.LinTp.LinTpGlobalConfig.LinTpChannelConfig linTpChannelConfig) {
					linTpChannelConfig.target?.gSetDefinition(containerValue.getContainerDefinition("LinTpChannelConfig"))
					super.delegateAdd(index, linTpChannelConfig)
				}
			}
		}
		
		def List<LinTpRxNSdu> getLinTpRxNSdus(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "LinTpRxNSdu")
				}
			}
			return new BasicWrappingEList<LinTpRxNSdu, GContainer>(filteredContainers, typeof(LinTpRxNSdu), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar442.accessors.LinTp.LinTpGlobalConfig.LinTpRxNSdu linTpRxNSdu) {
					linTpRxNSdu.target?.gSetDefinition(containerValue.getContainerDefinition("LinTpRxNSdu"))
					super.delegateAdd(linTpRxNSdu)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar442.accessors.LinTp.LinTpGlobalConfig.LinTpRxNSdu linTpRxNSdu) {
					linTpRxNSdu.target?.gSetDefinition(containerValue.getContainerDefinition("LinTpRxNSdu"))
					super.delegateAdd(index, linTpRxNSdu)
				}
			}
		}
		
		def List<LinTpTxNSdu> getLinTpTxNSdus(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "LinTpTxNSdu")
				}
			}
			return new BasicWrappingEList<LinTpTxNSdu, GContainer>(filteredContainers, typeof(LinTpTxNSdu), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar442.accessors.LinTp.LinTpGlobalConfig.LinTpTxNSdu linTpTxNSdu) {
					linTpTxNSdu.target?.gSetDefinition(containerValue.getContainerDefinition("LinTpTxNSdu"))
					super.delegateAdd(linTpTxNSdu)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar442.accessors.LinTp.LinTpGlobalConfig.LinTpTxNSdu linTpTxNSdu) {
					linTpTxNSdu.target?.gSetDefinition(containerValue.getContainerDefinition("LinTpTxNSdu"))
					super.delegateAdd(index, linTpTxNSdu)
				}
			}
		}
		
		
		static class LinTpChannelConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof LinTpChannelConfig)){
					return false
				}
				this.target == (object as LinTpChannelConfig).target
			}
		
			def Boolean getLinTpDropNotRequestedNad(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTpDropNotRequestedNad"].getBooleanValue()
			}
			
			def void setLinTpDropNotRequestedNad(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTpDropNotRequestedNad"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinTpDropNotRequestedNad"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getLinTpScheduleChangeDiag(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTpScheduleChangeDiag"].getBooleanValue()
			}
			
			def void setLinTpScheduleChangeDiag(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTpScheduleChangeDiag"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinTpScheduleChangeDiag"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			def org.artop.ecuc.autosar442.accessors.ComM.ComMConfigSet.ComMChannel getLinTpChannelRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.ComM.ComMConfigSet.ComMChannel), "LinTpChannelRef")
			}
			
			def void setLinTpChannelRef(org.artop.ecuc.autosar442.accessors.ComM.ComMConfigSet.ComMChannel object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "LinTpChannelRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class LinTpRxNSdu implements IWrapper<GContainer> {
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
		        if (!(object instanceof LinTpRxNSdu)){
					return false
				}
				this.target == (object as LinTpRxNSdu).target
			}
		
			def BigDecimal getLinTpNcr(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTpNcr"].getBigDecimalValue()
			}
			
			def void setLinTpNcr(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTpNcr"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinTpNcr"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getLinTpRxNSduId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTpRxNSduId"].getBigIntegerValue()
			}
			
			def void setLinTpRxNSduId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTpRxNSduId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinTpRxNSduId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getLinTpRxNSduNad(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTpRxNSduNad"].getBigIntegerValue()
			}
			
			def void setLinTpRxNSduNad(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTpRxNSduNad"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinTpRxNSduNad"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar442.accessors.ComM.ComMConfigSet.ComMChannel getLinTpRxNSduChannelRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.ComM.ComMConfigSet.ComMChannel), "LinTpRxNSduChannelRef")
			}
			
			def void setLinTpRxNSduChannelRef(org.artop.ecuc.autosar442.accessors.ComM.ComMConfigSet.ComMChannel object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "LinTpRxNSduChannelRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar442.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getLinTpRxNSduPduRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "LinTpRxNSduPduRef")
			}
			
			def void setLinTpRxNSduPduRef(org.artop.ecuc.autosar442.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "LinTpRxNSduPduRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class LinTpTxNSdu implements IWrapper<GContainer> {
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
		        if (!(object instanceof LinTpTxNSdu)){
					return false
				}
				this.target == (object as LinTpTxNSdu).target
			}
		
			def BigInteger getLinTpMaxBufReq(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTpMaxBufReq"].getBigIntegerValue()
			}
			
			def void setLinTpMaxBufReq(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTpMaxBufReq"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinTpMaxBufReq"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getLinTpNas(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTpNas"].getBigDecimalValue()
			}
			
			def void setLinTpNas(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTpNas"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinTpNas"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getLinTpNcs(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTpNcs"].getBigDecimalValue()
			}
			
			def void setLinTpNcs(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTpNcs"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinTpNcs"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getLinTpTxNSduId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTpTxNSduId"].getBigIntegerValue()
			}
			
			def void setLinTpTxNSduId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTpTxNSduId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinTpTxNSduId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getLinTpTxNSduNad(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTpTxNSduNad"].getBigIntegerValue()
			}
			
			def void setLinTpTxNSduNad(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "LinTpTxNSduNad"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "LinTpTxNSduNad"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar442.accessors.ComM.ComMConfigSet.ComMChannel getLinTpTxNSduChannelRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.ComM.ComMConfigSet.ComMChannel), "LinTpTxNSduChannelRef")
			}
			
			def void setLinTpTxNSduChannelRef(org.artop.ecuc.autosar442.accessors.ComM.ComMConfigSet.ComMChannel object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "LinTpTxNSduChannelRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar442.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getLinTpTxNSduPduRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "LinTpTxNSduPduRef")
			}
			
			def void setLinTpTxNSduPduRef(org.artop.ecuc.autosar442.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "LinTpTxNSduPduRef"], object.getTarget())
				}
			}
			
			
			
		}
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof LinTp)){
			return false
		}
		this.target == (object as LinTp).target
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
