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

class J1939Tp implements IWrapper<GModuleConfiguration> {
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
	
	def J1939TpConfiguration getJ1939TpConfiguration(){
		moduleConfiguration.getByType(typeof(J1939TpConfiguration))
	}
	
	def void setJ1939TpConfiguration(J1939TpConfiguration j1939TpConfiguration){
		val GContainer container = j1939TpConfiguration.getTarget() 
	    moduleConfiguration.setContainer(container, "J1939TpConfiguration")
	}
	def J1939TpGeneral getJ1939TpGeneral(){
		moduleConfiguration.getByType(typeof(J1939TpGeneral))
	}
	
	def void setJ1939TpGeneral(J1939TpGeneral j1939TpGeneral){
		val GContainer container = j1939TpGeneral.getTarget() 
	    moduleConfiguration.setContainer(container, "J1939TpGeneral")
	}
	
	static class J1939TpConfiguration implements IWrapper<GContainer> {
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
		
		
		
		def List<J1939TpRxChannel> getJ1939TpRxChannels(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "J1939TpRxChannel")
				}
			}
			return new BasicWrappingEList<J1939TpRxChannel, GContainer>(filteredContainers, typeof(J1939TpRxChannel), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.J1939Tp$J1939TpConfiguration$J1939TpRxChannel j1939TpRxChannel) {
					j1939TpRxChannel.target?.gSetDefinition(containerValue.getContainerDefinition("J1939TpRxChannel"))
					super.delegateAdd(j1939TpRxChannel)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.J1939Tp$J1939TpConfiguration$J1939TpRxChannel j1939TpRxChannel) {
					j1939TpRxChannel.target?.gSetDefinition(containerValue.getContainerDefinition("J1939TpRxChannel"))
					super.delegateAdd(index, j1939TpRxChannel)
				}	
			}
		}
		
		def List<J1939TpTxChannel> getJ1939TpTxChannels(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "J1939TpTxChannel")
				}
			}
			return new BasicWrappingEList<J1939TpTxChannel, GContainer>(filteredContainers, typeof(J1939TpTxChannel), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.J1939Tp$J1939TpConfiguration$J1939TpTxChannel j1939TpTxChannel) {
					j1939TpTxChannel.target?.gSetDefinition(containerValue.getContainerDefinition("J1939TpTxChannel"))
					super.delegateAdd(j1939TpTxChannel)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.J1939Tp$J1939TpConfiguration$J1939TpTxChannel j1939TpTxChannel) {
					j1939TpTxChannel.target?.gSetDefinition(containerValue.getContainerDefinition("J1939TpTxChannel"))
					super.delegateAdd(index, j1939TpTxChannel)
				}	
			}
		}
		
		
		static class J1939TpRxChannel implements IWrapper<GContainer> {
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
			
			def Boolean getJ1939TpRxCancellationSupport(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpRxCancellationSupport"])
			}
			
			def void setJ1939TpRxCancellationSupport(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpRxCancellationSupport"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939TpRxCancellationSupport"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getJ1939TpRxDa(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpRxDa"])
			}
			
			def void setJ1939TpRxDa(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpRxDa"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939TpRxDa"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getJ1939TpRxDynamicBlockCalculation(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpRxDynamicBlockCalculation"])
			}
			
			def void setJ1939TpRxDynamicBlockCalculation(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpRxDynamicBlockCalculation"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939TpRxDynamicBlockCalculation"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getJ1939TpRxDynamicBufferRatio(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpRxDynamicBufferRatio"])
			}
			
			def void setJ1939TpRxDynamicBufferRatio(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpRxDynamicBufferRatio"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939TpRxDynamicBufferRatio"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getJ1939TpRxPacketsPerBlock(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpRxPacketsPerBlock"])
			}
			
			def void setJ1939TpRxPacketsPerBlock(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpRxPacketsPerBlock"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939TpRxPacketsPerBlock"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def J1939TpRxProtocolType getJ1939TpRxProtocolType(){
				getJ1939TpRxProtocolTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpRxProtocolType"])
			}
			
			def void setJ1939TpRxProtocolType(J1939TpRxProtocolType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpRxProtocolType"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939TpRxProtocolType"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum J1939TpRxProtocolType {
				J1939TP_PROTOCOL_BAM, 
				J1939TP_PROTOCOL_CMDT
			}
				
			def J1939TpRxProtocolType getJ1939TpRxProtocolTypeValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "J1939TP_PROTOCOL_BAM" : J1939TpRxProtocolType.J1939TP_PROTOCOL_BAM
					case "J1939TP_PROTOCOL_CMDT" : J1939TpRxProtocolType.J1939TP_PROTOCOL_CMDT
				}
			}
			
			def void setJ1939TpRxProtocolTypeValue(GParameterValue paramValue, J1939TpRxProtocolType value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			def Boolean getJ1939TpRxRetrySupport(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpRxRetrySupport"])
			}
			
			def void setJ1939TpRxRetrySupport(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpRxRetrySupport"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939TpRxRetrySupport"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getJ1939TpRxSa(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpRxSa"])
			}
			
			def void setJ1939TpRxSa(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpRxSa"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939TpRxSa"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			def J1939TpRxCmNPdu getJ1939TpRxCmNPdu(){
				containerValue.getByType(typeof(J1939TpRxCmNPdu))
			}
			
			def void setJ1939TpRxCmNPdu(J1939TpRxCmNPdu j1939TpRxCmNPdu){
				val GContainer subContainer = j1939TpRxCmNPdu.getTarget()
				containerValue.setContainer(subContainer, "J1939TpRxCmNPdu")
			}
			
			def J1939TpRxDtNPdu getJ1939TpRxDtNPdu(){
				containerValue.getByType(typeof(J1939TpRxDtNPdu))
			}
			
			def void setJ1939TpRxDtNPdu(J1939TpRxDtNPdu j1939TpRxDtNPdu){
				val GContainer subContainer = j1939TpRxDtNPdu.getTarget()
				containerValue.setContainer(subContainer, "J1939TpRxDtNPdu")
			}
			
			def List<J1939TpRxPg> getJ1939TpRxPgs(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "J1939TpRxPg")
					}
				}
				return new BasicWrappingEList<J1939TpRxPg, GContainer>(filteredContainers, typeof(J1939TpRxPg), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.J1939Tp$J1939TpConfiguration$J1939TpRxChannel$J1939TpRxPg j1939TpRxPg) {
						j1939TpRxPg.target?.gSetDefinition(containerValue.getContainerDefinition("J1939TpRxPg"))
						super.delegateAdd(j1939TpRxPg)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.J1939Tp$J1939TpConfiguration$J1939TpRxChannel$J1939TpRxPg j1939TpRxPg) {
						j1939TpRxPg.target?.gSetDefinition(containerValue.getContainerDefinition("J1939TpRxPg"))
						super.delegateAdd(index, j1939TpRxPg)
					}	
				}
			}
			
			def J1939TpTxFcNPdu getJ1939TpTxFcNPdu(){
				containerValue.getByType(typeof(J1939TpTxFcNPdu))
			}
			
			def void setJ1939TpTxFcNPdu(J1939TpTxFcNPdu j1939TpTxFcNPdu){
				val GContainer subContainer = j1939TpTxFcNPdu.getTarget()
				containerValue.setContainer(subContainer, "J1939TpTxFcNPdu")
			}
			
			
			static class J1939TpRxCmNPdu implements IWrapper<GContainer> {
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
				
				def BigInteger getJ1939TpRxCmNPduId(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpRxCmNPduId"])
				}
				
				def void setJ1939TpRxCmNPduId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpRxCmNPduId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939TpRxCmNPduId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getJ1939TpRxCmNPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "J1939TpRxCmNPduRef")
				}
						
				def void setJ1939TpRxCmNPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "J1939TpRxCmNPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class J1939TpRxDtNPdu implements IWrapper<GContainer> {
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
				
				def BigInteger getJ1939TpRxDtNPduId(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpRxDtNPduId"])
				}
				
				def void setJ1939TpRxDtNPduId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpRxDtNPduId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939TpRxDtNPduId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getJ1939TpRxDtNPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "J1939TpRxDtNPduRef")
				}
						
				def void setJ1939TpRxDtNPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "J1939TpRxDtNPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class J1939TpRxPg implements IWrapper<GContainer> {
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
				
				def Boolean getJ1939TpRxPgDynLength(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpRxPgDynLength"])
				}
				
				def void setJ1939TpRxPgDynLength(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpRxPgDynLength"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939TpRxPgDynLength"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigInteger getJ1939TpRxPgPGN(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpRxPgPGN"])
				}
				
				def void setJ1939TpRxPgPGN(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpRxPgPGN"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939TpRxPgPGN"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				
				def J1939TpRxDirectNPdu getJ1939TpRxDirectNPdu(){
					containerValue.getByType(typeof(J1939TpRxDirectNPdu))
				}
				
				def void setJ1939TpRxDirectNPdu(J1939TpRxDirectNPdu j1939TpRxDirectNPdu){
					val GContainer subContainer = j1939TpRxDirectNPdu.getTarget()
					containerValue.setContainer(subContainer, "J1939TpRxDirectNPdu")
				}
				
				def List<J1939TpRxNSdu> getJ1939TpRxNSdus(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "J1939TpRxNSdu")
						}
					}
					return new BasicWrappingEList<J1939TpRxNSdu, GContainer>(filteredContainers, typeof(J1939TpRxNSdu), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.J1939Tp$J1939TpConfiguration$J1939TpRxChannel$J1939TpRxPg$J1939TpRxNSdu j1939TpRxNSdu) {
							j1939TpRxNSdu.target?.gSetDefinition(containerValue.getContainerDefinition("J1939TpRxNSdu"))
							super.delegateAdd(j1939TpRxNSdu)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.J1939Tp$J1939TpConfiguration$J1939TpRxChannel$J1939TpRxPg$J1939TpRxNSdu j1939TpRxNSdu) {
							j1939TpRxNSdu.target?.gSetDefinition(containerValue.getContainerDefinition("J1939TpRxNSdu"))
							super.delegateAdd(index, j1939TpRxNSdu)
						}	
					}
				}
				
				
				static class J1939TpRxDirectNPdu implements IWrapper<GContainer> {
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
					
					def BigInteger getJ1939TpRxDirectNPduId(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpRxDirectNPduId"])
					}
					
					def void setJ1939TpRxDirectNPduId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpRxDirectNPduId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939TpRxDirectNPduId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getJ1939TpRxDirectNPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "J1939TpRxDirectNPduRef")
					}
							
					def void setJ1939TpRxDirectNPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "J1939TpRxDirectNPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class J1939TpRxNSdu implements IWrapper<GContainer> {
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
					
					def BigInteger getJ1939TpRxNSduId(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpRxNSduId"])
					}
					
					def void setJ1939TpRxNSduId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpRxNSduId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939TpRxNSduId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getJ1939TpRxNSduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "J1939TpRxNSduRef")
					}
							
					def void setJ1939TpRxNSduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "J1939TpRxNSduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
			static class J1939TpTxFcNPdu implements IWrapper<GContainer> {
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
				
				def BigInteger getJ1939TpTxFcNPduTxConfId(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpTxFcNPduTxConfId"])
				}
				
				def void setJ1939TpTxFcNPduTxConfId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpTxFcNPduTxConfId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939TpTxFcNPduTxConfId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getJ1939TpTxFcNPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "J1939TpTxFcNPduRef")
				}
						
				def void setJ1939TpTxFcNPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "J1939TpTxFcNPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class J1939TpTxChannel implements IWrapper<GContainer> {
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
			
			def Boolean getJ1939TpTxCancellationSupport(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpTxCancellationSupport"])
			}
			
			def void setJ1939TpTxCancellationSupport(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpTxCancellationSupport"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939TpTxCancellationSupport"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getJ1939TpTxDa(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpTxDa"])
			}
			
			def void setJ1939TpTxDa(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpTxDa"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939TpTxDa"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getJ1939TpTxDynamicBlockCalculation(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpTxDynamicBlockCalculation"])
			}
			
			def void setJ1939TpTxDynamicBlockCalculation(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpTxDynamicBlockCalculation"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939TpTxDynamicBlockCalculation"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getJ1939TpTxMaxPacketsPerBlock(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpTxMaxPacketsPerBlock"])
			}
			
			def void setJ1939TpTxMaxPacketsPerBlock(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpTxMaxPacketsPerBlock"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939TpTxMaxPacketsPerBlock"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def J1939TpTxProtocolType getJ1939TpTxProtocolType(){
				getJ1939TpTxProtocolTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpTxProtocolType"])
			}
			
			def void setJ1939TpTxProtocolType(J1939TpTxProtocolType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpTxProtocolType"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939TpTxProtocolType"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum J1939TpTxProtocolType {
				J1939TP_PROTOCOL_BAM, 
				J1939TP_PROTOCOL_CMDT
			}
				
			def J1939TpTxProtocolType getJ1939TpTxProtocolTypeValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "J1939TP_PROTOCOL_BAM" : J1939TpTxProtocolType.J1939TP_PROTOCOL_BAM
					case "J1939TP_PROTOCOL_CMDT" : J1939TpTxProtocolType.J1939TP_PROTOCOL_CMDT
				}
			}
			
			def void setJ1939TpTxProtocolTypeValue(GParameterValue paramValue, J1939TpTxProtocolType value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			def Boolean getJ1939TpTxRetrySupport(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpTxRetrySupport"])
			}
			
			def void setJ1939TpTxRetrySupport(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpTxRetrySupport"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939TpTxRetrySupport"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getJ1939TpTxSa(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpTxSa"])
			}
			
			def void setJ1939TpTxSa(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpTxSa"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939TpTxSa"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			def J1939TpRxFcNPdu getJ1939TpRxFcNPdu(){
				containerValue.getByType(typeof(J1939TpRxFcNPdu))
			}
			
			def void setJ1939TpRxFcNPdu(J1939TpRxFcNPdu j1939TpRxFcNPdu){
				val GContainer subContainer = j1939TpRxFcNPdu.getTarget()
				containerValue.setContainer(subContainer, "J1939TpRxFcNPdu")
			}
			
			def J1939TpTxCmNPdu getJ1939TpTxCmNPdu(){
				containerValue.getByType(typeof(J1939TpTxCmNPdu))
			}
			
			def void setJ1939TpTxCmNPdu(J1939TpTxCmNPdu j1939TpTxCmNPdu){
				val GContainer subContainer = j1939TpTxCmNPdu.getTarget()
				containerValue.setContainer(subContainer, "J1939TpTxCmNPdu")
			}
			
			def J1939TpTxDtNPdu getJ1939TpTxDtNPdu(){
				containerValue.getByType(typeof(J1939TpTxDtNPdu))
			}
			
			def void setJ1939TpTxDtNPdu(J1939TpTxDtNPdu j1939TpTxDtNPdu){
				val GContainer subContainer = j1939TpTxDtNPdu.getTarget()
				containerValue.setContainer(subContainer, "J1939TpTxDtNPdu")
			}
			
			def List<J1939TpTxPg> getJ1939TpTxPgs(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "J1939TpTxPg")
					}
				}
				return new BasicWrappingEList<J1939TpTxPg, GContainer>(filteredContainers, typeof(J1939TpTxPg), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.J1939Tp$J1939TpConfiguration$J1939TpTxChannel$J1939TpTxPg j1939TpTxPg) {
						j1939TpTxPg.target?.gSetDefinition(containerValue.getContainerDefinition("J1939TpTxPg"))
						super.delegateAdd(j1939TpTxPg)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.J1939Tp$J1939TpConfiguration$J1939TpTxChannel$J1939TpTxPg j1939TpTxPg) {
						j1939TpTxPg.target?.gSetDefinition(containerValue.getContainerDefinition("J1939TpTxPg"))
						super.delegateAdd(index, j1939TpTxPg)
					}	
				}
			}
			
			
			static class J1939TpRxFcNPdu implements IWrapper<GContainer> {
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
				
				def BigInteger getJ1939TpRxFcNPduId(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpRxFcNPduId"])
				}
				
				def void setJ1939TpRxFcNPduId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpRxFcNPduId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939TpRxFcNPduId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getJ1939TpRxFcNPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "J1939TpRxFcNPduRef")
				}
						
				def void setJ1939TpRxFcNPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "J1939TpRxFcNPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class J1939TpTxCmNPdu implements IWrapper<GContainer> {
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
				
				def BigInteger getJ1939TpTxCmNPduTxConfId(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpTxCmNPduTxConfId"])
				}
				
				def void setJ1939TpTxCmNPduTxConfId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpTxCmNPduTxConfId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939TpTxCmNPduTxConfId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getJ1939TpTxCmNPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "J1939TpTxCmNPduRef")
				}
						
				def void setJ1939TpTxCmNPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "J1939TpTxCmNPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class J1939TpTxDtNPdu implements IWrapper<GContainer> {
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
				
				def BigInteger getJ1939TpTxDtNPduTxConfId(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpTxDtNPduTxConfId"])
				}
				
				def void setJ1939TpTxDtNPduTxConfId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpTxDtNPduTxConfId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939TpTxDtNPduTxConfId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getJ1939TpTxDtNPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "J1939TpTxDtNPduRef")
				}
						
				def void setJ1939TpTxDtNPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "J1939TpTxDtNPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class J1939TpTxPg implements IWrapper<GContainer> {
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
				
				def Boolean getJ1939TpTxPgDynLength(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpTxPgDynLength"])
				}
				
				def void setJ1939TpTxPgDynLength(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpTxPgDynLength"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939TpTxPgDynLength"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigInteger getJ1939TpTxPgPGN(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpTxPgPGN"])
				}
				
				def void setJ1939TpTxPgPGN(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpTxPgPGN"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939TpTxPgPGN"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				
				def J1939TpTxDirectNPdu getJ1939TpTxDirectNPdu(){
					containerValue.getByType(typeof(J1939TpTxDirectNPdu))
				}
				
				def void setJ1939TpTxDirectNPdu(J1939TpTxDirectNPdu j1939TpTxDirectNPdu){
					val GContainer subContainer = j1939TpTxDirectNPdu.getTarget()
					containerValue.setContainer(subContainer, "J1939TpTxDirectNPdu")
				}
				
				def List<J1939TpTxNSdu> getJ1939TpTxNSdus(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "J1939TpTxNSdu")
						}
					}
					return new BasicWrappingEList<J1939TpTxNSdu, GContainer>(filteredContainers, typeof(J1939TpTxNSdu), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.J1939Tp$J1939TpConfiguration$J1939TpTxChannel$J1939TpTxPg$J1939TpTxNSdu j1939TpTxNSdu) {
							j1939TpTxNSdu.target?.gSetDefinition(containerValue.getContainerDefinition("J1939TpTxNSdu"))
							super.delegateAdd(j1939TpTxNSdu)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.J1939Tp$J1939TpConfiguration$J1939TpTxChannel$J1939TpTxPg$J1939TpTxNSdu j1939TpTxNSdu) {
							j1939TpTxNSdu.target?.gSetDefinition(containerValue.getContainerDefinition("J1939TpTxNSdu"))
							super.delegateAdd(index, j1939TpTxNSdu)
						}	
					}
				}
				
				
				static class J1939TpTxDirectNPdu implements IWrapper<GContainer> {
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
					
					def BigInteger getJ1939TpTxDirectNPduTxConfId(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpTxDirectNPduTxConfId"])
					}
					
					def void setJ1939TpTxDirectNPduTxConfId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpTxDirectNPduTxConfId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939TpTxDirectNPduTxConfId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getJ1939TpTxDirectNPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "J1939TpTxDirectNPduRef")
					}
							
					def void setJ1939TpTxDirectNPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "J1939TpTxDirectNPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class J1939TpTxNSdu implements IWrapper<GContainer> {
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
					
					def BigInteger getJ1939TpTxNSduId(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpTxNSduId"])
					}
					
					def void setJ1939TpTxNSduId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpTxNSduId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939TpTxNSduId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getJ1939TpTxNSduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "J1939TpTxNSduRef")
					}
							
					def void setJ1939TpTxNSduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "J1939TpTxNSduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
		}
		
	}
	static class J1939TpGeneral implements IWrapper<GContainer> {
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
		
		def Boolean getJ1939TpCancellationSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpCancellationSupport"])
		}
		
		def void setJ1939TpCancellationSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpCancellationSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939TpCancellationSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getJ1939TpDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpDevErrorDetect"])
		}
		
		def void setJ1939TpDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939TpDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigDecimal getJ1939TpMainFunctionPeriod(){
			EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpMainFunctionPeriod"])
		}
		
		def void setJ1939TpMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpMainFunctionPeriod"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939TpMainFunctionPeriod"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigDecimal getJ1939TpTxConfTimeout(){
			EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpTxConfTimeout"])
		}
		
		def void setJ1939TpTxConfTimeout(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpTxConfTimeout"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939TpTxConfTimeout"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getJ1939TpVersionInfoApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpVersionInfoApi"])
		}
		
		def void setJ1939TpVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939TpVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939TpVersionInfoApi"])
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
