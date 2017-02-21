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
package org.artop.ecuc.autosar430.accessors

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
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMMaxTxBufferSize"].getBigIntegerValue()
		}
		
		def void setIpduMMaxTxBufferSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMMaxTxBufferSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMMaxTxBufferSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getIpduMMaxTxPathwayCnt(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMMaxTxPathwayCnt"].getBigIntegerValue()
		}
		
		def void setIpduMMaxTxPathwayCnt(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMMaxTxPathwayCnt"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMMaxTxPathwayCnt"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<IpduMContainedRxPdu> getIpduMContainedRxPdus(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "IpduMContainedRxPdu")
				}
			}
			return new BasicWrappingEList<IpduMContainedRxPdu, GContainer>(filteredContainers, typeof(IpduMContainedRxPdu), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar430.accessors.IpduM.IpduMConfig.IpduMContainedRxPdu ipduMContainedRxPdu) {
					ipduMContainedRxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("IpduMContainedRxPdu"))
					super.delegateAdd(ipduMContainedRxPdu)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.IpduM.IpduMConfig.IpduMContainedRxPdu ipduMContainedRxPdu) {
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
				override protected delegateAdd(org.artop.ecuc.autosar430.accessors.IpduM.IpduMConfig.IpduMContainedTxPdu ipduMContainedTxPdu) {
					ipduMContainedTxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("IpduMContainedTxPdu"))
					super.delegateAdd(ipduMContainedTxPdu)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.IpduM.IpduMConfig.IpduMContainedTxPdu ipduMContainedTxPdu) {
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
				override protected delegateAdd(org.artop.ecuc.autosar430.accessors.IpduM.IpduMConfig.IpduMContainerRxPdu ipduMContainerRxPdu) {
					ipduMContainerRxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("IpduMContainerRxPdu"))
					super.delegateAdd(ipduMContainerRxPdu)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.IpduM.IpduMConfig.IpduMContainerRxPdu ipduMContainerRxPdu) {
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
				override protected delegateAdd(org.artop.ecuc.autosar430.accessors.IpduM.IpduMConfig.IpduMContainerTxPdu ipduMContainerTxPdu) {
					ipduMContainerTxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("IpduMContainerTxPdu"))
					super.delegateAdd(ipduMContainerTxPdu)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.IpduM.IpduMConfig.IpduMContainerTxPdu ipduMContainerTxPdu) {
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
				override protected delegateAdd(org.artop.ecuc.autosar430.accessors.IpduM.IpduMConfig.IpduMRxPathway ipduMRxPathway) {
					ipduMRxPathway.target?.gSetDefinition(containerValue.getContainerDefinition("IpduMRxPathway"))
					super.delegateAdd(ipduMRxPathway)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.IpduM.IpduMConfig.IpduMRxPathway ipduMRxPathway) {
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
				override protected delegateAdd(org.artop.ecuc.autosar430.accessors.IpduM.IpduMConfig.IpduMTxPathway ipduMTxPathway) {
					ipduMTxPathway.target?.gSetDefinition(containerValue.getContainerDefinition("IpduMTxPathway"))
					super.delegateAdd(ipduMTxPathway)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.IpduM.IpduMConfig.IpduMTxPathway ipduMTxPathway) {
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
		
			def BigInteger getIpduMContainedRxPduLongHeaderId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainedRxPduLongHeaderId"].getBigIntegerValue()
			}
			
			def void setIpduMContainedRxPduLongHeaderId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainedRxPduLongHeaderId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainedRxPduLongHeaderId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getIpduMContainedRxPduShortHeaderId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainedRxPduShortHeaderId"].getBigIntegerValue()
			}
			
			def void setIpduMContainedRxPduShortHeaderId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainedRxPduShortHeaderId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainedRxPduShortHeaderId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar430.accessors.IpduM.IpduMConfig.IpduMContainerRxPdu getIpduMContainedRxInContainerPduRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.IpduM.IpduMConfig.IpduMContainerRxPdu), "IpduMContainedRxInContainerPduRef")
			}
			
			def void setIpduMContainedRxInContainerPduRef(org.artop.ecuc.autosar430.accessors.IpduM.IpduMConfig.IpduMContainerRxPdu object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "IpduMContainedRxInContainerPduRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getIpduMContainedRxPduRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "IpduMContainedRxPduRef")
			}
			
			def void setIpduMContainedRxPduRef(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "IpduMContainedRxPduRef"], object.getTarget())
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
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainedPduHeaderId"].getBigIntegerValue()
			}
			
			def void setIpduMContainedPduHeaderId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainedPduHeaderId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainedPduHeaderId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def IpduMContainedTxPduCollectionSemantics getIpduMContainedTxPduCollectionSemantics(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainedTxPduCollectionSemantics"].getIpduMContainedTxPduCollectionSemanticsValue()
			}
			
			def void setIpduMContainedTxPduCollectionSemantics(IpduMContainedTxPduCollectionSemantics value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainedTxPduCollectionSemantics"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainedTxPduCollectionSemantics"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum IpduMContainedTxPduCollectionSemantics {
				IPDUM_COLLECT_LAST_IS_BEST, 
				IPDUM_COLLECT_QUEUED
			}
			
			def IpduMContainedTxPduCollectionSemantics getIpduMContainedTxPduCollectionSemanticsValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "IPDUM_COLLECT_LAST_IS_BEST" : IpduMContainedTxPduCollectionSemantics.IPDUM_COLLECT_LAST_IS_BEST
					case "IPDUM_COLLECT_QUEUED" : IpduMContainedTxPduCollectionSemantics.IPDUM_COLLECT_QUEUED
				}
			}
			
			def void setIpduMContainedTxPduCollectionSemanticsValue(GParameterValue parameterValue, IpduMContainedTxPduCollectionSemantics value){
				parameterValue.setValue(value)
			}
			
			def Boolean getIpduMContainedTxPduConfirmation(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainedTxPduConfirmation"].getBooleanValue()
			}
			
			def void setIpduMContainedTxPduConfirmation(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainedTxPduConfirmation"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainedTxPduConfirmation"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getIpduMContainedTxPduHandleId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainedTxPduHandleId"].getBigIntegerValue()
			}
			
			def void setIpduMContainedTxPduHandleId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainedTxPduHandleId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainedTxPduHandleId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getIpduMContainedTxPduSendTimeout(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainedTxPduSendTimeout"].getBigDecimalValue()
			}
			
			def void setIpduMContainedTxPduSendTimeout(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainedTxPduSendTimeout"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainedTxPduSendTimeout"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def IpduMContainedTxPduTrigger getIpduMContainedTxPduTrigger(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainedTxPduTrigger"].getIpduMContainedTxPduTriggerValue()
			}
			
			def void setIpduMContainedTxPduTrigger(IpduMContainedTxPduTrigger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainedTxPduTrigger"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainedTxPduTrigger"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum IpduMContainedTxPduTrigger {
				IPDUM_TRIGGER_ALWAYS, 
				IPDUM_TRIGGER_NEVER
			}
			
			def IpduMContainedTxPduTrigger getIpduMContainedTxPduTriggerValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "IPDUM_TRIGGER_ALWAYS" : IpduMContainedTxPduTrigger.IPDUM_TRIGGER_ALWAYS
					case "IPDUM_TRIGGER_NEVER" : IpduMContainedTxPduTrigger.IPDUM_TRIGGER_NEVER
				}
			}
			
			def void setIpduMContainedTxPduTriggerValue(GParameterValue parameterValue, IpduMContainedTxPduTrigger value){
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar430.accessors.IpduM.IpduMConfig.IpduMContainerTxPdu getIpduMContainedTxInContainerPduRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.IpduM.IpduMConfig.IpduMContainerTxPdu), "IpduMContainedTxInContainerPduRef")
			}
			
			def void setIpduMContainedTxInContainerPduRef(org.artop.ecuc.autosar430.accessors.IpduM.IpduMConfig.IpduMContainerTxPdu object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "IpduMContainedTxInContainerPduRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getIpduMContainedTxPduRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "IpduMContainedTxPduRef")
			}
			
			def void setIpduMContainedTxPduRef(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "IpduMContainedTxPduRef"], object.getTarget())
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
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerHeaderSize"].getIpduMContainerHeaderSizeValue()
			}
			
			def void setIpduMContainerHeaderSize(IpduMContainerHeaderSize value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerHeaderSize"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainerHeaderSize"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum IpduMContainerHeaderSize {
				IPDUM_HEADERTYPE_LONG, 
				IPDUM_HEADERTYPE_SHORT
			}
			
			def IpduMContainerHeaderSize getIpduMContainerHeaderSizeValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "IPDUM_HEADERTYPE_LONG" : IpduMContainerHeaderSize.IPDUM_HEADERTYPE_LONG
					case "IPDUM_HEADERTYPE_SHORT" : IpduMContainerHeaderSize.IPDUM_HEADERTYPE_SHORT
				}
			}
			
			def void setIpduMContainerHeaderSizeValue(GParameterValue parameterValue, IpduMContainerHeaderSize value){
				parameterValue.setValue(value)
			}
			
			def IpduMContainerPduProcessing getIpduMContainerPduProcessing(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerPduProcessing"].getIpduMContainerPduProcessingValue()
			}
			
			def void setIpduMContainerPduProcessing(IpduMContainerPduProcessing value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerPduProcessing"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainerPduProcessing"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum IpduMContainerPduProcessing {
				IPDUM_PROCESSING_DEFERRED, 
				IPDUM_PROCESSING_IMMEDIATE
			}
			
			def IpduMContainerPduProcessing getIpduMContainerPduProcessingValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "IPDUM_PROCESSING_DEFERRED" : IpduMContainerPduProcessing.IPDUM_PROCESSING_DEFERRED
					case "IPDUM_PROCESSING_IMMEDIATE" : IpduMContainerPduProcessing.IPDUM_PROCESSING_IMMEDIATE
				}
			}
			
			def void setIpduMContainerPduProcessingValue(GParameterValue parameterValue, IpduMContainerPduProcessing value){
				parameterValue.setValue(value)
			}
			
			def BigInteger getIpduMContainerQueueSize(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerQueueSize"].getBigIntegerValue()
			}
			
			def void setIpduMContainerQueueSize(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerQueueSize"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainerQueueSize"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def IpduMContainerRxAcceptContainedPdu getIpduMContainerRxAcceptContainedPdu(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerRxAcceptContainedPdu"].getIpduMContainerRxAcceptContainedPduValue()
			}
			
			def void setIpduMContainerRxAcceptContainedPdu(IpduMContainerRxAcceptContainedPdu value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerRxAcceptContainedPdu"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainerRxAcceptContainedPdu"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum IpduMContainerRxAcceptContainedPdu {
				IPDUM_ACCEPT_ALL, 
				IPDUM_ACCEPT_CONFIGURED
			}
			
			def IpduMContainerRxAcceptContainedPdu getIpduMContainerRxAcceptContainedPduValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "IPDUM_ACCEPT_ALL" : IpduMContainerRxAcceptContainedPdu.IPDUM_ACCEPT_ALL
					case "IPDUM_ACCEPT_CONFIGURED" : IpduMContainerRxAcceptContainedPdu.IPDUM_ACCEPT_CONFIGURED
				}
			}
			
			def void setIpduMContainerRxAcceptContainedPduValue(GParameterValue parameterValue, IpduMContainerRxAcceptContainedPdu value){
				parameterValue.setValue(value)
			}
			
			def BigInteger getIpduMContainerRxHandleId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerRxHandleId"].getBigIntegerValue()
			}
			
			def void setIpduMContainerRxHandleId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerRxHandleId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainerRxHandleId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getIpduMContainerRxPduRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "IpduMContainerRxPduRef")
			}
			
			def void setIpduMContainerRxPduRef(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "IpduMContainerRxPduRef"], object.getTarget())
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
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerHeaderSize"].getIpduMContainerHeaderSizeValue()
			}
			
			def void setIpduMContainerHeaderSize(IpduMContainerHeaderSize value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerHeaderSize"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainerHeaderSize"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum IpduMContainerHeaderSize {
				IPDUM_HEADERTYPE_LONG, 
				IPDUM_HEADERTYPE_SHORT
			}
			
			def IpduMContainerHeaderSize getIpduMContainerHeaderSizeValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "IPDUM_HEADERTYPE_LONG" : IpduMContainerHeaderSize.IPDUM_HEADERTYPE_LONG
					case "IPDUM_HEADERTYPE_SHORT" : IpduMContainerHeaderSize.IPDUM_HEADERTYPE_SHORT
				}
			}
			
			def void setIpduMContainerHeaderSizeValue(GParameterValue parameterValue, IpduMContainerHeaderSize value){
				parameterValue.setValue(value)
			}
			
			def BigInteger getIpduMContainerQueueSize(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerQueueSize"].getBigIntegerValue()
			}
			
			def void setIpduMContainerQueueSize(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerQueueSize"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainerQueueSize"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getIpduMContainerTxFirstContainedPduTrigger(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerTxFirstContainedPduTrigger"].getBooleanValue()
			}
			
			def void setIpduMContainerTxFirstContainedPduTrigger(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerTxFirstContainedPduTrigger"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainerTxFirstContainedPduTrigger"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getIpduMContainerTxHandleId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerTxHandleId"].getBigIntegerValue()
			}
			
			def void setIpduMContainerTxHandleId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerTxHandleId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainerTxHandleId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getIpduMContainerTxSendTimeout(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerTxSendTimeout"].getBigDecimalValue()
			}
			
			def void setIpduMContainerTxSendTimeout(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerTxSendTimeout"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainerTxSendTimeout"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getIpduMContainerTxSizeThreshold(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerTxSizeThreshold"].getBigIntegerValue()
			}
			
			def void setIpduMContainerTxSizeThreshold(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerTxSizeThreshold"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainerTxSizeThreshold"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def IpduMContainerTxTriggerMode getIpduMContainerTxTriggerMode(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerTxTriggerMode"].getIpduMContainerTxTriggerModeValue()
			}
			
			def void setIpduMContainerTxTriggerMode(IpduMContainerTxTriggerMode value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMContainerTxTriggerMode"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMContainerTxTriggerMode"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum IpduMContainerTxTriggerMode {
				IPDUM_DIRECT, 
				IPDUM_TRIGGERTRANSMIT
			}
			
			def IpduMContainerTxTriggerMode getIpduMContainerTxTriggerModeValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "IPDUM_DIRECT" : IpduMContainerTxTriggerMode.IPDUM_DIRECT
					case "IPDUM_TRIGGERTRANSMIT" : IpduMContainerTxTriggerMode.IPDUM_TRIGGERTRANSMIT
				}
			}
			
			def void setIpduMContainerTxTriggerModeValue(GParameterValue parameterValue, IpduMContainerTxTriggerMode value){
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getIpduMContainerTxPduRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "IpduMContainerTxPduRef")
			}
			
			def void setIpduMContainerTxPduRef(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "IpduMContainerTxPduRef"], object.getTarget())
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
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMByteOrder"].getIpduMByteOrderValue()
				}
				
				def void setIpduMByteOrder(IpduMByteOrder value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMByteOrder"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMByteOrder"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum IpduMByteOrder {
					BIG_ENDIAN, 
					LITTLE_ENDIAN
				}
				
				def IpduMByteOrder getIpduMByteOrderValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "BIG_ENDIAN" : IpduMByteOrder.BIG_ENDIAN
						case "LITTLE_ENDIAN" : IpduMByteOrder.LITTLE_ENDIAN
					}
				}
				
				def void setIpduMByteOrderValue(GParameterValue parameterValue, IpduMByteOrder value){
					parameterValue.setValue(value)
				}
				
				def BigInteger getIpduMRxHandleId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMRxHandleId"].getBigIntegerValue()
				}
				
				def void setIpduMRxHandleId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMRxHandleId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMRxHandleId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getIpduMRxIndicationPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "IpduMRxIndicationPduRef")
				}
				
				def void setIpduMRxIndicationPduRef(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "IpduMRxIndicationPduRef"], object.getTarget())
					}
				}
				
				
				def List<IpduMRxDynamicPart> getIpduMRxDynamicParts(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "IpduMRxDynamicPart")
						}
					}
					return new BasicWrappingEList<IpduMRxDynamicPart, GContainer>(filteredContainers, typeof(IpduMRxDynamicPart), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar430.accessors.IpduM.IpduMConfig.IpduMRxPathway.IpduMRxIndication.IpduMRxDynamicPart ipduMRxDynamicPart) {
							ipduMRxDynamicPart.target?.gSetDefinition(containerValue.getContainerDefinition("IpduMRxDynamicPart"))
							super.delegateAdd(ipduMRxDynamicPart)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.IpduM.IpduMConfig.IpduMRxPathway.IpduMRxIndication.IpduMRxDynamicPart ipduMRxDynamicPart) {
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
						override protected delegateAdd(org.artop.ecuc.autosar430.accessors.IpduM.IpduMConfig.IpduMRxPathway.IpduMRxIndication.IpduMRxDynamicSegment ipduMRxDynamicSegment) {
							ipduMRxDynamicSegment.target?.gSetDefinition(containerValue.getContainerDefinition("IpduMRxDynamicSegment"))
							super.delegateAdd(ipduMRxDynamicSegment)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.IpduM.IpduMConfig.IpduMRxPathway.IpduMRxIndication.IpduMRxDynamicSegment ipduMRxDynamicSegment) {
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
						override protected delegateAdd(org.artop.ecuc.autosar430.accessors.IpduM.IpduMConfig.IpduMRxPathway.IpduMRxIndication.IpduMRxStaticSegment ipduMRxStaticSegment) {
							ipduMRxStaticSegment.target?.gSetDefinition(containerValue.getContainerDefinition("IpduMRxStaticSegment"))
							super.delegateAdd(ipduMRxStaticSegment)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.IpduM.IpduMConfig.IpduMRxPathway.IpduMRxIndication.IpduMRxStaticSegment ipduMRxStaticSegment) {
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
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMRxSelectorValue"].getBigIntegerValue()
					}
					
					def void setIpduMRxSelectorValue(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMRxSelectorValue"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMRxSelectorValue"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getIpduMOutgoingDynamicPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "IpduMOutgoingDynamicPduRef")
					}
					
					def void setIpduMOutgoingDynamicPduRef(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "IpduMOutgoingDynamicPduRef"], object.getTarget())
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
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentLength"].getBigIntegerValue()
					}
					
					def void setIpduMSegmentLength(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentLength"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMSegmentLength"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getIpduMSegmentPosition(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentPosition"].getBigIntegerValue()
					}
					
					def void setIpduMSegmentPosition(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentPosition"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMSegmentPosition"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
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
				
					
					def org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getIpduMOutgoingStaticPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "IpduMOutgoingStaticPduRef")
					}
					
					def void setIpduMOutgoingStaticPduRef(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "IpduMOutgoingStaticPduRef"], object.getTarget())
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
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentLength"].getBigIntegerValue()
					}
					
					def void setIpduMSegmentLength(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentLength"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMSegmentLength"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getIpduMSegmentPosition(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentPosition"].getBigIntegerValue()
					}
					
					def void setIpduMSegmentPosition(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentPosition"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMSegmentPosition"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
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
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSelectorFieldLength"].getBigIntegerValue()
					}
					
					def void setIpduMSelectorFieldLength(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSelectorFieldLength"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMSelectorFieldLength"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getIpduMSelectorFieldPosition(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSelectorFieldPosition"].getBigIntegerValue()
					}
					
					def void setIpduMSelectorFieldPosition(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSelectorFieldPosition"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMSelectorFieldPosition"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
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
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMByteOrder"].getIpduMByteOrderValue()
				}
				
				def void setIpduMByteOrder(IpduMByteOrder value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMByteOrder"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMByteOrder"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum IpduMByteOrder {
					BIG_ENDIAN, 
					LITTLE_ENDIAN
				}
				
				def IpduMByteOrder getIpduMByteOrderValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "BIG_ENDIAN" : IpduMByteOrder.BIG_ENDIAN
						case "LITTLE_ENDIAN" : IpduMByteOrder.LITTLE_ENDIAN
					}
				}
				
				def void setIpduMByteOrderValue(GParameterValue parameterValue, IpduMByteOrder value){
					parameterValue.setValue(value)
				}
				
				def BigInteger getIpduMIPduUnusedAreasDefault(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMIPduUnusedAreasDefault"].getBigIntegerValue()
				}
				
				def void setIpduMIPduUnusedAreasDefault(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMIPduUnusedAreasDefault"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMIPduUnusedAreasDefault"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getIpduMTxConfirmationPduId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxConfirmationPduId"].getBigIntegerValue()
				}
				
				def void setIpduMTxConfirmationPduId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxConfirmationPduId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMTxConfirmationPduId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def IpduMTxTriggerMode getIpduMTxTriggerMode(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxTriggerMode"].getIpduMTxTriggerModeValue()
				}
				
				def void setIpduMTxTriggerMode(IpduMTxTriggerMode value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxTriggerMode"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMTxTriggerMode"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum IpduMTxTriggerMode {
					DYNAMIC_PART_TRIGGER, 
					NONE, 
					STATIC_OR_DYNAMIC_PART_TRIGGER, 
					STATIC_PART_TRIGGER
				}
				
				def IpduMTxTriggerMode getIpduMTxTriggerModeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "DYNAMIC_PART_TRIGGER" : IpduMTxTriggerMode.DYNAMIC_PART_TRIGGER
						case "NONE" : IpduMTxTriggerMode.NONE
						case "STATIC_OR_DYNAMIC_PART_TRIGGER" : IpduMTxTriggerMode.STATIC_OR_DYNAMIC_PART_TRIGGER
						case "STATIC_PART_TRIGGER" : IpduMTxTriggerMode.STATIC_PART_TRIGGER
					}
				}
				
				def void setIpduMTxTriggerModeValue(GParameterValue parameterValue, IpduMTxTriggerMode value){
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar430.accessors.IpduM.IpduMConfig.IpduMTxPathway.IpduMTxRequest.IpduMTxDynamicPart getIpduMInitialDynamicPart(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.IpduM.IpduMConfig.IpduMTxPathway.IpduMTxRequest.IpduMTxDynamicPart), "IpduMInitialDynamicPart")
				}
				
				def void setIpduMInitialDynamicPart(org.artop.ecuc.autosar430.accessors.IpduM.IpduMConfig.IpduMTxPathway.IpduMTxRequest.IpduMTxDynamicPart object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "IpduMInitialDynamicPart"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getIpduMOutgoingPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "IpduMOutgoingPduRef")
				}
				
				def void setIpduMOutgoingPduRef(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "IpduMOutgoingPduRef"], object.getTarget())
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
						override protected delegateAdd(org.artop.ecuc.autosar430.accessors.IpduM.IpduMConfig.IpduMTxPathway.IpduMTxRequest.IpduMTxDynamicPart ipduMTxDynamicPart) {
							ipduMTxDynamicPart.target?.gSetDefinition(containerValue.getContainerDefinition("IpduMTxDynamicPart"))
							super.delegateAdd(ipduMTxDynamicPart)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.IpduM.IpduMConfig.IpduMTxPathway.IpduMTxRequest.IpduMTxDynamicPart ipduMTxDynamicPart) {
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
						override protected delegateAdd(org.artop.ecuc.autosar430.accessors.IpduM.IpduMConfig.IpduMTxPathway.IpduMTxRequest.IpduMTxDynamicSegment ipduMTxDynamicSegment) {
							ipduMTxDynamicSegment.target?.gSetDefinition(containerValue.getContainerDefinition("IpduMTxDynamicSegment"))
							super.delegateAdd(ipduMTxDynamicSegment)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.IpduM.IpduMConfig.IpduMTxPathway.IpduMTxRequest.IpduMTxDynamicSegment ipduMTxDynamicSegment) {
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
						override protected delegateAdd(org.artop.ecuc.autosar430.accessors.IpduM.IpduMConfig.IpduMTxPathway.IpduMTxRequest.IpduMTxStaticSegment ipduMTxStaticSegment) {
							ipduMTxStaticSegment.target?.gSetDefinition(containerValue.getContainerDefinition("IpduMTxStaticSegment"))
							super.delegateAdd(ipduMTxStaticSegment)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.IpduM.IpduMConfig.IpduMTxPathway.IpduMTxRequest.IpduMTxStaticSegment ipduMTxStaticSegment) {
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
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSelectorFieldLength"].getBigIntegerValue()
					}
					
					def void setIpduMSelectorFieldLength(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSelectorFieldLength"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMSelectorFieldLength"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getIpduMSelectorFieldPosition(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSelectorFieldPosition"].getBigIntegerValue()
					}
					
					def void setIpduMSelectorFieldPosition(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSelectorFieldPosition"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMSelectorFieldPosition"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
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
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMJitUpdate"].getBooleanValue()
					}
					
					def void setIpduMJitUpdate(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMJitUpdate"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMJitUpdate"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def Boolean getIpduMTxDynamicConfirmation(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxDynamicConfirmation"].getBooleanValue()
					}
					
					def void setIpduMTxDynamicConfirmation(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxDynamicConfirmation"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMTxDynamicConfirmation"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def BigInteger getIpduMTxDynamicHandleId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxDynamicHandleId"].getBigIntegerValue()
					}
					
					def void setIpduMTxDynamicHandleId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxDynamicHandleId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMTxDynamicHandleId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getIpduMTxDynamicPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "IpduMTxDynamicPduRef")
					}
					
					def void setIpduMTxDynamicPduRef(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "IpduMTxDynamicPduRef"], object.getTarget())
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
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentLength"].getBigIntegerValue()
					}
					
					def void setIpduMSegmentLength(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentLength"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMSegmentLength"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getIpduMSegmentPosition(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentPosition"].getBigIntegerValue()
					}
					
					def void setIpduMSegmentPosition(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentPosition"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMSegmentPosition"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
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
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMJitUpdate"].getBooleanValue()
					}
					
					def void setIpduMJitUpdate(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMJitUpdate"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMJitUpdate"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def Boolean getIpduMTxStaticConfirmation(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxStaticConfirmation"].getBooleanValue()
					}
					
					def void setIpduMTxStaticConfirmation(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxStaticConfirmation"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMTxStaticConfirmation"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def BigInteger getIpduMTxStaticHandleId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxStaticHandleId"].getBigIntegerValue()
					}
					
					def void setIpduMTxStaticHandleId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxStaticHandleId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMTxStaticHandleId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getIpduMTxStaticPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "IpduMTxStaticPduRef")
					}
					
					def void setIpduMTxStaticPduRef(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "IpduMTxStaticPduRef"], object.getTarget())
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
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentLength"].getBigIntegerValue()
					}
					
					def void setIpduMSegmentLength(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentLength"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMSegmentLength"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getIpduMSegmentPosition(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentPosition"].getBigIntegerValue()
					}
					
					def void setIpduMSegmentPosition(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMSegmentPosition"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMSegmentPosition"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
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
	
		def Boolean getIpduMDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMDevErrorDetect"].getBooleanValue()
		}
		
		def void setIpduMDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def IpduMHeaderByteOrder getIpduMHeaderByteOrder(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMHeaderByteOrder"].getIpduMHeaderByteOrderValue()
		}
		
		def void setIpduMHeaderByteOrder(IpduMHeaderByteOrder value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMHeaderByteOrder"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMHeaderByteOrder"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum IpduMHeaderByteOrder {
			IPDUM_BIG_ENDIAN, 
			IPDUM_LITTLE_ENDIAN
		}
		
		def IpduMHeaderByteOrder getIpduMHeaderByteOrderValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "IPDUM_BIG_ENDIAN" : IpduMHeaderByteOrder.IPDUM_BIG_ENDIAN
				case "IPDUM_LITTLE_ENDIAN" : IpduMHeaderByteOrder.IPDUM_LITTLE_ENDIAN
			}
		}
		
		def void setIpduMHeaderByteOrderValue(GParameterValue parameterValue, IpduMHeaderByteOrder value){
			parameterValue.setValue(value)
		}
		
		def Boolean getIpduMMetaDataSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMMetaDataSupport"].getBooleanValue()
		}
		
		def void setIpduMMetaDataSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMMetaDataSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMMetaDataSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getIpduMRxTimeBase(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMRxTimeBase"].getBigDecimalValue()
		}
		
		def void setIpduMRxTimeBase(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMRxTimeBase"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMRxTimeBase"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getIpduMStaticPartExists(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMStaticPartExists"].getBooleanValue()
		}
		
		def void setIpduMStaticPartExists(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMStaticPartExists"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMStaticPartExists"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getIpduMTxTimeBase(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxTimeBase"].getBigDecimalValue()
		}
		
		def void setIpduMTxTimeBase(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMTxTimeBase"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMTxTimeBase"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getIpduMVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMVersionInfoApi"].getBooleanValue()
		}
		
		def void setIpduMVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
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
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMRxDirectComInvocation"].getBooleanValue()
		}
		
		def void setIpduMRxDirectComInvocation(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "IpduMRxDirectComInvocation"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "IpduMRxDirectComInvocation"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
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
