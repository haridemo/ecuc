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
package org.artop.ecuc.autosar422.accessors

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

class CanTp implements IWrapper<GModuleConfiguration> {
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

	def CanTpConfig getCanTpConfig(){
		moduleConfiguration.getByType(typeof(CanTpConfig))
	}

	def void setCanTpConfig(CanTpConfig canTpConfig){
		val GContainer container = canTpConfig.getTarget()
	    moduleConfiguration.setContainer(container, "CanTpConfig")
	}
	def CanTpGeneral getCanTpGeneral(){
		moduleConfiguration.getByType(typeof(CanTpGeneral))
	}

	def void setCanTpGeneral(CanTpGeneral canTpGeneral){
		val GContainer container = canTpGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "CanTpGeneral")
	}

	static class CanTpConfig implements IWrapper<GContainer> {
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
	        if (!(object instanceof CanTpConfig)){
				return false
			}
			this.target == (object as CanTpConfig).target
		}
	
		def BigDecimal getCanTpMainFunctionPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpMainFunctionPeriod"].getBigDecimalValue()
		}
		
		def void setCanTpMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpMainFunctionPeriod"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpMainFunctionPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getCanTpMaxChannelCnt(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpMaxChannelCnt"].getBigIntegerValue()
		}
		
		def void setCanTpMaxChannelCnt(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpMaxChannelCnt"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpMaxChannelCnt"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CanTpChannel> getCanTpChannels(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CanTpChannel")
				}
			}
			return new BasicWrappingEList<CanTpChannel, GContainer>(filteredContainers, typeof(CanTpChannel), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.CanTp.CanTpConfig.CanTpChannel canTpChannel) {
					canTpChannel.target?.gSetDefinition(containerValue.getContainerDefinition("CanTpChannel"))
					super.delegateAdd(canTpChannel)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.CanTp.CanTpConfig.CanTpChannel canTpChannel) {
					canTpChannel.target?.gSetDefinition(containerValue.getContainerDefinition("CanTpChannel"))
					super.delegateAdd(index, canTpChannel)
				}
			}
		}
		
		
		static class CanTpChannel implements IWrapper<GContainer> {
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
		        if (!(object instanceof CanTpChannel)){
					return false
				}
				this.target == (object as CanTpChannel).target
			}
		
			def CanTpChannelMode getCanTpChannelMode(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpChannelMode"].getCanTpChannelModeValue()
			}
			
			def void setCanTpChannelMode(CanTpChannelMode value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpChannelMode"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpChannelMode"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum CanTpChannelMode {
				CANTP_MODE_FULL_DUPLEX, 
				CANTP_MODE_HALF_DUPLEX
			}
			
			def CanTpChannelMode getCanTpChannelModeValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "CANTP_MODE_FULL_DUPLEX" : CanTpChannelMode.CANTP_MODE_FULL_DUPLEX
					case "CANTP_MODE_HALF_DUPLEX" : CanTpChannelMode.CANTP_MODE_HALF_DUPLEX
				}
			}
			
			def void setCanTpChannelModeValue(GParameterValue parameterValue, CanTpChannelMode value){
				parameterValue.setValue(value)
			}
			
			
			
			def List<CanTpRxNSdu> getCanTpRxNSdus(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CanTpRxNSdu")
					}
				}
				return new BasicWrappingEList<CanTpRxNSdu, GContainer>(filteredContainers, typeof(CanTpRxNSdu), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar422.accessors.CanTp.CanTpConfig.CanTpChannel.CanTpRxNSdu canTpRxNSdu) {
						canTpRxNSdu.target?.gSetDefinition(containerValue.getContainerDefinition("CanTpRxNSdu"))
						super.delegateAdd(canTpRxNSdu)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.CanTp.CanTpConfig.CanTpChannel.CanTpRxNSdu canTpRxNSdu) {
						canTpRxNSdu.target?.gSetDefinition(containerValue.getContainerDefinition("CanTpRxNSdu"))
						super.delegateAdd(index, canTpRxNSdu)
					}
				}
			}
			
			def List<CanTpTxNSdu> getCanTpTxNSdus(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CanTpTxNSdu")
					}
				}
				return new BasicWrappingEList<CanTpTxNSdu, GContainer>(filteredContainers, typeof(CanTpTxNSdu), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar422.accessors.CanTp.CanTpConfig.CanTpChannel.CanTpTxNSdu canTpTxNSdu) {
						canTpTxNSdu.target?.gSetDefinition(containerValue.getContainerDefinition("CanTpTxNSdu"))
						super.delegateAdd(canTpTxNSdu)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.CanTp.CanTpConfig.CanTpChannel.CanTpTxNSdu canTpTxNSdu) {
						canTpTxNSdu.target?.gSetDefinition(containerValue.getContainerDefinition("CanTpTxNSdu"))
						super.delegateAdd(index, canTpTxNSdu)
					}
				}
			}
			
			
			static class CanTpRxNSdu implements IWrapper<GContainer> {
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
			        if (!(object instanceof CanTpRxNSdu)){
						return false
					}
					this.target == (object as CanTpRxNSdu).target
				}
			
				def BigInteger getCanTpBs(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpBs"].getBigIntegerValue()
				}
				
				def void setCanTpBs(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpBs"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpBs"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigDecimal getCanTpNar(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNar"].getBigDecimalValue()
				}
				
				def void setCanTpNar(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNar"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpNar"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigDecimal getCanTpNbr(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNbr"].getBigDecimalValue()
				}
				
				def void setCanTpNbr(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNbr"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpNbr"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigDecimal getCanTpNcr(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNcr"].getBigDecimalValue()
				}
				
				def void setCanTpNcr(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNcr"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpNcr"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def CanTpRxAddressingFormat getCanTpRxAddressingFormat(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpRxAddressingFormat"].getCanTpRxAddressingFormatValue()
				}
				
				def void setCanTpRxAddressingFormat(CanTpRxAddressingFormat value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpRxAddressingFormat"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpRxAddressingFormat"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CanTpRxAddressingFormat {
					CANTP_EXTENDED, 
					CANTP_MIXED, 
					CANTP_MIXED29BIT, 
					CANTP_NORMALFIXED, 
					CANTP_STANDARD
				}
				
				def CanTpRxAddressingFormat getCanTpRxAddressingFormatValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CANTP_EXTENDED" : CanTpRxAddressingFormat.CANTP_EXTENDED
						case "CANTP_MIXED" : CanTpRxAddressingFormat.CANTP_MIXED
						case "CANTP_MIXED29BIT" : CanTpRxAddressingFormat.CANTP_MIXED29BIT
						case "CANTP_NORMALFIXED" : CanTpRxAddressingFormat.CANTP_NORMALFIXED
						case "CANTP_STANDARD" : CanTpRxAddressingFormat.CANTP_STANDARD
					}
				}
				
				def void setCanTpRxAddressingFormatValue(GParameterValue parameterValue, CanTpRxAddressingFormat value){
					parameterValue.setValue(value)
				}
				
				def BigInteger getCanTpRxNSduId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpRxNSduId"].getBigIntegerValue()
				}
				
				def void setCanTpRxNSduId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpRxNSduId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpRxNSduId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def CanTpRxPaddingActivation getCanTpRxPaddingActivation(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpRxPaddingActivation"].getCanTpRxPaddingActivationValue()
				}
				
				def void setCanTpRxPaddingActivation(CanTpRxPaddingActivation value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpRxPaddingActivation"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpRxPaddingActivation"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CanTpRxPaddingActivation {
					CANTP_OFF, 
					CANTP_ON
				}
				
				def CanTpRxPaddingActivation getCanTpRxPaddingActivationValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CANTP_OFF" : CanTpRxPaddingActivation.CANTP_OFF
						case "CANTP_ON" : CanTpRxPaddingActivation.CANTP_ON
					}
				}
				
				def void setCanTpRxPaddingActivationValue(GParameterValue parameterValue, CanTpRxPaddingActivation value){
					parameterValue.setValue(value)
				}
				
				def CanTpRxTaType getCanTpRxTaType(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpRxTaType"].getCanTpRxTaTypeValue()
				}
				
				def void setCanTpRxTaType(CanTpRxTaType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpRxTaType"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpRxTaType"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CanTpRxTaType {
					CANTP_CANFD_FUNCTIONAL, 
					CANTP_CANFD_PHYSICAL, 
					CANTP_FUNCTIONAL, 
					CANTP_PHYSICAL
				}
				
				def CanTpRxTaType getCanTpRxTaTypeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CANTP_CANFD_FUNCTIONAL" : CanTpRxTaType.CANTP_CANFD_FUNCTIONAL
						case "CANTP_CANFD_PHYSICAL" : CanTpRxTaType.CANTP_CANFD_PHYSICAL
						case "CANTP_FUNCTIONAL" : CanTpRxTaType.CANTP_FUNCTIONAL
						case "CANTP_PHYSICAL" : CanTpRxTaType.CANTP_PHYSICAL
					}
				}
				
				def void setCanTpRxTaTypeValue(GParameterValue parameterValue, CanTpRxTaType value){
					parameterValue.setValue(value)
				}
				
				def BigInteger getCanTpRxWftMax(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpRxWftMax"].getBigIntegerValue()
				}
				
				def void setCanTpRxWftMax(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpRxWftMax"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpRxWftMax"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigDecimal getCanTpSTmin(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpSTmin"].getBigDecimalValue()
				}
				
				def void setCanTpSTmin(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpSTmin"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpSTmin"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar422.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCanTpRxNSduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar422.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CanTpRxNSduRef")
				}
				
				def void setCanTpRxNSduRef(org.artop.ecuc.autosar422.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanTpRxNSduRef"], object.getTarget())
					}
				}
				
				
				def CanTpNAe getCanTpNAe(){
					containerValue.getByType(typeof(CanTpNAe))
				}
				
				def void setCanTpNAe(CanTpNAe canTpNAe){
					val GContainer subContainer = canTpNAe.getTarget()
					containerValue.setContainer(subContainer, "CanTpNAe")
				}
				
				def CanTpNSa getCanTpNSa(){
					containerValue.getByType(typeof(CanTpNSa))
				}
				
				def void setCanTpNSa(CanTpNSa canTpNSa){
					val GContainer subContainer = canTpNSa.getTarget()
					containerValue.setContainer(subContainer, "CanTpNSa")
				}
				
				def CanTpNTa getCanTpNTa(){
					containerValue.getByType(typeof(CanTpNTa))
				}
				
				def void setCanTpNTa(CanTpNTa canTpNTa){
					val GContainer subContainer = canTpNTa.getTarget()
					containerValue.setContainer(subContainer, "CanTpNTa")
				}
				
				def CanTpRxNPdu getCanTpRxNPdu(){
					containerValue.getByType(typeof(CanTpRxNPdu))
				}
				
				def void setCanTpRxNPdu(CanTpRxNPdu canTpRxNPdu){
					val GContainer subContainer = canTpRxNPdu.getTarget()
					containerValue.setContainer(subContainer, "CanTpRxNPdu")
				}
				
				def CanTpTxFcNPdu getCanTpTxFcNPdu(){
					containerValue.getByType(typeof(CanTpTxFcNPdu))
				}
				
				def void setCanTpTxFcNPdu(CanTpTxFcNPdu canTpTxFcNPdu){
					val GContainer subContainer = canTpTxFcNPdu.getTarget()
					containerValue.setContainer(subContainer, "CanTpTxFcNPdu")
				}
				
				
				static class CanTpNAe implements IWrapper<GContainer> {
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
				        if (!(object instanceof CanTpNAe)){
							return false
						}
						this.target == (object as CanTpNAe).target
					}
				
					def BigInteger getCanTpNAe(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNAe"].getBigIntegerValue()
					}
					
					def void setCanTpNAe(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNAe"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpNAe"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					
					
				}
				
				static class CanTpNSa implements IWrapper<GContainer> {
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
				        if (!(object instanceof CanTpNSa)){
							return false
						}
						this.target == (object as CanTpNSa).target
					}
				
					def BigInteger getCanTpNSa(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNSa"].getBigIntegerValue()
					}
					
					def void setCanTpNSa(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNSa"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpNSa"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					
					
				}
				
				static class CanTpNTa implements IWrapper<GContainer> {
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
				        if (!(object instanceof CanTpNTa)){
							return false
						}
						this.target == (object as CanTpNTa).target
					}
				
					def BigInteger getCanTpNTa(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNTa"].getBigIntegerValue()
					}
					
					def void setCanTpNTa(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNTa"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpNTa"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					
					
				}
				
				static class CanTpRxNPdu implements IWrapper<GContainer> {
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
				        if (!(object instanceof CanTpRxNPdu)){
							return false
						}
						this.target == (object as CanTpRxNPdu).target
					}
				
					def BigInteger getCanTpRxNPduId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpRxNPduId"].getBigIntegerValue()
					}
					
					def void setCanTpRxNPduId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpRxNPduId"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpRxNPduId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar422.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCanTpRxNPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar422.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CanTpRxNPduRef")
					}
					
					def void setCanTpRxNPduRef(org.artop.ecuc.autosar422.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanTpRxNPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class CanTpTxFcNPdu implements IWrapper<GContainer> {
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
				        if (!(object instanceof CanTpTxFcNPdu)){
							return false
						}
						this.target == (object as CanTpTxFcNPdu).target
					}
				
					def BigInteger getCanTpTxFcNPduConfirmationPduId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpTxFcNPduConfirmationPduId"].getBigIntegerValue()
					}
					
					def void setCanTpTxFcNPduConfirmationPduId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpTxFcNPduConfirmationPduId"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpTxFcNPduConfirmationPduId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar422.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCanTpTxFcNPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar422.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CanTpTxFcNPduRef")
					}
					
					def void setCanTpTxFcNPduRef(org.artop.ecuc.autosar422.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanTpTxFcNPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
			static class CanTpTxNSdu implements IWrapper<GContainer> {
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
			        if (!(object instanceof CanTpTxNSdu)){
						return false
					}
					this.target == (object as CanTpTxNSdu).target
				}
			
				def BigDecimal getCanTpNas(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNas"].getBigDecimalValue()
				}
				
				def void setCanTpNas(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNas"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpNas"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigDecimal getCanTpNbs(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNbs"].getBigDecimalValue()
				}
				
				def void setCanTpNbs(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNbs"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpNbs"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigDecimal getCanTpNcs(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNcs"].getBigDecimalValue()
				}
				
				def void setCanTpNcs(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNcs"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpNcs"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def Boolean getCanTpTc(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpTc"].getBooleanValue()
				}
				
				def void setCanTpTc(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpTc"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpTc"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				def CanTpTxAddressingFormat getCanTpTxAddressingFormat(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpTxAddressingFormat"].getCanTpTxAddressingFormatValue()
				}
				
				def void setCanTpTxAddressingFormat(CanTpTxAddressingFormat value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpTxAddressingFormat"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpTxAddressingFormat"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CanTpTxAddressingFormat {
					CANTP_EXTENDED, 
					CANTP_MIXED, 
					CANTP_MIXED29BIT, 
					CANTP_NORMALFIXED, 
					CANTP_STANDARD
				}
				
				def CanTpTxAddressingFormat getCanTpTxAddressingFormatValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CANTP_EXTENDED" : CanTpTxAddressingFormat.CANTP_EXTENDED
						case "CANTP_MIXED" : CanTpTxAddressingFormat.CANTP_MIXED
						case "CANTP_MIXED29BIT" : CanTpTxAddressingFormat.CANTP_MIXED29BIT
						case "CANTP_NORMALFIXED" : CanTpTxAddressingFormat.CANTP_NORMALFIXED
						case "CANTP_STANDARD" : CanTpTxAddressingFormat.CANTP_STANDARD
					}
				}
				
				def void setCanTpTxAddressingFormatValue(GParameterValue parameterValue, CanTpTxAddressingFormat value){
					parameterValue.setValue(value)
				}
				
				def BigInteger getCanTpTxNSduId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpTxNSduId"].getBigIntegerValue()
				}
				
				def void setCanTpTxNSduId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpTxNSduId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpTxNSduId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def CanTpTxPaddingActivation getCanTpTxPaddingActivation(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpTxPaddingActivation"].getCanTpTxPaddingActivationValue()
				}
				
				def void setCanTpTxPaddingActivation(CanTpTxPaddingActivation value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpTxPaddingActivation"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpTxPaddingActivation"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CanTpTxPaddingActivation {
					CANTP_OFF, 
					CANTP_ON
				}
				
				def CanTpTxPaddingActivation getCanTpTxPaddingActivationValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CANTP_OFF" : CanTpTxPaddingActivation.CANTP_OFF
						case "CANTP_ON" : CanTpTxPaddingActivation.CANTP_ON
					}
				}
				
				def void setCanTpTxPaddingActivationValue(GParameterValue parameterValue, CanTpTxPaddingActivation value){
					parameterValue.setValue(value)
				}
				
				def CanTpTxTaType getCanTpTxTaType(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpTxTaType"].getCanTpTxTaTypeValue()
				}
				
				def void setCanTpTxTaType(CanTpTxTaType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpTxTaType"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpTxTaType"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum CanTpTxTaType {
					CANTP_FUNCTIONAL, 
					CANTP_PHYSICAL
				}
				
				def CanTpTxTaType getCanTpTxTaTypeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CANTP_FUNCTIONAL" : CanTpTxTaType.CANTP_FUNCTIONAL
						case "CANTP_PHYSICAL" : CanTpTxTaType.CANTP_PHYSICAL
					}
				}
				
				def void setCanTpTxTaTypeValue(GParameterValue parameterValue, CanTpTxTaType value){
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar422.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCanTpTxNSduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar422.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CanTpTxNSduRef")
				}
				
				def void setCanTpTxNSduRef(org.artop.ecuc.autosar422.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanTpTxNSduRef"], object.getTarget())
					}
				}
				
				
				def CanTpNAe getCanTpNAe(){
					containerValue.getByType(typeof(CanTpNAe))
				}
				
				def void setCanTpNAe(CanTpNAe canTpNAe){
					val GContainer subContainer = canTpNAe.getTarget()
					containerValue.setContainer(subContainer, "CanTpNAe")
				}
				
				def CanTpNSa getCanTpNSa(){
					containerValue.getByType(typeof(CanTpNSa))
				}
				
				def void setCanTpNSa(CanTpNSa canTpNSa){
					val GContainer subContainer = canTpNSa.getTarget()
					containerValue.setContainer(subContainer, "CanTpNSa")
				}
				
				def CanTpNTa getCanTpNTa(){
					containerValue.getByType(typeof(CanTpNTa))
				}
				
				def void setCanTpNTa(CanTpNTa canTpNTa){
					val GContainer subContainer = canTpNTa.getTarget()
					containerValue.setContainer(subContainer, "CanTpNTa")
				}
				
				def CanTpRxFcNPdu getCanTpRxFcNPdu(){
					containerValue.getByType(typeof(CanTpRxFcNPdu))
				}
				
				def void setCanTpRxFcNPdu(CanTpRxFcNPdu canTpRxFcNPdu){
					val GContainer subContainer = canTpRxFcNPdu.getTarget()
					containerValue.setContainer(subContainer, "CanTpRxFcNPdu")
				}
				
				def CanTpTxNPdu getCanTpTxNPdu(){
					containerValue.getByType(typeof(CanTpTxNPdu))
				}
				
				def void setCanTpTxNPdu(CanTpTxNPdu canTpTxNPdu){
					val GContainer subContainer = canTpTxNPdu.getTarget()
					containerValue.setContainer(subContainer, "CanTpTxNPdu")
				}
				
				
				static class CanTpNAe implements IWrapper<GContainer> {
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
				        if (!(object instanceof CanTpNAe)){
							return false
						}
						this.target == (object as CanTpNAe).target
					}
				
					def BigInteger getCanTpNAe(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNAe"].getBigIntegerValue()
					}
					
					def void setCanTpNAe(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNAe"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpNAe"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					
					
				}
				
				static class CanTpNSa implements IWrapper<GContainer> {
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
				        if (!(object instanceof CanTpNSa)){
							return false
						}
						this.target == (object as CanTpNSa).target
					}
				
					def BigInteger getCanTpNSa(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNSa"].getBigIntegerValue()
					}
					
					def void setCanTpNSa(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNSa"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpNSa"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					
					
				}
				
				static class CanTpNTa implements IWrapper<GContainer> {
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
				        if (!(object instanceof CanTpNTa)){
							return false
						}
						this.target == (object as CanTpNTa).target
					}
				
					def BigInteger getCanTpNTa(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNTa"].getBigIntegerValue()
					}
					
					def void setCanTpNTa(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNTa"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpNTa"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					
					
				}
				
				static class CanTpRxFcNPdu implements IWrapper<GContainer> {
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
				        if (!(object instanceof CanTpRxFcNPdu)){
							return false
						}
						this.target == (object as CanTpRxFcNPdu).target
					}
				
					def BigInteger getCanTpRxFcNPduId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpRxFcNPduId"].getBigIntegerValue()
					}
					
					def void setCanTpRxFcNPduId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpRxFcNPduId"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpRxFcNPduId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar422.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCanTpRxFcNPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar422.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CanTpRxFcNPduRef")
					}
					
					def void setCanTpRxFcNPduRef(org.artop.ecuc.autosar422.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanTpRxFcNPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class CanTpTxNPdu implements IWrapper<GContainer> {
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
				        if (!(object instanceof CanTpTxNPdu)){
							return false
						}
						this.target == (object as CanTpTxNPdu).target
					}
				
					def BigInteger getCanTpTxNPduConfirmationPduId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpTxNPduConfirmationPduId"].getBigIntegerValue()
					}
					
					def void setCanTpTxNPduConfirmationPduId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpTxNPduConfirmationPduId"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpTxNPduConfirmationPduId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar422.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCanTpTxNPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar422.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CanTpTxNPduRef")
					}
					
					def void setCanTpTxNPduRef(org.artop.ecuc.autosar422.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanTpTxNPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
		}
		
	}
	static class CanTpGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof CanTpGeneral)){
				return false
			}
			this.target == (object as CanTpGeneral).target
		}
	
		def Boolean getCanTpChangeParameterApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpChangeParameterApi"].getBooleanValue()
		}
		
		def void setCanTpChangeParameterApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpChangeParameterApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpChangeParameterApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanTpDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpDevErrorDetect"].getBooleanValue()
		}
		
		def void setCanTpDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanTpDynIdSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpDynIdSupport"].getBooleanValue()
		}
		
		def void setCanTpDynIdSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpDynIdSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpDynIdSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanTpFlexibleDataRateSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpFlexibleDataRateSupport"].getBooleanValue()
		}
		
		def void setCanTpFlexibleDataRateSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpFlexibleDataRateSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpFlexibleDataRateSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanTpGenericConnectionSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpGenericConnectionSupport"].getBooleanValue()
		}
		
		def void setCanTpGenericConnectionSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpGenericConnectionSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpGenericConnectionSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getCanTpPaddingByte(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpPaddingByte"].getBigIntegerValue()
		}
		
		def void setCanTpPaddingByte(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpPaddingByte"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpPaddingByte"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getCanTpReadParameterApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpReadParameterApi"].getBooleanValue()
		}
		
		def void setCanTpReadParameterApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpReadParameterApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpReadParameterApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanTpVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpVersionInfoApi"].getBooleanValue()
		}
		
		def void setCanTpVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanTpVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof CanTp)){
			return false
		}
		this.target == (object as CanTp).target
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
