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
			EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpMainFunctionPeriod"])
		}
		
		def void setCanTpMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpMainFunctionPeriod"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpMainFunctionPeriod"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getCanTpMaxChannelCnt(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpMaxChannelCnt"])
		}
		
		def void setCanTpMaxChannelCnt(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpMaxChannelCnt"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpMaxChannelCnt"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CanTpChannel> getCanTpChannels(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CanTpChannel")
				}
			}
			return new BasicWrappingEList<CanTpChannel, GContainer>(filteredContainers, typeof(CanTpChannel), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.CanTp$CanTpConfig$CanTpChannel canTpChannel) {
					canTpChannel.target?.gSetDefinition(containerValue.getContainerDefinition("CanTpChannel"))
					super.delegateAdd(canTpChannel)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.CanTp$CanTpConfig$CanTpChannel canTpChannel) {
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
				getCanTpChannelModeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpChannelMode"])
			}
			
			def void setCanTpChannelMode(CanTpChannelMode value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpChannelMode"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpChannelMode"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum CanTpChannelMode {
				CANTP_MODE_FULL_DUPLEX, 
				CANTP_MODE_HALF_DUPLEX
			}
				
			def CanTpChannelMode getCanTpChannelModeValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "CANTP_MODE_FULL_DUPLEX" : CanTpChannelMode.CANTP_MODE_FULL_DUPLEX
					case "CANTP_MODE_HALF_DUPLEX" : CanTpChannelMode.CANTP_MODE_HALF_DUPLEX
				}
			}
			
			def void setCanTpChannelModeValue(GParameterValue paramValue, CanTpChannelMode value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			
			
			def List<CanTpRxNSdu> getCanTpRxNSdus(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CanTpRxNSdu")
					}
				}
				return new BasicWrappingEList<CanTpRxNSdu, GContainer>(filteredContainers, typeof(CanTpRxNSdu), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.CanTp$CanTpConfig$CanTpChannel$CanTpRxNSdu canTpRxNSdu) {
						canTpRxNSdu.target?.gSetDefinition(containerValue.getContainerDefinition("CanTpRxNSdu"))
						super.delegateAdd(canTpRxNSdu)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.CanTp$CanTpConfig$CanTpChannel$CanTpRxNSdu canTpRxNSdu) {
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
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.CanTp$CanTpConfig$CanTpChannel$CanTpTxNSdu canTpTxNSdu) {
						canTpTxNSdu.target?.gSetDefinition(containerValue.getContainerDefinition("CanTpTxNSdu"))
						super.delegateAdd(canTpTxNSdu)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.CanTp$CanTpConfig$CanTpChannel$CanTpTxNSdu canTpTxNSdu) {
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
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpBs"])
				}
				
				def void setCanTpBs(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpBs"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpBs"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigDecimal getCanTpNar(){
					EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNar"])
				}
				
				def void setCanTpNar(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNar"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpNar"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigDecimal getCanTpNbr(){
					EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNbr"])
				}
				
				def void setCanTpNbr(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNbr"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpNbr"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigDecimal getCanTpNcr(){
					EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNcr"])
				}
				
				def void setCanTpNcr(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNcr"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpNcr"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def CanTpRxAddressingFormat getCanTpRxAddressingFormat(){
					getCanTpRxAddressingFormatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpRxAddressingFormat"])
				}
				
				def void setCanTpRxAddressingFormat(CanTpRxAddressingFormat value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpRxAddressingFormat"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpRxAddressingFormat"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum CanTpRxAddressingFormat {
					CANTP_EXTENDED, 
					CANTP_MIXED, 
					CANTP_MIXED29BIT, 
					CANTP_NORMALFIXED, 
					CANTP_STANDARD
				}
					
				def CanTpRxAddressingFormat getCanTpRxAddressingFormatValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "CANTP_EXTENDED" : CanTpRxAddressingFormat.CANTP_EXTENDED
						case "CANTP_MIXED" : CanTpRxAddressingFormat.CANTP_MIXED
						case "CANTP_MIXED29BIT" : CanTpRxAddressingFormat.CANTP_MIXED29BIT
						case "CANTP_NORMALFIXED" : CanTpRxAddressingFormat.CANTP_NORMALFIXED
						case "CANTP_STANDARD" : CanTpRxAddressingFormat.CANTP_STANDARD
					}
				}
				
				def void setCanTpRxAddressingFormatValue(GParameterValue paramValue, CanTpRxAddressingFormat value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				def BigInteger getCanTpRxNSduId(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpRxNSduId"])
				}
				
				def void setCanTpRxNSduId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpRxNSduId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpRxNSduId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def CanTpRxPaddingActivation getCanTpRxPaddingActivation(){
					getCanTpRxPaddingActivationValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpRxPaddingActivation"])
				}
				
				def void setCanTpRxPaddingActivation(CanTpRxPaddingActivation value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpRxPaddingActivation"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpRxPaddingActivation"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum CanTpRxPaddingActivation {
					CANTP_OFF, 
					CANTP_ON
				}
					
				def CanTpRxPaddingActivation getCanTpRxPaddingActivationValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "CANTP_OFF" : CanTpRxPaddingActivation.CANTP_OFF
						case "CANTP_ON" : CanTpRxPaddingActivation.CANTP_ON
					}
				}
				
				def void setCanTpRxPaddingActivationValue(GParameterValue paramValue, CanTpRxPaddingActivation value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				def CanTpRxTaType getCanTpRxTaType(){
					getCanTpRxTaTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpRxTaType"])
				}
				
				def void setCanTpRxTaType(CanTpRxTaType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpRxTaType"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpRxTaType"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum CanTpRxTaType {
					CANTP_CANFD_FUNCTIONAL, 
					CANTP_CANFD_PHYSICAL, 
					CANTP_FUNCTIONAL, 
					CANTP_PHYSICAL
				}
					
				def CanTpRxTaType getCanTpRxTaTypeValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "CANTP_CANFD_FUNCTIONAL" : CanTpRxTaType.CANTP_CANFD_FUNCTIONAL
						case "CANTP_CANFD_PHYSICAL" : CanTpRxTaType.CANTP_CANFD_PHYSICAL
						case "CANTP_FUNCTIONAL" : CanTpRxTaType.CANTP_FUNCTIONAL
						case "CANTP_PHYSICAL" : CanTpRxTaType.CANTP_PHYSICAL
					}
				}
				
				def void setCanTpRxTaTypeValue(GParameterValue paramValue, CanTpRxTaType value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				def BigInteger getCanTpRxWftMax(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpRxWftMax"])
				}
				
				def void setCanTpRxWftMax(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpRxWftMax"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpRxWftMax"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigDecimal getCanTpSTmin(){
					EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpSTmin"])
				}
				
				def void setCanTpSTmin(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpSTmin"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpSTmin"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCanTpRxNSduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CanTpRxNSduRef")
				}
						
				def void setCanTpRxNSduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CanTpRxNSduRef"], object.getTarget())
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
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNAe"])
					}
					
					def void setCanTpNAe(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNAe"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpNAe"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNSa"])
					}
					
					def void setCanTpNSa(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNSa"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpNSa"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNTa"])
					}
					
					def void setCanTpNTa(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNTa"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpNTa"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpRxNPduId"])
					}
					
					def void setCanTpRxNPduId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpRxNPduId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpRxNPduId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCanTpRxNPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CanTpRxNPduRef")
					}
							
					def void setCanTpRxNPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CanTpRxNPduRef"], object.getTarget())
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
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpTxFcNPduConfirmationPduId"])
					}
					
					def void setCanTpTxFcNPduConfirmationPduId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpTxFcNPduConfirmationPduId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpTxFcNPduConfirmationPduId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCanTpTxFcNPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CanTpTxFcNPduRef")
					}
							
					def void setCanTpTxFcNPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CanTpTxFcNPduRef"], object.getTarget())
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
					EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNas"])
				}
				
				def void setCanTpNas(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNas"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpNas"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigDecimal getCanTpNbs(){
					EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNbs"])
				}
				
				def void setCanTpNbs(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNbs"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpNbs"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigDecimal getCanTpNcs(){
					EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNcs"])
				}
				
				def void setCanTpNcs(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNcs"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpNcs"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def Boolean getCanTpTc(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpTc"])
				}
				
				def void setCanTpTc(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpTc"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpTc"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def CanTpTxAddressingFormat getCanTpTxAddressingFormat(){
					getCanTpTxAddressingFormatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpTxAddressingFormat"])
				}
				
				def void setCanTpTxAddressingFormat(CanTpTxAddressingFormat value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpTxAddressingFormat"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpTxAddressingFormat"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum CanTpTxAddressingFormat {
					CANTP_EXTENDED, 
					CANTP_MIXED, 
					CANTP_MIXED29BIT, 
					CANTP_NORMALFIXED, 
					CANTP_STANDARD
				}
					
				def CanTpTxAddressingFormat getCanTpTxAddressingFormatValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "CANTP_EXTENDED" : CanTpTxAddressingFormat.CANTP_EXTENDED
						case "CANTP_MIXED" : CanTpTxAddressingFormat.CANTP_MIXED
						case "CANTP_MIXED29BIT" : CanTpTxAddressingFormat.CANTP_MIXED29BIT
						case "CANTP_NORMALFIXED" : CanTpTxAddressingFormat.CANTP_NORMALFIXED
						case "CANTP_STANDARD" : CanTpTxAddressingFormat.CANTP_STANDARD
					}
				}
				
				def void setCanTpTxAddressingFormatValue(GParameterValue paramValue, CanTpTxAddressingFormat value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				def BigInteger getCanTpTxNSduId(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpTxNSduId"])
				}
				
				def void setCanTpTxNSduId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpTxNSduId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpTxNSduId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def CanTpTxPaddingActivation getCanTpTxPaddingActivation(){
					getCanTpTxPaddingActivationValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpTxPaddingActivation"])
				}
				
				def void setCanTpTxPaddingActivation(CanTpTxPaddingActivation value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpTxPaddingActivation"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpTxPaddingActivation"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum CanTpTxPaddingActivation {
					CANTP_OFF, 
					CANTP_ON
				}
					
				def CanTpTxPaddingActivation getCanTpTxPaddingActivationValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "CANTP_OFF" : CanTpTxPaddingActivation.CANTP_OFF
						case "CANTP_ON" : CanTpTxPaddingActivation.CANTP_ON
					}
				}
				
				def void setCanTpTxPaddingActivationValue(GParameterValue paramValue, CanTpTxPaddingActivation value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				def CanTpTxTaType getCanTpTxTaType(){
					getCanTpTxTaTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpTxTaType"])
				}
				
				def void setCanTpTxTaType(CanTpTxTaType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpTxTaType"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpTxTaType"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum CanTpTxTaType {
					CANTP_FUNCTIONAL, 
					CANTP_PHYSICAL
				}
					
				def CanTpTxTaType getCanTpTxTaTypeValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "CANTP_FUNCTIONAL" : CanTpTxTaType.CANTP_FUNCTIONAL
						case "CANTP_PHYSICAL" : CanTpTxTaType.CANTP_PHYSICAL
					}
				}
				
				def void setCanTpTxTaTypeValue(GParameterValue paramValue, CanTpTxTaType value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCanTpTxNSduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CanTpTxNSduRef")
				}
						
				def void setCanTpTxNSduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CanTpTxNSduRef"], object.getTarget())
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
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNAe"])
					}
					
					def void setCanTpNAe(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNAe"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpNAe"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNSa"])
					}
					
					def void setCanTpNSa(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNSa"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpNSa"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNTa"])
					}
					
					def void setCanTpNTa(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpNTa"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpNTa"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpRxFcNPduId"])
					}
					
					def void setCanTpRxFcNPduId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpRxFcNPduId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpRxFcNPduId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCanTpRxFcNPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CanTpRxFcNPduRef")
					}
							
					def void setCanTpRxFcNPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CanTpRxFcNPduRef"], object.getTarget())
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
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpTxNPduConfirmationPduId"])
					}
					
					def void setCanTpTxNPduConfirmationPduId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpTxNPduConfirmationPduId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpTxNPduConfirmationPduId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCanTpTxNPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CanTpTxNPduRef")
					}
							
					def void setCanTpTxNPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CanTpTxNPduRef"], object.getTarget())
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
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpChangeParameterApi"])
		}
		
		def void setCanTpChangeParameterApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpChangeParameterApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpChangeParameterApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getCanTpDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpDevErrorDetect"])
		}
		
		def void setCanTpDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getCanTpDynIdSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpDynIdSupport"])
		}
		
		def void setCanTpDynIdSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpDynIdSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpDynIdSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getCanTpFlexibleDataRateSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpFlexibleDataRateSupport"])
		}
		
		def void setCanTpFlexibleDataRateSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpFlexibleDataRateSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpFlexibleDataRateSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getCanTpGenericConnectionSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpGenericConnectionSupport"])
		}
		
		def void setCanTpGenericConnectionSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpGenericConnectionSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpGenericConnectionSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getCanTpPaddingByte(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpPaddingByte"])
		}
		
		def void setCanTpPaddingByte(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpPaddingByte"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpPaddingByte"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getCanTpReadParameterApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpReadParameterApi"])
		}
		
		def void setCanTpReadParameterApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpReadParameterApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpReadParameterApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getCanTpVersionInfoApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpVersionInfoApi"])
		}
		
		def void setCanTpVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanTpVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CanTpVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		if (definitionFeature != null) {
			val definition = child.eGet(definitionFeature)
			if (ecucTypeDefType.isInstance(definition)) {
				return ecucTypeDefType.cast(definition).gGetShortName.equals(ecucTypeDefName)
			}
		}
		return false
	}
}
