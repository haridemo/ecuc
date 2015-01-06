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
import org.artop.ecuc.autosar421.accessors.lib.IntegerValueUnwrappingEList
import org.artop.ecuc.autosar421.accessors.lib.FloatValueUnwrappingEList
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

class J1939Rm implements IWrapper<GModuleConfiguration> {
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
	
	def J1939RmConfigSet getJ1939RmConfigSet(){
		moduleConfiguration.getByType(typeof(J1939RmConfigSet))
	}
	
	def void setJ1939RmConfigSet(J1939RmConfigSet j1939RmConfigSet){
		val GContainer container = j1939RmConfigSet.getTarget() 
	    moduleConfiguration.setContainer(container, "J1939RmConfigSet")
	}
	def J1939RmGeneral getJ1939RmGeneral(){
		moduleConfiguration.getByType(typeof(J1939RmGeneral))
	}
	
	def void setJ1939RmGeneral(J1939RmGeneral j1939RmGeneral){
		val GContainer container = j1939RmGeneral.getTarget() 
	    moduleConfiguration.setContainer(container, "J1939RmGeneral")
	}
	
	static class J1939RmConfigSet implements IWrapper<GContainer> {
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
		
		
		
		def List<J1939RmChannel> getJ1939RmChannels(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "J1939RmChannel")
				}
			}
			return new BasicWrappingEList<J1939RmChannel, GContainer>(filteredContainers, typeof(J1939RmChannel), typeof(GContainer)) {
				override protected delegateAdd(J1939RmChannel j1939RmChannel) {
					j1939RmChannel.target?.gSetDefinition(containerValue.getContainerDefinition("J1939RmChannel"))
					super.delegateAdd(j1939RmChannel)
				}
				
				override protected delegateAdd(int index, J1939RmChannel j1939RmChannel) {
					j1939RmChannel.target?.gSetDefinition(containerValue.getContainerDefinition("J1939RmChannel"))
					super.delegateAdd(index, j1939RmChannel)
				}	
			}
		}
		
		def List<J1939RmNode> getJ1939RmNodes(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "J1939RmNode")
				}
			}
			return new BasicWrappingEList<J1939RmNode, GContainer>(filteredContainers, typeof(J1939RmNode), typeof(GContainer)) {
				override protected delegateAdd(J1939RmNode j1939RmNode) {
					j1939RmNode.target?.gSetDefinition(containerValue.getContainerDefinition("J1939RmNode"))
					super.delegateAdd(j1939RmNode)
				}
				
				override protected delegateAdd(int index, J1939RmNode j1939RmNode) {
					j1939RmNode.target?.gSetDefinition(containerValue.getContainerDefinition("J1939RmNode"))
					super.delegateAdd(index, j1939RmNode)
				}	
			}
		}
		
		
		static class J1939RmChannel implements IWrapper<GContainer> {
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
			
			def Integer getJ1939RmAckQueueSize(){
				EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmAckQueueSize"])
			}
			
			def void setJ1939RmAckQueueSize(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmAckQueueSize"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939RmAckQueueSize"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Integer getJ1939RmRequestQueueSize(){
				EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmRequestQueueSize"])
			}
			
			def void setJ1939RmRequestQueueSize(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmRequestQueueSize"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939RmRequestQueueSize"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Integer getJ1939RmRequestTimeoutMonitors(){
				EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmRequestTimeoutMonitors"])
			}
			
			def void setJ1939RmRequestTimeoutMonitors(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmRequestTimeoutMonitors"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939RmRequestTimeoutMonitors"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel getJ1939RmComMNetworkHandleRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel), "J1939RmComMNetworkHandleRef")
			}
					
			def void setJ1939RmComMNetworkHandleRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "J1939RmComMNetworkHandleRef"], object.getTarget())
				}
			}
			
			
			def J1939RmAckmRxPdu getJ1939RmAckmRxPdu(){
				containerValue.getByType(typeof(J1939RmAckmRxPdu))
			}
			
			def void setJ1939RmAckmRxPdu(J1939RmAckmRxPdu j1939RmAckmRxPdu){
				val GContainer subContainer = j1939RmAckmRxPdu.getTarget()
				containerValue.setContainer(subContainer, "J1939RmAckmRxPdu")
			}
			
			def J1939RmAckmTxPdu getJ1939RmAckmTxPdu(){
				containerValue.getByType(typeof(J1939RmAckmTxPdu))
			}
			
			def void setJ1939RmAckmTxPdu(J1939RmAckmTxPdu j1939RmAckmTxPdu){
				val GContainer subContainer = j1939RmAckmTxPdu.getTarget()
				containerValue.setContainer(subContainer, "J1939RmAckmTxPdu")
			}
			
			def J1939RmRqstRxPdu getJ1939RmRqstRxPdu(){
				containerValue.getByType(typeof(J1939RmRqstRxPdu))
			}
			
			def void setJ1939RmRqstRxPdu(J1939RmRqstRxPdu j1939RmRqstRxPdu){
				val GContainer subContainer = j1939RmRqstRxPdu.getTarget()
				containerValue.setContainer(subContainer, "J1939RmRqstRxPdu")
			}
			
			def J1939RmRqstTxPdu getJ1939RmRqstTxPdu(){
				containerValue.getByType(typeof(J1939RmRqstTxPdu))
			}
			
			def void setJ1939RmRqstTxPdu(J1939RmRqstTxPdu j1939RmRqstTxPdu){
				val GContainer subContainer = j1939RmRqstTxPdu.getTarget()
				containerValue.setContainer(subContainer, "J1939RmRqstTxPdu")
			}
			
			
			static class J1939RmAckmRxPdu implements IWrapper<GContainer> {
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
				
				def Integer getJ1939RmAckmRxPduId(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmAckmRxPduId"])
				}
				
				def void setJ1939RmAckmRxPduId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmAckmRxPduId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939RmAckmRxPduId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getJ1939RmAckmRxPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "J1939RmAckmRxPduRef")
				}
						
				def void setJ1939RmAckmRxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "J1939RmAckmRxPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class J1939RmAckmTxPdu implements IWrapper<GContainer> {
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
				
				def Integer getJ1939RmAckmTxPduId(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmAckmTxPduId"])
				}
				
				def void setJ1939RmAckmTxPduId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmAckmTxPduId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939RmAckmTxPduId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getJ1939RmAckmTxPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "J1939RmAckmTxPduRef")
				}
						
				def void setJ1939RmAckmTxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "J1939RmAckmTxPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class J1939RmRqstRxPdu implements IWrapper<GContainer> {
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
				
				def Integer getJ1939RmRqstRxPduId(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmRqstRxPduId"])
				}
				
				def void setJ1939RmRqstRxPduId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmRqstRxPduId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939RmRqstRxPduId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getJ1939RmRqstRxPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "J1939RmRqstRxPduRef")
				}
						
				def void setJ1939RmRqstRxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "J1939RmRqstRxPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class J1939RmRqstTxPdu implements IWrapper<GContainer> {
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
				
				def Integer getJ1939RmRqstTxPduId(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmRqstTxPduId"])
				}
				
				def void setJ1939RmRqstTxPduId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmRqstTxPduId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939RmRqstTxPduId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getJ1939RmRqstTxPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "J1939RmRqstTxPduRef")
				}
						
				def void setJ1939RmRqstTxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "J1939RmRqstTxPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class J1939RmNode implements IWrapper<GContainer> {
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
			
			
			def List<org.artop.ecuc.autosar421.accessors.J1939Rm.J1939RmConfigSet.J1939RmChannel> getJ1939RmNodeChannelRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
					containerDef.gGetReferences.findFirst[gGetShortName == "J1939RmNodeChannelRef"] else null
								
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "J1939RmNodeChannelRef")
					}
				}
				
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.J1939Rm.J1939RmConfigSet.J1939RmChannel>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.J1939Rm.J1939RmConfigSet.J1939RmChannel)) {
					override protected wrap(org.artop.ecuc.autosar421.accessors.J1939Rm.J1939RmConfigSet.J1939RmChannel object) throws CoreException {
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
								return new org.artop.ecuc.autosar421.accessors.J1939Rm.J1939RmConfigSet.J1939RmChannel(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.J1939Nm.J1939NmConfigSet.J1939NmNode getJ1939RmNmNodeRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.J1939Nm.J1939NmConfigSet.J1939NmNode), "J1939RmNmNodeRef")
			}
					
			def void setJ1939RmNmNodeRef(org.artop.ecuc.autosar421.accessors.J1939Nm.J1939NmConfigSet.J1939NmNode object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "J1939RmNmNodeRef"], object.getTarget())
				}
			}
			
			
			def List<J1939RmUser> getJ1939RmUsers(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "J1939RmUser")
					}
				}
				return new BasicWrappingEList<J1939RmUser, GContainer>(filteredContainers, typeof(J1939RmUser), typeof(GContainer)) {
					override protected delegateAdd(J1939RmUser j1939RmUser) {
						j1939RmUser.target?.gSetDefinition(containerValue.getContainerDefinition("J1939RmUser"))
						super.delegateAdd(j1939RmUser)
					}
					
					override protected delegateAdd(int index, J1939RmUser j1939RmUser) {
						j1939RmUser.target?.gSetDefinition(containerValue.getContainerDefinition("J1939RmUser"))
						super.delegateAdd(index, j1939RmUser)
					}	
				}
			}
			
			
			static class J1939RmUser implements IWrapper<GContainer> {
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
				
				def Boolean getJ1939RmUserAckIndication(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmUserAckIndication"])
				}
				
				def void setJ1939RmUserAckIndication(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmUserAckIndication"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939RmUserAckIndication"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def List<Integer> getJ1939RmUserAckPGNs(){
					val List<EcucNumericalParamValue> filteredParameterValues = new AbstractFilteringEList<EcucNumericalParamValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {
						override protected accept(EcucNumericalParamValue item) {
							return accept(item, typeof(GConfigParameter), "J1939RmUserAckPGN")
						}
					}
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == "J1939RmUserAckPGN"]
						return new IntegerValueUnwrappingEList(filteredParameterValues, typeof(EcucNumericalParamValue), typeof(Integer), parameterDef)
					}
				}
				
				def Integer getJ1939RmUserId(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmUserId"])
				}
				
				def void setJ1939RmUserId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmUserId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939RmUserId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def List<Integer> getJ1939RmUserPGNs(){
					val List<EcucNumericalParamValue> filteredParameterValues = new AbstractFilteringEList<EcucNumericalParamValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {
						override protected accept(EcucNumericalParamValue item) {
							return accept(item, typeof(GConfigParameter), "J1939RmUserPGN")
						}
					}
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == "J1939RmUserPGN"]
						return new IntegerValueUnwrappingEList(filteredParameterValues, typeof(EcucNumericalParamValue), typeof(Integer), parameterDef)
					}
				}
				
				def Boolean getJ1939RmUserRequestIndication(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmUserRequestIndication"])
				}
				
				def void setJ1939RmUserRequestIndication(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmUserRequestIndication"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939RmUserRequestIndication"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def Boolean getJ1939RmUserSendAck(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmUserSendAck"])
				}
				
				def void setJ1939RmUserSendAck(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmUserSendAck"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939RmUserSendAck"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def Boolean getJ1939RmUserSendRequest(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmUserSendRequest"])
				}
				
				def void setJ1939RmUserSendRequest(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmUserSendRequest"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939RmUserSendRequest"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def Boolean getJ1939RmUserTimeoutSupervision(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmUserTimeoutSupervision"])
				}
				
				def void setJ1939RmUserTimeoutSupervision(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmUserTimeoutSupervision"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939RmUserTimeoutSupervision"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def J1939RmUserType getJ1939RmUserType(){
					getJ1939RmUserTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmUserType"])
				}
				
				def void setJ1939RmUserType(J1939RmUserType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmUserType"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939RmUserType"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum J1939RmUserType {
					J1939RM_USER_CDD, 
					J1939RM_USER_COM, 
					J1939RM_USER_J1939DCM, 
					J1939RM_USER_J1939NM, 
					J1939RM_USER_RTE
				}
					
				def J1939RmUserType getJ1939RmUserTypeValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "J1939RM_USER_CDD" : J1939RmUserType.J1939RM_USER_CDD
						case "J1939RM_USER_COM" : J1939RmUserType.J1939RM_USER_COM
						case "J1939RM_USER_J1939DCM" : J1939RmUserType.J1939RM_USER_J1939DCM
						case "J1939RM_USER_J1939NM" : J1939RmUserType.J1939RM_USER_J1939NM
						case "J1939RM_USER_RTE" : J1939RmUserType.J1939RM_USER_RTE
					}
				}
				
				def void setJ1939RmUserTypeValue(GParameterValue paramValue, J1939RmUserType value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				
				
				
				def List<J1939RmComIPdu> getJ1939RmComIPdus(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "J1939RmComIPdu")
						}
					}
					return new BasicWrappingEList<J1939RmComIPdu, GContainer>(filteredContainers, typeof(J1939RmComIPdu), typeof(GContainer)) {
						override protected delegateAdd(J1939RmComIPdu j1939RmComIPdu) {
							j1939RmComIPdu.target?.gSetDefinition(containerValue.getContainerDefinition("J1939RmComIPdu"))
							super.delegateAdd(j1939RmComIPdu)
						}
						
						override protected delegateAdd(int index, J1939RmComIPdu j1939RmComIPdu) {
							j1939RmComIPdu.target?.gSetDefinition(containerValue.getContainerDefinition("J1939RmComIPdu"))
							super.delegateAdd(index, j1939RmComIPdu)
						}	
					}
				}
				
				
				static class J1939RmComIPdu implements IWrapper<GContainer> {
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
					
					def Integer getJ1939RmComIPduPGN(){
						EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmComIPduPGN"])
					}
					
					def void setJ1939RmComIPduPGN(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmComIPduPGN"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939RmComIPduPGN"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getJ1939RmComIPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "J1939RmComIPduRef")
					}
							
					def void setJ1939RmComIPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "J1939RmComIPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
		}
		
	}
	static class J1939RmGeneral implements IWrapper<GContainer> {
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
		
		def Boolean getJ1939RmDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmDevErrorDetect"])
		}
		
		def void setJ1939RmDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939RmDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Float getJ1939RmMainFunctionPeriod(){
			EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmMainFunctionPeriod"])
		}
		
		def void setJ1939RmMainFunctionPeriod(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmMainFunctionPeriod"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939RmMainFunctionPeriod"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getJ1939RmSupportAckIndication(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmSupportAckIndication"])
		}
		
		def void setJ1939RmSupportAckIndication(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmSupportAckIndication"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939RmSupportAckIndication"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getJ1939RmSupportAckTransmission(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmSupportAckTransmission"])
		}
		
		def void setJ1939RmSupportAckTransmission(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmSupportAckTransmission"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939RmSupportAckTransmission"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getJ1939RmSupportRequestIndication(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmSupportRequestIndication"])
		}
		
		def void setJ1939RmSupportRequestIndication(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmSupportRequestIndication"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939RmSupportRequestIndication"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getJ1939RmSupportRequestTransmission(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmSupportRequestTransmission"])
		}
		
		def void setJ1939RmSupportRequestTransmission(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmSupportRequestTransmission"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939RmSupportRequestTransmission"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getJ1939RmSupportTimeoutSupervision(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmSupportTimeoutSupervision"])
		}
		
		def void setJ1939RmSupportTimeoutSupervision(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmSupportTimeoutSupervision"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939RmSupportTimeoutSupervision"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Float getJ1939RmTxConfirmationTimeout(){
			EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmTxConfirmationTimeout"])
		}
		
		def void setJ1939RmTxConfirmationTimeout(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmTxConfirmationTimeout"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939RmTxConfirmationTimeout"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getJ1939RmVersionInfoApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmVersionInfoApi"])
		}
		
		def void setJ1939RmVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "J1939RmVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "J1939RmVersionInfoApi"])
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
