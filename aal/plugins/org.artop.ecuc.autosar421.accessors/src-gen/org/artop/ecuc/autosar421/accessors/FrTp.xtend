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

class FrTp implements IWrapper<GModuleConfiguration> {
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

	def FrTpGeneral getFrTpGeneral(){
		moduleConfiguration.getByType(typeof(FrTpGeneral))
	}

	def void setFrTpGeneral(FrTpGeneral frTpGeneral){
		val GContainer container = frTpGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "FrTpGeneral")
	}
	def FrTpMultipleConfig getFrTpMultipleConfig(){
		moduleConfiguration.getByType(typeof(FrTpMultipleConfig))
	}

	def void setFrTpMultipleConfig(FrTpMultipleConfig frTpMultipleConfig){
		val GContainer container = frTpMultipleConfig.getTarget()
	    moduleConfiguration.setContainer(container, "FrTpMultipleConfig")
	}

	static class FrTpGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof FrTpGeneral)){
				return false
			}
			this.target == (object as FrTpGeneral).target
		}
	
		def Boolean getFrTpAckRt(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpAckRt"].getBooleanValue()
		}
		
		def void setFrTpAckRt(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpAckRt"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTpAckRt"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getFrTpChanNum(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpChanNum"].getBigIntegerValue()
		}
		
		def void setFrTpChanNum(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpChanNum"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTpChanNum"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getFrTpChangeParamApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpChangeParamApi"].getBooleanValue()
		}
		
		def void setFrTpChangeParamApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpChangeParamApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTpChangeParamApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFrTpDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpDevErrorDetect"].getBooleanValue()
		}
		
		def void setFrTpDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTpDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFrTpFullDuplexEnable(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpFullDuplexEnable"].getBooleanValue()
		}
		
		def void setFrTpFullDuplexEnable(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpFullDuplexEnable"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTpFullDuplexEnable"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getFrTpMainFuncCycle(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpMainFuncCycle"].getBigDecimalValue()
		}
		
		def void setFrTpMainFuncCycle(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpMainFuncCycle"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTpMainFuncCycle"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getFrTpTransmitCancellation(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpTransmitCancellation"].getBooleanValue()
		}
		
		def void setFrTpTransmitCancellation(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpTransmitCancellation"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTpTransmitCancellation"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFrTpUnknownMsgLength(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpUnknownMsgLength"].getBooleanValue()
		}
		
		def void setFrTpUnknownMsgLength(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpUnknownMsgLength"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTpUnknownMsgLength"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFrTpVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpVersionInfoApi"].getBooleanValue()
		}
		
		def void setFrTpVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTpVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}
	static class FrTpMultipleConfig implements IWrapper<GContainer> {
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
	        if (!(object instanceof FrTpMultipleConfig)){
				return false
			}
			this.target == (object as FrTpMultipleConfig).target
		}
	
		def BigInteger getFrTpMaxConnectionCnt(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpMaxConnectionCnt"].getBigIntegerValue()
		}
		
		def void setFrTpMaxConnectionCnt(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpMaxConnectionCnt"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTpMaxConnectionCnt"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<FrTpConnection> getFrTpConnections(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "FrTpConnection")
				}
			}
			return new BasicWrappingEList<FrTpConnection, GContainer>(filteredContainers, typeof(FrTpConnection), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.FrTp.FrTpMultipleConfig.FrTpConnection frTpConnection) {
					frTpConnection.target?.gSetDefinition(containerValue.getContainerDefinition("FrTpConnection"))
					super.delegateAdd(frTpConnection)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.FrTp.FrTpMultipleConfig.FrTpConnection frTpConnection) {
					frTpConnection.target?.gSetDefinition(containerValue.getContainerDefinition("FrTpConnection"))
					super.delegateAdd(index, frTpConnection)
				}
			}
		}
		
		def List<FrTpConnectionControl> getFrTpConnectionControls(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "FrTpConnectionControl")
				}
			}
			return new BasicWrappingEList<FrTpConnectionControl, GContainer>(filteredContainers, typeof(FrTpConnectionControl), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.FrTp.FrTpMultipleConfig.FrTpConnectionControl frTpConnectionControl) {
					frTpConnectionControl.target?.gSetDefinition(containerValue.getContainerDefinition("FrTpConnectionControl"))
					super.delegateAdd(frTpConnectionControl)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.FrTp.FrTpMultipleConfig.FrTpConnectionControl frTpConnectionControl) {
					frTpConnectionControl.target?.gSetDefinition(containerValue.getContainerDefinition("FrTpConnectionControl"))
					super.delegateAdd(index, frTpConnectionControl)
				}
			}
		}
		
		def List<FrTpRxPduPool> getFrTpRxPduPools(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "FrTpRxPduPool")
				}
			}
			return new BasicWrappingEList<FrTpRxPduPool, GContainer>(filteredContainers, typeof(FrTpRxPduPool), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.FrTp.FrTpMultipleConfig.FrTpRxPduPool frTpRxPduPool) {
					frTpRxPduPool.target?.gSetDefinition(containerValue.getContainerDefinition("FrTpRxPduPool"))
					super.delegateAdd(frTpRxPduPool)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.FrTp.FrTpMultipleConfig.FrTpRxPduPool frTpRxPduPool) {
					frTpRxPduPool.target?.gSetDefinition(containerValue.getContainerDefinition("FrTpRxPduPool"))
					super.delegateAdd(index, frTpRxPduPool)
				}
			}
		}
		
		def List<FrTpTxPduPool> getFrTpTxPduPools(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "FrTpTxPduPool")
				}
			}
			return new BasicWrappingEList<FrTpTxPduPool, GContainer>(filteredContainers, typeof(FrTpTxPduPool), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.FrTp.FrTpMultipleConfig.FrTpTxPduPool frTpTxPduPool) {
					frTpTxPduPool.target?.gSetDefinition(containerValue.getContainerDefinition("FrTpTxPduPool"))
					super.delegateAdd(frTpTxPduPool)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.FrTp.FrTpMultipleConfig.FrTpTxPduPool frTpTxPduPool) {
					frTpTxPduPool.target?.gSetDefinition(containerValue.getContainerDefinition("FrTpTxPduPool"))
					super.delegateAdd(index, frTpTxPduPool)
				}
			}
		}
		
		
		static class FrTpConnection implements IWrapper<GContainer> {
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
		        if (!(object instanceof FrTpConnection)){
					return false
				}
				this.target == (object as FrTpConnection).target
			}
		
			def Boolean getFrTpBandwidthLimitation(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpBandwidthLimitation"].getBooleanValue()
			}
			
			def void setFrTpBandwidthLimitation(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpBandwidthLimitation"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTpBandwidthLimitation"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getFrTpLa(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpLa"].getBigIntegerValue()
			}
			
			def void setFrTpLa(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpLa"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTpLa"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getFrTpMultipleReceiverCon(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpMultipleReceiverCon"].getBooleanValue()
			}
			
			def void setFrTpMultipleReceiverCon(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpMultipleReceiverCon"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTpMultipleReceiverCon"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getFrTpRa(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpRa"].getBigIntegerValue()
			}
			
			def void setFrTpRa(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpRa"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTpRa"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.FrTp.FrTpMultipleConfig.FrTpConnectionControl getFrTpConCtrlRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.FrTp.FrTpMultipleConfig.FrTpConnectionControl), "FrTpConCtrlRef")
			}
			
			def void setFrTpConCtrlRef(org.artop.ecuc.autosar421.accessors.FrTp.FrTpMultipleConfig.FrTpConnectionControl object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FrTpConCtrlRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.FrTp.FrTpMultipleConfig.FrTpRxPduPool getFrTpRxPduPoolRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.FrTp.FrTpMultipleConfig.FrTpRxPduPool), "FrTpRxPduPoolRef")
			}
			
			def void setFrTpRxPduPoolRef(org.artop.ecuc.autosar421.accessors.FrTp.FrTpMultipleConfig.FrTpRxPduPool object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FrTpRxPduPoolRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.FrTp.FrTpMultipleConfig.FrTpTxPduPool getFrTpTxPduPoolRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.FrTp.FrTpMultipleConfig.FrTpTxPduPool), "FrTpTxPduPoolRef")
			}
			
			def void setFrTpTxPduPoolRef(org.artop.ecuc.autosar421.accessors.FrTp.FrTpMultipleConfig.FrTpTxPduPool object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FrTpTxPduPoolRef"], object.getTarget())
				}
			}
			
			
			def FrTpRxSdu getFrTpRxSdu(){
				containerValue.getByType(typeof(FrTpRxSdu))
			}
			
			def void setFrTpRxSdu(FrTpRxSdu frTpRxSdu){
				val GContainer subContainer = frTpRxSdu.getTarget()
				containerValue.setContainer(subContainer, "FrTpRxSdu")
			}
			
			def FrTpTxSdu getFrTpTxSdu(){
				containerValue.getByType(typeof(FrTpTxSdu))
			}
			
			def void setFrTpTxSdu(FrTpTxSdu frTpTxSdu){
				val GContainer subContainer = frTpTxSdu.getTarget()
				containerValue.setContainer(subContainer, "FrTpTxSdu")
			}
			
			
			static class FrTpRxSdu implements IWrapper<GContainer> {
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
			        if (!(object instanceof FrTpRxSdu)){
						return false
					}
					this.target == (object as FrTpRxSdu).target
				}
			
				def BigInteger getFrTpRxSduId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpRxSduId"].getBigIntegerValue()
				}
				
				def void setFrTpRxSduId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpRxSduId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTpRxSduId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getFrTpRxSduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "FrTpRxSduRef")
				}
				
				def void setFrTpRxSduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FrTpRxSduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class FrTpTxSdu implements IWrapper<GContainer> {
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
			        if (!(object instanceof FrTpTxSdu)){
						return false
					}
					this.target == (object as FrTpTxSdu).target
				}
			
				def BigInteger getFrTpTxSduId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpTxSduId"].getBigIntegerValue()
				}
				
				def void setFrTpTxSduId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpTxSduId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTpTxSduId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getFrTpTxSduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "FrTpTxSduRef")
				}
				
				def void setFrTpTxSduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FrTpTxSduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class FrTpConnectionControl implements IWrapper<GContainer> {
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
		        if (!(object instanceof FrTpConnectionControl)){
					return false
				}
				this.target == (object as FrTpConnectionControl).target
			}
		
			def FrTpAckType getFrTpAckType(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpAckType"].getFrTpAckTypeValue()
			}
			
			def void setFrTpAckType(FrTpAckType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpAckType"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTpAckType"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum FrTpAckType {
				FRTP_ACK_WITH_RT, 
				FRTP_NO
			}
			
			def FrTpAckType getFrTpAckTypeValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "FRTP_ACK_WITH_RT" : FrTpAckType.FRTP_ACK_WITH_RT
					case "FRTP_NO" : FrTpAckType.FRTP_NO
				}
			}
			
			def void setFrTpAckTypeValue(GParameterValue parameterValue, FrTpAckType value){
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrTpMaxAr(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpMaxAr"].getBigIntegerValue()
			}
			
			def void setFrTpMaxAr(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpMaxAr"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTpMaxAr"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrTpMaxAs(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpMaxAs"].getBigIntegerValue()
			}
			
			def void setFrTpMaxAs(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpMaxAs"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTpMaxAs"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrTpMaxBufferSize(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpMaxBufferSize"].getBigIntegerValue()
			}
			
			def void setFrTpMaxBufferSize(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpMaxBufferSize"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTpMaxBufferSize"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrTpMaxFCWait(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpMaxFCWait"].getBigIntegerValue()
			}
			
			def void setFrTpMaxFCWait(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpMaxFCWait"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTpMaxFCWait"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrTpMaxFrIf(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpMaxFrIf"].getBigIntegerValue()
			}
			
			def void setFrTpMaxFrIf(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpMaxFrIf"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTpMaxFrIf"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrTpMaxNbrOfNPduPerCycle(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpMaxNbrOfNPduPerCycle"].getBigIntegerValue()
			}
			
			def void setFrTpMaxNbrOfNPduPerCycle(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpMaxNbrOfNPduPerCycle"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTpMaxNbrOfNPduPerCycle"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrTpMaxRn(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpMaxRn"].getBigIntegerValue()
			}
			
			def void setFrTpMaxRn(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpMaxRn"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTpMaxRn"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrTpSCexp(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpSCexp"].getBigIntegerValue()
			}
			
			def void setFrTpSCexp(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpSCexp"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTpSCexp"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getFrTpTimeBr(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpTimeBr"].getBigDecimalValue()
			}
			
			def void setFrTpTimeBr(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpTimeBr"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTpTimeBr"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getFrTpTimeCs(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpTimeCs"].getBigDecimalValue()
			}
			
			def void setFrTpTimeCs(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpTimeCs"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTpTimeCs"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getFrTpTimeFrIf(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpTimeFrIf"].getBigDecimalValue()
			}
			
			def void setFrTpTimeFrIf(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpTimeFrIf"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTpTimeFrIf"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getFrTpTimeoutAr(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpTimeoutAr"].getBigDecimalValue()
			}
			
			def void setFrTpTimeoutAr(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpTimeoutAr"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTpTimeoutAr"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getFrTpTimeoutAs(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpTimeoutAs"].getBigDecimalValue()
			}
			
			def void setFrTpTimeoutAs(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpTimeoutAs"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTpTimeoutAs"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getFrTpTimeoutBr(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpTimeoutBr"].getBigDecimalValue()
			}
			
			def void setFrTpTimeoutBr(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpTimeoutBr"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTpTimeoutBr"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getFrTpTimeoutBs(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpTimeoutBs"].getBigDecimalValue()
			}
			
			def void setFrTpTimeoutBs(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpTimeoutBs"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTpTimeoutBs"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getFrTpTimeoutCr(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpTimeoutCr"].getBigDecimalValue()
			}
			
			def void setFrTpTimeoutCr(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpTimeoutCr"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTpTimeoutCr"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getFrTpTimeoutCs(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpTimeoutCs"].getBigDecimalValue()
			}
			
			def void setFrTpTimeoutCs(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpTimeoutCs"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTpTimeoutCs"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
		static class FrTpRxPduPool implements IWrapper<GContainer> {
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
		        if (!(object instanceof FrTpRxPduPool)){
					return false
				}
				this.target == (object as FrTpRxPduPool).target
			}
		
			
			
			def List<FrTpRxPdu> getFrTpRxPdus(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "FrTpRxPdu")
					}
				}
				return new BasicWrappingEList<FrTpRxPdu, GContainer>(filteredContainers, typeof(FrTpRxPdu), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.FrTp.FrTpMultipleConfig.FrTpRxPduPool.FrTpRxPdu frTpRxPdu) {
						frTpRxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("FrTpRxPdu"))
						super.delegateAdd(frTpRxPdu)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.FrTp.FrTpMultipleConfig.FrTpRxPduPool.FrTpRxPdu frTpRxPdu) {
						frTpRxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("FrTpRxPdu"))
						super.delegateAdd(index, frTpRxPdu)
					}
				}
			}
			
			
			static class FrTpRxPdu implements IWrapper<GContainer> {
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
			        if (!(object instanceof FrTpRxPdu)){
						return false
					}
					this.target == (object as FrTpRxPdu).target
				}
			
				def BigInteger getFrTpRxPduId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpRxPduId"].getBigIntegerValue()
				}
				
				def void setFrTpRxPduId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpRxPduId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTpRxPduId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getFrTpRxPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "FrTpRxPduRef")
				}
				
				def void setFrTpRxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FrTpRxPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class FrTpTxPduPool implements IWrapper<GContainer> {
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
		        if (!(object instanceof FrTpTxPduPool)){
					return false
				}
				this.target == (object as FrTpTxPduPool).target
			}
		
			
			
			def List<FrTpTxPdu> getFrTpTxPdus(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "FrTpTxPdu")
					}
				}
				return new BasicWrappingEList<FrTpTxPdu, GContainer>(filteredContainers, typeof(FrTpTxPdu), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.FrTp.FrTpMultipleConfig.FrTpTxPduPool.FrTpTxPdu frTpTxPdu) {
						frTpTxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("FrTpTxPdu"))
						super.delegateAdd(frTpTxPdu)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.FrTp.FrTpMultipleConfig.FrTpTxPduPool.FrTpTxPdu frTpTxPdu) {
						frTpTxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("FrTpTxPdu"))
						super.delegateAdd(index, frTpTxPdu)
					}
				}
			}
			
			
			static class FrTpTxPdu implements IWrapper<GContainer> {
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
			        if (!(object instanceof FrTpTxPdu)){
						return false
					}
					this.target == (object as FrTpTxPdu).target
				}
			
				def BigInteger getFrTpTxConfirmationPduId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpTxConfirmationPduId"].getBigIntegerValue()
				}
				
				def void setFrTpTxConfirmationPduId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrTpTxConfirmationPduId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrTpTxConfirmationPduId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getFrTpTxPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "FrTpTxPduRef")
				}
				
				def void setFrTpTxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FrTpTxPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof FrTp)){
			return false
		}
		this.target == (object as FrTp).target
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
