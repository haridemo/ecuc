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

class PduR implements IWrapper<GModuleConfiguration> {
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

	def List<PduRBswModules> getPduRBswModules(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "PduRBswModules")
			}
		}
		return new BasicWrappingEList<PduRBswModules, GContainer>(filteredContainers, typeof(PduRBswModules), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar421.accessors.PduR.PduRBswModules pduRBswModules) {
				pduRBswModules.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("PduRBswModules"))
				super.delegateAdd(pduRBswModules)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.PduR.PduRBswModules pduRBswModules) {
				pduRBswModules.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("PduRBswModules"))
				super.delegateAdd(index, pduRBswModules)
			}
		}
	}
	def PduRGeneral getPduRGeneral(){
		moduleConfiguration.getByType(typeof(PduRGeneral))
	}

	def void setPduRGeneral(PduRGeneral pduRGeneral){
		val GContainer container = pduRGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "PduRGeneral")
	}
	def PduRRoutingTables getPduRRoutingTables(){
		moduleConfiguration.getByType(typeof(PduRRoutingTables))
	}

	def void setPduRRoutingTables(PduRRoutingTables pduRRoutingTables){
		val GContainer container = pduRRoutingTables.getTarget()
	    moduleConfiguration.setContainer(container, "PduRRoutingTables")
	}

	static class PduRBswModules implements IWrapper<GContainer> {
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
	        if (!(object instanceof PduRBswModules)){
				return false
			}
			this.target == (object as PduRBswModules).target
		}
	
		def Boolean getPduRCancelReceive(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRCancelReceive"].getBooleanValue()
		}
		
		def void setPduRCancelReceive(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRCancelReceive"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PduRCancelReceive"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getPduRCancelTransmit(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRCancelTransmit"].getBooleanValue()
		}
		
		def void setPduRCancelTransmit(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRCancelTransmit"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PduRCancelTransmit"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getPduRChangeParameterApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRChangeParameterApi"].getBooleanValue()
		}
		
		def void setPduRChangeParameterApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRChangeParameterApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PduRChangeParameterApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getPduRCommunicationInterface(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRCommunicationInterface"].getBooleanValue()
		}
		
		def void setPduRCommunicationInterface(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRCommunicationInterface"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PduRCommunicationInterface"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getPduRLowerModule(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRLowerModule"].getBooleanValue()
		}
		
		def void setPduRLowerModule(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRLowerModule"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PduRLowerModule"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getPduRRetransmission(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRRetransmission"].getBooleanValue()
		}
		
		def void setPduRRetransmission(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRRetransmission"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PduRRetransmission"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getPduRTransportProtocol(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRTransportProtocol"].getBooleanValue()
		}
		
		def void setPduRTransportProtocol(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRTransportProtocol"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PduRTransportProtocol"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getPduRTriggertransmit(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRTriggertransmit"].getBooleanValue()
		}
		
		def void setPduRTriggertransmit(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRTriggertransmit"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PduRTriggertransmit"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getPduRTxConfirmation(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRTxConfirmation"].getBooleanValue()
		}
		
		def void setPduRTxConfirmation(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRTxConfirmation"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PduRTxConfirmation"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getPduRUpperModule(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRUpperModule"].getBooleanValue()
		}
		
		def void setPduRUpperModule(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRUpperModule"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PduRUpperModule"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getPduRUseTag(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRUseTag"].getBooleanValue()
		}
		
		def void setPduRUseTag(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRUseTag"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PduRUseTag"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
		
	}
	static class PduRGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof PduRGeneral)){
				return false
			}
			this.target == (object as PduRGeneral).target
		}
	
		def Boolean getPduRDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRDevErrorDetect"].getBooleanValue()
		}
		
		def void setPduRDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PduRDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getPduRMetaDataSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRMetaDataSupport"].getBooleanValue()
		}
		
		def void setPduRMetaDataSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRMetaDataSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PduRMetaDataSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getPduRVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRVersionInfoApi"].getBooleanValue()
		}
		
		def void setPduRVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PduRVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getPduRZeroCostOperation(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRZeroCostOperation"].getBooleanValue()
		}
		
		def void setPduRZeroCostOperation(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRZeroCostOperation"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PduRZeroCostOperation"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}
	static class PduRRoutingTables implements IWrapper<GContainer> {
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
	        if (!(object instanceof PduRRoutingTables)){
				return false
			}
			this.target == (object as PduRRoutingTables).target
		}
	
		def BigInteger getPduRConfigurationId(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRConfigurationId"].getBigIntegerValue()
		}
		
		def void setPduRConfigurationId(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRConfigurationId"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PduRConfigurationId"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getPduRMaxRoutingPathCnt(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRMaxRoutingPathCnt"].getBigIntegerValue()
		}
		
		def void setPduRMaxRoutingPathCnt(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRMaxRoutingPathCnt"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PduRMaxRoutingPathCnt"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getPduRMaxRoutingPathGroupCnt(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRMaxRoutingPathGroupCnt"].getBigIntegerValue()
		}
		
		def void setPduRMaxRoutingPathGroupCnt(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRMaxRoutingPathGroupCnt"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PduRMaxRoutingPathGroupCnt"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getPduRMaxRoutingTableCnt(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRMaxRoutingTableCnt"].getBigIntegerValue()
		}
		
		def void setPduRMaxRoutingTableCnt(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRMaxRoutingTableCnt"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PduRMaxRoutingTableCnt"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<PduRRoutingPathGroup> getPduRRoutingPathGroups(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "PduRRoutingPathGroup")
				}
			}
			return new BasicWrappingEList<PduRRoutingPathGroup, GContainer>(filteredContainers, typeof(PduRRoutingPathGroup), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.PduR.PduRRoutingTables.PduRRoutingPathGroup pduRRoutingPathGroup) {
					pduRRoutingPathGroup.target?.gSetDefinition(containerValue.getContainerDefinition("PduRRoutingPathGroup"))
					super.delegateAdd(pduRRoutingPathGroup)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.PduR.PduRRoutingTables.PduRRoutingPathGroup pduRRoutingPathGroup) {
					pduRRoutingPathGroup.target?.gSetDefinition(containerValue.getContainerDefinition("PduRRoutingPathGroup"))
					super.delegateAdd(index, pduRRoutingPathGroup)
				}
			}
		}
		
		def List<PduRRoutingTable> getPduRRoutingTables(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "PduRRoutingTable")
				}
			}
			return new BasicWrappingEList<PduRRoutingTable, GContainer>(filteredContainers, typeof(PduRRoutingTable), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.PduR.PduRRoutingTables.PduRRoutingTable pduRRoutingTable) {
					pduRRoutingTable.target?.gSetDefinition(containerValue.getContainerDefinition("PduRRoutingTable"))
					super.delegateAdd(pduRRoutingTable)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.PduR.PduRRoutingTables.PduRRoutingTable pduRRoutingTable) {
					pduRRoutingTable.target?.gSetDefinition(containerValue.getContainerDefinition("PduRRoutingTable"))
					super.delegateAdd(index, pduRRoutingTable)
				}
			}
		}
		
		def PduRTpBufferTable getPduRTpBufferTable(){
			containerValue.getByType(typeof(PduRTpBufferTable))
		}
		
		def void setPduRTpBufferTable(PduRTpBufferTable pduRTpBufferTable){
			val GContainer subContainer = pduRTpBufferTable.getTarget()
			containerValue.setContainer(subContainer, "PduRTpBufferTable")
		}
		
		def PduRTxBufferTable getPduRTxBufferTable(){
			containerValue.getByType(typeof(PduRTxBufferTable))
		}
		
		def void setPduRTxBufferTable(PduRTxBufferTable pduRTxBufferTable){
			val GContainer subContainer = pduRTxBufferTable.getTarget()
			containerValue.setContainer(subContainer, "PduRTxBufferTable")
		}
		
		
		static class PduRRoutingPathGroup implements IWrapper<GContainer> {
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
		        if (!(object instanceof PduRRoutingPathGroup)){
					return false
				}
				this.target == (object as PduRRoutingPathGroup).target
			}
		
			def Boolean getPduRIsEnabledAtInit(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRIsEnabledAtInit"].getBooleanValue()
			}
			
			def void setPduRIsEnabledAtInit(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRIsEnabledAtInit"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PduRIsEnabledAtInit"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getPduRRoutingPathGroupId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRRoutingPathGroupId"].getBigIntegerValue()
			}
			
			def void setPduRRoutingPathGroupId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRRoutingPathGroupId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PduRRoutingPathGroupId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def List<org.artop.ecuc.autosar421.accessors.PduR.PduRRoutingTables.PduRRoutingTable.PduRRoutingPath.PduRDestPdu> getPduRDestPduRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "PduRDestPduRef"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "PduRDestPduRef")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.PduR.PduRRoutingTables.PduRRoutingTable.PduRRoutingPath.PduRDestPdu>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.PduR.PduRRoutingTables.PduRRoutingTable.PduRRoutingPath.PduRDestPdu)) {
					override protected wrap(org.artop.ecuc.autosar421.accessors.PduR.PduRRoutingTables.PduRRoutingTable.PduRRoutingPath.PduRDestPdu object) throws CoreException {
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
								return new org.artop.ecuc.autosar421.accessors.PduR.PduRRoutingTables.PduRRoutingTable.PduRRoutingPath.PduRDestPdu(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			
		}
		
		static class PduRRoutingTable implements IWrapper<GContainer> {
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
		        if (!(object instanceof PduRRoutingTable)){
					return false
				}
				this.target == (object as PduRRoutingTable).target
			}
		
			
			
			def List<PduRRoutingPath> getPduRRoutingPaths(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "PduRRoutingPath")
					}
				}
				return new BasicWrappingEList<PduRRoutingPath, GContainer>(filteredContainers, typeof(PduRRoutingPath), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.PduR.PduRRoutingTables.PduRRoutingTable.PduRRoutingPath pduRRoutingPath) {
						pduRRoutingPath.target?.gSetDefinition(containerValue.getContainerDefinition("PduRRoutingPath"))
						super.delegateAdd(pduRRoutingPath)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.PduR.PduRRoutingTables.PduRRoutingTable.PduRRoutingPath pduRRoutingPath) {
						pduRRoutingPath.target?.gSetDefinition(containerValue.getContainerDefinition("PduRRoutingPath"))
						super.delegateAdd(index, pduRRoutingPath)
					}
				}
			}
			
			
			static class PduRRoutingPath implements IWrapper<GContainer> {
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
			        if (!(object instanceof PduRRoutingPath)){
						return false
					}
					this.target == (object as PduRRoutingPath).target
				}
			
				
				
				def List<PduRDestPdu> getPduRDestPdus(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "PduRDestPdu")
						}
					}
					return new BasicWrappingEList<PduRDestPdu, GContainer>(filteredContainers, typeof(PduRDestPdu), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.PduR.PduRRoutingTables.PduRRoutingTable.PduRRoutingPath.PduRDestPdu pduRDestPdu) {
							pduRDestPdu.target?.gSetDefinition(containerValue.getContainerDefinition("PduRDestPdu"))
							super.delegateAdd(pduRDestPdu)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.PduR.PduRRoutingTables.PduRRoutingTable.PduRRoutingPath.PduRDestPdu pduRDestPdu) {
							pduRDestPdu.target?.gSetDefinition(containerValue.getContainerDefinition("PduRDestPdu"))
							super.delegateAdd(index, pduRDestPdu)
						}
					}
				}
				
				def PduRSrcPdu getPduRSrcPdu(){
					containerValue.getByType(typeof(PduRSrcPdu))
				}
				
				def void setPduRSrcPdu(PduRSrcPdu pduRSrcPdu){
					val GContainer subContainer = pduRSrcPdu.getTarget()
					containerValue.setContainer(subContainer, "PduRSrcPdu")
				}
				
				
				static class PduRDestPdu implements IWrapper<GContainer> {
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
				        if (!(object instanceof PduRDestPdu)){
							return false
						}
						this.target == (object as PduRDestPdu).target
					}
				
					def PduRDestPduDataProvision getPduRDestPduDataProvision(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRDestPduDataProvision"].getPduRDestPduDataProvisionValue()
					}
					
					def void setPduRDestPduDataProvision(PduRDestPduDataProvision value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRDestPduDataProvision"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PduRDestPduDataProvision"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					enum PduRDestPduDataProvision {
						PDUR_DIRECT, 
						PDUR_TRIGGERTRANSMIT
					}
					
					def PduRDestPduDataProvision getPduRDestPduDataProvisionValue(GParameterValue parameterValue){
						val castedParameterValue = parameterValue as EcucTextualParamValue
						switch (castedParameterValue.value){
							case "PDUR_DIRECT" : PduRDestPduDataProvision.PDUR_DIRECT
							case "PDUR_TRIGGERTRANSMIT" : PduRDestPduDataProvision.PDUR_TRIGGERTRANSMIT
						}
					}
					
					def void setPduRDestPduDataProvisionValue(GParameterValue parameterValue, PduRDestPduDataProvision value){
						parameterValue.setValue(value)
					}
					
					def BigInteger getPduRDestPduHandleId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRDestPduHandleId"].getBigIntegerValue()
					}
					
					def void setPduRDestPduHandleId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRDestPduHandleId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PduRDestPduHandleId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getPduRTpThreshold(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRTpThreshold"].getBigIntegerValue()
					}
					
					def void setPduRTpThreshold(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRTpThreshold"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PduRTpThreshold"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def Boolean getPduRTransmissionConfirmation(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRTransmissionConfirmation"].getBooleanValue()
					}
					
					def void setPduRTransmissionConfirmation(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRTransmissionConfirmation"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PduRTransmissionConfirmation"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getPduRDestPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "PduRDestPduRef")
					}
					
					def void setPduRDestPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "PduRDestPduRef"], object.getTarget())
						}
					}
					
					def org.artop.ecuc.autosar421.accessors.PduR.PduRRoutingTables.PduRTxBufferTable.PduRTxBuffer getPduRDestTxBufferRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.PduR.PduRRoutingTables.PduRTxBufferTable.PduRTxBuffer), "PduRDestTxBufferRef")
					}
					
					def void setPduRDestTxBufferRef(org.artop.ecuc.autosar421.accessors.PduR.PduRRoutingTables.PduRTxBufferTable.PduRTxBuffer object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "PduRDestTxBufferRef"], object.getTarget())
						}
					}
					
					
					def PduRDefaultValue getPduRDefaultValue(){
						containerValue.getByType(typeof(PduRDefaultValue))
					}
					
					def void setPduRDefaultValue(PduRDefaultValue pduRDefaultValue){
						val GContainer subContainer = pduRDefaultValue.getTarget()
						containerValue.setContainer(subContainer, "PduRDefaultValue")
					}
					
					
					static class PduRDefaultValue implements IWrapper<GContainer> {
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
					        if (!(object instanceof PduRDefaultValue)){
								return false
							}
							this.target == (object as PduRDefaultValue).target
						}
					
						
						
						def List<PduRDefaultValueElement> getPduRDefaultValueElements(){
							val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
								override protected accept(GContainer item) {
									return accept(item, typeof(GContainerDef), "PduRDefaultValueElement")
								}
							}
							return new BasicWrappingEList<PduRDefaultValueElement, GContainer>(filteredContainers, typeof(PduRDefaultValueElement), typeof(GContainer)) {
								override protected delegateAdd(org.artop.ecuc.autosar421.accessors.PduR.PduRRoutingTables.PduRRoutingTable.PduRRoutingPath.PduRDestPdu.PduRDefaultValue.PduRDefaultValueElement pduRDefaultValueElement) {
									pduRDefaultValueElement.target?.gSetDefinition(containerValue.getContainerDefinition("PduRDefaultValueElement"))
									super.delegateAdd(pduRDefaultValueElement)
								}
						
								override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.PduR.PduRRoutingTables.PduRRoutingTable.PduRRoutingPath.PduRDestPdu.PduRDefaultValue.PduRDefaultValueElement pduRDefaultValueElement) {
									pduRDefaultValueElement.target?.gSetDefinition(containerValue.getContainerDefinition("PduRDefaultValueElement"))
									super.delegateAdd(index, pduRDefaultValueElement)
								}
							}
						}
						
						
						static class PduRDefaultValueElement implements IWrapper<GContainer> {
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
						        if (!(object instanceof PduRDefaultValueElement)){
									return false
								}
								this.target == (object as PduRDefaultValueElement).target
							}
						
							def BigInteger getPduRDefaultValueElement(){
								containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRDefaultValueElement"].getBigIntegerValue()
							}
							
							def void setPduRDefaultValueElement(BigInteger value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRDefaultValueElement"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PduRDefaultValueElement"].createParameterValue()
										containerValue.gGetParameterValues += parameterValue
									}
								}
								parameterValue.setValue(value)
							}
							
							def BigInteger getPduRDefaultValueElementBytePosition(){
								containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRDefaultValueElementBytePosition"].getBigIntegerValue()
							}
							
							def void setPduRDefaultValueElementBytePosition(BigInteger value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRDefaultValueElementBytePosition"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PduRDefaultValueElementBytePosition"].createParameterValue()
										containerValue.gGetParameterValues += parameterValue
									}
								}
								parameterValue.setValue(value)
							}
							
							
							
							
						}
						
					}
					
				}
				
				static class PduRSrcPdu implements IWrapper<GContainer> {
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
				        if (!(object instanceof PduRSrcPdu)){
							return false
						}
						this.target == (object as PduRSrcPdu).target
					}
				
					def BigInteger getPduRSourcePduHandleId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRSourcePduHandleId"].getBigIntegerValue()
					}
					
					def void setPduRSourcePduHandleId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRSourcePduHandleId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PduRSourcePduHandleId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def Boolean getPduRSrcPduUpTxConf(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRSrcPduUpTxConf"].getBooleanValue()
					}
					
					def void setPduRSrcPduUpTxConf(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRSrcPduUpTxConf"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PduRSrcPduUpTxConf"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getPduRSrcPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "PduRSrcPduRef")
					}
					
					def void setPduRSrcPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "PduRSrcPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
		}
		
		static class PduRTpBufferTable implements IWrapper<GContainer> {
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
		        if (!(object instanceof PduRTpBufferTable)){
					return false
				}
				this.target == (object as PduRTpBufferTable).target
			}
		
			
			
			def List<PduRTpBuffer> getPduRTpBuffers(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "PduRTpBuffer")
					}
				}
				return new BasicWrappingEList<PduRTpBuffer, GContainer>(filteredContainers, typeof(PduRTpBuffer), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.PduR.PduRRoutingTables.PduRTpBufferTable.PduRTpBuffer pduRTpBuffer) {
						pduRTpBuffer.target?.gSetDefinition(containerValue.getContainerDefinition("PduRTpBuffer"))
						super.delegateAdd(pduRTpBuffer)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.PduR.PduRRoutingTables.PduRTpBufferTable.PduRTpBuffer pduRTpBuffer) {
						pduRTpBuffer.target?.gSetDefinition(containerValue.getContainerDefinition("PduRTpBuffer"))
						super.delegateAdd(index, pduRTpBuffer)
					}
				}
			}
			
			
			static class PduRTpBuffer implements IWrapper<GContainer> {
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
			        if (!(object instanceof PduRTpBuffer)){
						return false
					}
					this.target == (object as PduRTpBuffer).target
				}
			
				def BigInteger getPduRTpBufferLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRTpBufferLength"].getBigIntegerValue()
				}
				
				def void setPduRTpBufferLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRTpBufferLength"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PduRTpBufferLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
		}
		
		static class PduRTxBufferTable implements IWrapper<GContainer> {
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
		        if (!(object instanceof PduRTxBufferTable)){
					return false
				}
				this.target == (object as PduRTxBufferTable).target
			}
		
			
			
			def List<PduRTxBuffer> getPduRTxBuffers(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "PduRTxBuffer")
					}
				}
				return new BasicWrappingEList<PduRTxBuffer, GContainer>(filteredContainers, typeof(PduRTxBuffer), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.PduR.PduRRoutingTables.PduRTxBufferTable.PduRTxBuffer pduRTxBuffer) {
						pduRTxBuffer.target?.gSetDefinition(containerValue.getContainerDefinition("PduRTxBuffer"))
						super.delegateAdd(pduRTxBuffer)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.PduR.PduRRoutingTables.PduRTxBufferTable.PduRTxBuffer pduRTxBuffer) {
						pduRTxBuffer.target?.gSetDefinition(containerValue.getContainerDefinition("PduRTxBuffer"))
						super.delegateAdd(index, pduRTxBuffer)
					}
				}
			}
			
			
			static class PduRTxBuffer implements IWrapper<GContainer> {
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
			        if (!(object instanceof PduRTxBuffer)){
						return false
					}
					this.target == (object as PduRTxBuffer).target
				}
			
				def BigInteger getPduRPduMaxLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRPduMaxLength"].getBigIntegerValue()
				}
				
				def void setPduRPduMaxLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRPduMaxLength"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PduRPduMaxLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getPduRTxBufferDepth(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRTxBufferDepth"].getBigIntegerValue()
				}
				
				def void setPduRTxBufferDepth(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "PduRTxBufferDepth"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "PduRTxBufferDepth"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
		}
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof PduR)){
			return false
		}
		this.target == (object as PduR).target
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
