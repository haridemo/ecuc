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

class IpduM implements IWrapper<GModuleConfiguration> {
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
	
	def IpduMConfig getIpduMConfig(){
		moduleConfiguration.getByType(typeof(IpduMConfig))
	}
	
	def void setIpduMConfig(IpduMConfig ipduMConfig){
		val GContainer container = ipduMConfig.getTarget() 
	    moduleConfiguration.setContainer(container, "IpduMConfig")
	}
	def IpduMGeneral getIpduMGeneral(){
		moduleConfiguration.getByType(typeof(IpduMGeneral))
	}
	
	def void setIpduMGeneral(IpduMGeneral ipduMGeneral){
		val GContainer container = ipduMGeneral.getTarget() 
	    moduleConfiguration.setContainer(container, "IpduMGeneral")
	}
	def IpduMPublishedInformation getIpduMPublishedInformation(){
		moduleConfiguration.getByType(typeof(IpduMPublishedInformation))
	}
	
	def void setIpduMPublishedInformation(IpduMPublishedInformation ipduMPublishedInformation){
		val GContainer container = ipduMPublishedInformation.getTarget() 
	    moduleConfiguration.setContainer(container, "IpduMPublishedInformation")
	}
	
	static class IpduMConfig implements IWrapper<GContainer> {
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
	        if (!(object instanceof IpduMConfig)){
				return false
			}
			this.target == (object as IpduMConfig).target
		}
		
		def BigInteger getIpduMMaxTxBufferSize(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMMaxTxBufferSize"])
		}
		
		def void setIpduMMaxTxBufferSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMMaxTxBufferSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMMaxTxBufferSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getIpduMMaxTxPathwayCnt(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMMaxTxPathwayCnt"])
		}
		
		def void setIpduMMaxTxPathwayCnt(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMMaxTxPathwayCnt"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMMaxTxPathwayCnt"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<IpduMContainedRxPdu> getIpduMContainedRxPdus(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "IpduMContainedRxPdu")
				}
			}
			return new BasicWrappingEList<IpduMContainedRxPdu, GContainer>(filteredContainers, typeof(IpduMContainedRxPdu), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.IpduM$IpduMConfig$IpduMContainedRxPdu ipduMContainedRxPdu) {
					ipduMContainedRxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("IpduMContainedRxPdu"))
					super.delegateAdd(ipduMContainedRxPdu)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.IpduM$IpduMConfig$IpduMContainedRxPdu ipduMContainedRxPdu) {
					ipduMContainedRxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("IpduMContainedRxPdu"))
					super.delegateAdd(index, ipduMContainedRxPdu)
				}	
			}
		}
		
		def List<IpduMContainedTxPdu> getIpduMContainedTxPdus(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "IpduMContainedTxPdu")
				}
			}
			return new BasicWrappingEList<IpduMContainedTxPdu, GContainer>(filteredContainers, typeof(IpduMContainedTxPdu), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.IpduM$IpduMConfig$IpduMContainedTxPdu ipduMContainedTxPdu) {
					ipduMContainedTxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("IpduMContainedTxPdu"))
					super.delegateAdd(ipduMContainedTxPdu)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.IpduM$IpduMConfig$IpduMContainedTxPdu ipduMContainedTxPdu) {
					ipduMContainedTxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("IpduMContainedTxPdu"))
					super.delegateAdd(index, ipduMContainedTxPdu)
				}	
			}
		}
		
		def List<IpduMContainerRxPdu> getIpduMContainerRxPdus(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "IpduMContainerRxPdu")
				}
			}
			return new BasicWrappingEList<IpduMContainerRxPdu, GContainer>(filteredContainers, typeof(IpduMContainerRxPdu), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.IpduM$IpduMConfig$IpduMContainerRxPdu ipduMContainerRxPdu) {
					ipduMContainerRxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("IpduMContainerRxPdu"))
					super.delegateAdd(ipduMContainerRxPdu)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.IpduM$IpduMConfig$IpduMContainerRxPdu ipduMContainerRxPdu) {
					ipduMContainerRxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("IpduMContainerRxPdu"))
					super.delegateAdd(index, ipduMContainerRxPdu)
				}	
			}
		}
		
		def List<IpduMContainerTxPdu> getIpduMContainerTxPdus(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "IpduMContainerTxPdu")
				}
			}
			return new BasicWrappingEList<IpduMContainerTxPdu, GContainer>(filteredContainers, typeof(IpduMContainerTxPdu), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.IpduM$IpduMConfig$IpduMContainerTxPdu ipduMContainerTxPdu) {
					ipduMContainerTxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("IpduMContainerTxPdu"))
					super.delegateAdd(ipduMContainerTxPdu)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.IpduM$IpduMConfig$IpduMContainerTxPdu ipduMContainerTxPdu) {
					ipduMContainerTxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("IpduMContainerTxPdu"))
					super.delegateAdd(index, ipduMContainerTxPdu)
				}	
			}
		}
		
		def List<IpduMRxPathway> getIpduMRxPathways(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "IpduMRxPathway")
				}
			}
			return new BasicWrappingEList<IpduMRxPathway, GContainer>(filteredContainers, typeof(IpduMRxPathway), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.IpduM$IpduMConfig$IpduMRxPathway ipduMRxPathway) {
					ipduMRxPathway.target?.gSetDefinition(containerValue.getContainerDefinition("IpduMRxPathway"))
					super.delegateAdd(ipduMRxPathway)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.IpduM$IpduMConfig$IpduMRxPathway ipduMRxPathway) {
					ipduMRxPathway.target?.gSetDefinition(containerValue.getContainerDefinition("IpduMRxPathway"))
					super.delegateAdd(index, ipduMRxPathway)
				}	
			}
		}
		
		def List<IpduMTxPathway> getIpduMTxPathways(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "IpduMTxPathway")
				}
			}
			return new BasicWrappingEList<IpduMTxPathway, GContainer>(filteredContainers, typeof(IpduMTxPathway), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.IpduM$IpduMConfig$IpduMTxPathway ipduMTxPathway) {
					ipduMTxPathway.target?.gSetDefinition(containerValue.getContainerDefinition("IpduMTxPathway"))
					super.delegateAdd(ipduMTxPathway)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.IpduM$IpduMConfig$IpduMTxPathway ipduMTxPathway) {
					ipduMTxPathway.target?.gSetDefinition(containerValue.getContainerDefinition("IpduMTxPathway"))
					super.delegateAdd(index, ipduMTxPathway)
				}	
			}
		}
		
		
		static class IpduMContainedRxPdu implements IWrapper<GContainer> {
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
		        if (!(object instanceof IpduMContainedRxPdu)){
					return false
				}
				this.target == (object as IpduMContainedRxPdu).target
			}
			
			def BigInteger getIpduMContainedPduHeaderId(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainedPduHeaderId"])
			}
			
			def void setIpduMContainedPduHeaderId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainedPduHeaderId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainedPduHeaderId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.IpduM.IpduMConfig.IpduMContainerRxPdu getIpduMContainedRxInContainerPduRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.IpduM.IpduMConfig.IpduMContainerRxPdu), "IpduMContainedRxInContainerPduRef")
			}
					
			def void setIpduMContainedRxInContainerPduRef(org.artop.ecuc.autosar421.accessors.IpduM.IpduMConfig.IpduMContainerRxPdu object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "IpduMContainedRxInContainerPduRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getIpduMContainedRxPduRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "IpduMContainedRxPduRef")
			}
					
			def void setIpduMContainedRxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "IpduMContainedRxPduRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class IpduMContainedTxPdu implements IWrapper<GContainer> {
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
		        if (!(object instanceof IpduMContainedTxPdu)){
					return false
				}
				this.target == (object as IpduMContainedTxPdu).target
			}
			
			def BigInteger getIpduMContainedPduHeaderId(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainedPduHeaderId"])
			}
			
			def void setIpduMContainedPduHeaderId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainedPduHeaderId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainedPduHeaderId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def IpduMContainedTxPduCollectionSemantics getIpduMContainedTxPduCollectionSemantics(){
				getIpduMContainedTxPduCollectionSemanticsValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainedTxPduCollectionSemantics"])
			}
			
			def void setIpduMContainedTxPduCollectionSemantics(IpduMContainedTxPduCollectionSemantics value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainedTxPduCollectionSemantics"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainedTxPduCollectionSemantics"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum IpduMContainedTxPduCollectionSemantics {
				IPDUM_COLLECT_LAST_IS_BEST, 
				IPDUM_COLLECT_QUEUED
			}
				
			def IpduMContainedTxPduCollectionSemantics getIpduMContainedTxPduCollectionSemanticsValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "IPDUM_COLLECT_LAST_IS_BEST" : IpduMContainedTxPduCollectionSemantics.IPDUM_COLLECT_LAST_IS_BEST
					case "IPDUM_COLLECT_QUEUED" : IpduMContainedTxPduCollectionSemantics.IPDUM_COLLECT_QUEUED
				}
			}
			
			def void setIpduMContainedTxPduCollectionSemanticsValue(GParameterValue paramValue, IpduMContainedTxPduCollectionSemantics value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			def Boolean getIpduMContainedTxPduConfirmation(){
				EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainedTxPduConfirmation"])
			}
			
			def void setIpduMContainedTxPduConfirmation(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainedTxPduConfirmation"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainedTxPduConfirmation"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getIpduMContainedTxPduHandleId(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainedTxPduHandleId"])
			}
			
			def void setIpduMContainedTxPduHandleId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainedTxPduHandleId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainedTxPduHandleId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigDecimal getIpduMContainedTxPduSendTimeout(){
				EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainedTxPduSendTimeout"])
			}
			
			def void setIpduMContainedTxPduSendTimeout(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainedTxPduSendTimeout"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainedTxPduSendTimeout"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def IpduMContainedTxPduTrigger getIpduMContainedTxPduTrigger(){
				getIpduMContainedTxPduTriggerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainedTxPduTrigger"])
			}
			
			def void setIpduMContainedTxPduTrigger(IpduMContainedTxPduTrigger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainedTxPduTrigger"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainedTxPduTrigger"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum IpduMContainedTxPduTrigger {
				IPDUM_TRIGGER_ALWAYS, 
				IPDUM_TRIGGER_NEVER
			}
				
			def IpduMContainedTxPduTrigger getIpduMContainedTxPduTriggerValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "IPDUM_TRIGGER_ALWAYS" : IpduMContainedTxPduTrigger.IPDUM_TRIGGER_ALWAYS
					case "IPDUM_TRIGGER_NEVER" : IpduMContainedTxPduTrigger.IPDUM_TRIGGER_NEVER
				}
			}
			
			def void setIpduMContainedTxPduTriggerValue(GParameterValue paramValue, IpduMContainedTxPduTrigger value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.IpduM.IpduMConfig.IpduMContainerTxPdu getIpduMContainedTxInContainerPduRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.IpduM.IpduMConfig.IpduMContainerTxPdu), "IpduMContainedTxInContainerPduRef")
			}
					
			def void setIpduMContainedTxInContainerPduRef(org.artop.ecuc.autosar421.accessors.IpduM.IpduMConfig.IpduMContainerTxPdu object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "IpduMContainedTxInContainerPduRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getIpduMContainedTxPduRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "IpduMContainedTxPduRef")
			}
					
			def void setIpduMContainedTxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "IpduMContainedTxPduRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class IpduMContainerRxPdu implements IWrapper<GContainer> {
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
		        if (!(object instanceof IpduMContainerRxPdu)){
					return false
				}
				this.target == (object as IpduMContainerRxPdu).target
			}
			
			def IpduMContainerHeaderSize getIpduMContainerHeaderSize(){
				getIpduMContainerHeaderSizeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerHeaderSize"])
			}
			
			def void setIpduMContainerHeaderSize(IpduMContainerHeaderSize value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerHeaderSize"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainerHeaderSize"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum IpduMContainerHeaderSize {
				IPDUM_HEADERTYPE_LONG, 
				IPDUM_HEADERTYPE_SHORT
			}
				
			def IpduMContainerHeaderSize getIpduMContainerHeaderSizeValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "IPDUM_HEADERTYPE_LONG" : IpduMContainerHeaderSize.IPDUM_HEADERTYPE_LONG
					case "IPDUM_HEADERTYPE_SHORT" : IpduMContainerHeaderSize.IPDUM_HEADERTYPE_SHORT
				}
			}
			
			def void setIpduMContainerHeaderSizeValue(GParameterValue paramValue, IpduMContainerHeaderSize value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			def IpduMContainerPduProcessing getIpduMContainerPduProcessing(){
				getIpduMContainerPduProcessingValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerPduProcessing"])
			}
			
			def void setIpduMContainerPduProcessing(IpduMContainerPduProcessing value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerPduProcessing"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainerPduProcessing"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum IpduMContainerPduProcessing {
				IPDUM_PROCESSING_DEFERRED, 
				IPDUM_PROCESSING_IMMEDIATE
			}
				
			def IpduMContainerPduProcessing getIpduMContainerPduProcessingValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "IPDUM_PROCESSING_DEFERRED" : IpduMContainerPduProcessing.IPDUM_PROCESSING_DEFERRED
					case "IPDUM_PROCESSING_IMMEDIATE" : IpduMContainerPduProcessing.IPDUM_PROCESSING_IMMEDIATE
				}
			}
			
			def void setIpduMContainerPduProcessingValue(GParameterValue paramValue, IpduMContainerPduProcessing value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			def BigInteger getIpduMContainerQueueSize(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerQueueSize"])
			}
			
			def void setIpduMContainerQueueSize(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerQueueSize"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainerQueueSize"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def IpduMContainerRxAcceptContainedPdu getIpduMContainerRxAcceptContainedPdu(){
				getIpduMContainerRxAcceptContainedPduValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerRxAcceptContainedPdu"])
			}
			
			def void setIpduMContainerRxAcceptContainedPdu(IpduMContainerRxAcceptContainedPdu value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerRxAcceptContainedPdu"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainerRxAcceptContainedPdu"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum IpduMContainerRxAcceptContainedPdu {
				IPDUM_ACCEPT_ALL, 
				IPDUM_ACCEPT_CONFIGURED
			}
				
			def IpduMContainerRxAcceptContainedPdu getIpduMContainerRxAcceptContainedPduValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "IPDUM_ACCEPT_ALL" : IpduMContainerRxAcceptContainedPdu.IPDUM_ACCEPT_ALL
					case "IPDUM_ACCEPT_CONFIGURED" : IpduMContainerRxAcceptContainedPdu.IPDUM_ACCEPT_CONFIGURED
				}
			}
			
			def void setIpduMContainerRxAcceptContainedPduValue(GParameterValue paramValue, IpduMContainerRxAcceptContainedPdu value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			def BigInteger getIpduMContainerRxHandleId(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerRxHandleId"])
			}
			
			def void setIpduMContainerRxHandleId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerRxHandleId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainerRxHandleId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getIpduMContainerRxPduRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "IpduMContainerRxPduRef")
			}
					
			def void setIpduMContainerRxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "IpduMContainerRxPduRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class IpduMContainerTxPdu implements IWrapper<GContainer> {
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
		        if (!(object instanceof IpduMContainerTxPdu)){
					return false
				}
				this.target == (object as IpduMContainerTxPdu).target
			}
			
			def IpduMContainerHeaderSize getIpduMContainerHeaderSize(){
				getIpduMContainerHeaderSizeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerHeaderSize"])
			}
			
			def void setIpduMContainerHeaderSize(IpduMContainerHeaderSize value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerHeaderSize"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainerHeaderSize"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum IpduMContainerHeaderSize {
				IPDUM_HEADERTYPE_LONG, 
				IPDUM_HEADERTYPE_SHORT
			}
				
			def IpduMContainerHeaderSize getIpduMContainerHeaderSizeValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "IPDUM_HEADERTYPE_LONG" : IpduMContainerHeaderSize.IPDUM_HEADERTYPE_LONG
					case "IPDUM_HEADERTYPE_SHORT" : IpduMContainerHeaderSize.IPDUM_HEADERTYPE_SHORT
				}
			}
			
			def void setIpduMContainerHeaderSizeValue(GParameterValue paramValue, IpduMContainerHeaderSize value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			def BigInteger getIpduMContainerQueueSize(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerQueueSize"])
			}
			
			def void setIpduMContainerQueueSize(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerQueueSize"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainerQueueSize"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigDecimal getIpduMContainerTxConfirmationTimeout(){
				EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerTxConfirmationTimeout"])
			}
			
			def void setIpduMContainerTxConfirmationTimeout(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerTxConfirmationTimeout"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainerTxConfirmationTimeout"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getIpduMContainerTxFirstContainedPduTrigger(){
				EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerTxFirstContainedPduTrigger"])
			}
			
			def void setIpduMContainerTxFirstContainedPduTrigger(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerTxFirstContainedPduTrigger"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainerTxFirstContainedPduTrigger"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getIpduMContainerTxHandleId(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerTxHandleId"])
			}
			
			def void setIpduMContainerTxHandleId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerTxHandleId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainerTxHandleId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigDecimal getIpduMContainerTxSendTimeout(){
				EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerTxSendTimeout"])
			}
			
			def void setIpduMContainerTxSendTimeout(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerTxSendTimeout"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainerTxSendTimeout"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getIpduMContainerTxSizeThreshold(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerTxSizeThreshold"])
			}
			
			def void setIpduMContainerTxSizeThreshold(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerTxSizeThreshold"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainerTxSizeThreshold"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def IpduMContainerTxTriggerMode getIpduMContainerTxTriggerMode(){
				getIpduMContainerTxTriggerModeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerTxTriggerMode"])
			}
			
			def void setIpduMContainerTxTriggerMode(IpduMContainerTxTriggerMode value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerTxTriggerMode"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainerTxTriggerMode"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum IpduMContainerTxTriggerMode {
				IPDUM_DIRECT, 
				IPDUM_TRIGGERTRANSMIT
			}
				
			def IpduMContainerTxTriggerMode getIpduMContainerTxTriggerModeValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "IPDUM_DIRECT" : IpduMContainerTxTriggerMode.IPDUM_DIRECT
					case "IPDUM_TRIGGERTRANSMIT" : IpduMContainerTxTriggerMode.IPDUM_TRIGGERTRANSMIT
				}
			}
			
			def void setIpduMContainerTxTriggerModeValue(GParameterValue paramValue, IpduMContainerTxTriggerMode value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getIpduMContainerTxPduRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "IpduMContainerTxPduRef")
			}
					
			def void setIpduMContainerTxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "IpduMContainerTxPduRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class IpduMRxPathway implements IWrapper<GContainer> {
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
		        if (!(object instanceof IpduMRxPathway)){
					return false
				}
				this.target == (object as IpduMRxPathway).target
			}
			
			
			
			def IpduMRxIndication getIpduMRxIndication(){
				containerValue.getByType(typeof(IpduMRxIndication))
			}
			
			def void setIpduMRxIndication(IpduMRxIndication ipduMRxIndication){
				val GContainer subContainer = ipduMRxIndication.getTarget()
				containerValue.setContainer(subContainer, "IpduMRxIndication")
			}
			
			
			static class IpduMRxIndication implements IWrapper<GContainer> {
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
			        if (!(object instanceof IpduMRxIndication)){
						return false
					}
					this.target == (object as IpduMRxIndication).target
				}
				
				def IpduMByteOrder getIpduMByteOrder(){
					getIpduMByteOrderValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMByteOrder"])
				}
				
				def void setIpduMByteOrder(IpduMByteOrder value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMByteOrder"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMByteOrder"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum IpduMByteOrder {
					BIG_ENDIAN, 
					LITTLE_ENDIAN
				}
					
				def IpduMByteOrder getIpduMByteOrderValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "BIG_ENDIAN" : IpduMByteOrder.BIG_ENDIAN
						case "LITTLE_ENDIAN" : IpduMByteOrder.LITTLE_ENDIAN
					}
				}
				
				def void setIpduMByteOrderValue(GParameterValue paramValue, IpduMByteOrder value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				def BigInteger getIpduMRxHandleId(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMRxHandleId"])
				}
				
				def void setIpduMRxHandleId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMRxHandleId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMRxHandleId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getIpduMRxIndicationPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "IpduMRxIndicationPduRef")
				}
						
				def void setIpduMRxIndicationPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "IpduMRxIndicationPduRef"], object.getTarget())
					}
				}
				
				
				def List<IpduMRxDynamicPart> getIpduMRxDynamicParts(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "IpduMRxDynamicPart")
						}
					}
					return new BasicWrappingEList<IpduMRxDynamicPart, GContainer>(filteredContainers, typeof(IpduMRxDynamicPart), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.IpduM$IpduMConfig$IpduMRxPathway$IpduMRxIndication$IpduMRxDynamicPart ipduMRxDynamicPart) {
							ipduMRxDynamicPart.target?.gSetDefinition(containerValue.getContainerDefinition("IpduMRxDynamicPart"))
							super.delegateAdd(ipduMRxDynamicPart)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.IpduM$IpduMConfig$IpduMRxPathway$IpduMRxIndication$IpduMRxDynamicPart ipduMRxDynamicPart) {
							ipduMRxDynamicPart.target?.gSetDefinition(containerValue.getContainerDefinition("IpduMRxDynamicPart"))
							super.delegateAdd(index, ipduMRxDynamicPart)
						}	
					}
				}
				
				def List<IpduMRxDynamicSegment> getIpduMRxDynamicSegments(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "IpduMRxDynamicSegment")
						}
					}
					return new BasicWrappingEList<IpduMRxDynamicSegment, GContainer>(filteredContainers, typeof(IpduMRxDynamicSegment), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.IpduM$IpduMConfig$IpduMRxPathway$IpduMRxIndication$IpduMRxDynamicSegment ipduMRxDynamicSegment) {
							ipduMRxDynamicSegment.target?.gSetDefinition(containerValue.getContainerDefinition("IpduMRxDynamicSegment"))
							super.delegateAdd(ipduMRxDynamicSegment)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.IpduM$IpduMConfig$IpduMRxPathway$IpduMRxIndication$IpduMRxDynamicSegment ipduMRxDynamicSegment) {
							ipduMRxDynamicSegment.target?.gSetDefinition(containerValue.getContainerDefinition("IpduMRxDynamicSegment"))
							super.delegateAdd(index, ipduMRxDynamicSegment)
						}	
					}
				}
				
				def IpduMRxStaticPart getIpduMRxStaticPart(){
					containerValue.getByType(typeof(IpduMRxStaticPart))
				}
				
				def void setIpduMRxStaticPart(IpduMRxStaticPart ipduMRxStaticPart){
					val GContainer subContainer = ipduMRxStaticPart.getTarget()
					containerValue.setContainer(subContainer, "IpduMRxStaticPart")
				}
				
				def List<IpduMRxStaticSegment> getIpduMRxStaticSegments(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "IpduMRxStaticSegment")
						}
					}
					return new BasicWrappingEList<IpduMRxStaticSegment, GContainer>(filteredContainers, typeof(IpduMRxStaticSegment), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.IpduM$IpduMConfig$IpduMRxPathway$IpduMRxIndication$IpduMRxStaticSegment ipduMRxStaticSegment) {
							ipduMRxStaticSegment.target?.gSetDefinition(containerValue.getContainerDefinition("IpduMRxStaticSegment"))
							super.delegateAdd(ipduMRxStaticSegment)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.IpduM$IpduMConfig$IpduMRxPathway$IpduMRxIndication$IpduMRxStaticSegment ipduMRxStaticSegment) {
							ipduMRxStaticSegment.target?.gSetDefinition(containerValue.getContainerDefinition("IpduMRxStaticSegment"))
							super.delegateAdd(index, ipduMRxStaticSegment)
						}	
					}
				}
				
				def IpduMSelectorField getIpduMSelectorField(){
					containerValue.getByType(typeof(IpduMSelectorField))
				}
				
				def void setIpduMSelectorField(IpduMSelectorField ipduMSelectorField){
					val GContainer subContainer = ipduMSelectorField.getTarget()
					containerValue.setContainer(subContainer, "IpduMSelectorField")
				}
				
				
				static class IpduMRxDynamicPart implements IWrapper<GContainer> {
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
				        if (!(object instanceof IpduMRxDynamicPart)){
							return false
						}
						this.target == (object as IpduMRxDynamicPart).target
					}
					
					def BigInteger getIpduMRxSelectorValue(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMRxSelectorValue"])
					}
					
					def void setIpduMRxSelectorValue(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMRxSelectorValue"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMRxSelectorValue"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getIpduMOutgoingDynamicPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "IpduMOutgoingDynamicPduRef")
					}
							
					def void setIpduMOutgoingDynamicPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "IpduMOutgoingDynamicPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class IpduMRxDynamicSegment implements IWrapper<GContainer> {
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
				        if (!(object instanceof IpduMRxDynamicSegment)){
							return false
						}
						this.target == (object as IpduMRxDynamicSegment).target
					}
					
					def BigInteger getIpduMSegmentLength(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentLength"])
					}
					
					def void setIpduMSegmentLength(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentLength"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMSegmentLength"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getIpduMSegmentPosition(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentPosition"])
					}
					
					def void setIpduMSegmentPosition(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentPosition"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMSegmentPosition"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					
					
				}
				
				static class IpduMRxStaticPart implements IWrapper<GContainer> {
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
				        if (!(object instanceof IpduMRxStaticPart)){
							return false
						}
						this.target == (object as IpduMRxStaticPart).target
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getIpduMOutgoingStaticPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "IpduMOutgoingStaticPduRef")
					}
							
					def void setIpduMOutgoingStaticPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "IpduMOutgoingStaticPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class IpduMRxStaticSegment implements IWrapper<GContainer> {
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
				        if (!(object instanceof IpduMRxStaticSegment)){
							return false
						}
						this.target == (object as IpduMRxStaticSegment).target
					}
					
					def BigInteger getIpduMSegmentLength(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentLength"])
					}
					
					def void setIpduMSegmentLength(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentLength"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMSegmentLength"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getIpduMSegmentPosition(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentPosition"])
					}
					
					def void setIpduMSegmentPosition(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentPosition"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMSegmentPosition"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					
					
				}
				
				static class IpduMSelectorField implements IWrapper<GContainer> {
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
				        if (!(object instanceof IpduMSelectorField)){
							return false
						}
						this.target == (object as IpduMSelectorField).target
					}
					
					def BigInteger getIpduMSelectorFieldLength(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSelectorFieldLength"])
					}
					
					def void setIpduMSelectorFieldLength(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSelectorFieldLength"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMSelectorFieldLength"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getIpduMSelectorFieldPosition(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSelectorFieldPosition"])
					}
					
					def void setIpduMSelectorFieldPosition(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSelectorFieldPosition"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMSelectorFieldPosition"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					
					
				}
				
			}
			
		}
		
		static class IpduMTxPathway implements IWrapper<GContainer> {
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
		        if (!(object instanceof IpduMTxPathway)){
					return false
				}
				this.target == (object as IpduMTxPathway).target
			}
			
			
			
			def IpduMTxRequest getIpduMTxRequest(){
				containerValue.getByType(typeof(IpduMTxRequest))
			}
			
			def void setIpduMTxRequest(IpduMTxRequest ipduMTxRequest){
				val GContainer subContainer = ipduMTxRequest.getTarget()
				containerValue.setContainer(subContainer, "IpduMTxRequest")
			}
			
			
			static class IpduMTxRequest implements IWrapper<GContainer> {
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
			        if (!(object instanceof IpduMTxRequest)){
						return false
					}
					this.target == (object as IpduMTxRequest).target
				}
				
				def IpduMByteOrder getIpduMByteOrder(){
					getIpduMByteOrderValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMByteOrder"])
				}
				
				def void setIpduMByteOrder(IpduMByteOrder value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMByteOrder"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMByteOrder"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum IpduMByteOrder {
					BIG_ENDIAN, 
					LITTLE_ENDIAN
				}
					
				def IpduMByteOrder getIpduMByteOrderValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "BIG_ENDIAN" : IpduMByteOrder.BIG_ENDIAN
						case "LITTLE_ENDIAN" : IpduMByteOrder.LITTLE_ENDIAN
					}
				}
				
				def void setIpduMByteOrderValue(GParameterValue paramValue, IpduMByteOrder value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				def BigInteger getIpduMIPduUnusedAreasDefault(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMIPduUnusedAreasDefault"])
				}
				
				def void setIpduMIPduUnusedAreasDefault(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMIPduUnusedAreasDefault"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMIPduUnusedAreasDefault"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigInteger getIpduMTxConfirmationPduId(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxConfirmationPduId"])
				}
				
				def void setIpduMTxConfirmationPduId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxConfirmationPduId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMTxConfirmationPduId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigDecimal getIpduMTxConfirmationTimeout(){
					EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxConfirmationTimeout"])
				}
				
				def void setIpduMTxConfirmationTimeout(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxConfirmationTimeout"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMTxConfirmationTimeout"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def IpduMTxTriggerMode getIpduMTxTriggerMode(){
					getIpduMTxTriggerModeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxTriggerMode"])
				}
				
				def void setIpduMTxTriggerMode(IpduMTxTriggerMode value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxTriggerMode"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMTxTriggerMode"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum IpduMTxTriggerMode {
					DYNAMIC_PART_TRIGGER, 
					NONE, 
					STATIC_OR_DYNAMIC_PART_TRIGGER, 
					STATIC_PART_TRIGGER
				}
					
				def IpduMTxTriggerMode getIpduMTxTriggerModeValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "DYNAMIC_PART_TRIGGER" : IpduMTxTriggerMode.DYNAMIC_PART_TRIGGER
						case "NONE" : IpduMTxTriggerMode.NONE
						case "STATIC_OR_DYNAMIC_PART_TRIGGER" : IpduMTxTriggerMode.STATIC_OR_DYNAMIC_PART_TRIGGER
						case "STATIC_PART_TRIGGER" : IpduMTxTriggerMode.STATIC_PART_TRIGGER
					}
				}
				
				def void setIpduMTxTriggerModeValue(GParameterValue paramValue, IpduMTxTriggerMode value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.IpduM.IpduMConfig.IpduMTxPathway.IpduMTxRequest.IpduMTxDynamicPart getIpduMInitialDynamicPart(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.IpduM.IpduMConfig.IpduMTxPathway.IpduMTxRequest.IpduMTxDynamicPart), "IpduMInitialDynamicPart")
				}
						
				def void setIpduMInitialDynamicPart(org.artop.ecuc.autosar421.accessors.IpduM.IpduMConfig.IpduMTxPathway.IpduMTxRequest.IpduMTxDynamicPart object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "IpduMInitialDynamicPart"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getIpduMOutgoingPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "IpduMOutgoingPduRef")
				}
						
				def void setIpduMOutgoingPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "IpduMOutgoingPduRef"], object.getTarget())
					}
				}
				
				
				def IpduMSelectorField getIpduMSelectorField(){
					containerValue.getByType(typeof(IpduMSelectorField))
				}
				
				def void setIpduMSelectorField(IpduMSelectorField ipduMSelectorField){
					val GContainer subContainer = ipduMSelectorField.getTarget()
					containerValue.setContainer(subContainer, "IpduMSelectorField")
				}
				
				def List<IpduMTxDynamicPart> getIpduMTxDynamicParts(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "IpduMTxDynamicPart")
						}
					}
					return new BasicWrappingEList<IpduMTxDynamicPart, GContainer>(filteredContainers, typeof(IpduMTxDynamicPart), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.IpduM$IpduMConfig$IpduMTxPathway$IpduMTxRequest$IpduMTxDynamicPart ipduMTxDynamicPart) {
							ipduMTxDynamicPart.target?.gSetDefinition(containerValue.getContainerDefinition("IpduMTxDynamicPart"))
							super.delegateAdd(ipduMTxDynamicPart)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.IpduM$IpduMConfig$IpduMTxPathway$IpduMTxRequest$IpduMTxDynamicPart ipduMTxDynamicPart) {
							ipduMTxDynamicPart.target?.gSetDefinition(containerValue.getContainerDefinition("IpduMTxDynamicPart"))
							super.delegateAdd(index, ipduMTxDynamicPart)
						}	
					}
				}
				
				def List<IpduMTxDynamicSegment> getIpduMTxDynamicSegments(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "IpduMTxDynamicSegment")
						}
					}
					return new BasicWrappingEList<IpduMTxDynamicSegment, GContainer>(filteredContainers, typeof(IpduMTxDynamicSegment), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.IpduM$IpduMConfig$IpduMTxPathway$IpduMTxRequest$IpduMTxDynamicSegment ipduMTxDynamicSegment) {
							ipduMTxDynamicSegment.target?.gSetDefinition(containerValue.getContainerDefinition("IpduMTxDynamicSegment"))
							super.delegateAdd(ipduMTxDynamicSegment)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.IpduM$IpduMConfig$IpduMTxPathway$IpduMTxRequest$IpduMTxDynamicSegment ipduMTxDynamicSegment) {
							ipduMTxDynamicSegment.target?.gSetDefinition(containerValue.getContainerDefinition("IpduMTxDynamicSegment"))
							super.delegateAdd(index, ipduMTxDynamicSegment)
						}	
					}
				}
				
				def IpduMTxStaticPart getIpduMTxStaticPart(){
					containerValue.getByType(typeof(IpduMTxStaticPart))
				}
				
				def void setIpduMTxStaticPart(IpduMTxStaticPart ipduMTxStaticPart){
					val GContainer subContainer = ipduMTxStaticPart.getTarget()
					containerValue.setContainer(subContainer, "IpduMTxStaticPart")
				}
				
				def List<IpduMTxStaticSegment> getIpduMTxStaticSegments(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "IpduMTxStaticSegment")
						}
					}
					return new BasicWrappingEList<IpduMTxStaticSegment, GContainer>(filteredContainers, typeof(IpduMTxStaticSegment), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.IpduM$IpduMConfig$IpduMTxPathway$IpduMTxRequest$IpduMTxStaticSegment ipduMTxStaticSegment) {
							ipduMTxStaticSegment.target?.gSetDefinition(containerValue.getContainerDefinition("IpduMTxStaticSegment"))
							super.delegateAdd(ipduMTxStaticSegment)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.IpduM$IpduMConfig$IpduMTxPathway$IpduMTxRequest$IpduMTxStaticSegment ipduMTxStaticSegment) {
							ipduMTxStaticSegment.target?.gSetDefinition(containerValue.getContainerDefinition("IpduMTxStaticSegment"))
							super.delegateAdd(index, ipduMTxStaticSegment)
						}	
					}
				}
				
				
				static class IpduMSelectorField implements IWrapper<GContainer> {
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
				        if (!(object instanceof IpduMSelectorField)){
							return false
						}
						this.target == (object as IpduMSelectorField).target
					}
					
					def BigInteger getIpduMSelectorFieldLength(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSelectorFieldLength"])
					}
					
					def void setIpduMSelectorFieldLength(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSelectorFieldLength"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMSelectorFieldLength"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getIpduMSelectorFieldPosition(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSelectorFieldPosition"])
					}
					
					def void setIpduMSelectorFieldPosition(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSelectorFieldPosition"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMSelectorFieldPosition"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					
					
				}
				
				static class IpduMTxDynamicPart implements IWrapper<GContainer> {
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
				        if (!(object instanceof IpduMTxDynamicPart)){
							return false
						}
						this.target == (object as IpduMTxDynamicPart).target
					}
					
					def Boolean getIpduMJitUpdate(){
						EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMJitUpdate"])
					}
					
					def void setIpduMJitUpdate(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMJitUpdate"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMJitUpdate"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
					}
					
					def Boolean getIpduMTxDynamicConfirmation(){
						EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxDynamicConfirmation"])
					}
					
					def void setIpduMTxDynamicConfirmation(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxDynamicConfirmation"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMTxDynamicConfirmation"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
					}
					
					def BigInteger getIpduMTxDynamicHandleId(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxDynamicHandleId"])
					}
					
					def void setIpduMTxDynamicHandleId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxDynamicHandleId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMTxDynamicHandleId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getIpduMTxDynamicPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "IpduMTxDynamicPduRef")
					}
							
					def void setIpduMTxDynamicPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "IpduMTxDynamicPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class IpduMTxDynamicSegment implements IWrapper<GContainer> {
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
				        if (!(object instanceof IpduMTxDynamicSegment)){
							return false
						}
						this.target == (object as IpduMTxDynamicSegment).target
					}
					
					def BigInteger getIpduMSegmentLength(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentLength"])
					}
					
					def void setIpduMSegmentLength(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentLength"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMSegmentLength"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getIpduMSegmentPosition(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentPosition"])
					}
					
					def void setIpduMSegmentPosition(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentPosition"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMSegmentPosition"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					
					
				}
				
				static class IpduMTxStaticPart implements IWrapper<GContainer> {
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
				        if (!(object instanceof IpduMTxStaticPart)){
							return false
						}
						this.target == (object as IpduMTxStaticPart).target
					}
					
					def Boolean getIpduMJitUpdate(){
						EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMJitUpdate"])
					}
					
					def void setIpduMJitUpdate(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMJitUpdate"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMJitUpdate"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
					}
					
					def Boolean getIpduMTxStaticConfirmation(){
						EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxStaticConfirmation"])
					}
					
					def void setIpduMTxStaticConfirmation(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxStaticConfirmation"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMTxStaticConfirmation"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
					}
					
					def BigInteger getIpduMTxStaticHandleId(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxStaticHandleId"])
					}
					
					def void setIpduMTxStaticHandleId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxStaticHandleId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMTxStaticHandleId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getIpduMTxStaticPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "IpduMTxStaticPduRef")
					}
							
					def void setIpduMTxStaticPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "IpduMTxStaticPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class IpduMTxStaticSegment implements IWrapper<GContainer> {
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
				        if (!(object instanceof IpduMTxStaticSegment)){
							return false
						}
						this.target == (object as IpduMTxStaticSegment).target
					}
					
					def BigInteger getIpduMSegmentLength(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentLength"])
					}
					
					def void setIpduMSegmentLength(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentLength"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMSegmentLength"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getIpduMSegmentPosition(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentPosition"])
					}
					
					def void setIpduMSegmentPosition(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentPosition"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMSegmentPosition"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					
					
				}
				
			}
			
		}
		
	}
	static class IpduMGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof IpduMGeneral)){
				return false
			}
			this.target == (object as IpduMGeneral).target
		}
		
		def BigDecimal getIpduMConfigurationTimeBase(){
			EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMConfigurationTimeBase"])
		}
		
		def void setIpduMConfigurationTimeBase(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMConfigurationTimeBase"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMConfigurationTimeBase"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getIpduMDevErrorDetect(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMDevErrorDetect"])
		}
		
		def void setIpduMDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def IpduMHeaderByteOrder getIpduMHeaderByteOrder(){
			getIpduMHeaderByteOrderValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMHeaderByteOrder"])
		}
		
		def void setIpduMHeaderByteOrder(IpduMHeaderByteOrder value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMHeaderByteOrder"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMHeaderByteOrder"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		enum IpduMHeaderByteOrder {
			IPDUM_BIG_ENDIAN, 
			IPDUM_LITTLE_ENDIAN
		}
			
		def IpduMHeaderByteOrder getIpduMHeaderByteOrderValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "IPDUM_BIG_ENDIAN" : IpduMHeaderByteOrder.IPDUM_BIG_ENDIAN
				case "IPDUM_LITTLE_ENDIAN" : IpduMHeaderByteOrder.IPDUM_LITTLE_ENDIAN
			}
		}
		
		def void setIpduMHeaderByteOrderValue(GParameterValue paramValue, IpduMHeaderByteOrder value){
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		def Boolean getIpduMStaticPartExists(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMStaticPartExists"])
		}
		
		def void setIpduMStaticPartExists(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMStaticPartExists"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMStaticPartExists"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getIpduMVersionInfoApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMVersionInfoApi"])
		}
		
		def void setIpduMVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}
	static class IpduMPublishedInformation implements IWrapper<GContainer> {
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
	        if (!(object instanceof IpduMPublishedInformation)){
				return false
			}
			this.target == (object as IpduMPublishedInformation).target
		}
		
		def Boolean getIpduMRxDirectComInvocation(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMRxDirectComInvocation"])
		}
		
		def void setIpduMRxDirectComInvocation(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMRxDirectComInvocation"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "IpduMRxDirectComInvocation"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}
	
	override def boolean equals(Object object) {
        if (!(object instanceof IpduM)){
			return false
		}
		this.target == (object as IpduM).target
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
