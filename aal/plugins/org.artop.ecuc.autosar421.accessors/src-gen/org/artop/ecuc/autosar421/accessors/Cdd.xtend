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

import static extension org.artop.ecuc.autosar4x.accessors.lib.EcucValueAccessor4xUtil.*
import org.artop.ecuc.autosar4x.accessors.lib.EcucValueAccessor4xUtil
import org.artop.ecuc.autosar4x.accessors.lib.IntegerValueUnwrappingEList
import org.artop.ecuc.autosar4x.accessors.lib.FloatValueUnwrappingEList
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

class Cdd implements IWrapper<GModuleConfiguration> {
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
	
	def CddComStackContribution getCddComStackContribution(){
		moduleConfiguration.getByType(typeof(CddComStackContribution))
	}
	
	def void setCddComStackContribution(CddComStackContribution cddComStackContribution){
		val GContainer container = cddComStackContribution.getTarget() 
	    moduleConfiguration.setContainer(container, "CddComStackContribution")
	}
	def CddConfigSet getCddConfigSet(){
		moduleConfiguration.getByType(typeof(CddConfigSet))
	}
	
	def void setCddConfigSet(CddConfigSet cddConfigSet){
		val GContainer container = cddConfigSet.getTarget() 
	    moduleConfiguration.setContainer(container, "CddConfigSet")
	}
	def CddEcucPartitionInteraction getCddEcucPartitionInteraction(){
		moduleConfiguration.getByType(typeof(CddEcucPartitionInteraction))
	}
	
	def void setCddEcucPartitionInteraction(CddEcucPartitionInteraction cddEcucPartitionInteraction){
		val GContainer container = cddEcucPartitionInteraction.getTarget() 
	    moduleConfiguration.setContainer(container, "CddEcucPartitionInteraction")
	}
	
	static class CddComStackContribution implements IWrapper<GContainer> {
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
		
		
		
		def CddComIfUpperLayerContribution getCddComIfUpperLayerContribution(){
			containerValue.getByType(typeof(CddComIfUpperLayerContribution))
		}
		
		def void setCddComIfUpperLayerContribution(GContainer subContainer){
			containerValue.setContainer(subContainer, "CddComIfUpperLayerContribution")
		}
		
		def CddComMLowerLayerContribution getCddComMLowerLayerContribution(){
			containerValue.getByType(typeof(CddComMLowerLayerContribution))
		}
		
		def void setCddComMLowerLayerContribution(GContainer subContainer){
			containerValue.setContainer(subContainer, "CddComMLowerLayerContribution")
		}
		
		def CddGenericNmLowerLayerContribution getCddGenericNmLowerLayerContribution(){
			containerValue.getByType(typeof(CddGenericNmLowerLayerContribution))
		}
		
		def void setCddGenericNmLowerLayerContribution(GContainer subContainer){
			containerValue.setContainer(subContainer, "CddGenericNmLowerLayerContribution")
		}
		
		def CddPduRLowerLayerContribution getCddPduRLowerLayerContribution(){
			containerValue.getByType(typeof(CddPduRLowerLayerContribution))
		}
		
		def void setCddPduRLowerLayerContribution(GContainer subContainer){
			containerValue.setContainer(subContainer, "CddPduRLowerLayerContribution")
		}
		
		def CddPduRUpperLayerContribution getCddPduRUpperLayerContribution(){
			containerValue.getByType(typeof(CddPduRUpperLayerContribution))
		}
		
		def void setCddPduRUpperLayerContribution(GContainer subContainer){
			containerValue.setContainer(subContainer, "CddPduRUpperLayerContribution")
		}
		
		def CddSoAdUpperLayerContribution getCddSoAdUpperLayerContribution(){
			containerValue.getByType(typeof(CddSoAdUpperLayerContribution))
		}
		
		def void setCddSoAdUpperLayerContribution(GContainer subContainer){
			containerValue.setContainer(subContainer, "CddSoAdUpperLayerContribution")
		}
		
		
		static class CddComIfUpperLayerContribution implements IWrapper<GContainer> {
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
			
			
			
			def List<CddComIfUpperLayerRxPdu> getCddComIfUpperLayerRxPdus(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CddComIfUpperLayerRxPdu")
					}
				}
				return new BasicWrappingEList<CddComIfUpperLayerRxPdu, GContainer>(filteredContainers, typeof(CddComIfUpperLayerRxPdu), typeof(GContainer))
			}
			
			def List<CddComIfUpperLayerTxPdu> getCddComIfUpperLayerTxPdus(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CddComIfUpperLayerTxPdu")
					}
				}
				return new BasicWrappingEList<CddComIfUpperLayerTxPdu, GContainer>(filteredContainers, typeof(CddComIfUpperLayerTxPdu), typeof(GContainer))
			}
			
			
			static class CddComIfUpperLayerRxPdu implements IWrapper<GContainer> {
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
				
				def Integer getCddComIfHandleId(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddComIfHandleId"])
				}
				
				def void setCddComIfHandleId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddComIfHandleId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CddComIfHandleId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCddComIfPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CddComIfPduRef")
				}
						
				def void setCddComIfPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CddComIfPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class CddComIfUpperLayerTxPdu implements IWrapper<GContainer> {
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
				
				def Integer getCddComIfHandleId(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddComIfHandleId"])
				}
				
				def void setCddComIfHandleId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddComIfHandleId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CddComIfHandleId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCddComIfPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CddComIfPduRef")
				}
						
				def void setCddComIfPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CddComIfPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class CddComMLowerLayerContribution implements IWrapper<GContainer> {
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
			
			
			
			def List<CddComMLowerLayerChannel> getCddComMLowerLayerChannels(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CddComMLowerLayerChannel")
					}
				}
				return new BasicWrappingEList<CddComMLowerLayerChannel, GContainer>(filteredContainers, typeof(CddComMLowerLayerChannel), typeof(GContainer))
			}
			
			
			static class CddComMLowerLayerChannel implements IWrapper<GContainer> {
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
				
				
				def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel getCddComMLowerLayerChannelRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel), "CddComMLowerLayerChannelRef")
				}
						
				def void setCddComMLowerLayerChannelRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CddComMLowerLayerChannelRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class CddGenericNmLowerLayerContribution implements IWrapper<GContainer> {
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
			
			
			
			def List<CddGenericNmLowerLayerChannel> getCddGenericNmLowerLayerChannels(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CddGenericNmLowerLayerChannel")
					}
				}
				return new BasicWrappingEList<CddGenericNmLowerLayerChannel, GContainer>(filteredContainers, typeof(CddGenericNmLowerLayerChannel), typeof(GContainer))
			}
			
			
			static class CddGenericNmLowerLayerChannel implements IWrapper<GContainer> {
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
				
				
				def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel getCddGenericNmComMNetworkHandleRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel), "CddGenericNmComMNetworkHandleRef")
				}
						
				def void setCddGenericNmComMNetworkHandleRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CddGenericNmComMNetworkHandleRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class CddPduRLowerLayerContribution implements IWrapper<GContainer> {
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
			
			
			
			def List<CddPduRLowerLayerRxPdu> getCddPduRLowerLayerRxPdus(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CddPduRLowerLayerRxPdu")
					}
				}
				return new BasicWrappingEList<CddPduRLowerLayerRxPdu, GContainer>(filteredContainers, typeof(CddPduRLowerLayerRxPdu), typeof(GContainer))
			}
			
			def List<CddPduRLowerLayerTxPdu> getCddPduRLowerLayerTxPdus(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CddPduRLowerLayerTxPdu")
					}
				}
				return new BasicWrappingEList<CddPduRLowerLayerTxPdu, GContainer>(filteredContainers, typeof(CddPduRLowerLayerTxPdu), typeof(GContainer))
			}
			
			
			static class CddPduRLowerLayerRxPdu implements IWrapper<GContainer> {
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
				
				def CddPduRApiType getCddPduRApiType(){
					getCddPduRApiTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"])
				}
				
				def void setCddPduRApiType(CddPduRApiType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRApiType"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				enum CddPduRApiType {
					^IF, 
					TP
				}
					
				def CddPduRApiType getCddPduRApiTypeValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "IF" : CddPduRApiType.^IF
						case "TP" : CddPduRApiType.TP
					}
				}
				
				def void setCddPduRApiTypeValue(GParameterValue paramValue, CddPduRApiType value){
					EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
				}
				
				def Integer getCddPduRLowerLayerHandleId(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRLowerLayerHandleId"])
				}
				
				def void setCddPduRLowerLayerHandleId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRLowerLayerHandleId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRLowerLayerHandleId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCddPduRLowerLayerPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CddPduRLowerLayerPduRef")
				}
						
				def void setCddPduRLowerLayerPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CddPduRLowerLayerPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class CddPduRLowerLayerTxPdu implements IWrapper<GContainer> {
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
				
				def CddPduRApiType getCddPduRApiType(){
					getCddPduRApiTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"])
				}
				
				def void setCddPduRApiType(CddPduRApiType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRApiType"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				enum CddPduRApiType {
					^IF, 
					TP
				}
					
				def CddPduRApiType getCddPduRApiTypeValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "IF" : CddPduRApiType.^IF
						case "TP" : CddPduRApiType.TP
					}
				}
				
				def void setCddPduRApiTypeValue(GParameterValue paramValue, CddPduRApiType value){
					EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
				}
				
				def Integer getCddPduRLowerLayerHandleId(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRLowerLayerHandleId"])
				}
				
				def void setCddPduRLowerLayerHandleId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRLowerLayerHandleId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRLowerLayerHandleId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCddPduRLowerLayerPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CddPduRLowerLayerPduRef")
				}
						
				def void setCddPduRLowerLayerPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CddPduRLowerLayerPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class CddPduRUpperLayerContribution implements IWrapper<GContainer> {
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
			
			
			
			def List<CddPduRUpperLayerRxPdu> getCddPduRUpperLayerRxPdus(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CddPduRUpperLayerRxPdu")
					}
				}
				return new BasicWrappingEList<CddPduRUpperLayerRxPdu, GContainer>(filteredContainers, typeof(CddPduRUpperLayerRxPdu), typeof(GContainer))
			}
			
			def List<CddPduRUpperLayerTxPdu> getCddPduRUpperLayerTxPdus(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CddPduRUpperLayerTxPdu")
					}
				}
				return new BasicWrappingEList<CddPduRUpperLayerTxPdu, GContainer>(filteredContainers, typeof(CddPduRUpperLayerTxPdu), typeof(GContainer))
			}
			
			
			static class CddPduRUpperLayerRxPdu implements IWrapper<GContainer> {
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
				
				def CddPduRApiType getCddPduRApiType(){
					getCddPduRApiTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"])
				}
				
				def void setCddPduRApiType(CddPduRApiType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRApiType"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				enum CddPduRApiType {
					^IF, 
					TP
				}
					
				def CddPduRApiType getCddPduRApiTypeValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "IF" : CddPduRApiType.^IF
						case "TP" : CddPduRApiType.TP
					}
				}
				
				def void setCddPduRApiTypeValue(GParameterValue paramValue, CddPduRApiType value){
					EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
				}
				
				def Integer getCddPduRUpperLayerHandleId(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRUpperLayerHandleId"])
				}
				
				def void setCddPduRUpperLayerHandleId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRUpperLayerHandleId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRUpperLayerHandleId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCddPduRUpperLayerPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CddPduRUpperLayerPduRef")
				}
						
				def void setCddPduRUpperLayerPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CddPduRUpperLayerPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class CddPduRUpperLayerTxPdu implements IWrapper<GContainer> {
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
				
				def CddPduRApiType getCddPduRApiType(){
					getCddPduRApiTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"])
				}
				
				def void setCddPduRApiType(CddPduRApiType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRApiType"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				enum CddPduRApiType {
					^IF, 
					TP
				}
					
				def CddPduRApiType getCddPduRApiTypeValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "IF" : CddPduRApiType.^IF
						case "TP" : CddPduRApiType.TP
					}
				}
				
				def void setCddPduRApiTypeValue(GParameterValue paramValue, CddPduRApiType value){
					EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
				}
				
				def Integer getCddPduRUpperLayerHandleId(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRUpperLayerHandleId"])
				}
				
				def void setCddPduRUpperLayerHandleId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRUpperLayerHandleId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRUpperLayerHandleId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCddPduRUpperLayerPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CddPduRUpperLayerPduRef")
				}
						
				def void setCddPduRUpperLayerPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CddPduRUpperLayerPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class CddSoAdUpperLayerContribution implements IWrapper<GContainer> {
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
			
			
			
			def List<CddSoAdUpperLayerRxPdu> getCddSoAdUpperLayerRxPdus(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CddSoAdUpperLayerRxPdu")
					}
				}
				return new BasicWrappingEList<CddSoAdUpperLayerRxPdu, GContainer>(filteredContainers, typeof(CddSoAdUpperLayerRxPdu), typeof(GContainer))
			}
			
			def List<CddSoAdUpperLayerTxPdu> getCddSoAdUpperLayerTxPdus(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CddSoAdUpperLayerTxPdu")
					}
				}
				return new BasicWrappingEList<CddSoAdUpperLayerTxPdu, GContainer>(filteredContainers, typeof(CddSoAdUpperLayerTxPdu), typeof(GContainer))
			}
			
			
			static class CddSoAdUpperLayerRxPdu implements IWrapper<GContainer> {
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
				
				def CddPduRApiType getCddPduRApiType(){
					getCddPduRApiTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"])
				}
				
				def void setCddPduRApiType(CddPduRApiType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRApiType"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				enum CddPduRApiType {
					^IF, 
					TP
				}
					
				def CddPduRApiType getCddPduRApiTypeValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "IF" : CddPduRApiType.^IF
						case "TP" : CddPduRApiType.TP
					}
				}
				
				def void setCddPduRApiTypeValue(GParameterValue paramValue, CddPduRApiType value){
					EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
				}
				
				def Integer getCddSoAdUpperLayerHandleId(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddSoAdUpperLayerHandleId"])
				}
				
				def void setCddSoAdUpperLayerHandleId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddSoAdUpperLayerHandleId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CddSoAdUpperLayerHandleId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCddSoAdUpperLayerPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CddSoAdUpperLayerPduRef")
				}
						
				def void setCddSoAdUpperLayerPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CddSoAdUpperLayerPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class CddSoAdUpperLayerTxPdu implements IWrapper<GContainer> {
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
				
				def CddPduRApiType getCddPduRApiType(){
					getCddPduRApiTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"])
				}
				
				def void setCddPduRApiType(CddPduRApiType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRApiType"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				enum CddPduRApiType {
					^IF, 
					TP
				}
					
				def CddPduRApiType getCddPduRApiTypeValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "IF" : CddPduRApiType.^IF
						case "TP" : CddPduRApiType.TP
					}
				}
				
				def void setCddPduRApiTypeValue(GParameterValue paramValue, CddPduRApiType value){
					EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
				}
				
				def Integer getCddSoAdUpperLayerHandleId(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddSoAdUpperLayerHandleId"])
				}
				
				def void setCddSoAdUpperLayerHandleId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddSoAdUpperLayerHandleId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CddSoAdUpperLayerHandleId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCddSoAdUpperLayerPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CddSoAdUpperLayerPduRef")
				}
						
				def void setCddSoAdUpperLayerPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CddSoAdUpperLayerPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
	}
	static class CddConfigSet implements IWrapper<GContainer> {
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
		
		
		
		def CddComStackContribution getCddComStackContribution(){
			containerValue.getByType(typeof(CddComStackContribution))
		}
		
		def void setCddComStackContribution(GContainer subContainer){
			containerValue.setContainer(subContainer, "CddComStackContribution")
		}
		
		def CddEcucPartitionInteraction getCddEcucPartitionInteraction(){
			containerValue.getByType(typeof(CddEcucPartitionInteraction))
		}
		
		def void setCddEcucPartitionInteraction(GContainer subContainer){
			containerValue.setContainer(subContainer, "CddEcucPartitionInteraction")
		}
		
		
		static class CddComStackContribution implements IWrapper<GContainer> {
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
			
			
			
			def CddComIfUpperLayerContribution getCddComIfUpperLayerContribution(){
				containerValue.getByType(typeof(CddComIfUpperLayerContribution))
			}
			
			def void setCddComIfUpperLayerContribution(GContainer subContainer){
				containerValue.setContainer(subContainer, "CddComIfUpperLayerContribution")
			}
			
			def CddComMLowerLayerContribution getCddComMLowerLayerContribution(){
				containerValue.getByType(typeof(CddComMLowerLayerContribution))
			}
			
			def void setCddComMLowerLayerContribution(GContainer subContainer){
				containerValue.setContainer(subContainer, "CddComMLowerLayerContribution")
			}
			
			def CddGenericNmLowerLayerContribution getCddGenericNmLowerLayerContribution(){
				containerValue.getByType(typeof(CddGenericNmLowerLayerContribution))
			}
			
			def void setCddGenericNmLowerLayerContribution(GContainer subContainer){
				containerValue.setContainer(subContainer, "CddGenericNmLowerLayerContribution")
			}
			
			def CddPduRLowerLayerContribution getCddPduRLowerLayerContribution(){
				containerValue.getByType(typeof(CddPduRLowerLayerContribution))
			}
			
			def void setCddPduRLowerLayerContribution(GContainer subContainer){
				containerValue.setContainer(subContainer, "CddPduRLowerLayerContribution")
			}
			
			def CddPduRUpperLayerContribution getCddPduRUpperLayerContribution(){
				containerValue.getByType(typeof(CddPduRUpperLayerContribution))
			}
			
			def void setCddPduRUpperLayerContribution(GContainer subContainer){
				containerValue.setContainer(subContainer, "CddPduRUpperLayerContribution")
			}
			
			def CddSoAdUpperLayerContribution getCddSoAdUpperLayerContribution(){
				containerValue.getByType(typeof(CddSoAdUpperLayerContribution))
			}
			
			def void setCddSoAdUpperLayerContribution(GContainer subContainer){
				containerValue.setContainer(subContainer, "CddSoAdUpperLayerContribution")
			}
			
			
			static class CddComIfUpperLayerContribution implements IWrapper<GContainer> {
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
				
				
				
				def List<CddComIfUpperLayerRxPdu> getCddComIfUpperLayerRxPdus(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "CddComIfUpperLayerRxPdu")
						}
					}
					return new BasicWrappingEList<CddComIfUpperLayerRxPdu, GContainer>(filteredContainers, typeof(CddComIfUpperLayerRxPdu), typeof(GContainer))
				}
				
				def List<CddComIfUpperLayerTxPdu> getCddComIfUpperLayerTxPdus(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "CddComIfUpperLayerTxPdu")
						}
					}
					return new BasicWrappingEList<CddComIfUpperLayerTxPdu, GContainer>(filteredContainers, typeof(CddComIfUpperLayerTxPdu), typeof(GContainer))
				}
				
				
				static class CddComIfUpperLayerRxPdu implements IWrapper<GContainer> {
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
					
					def Integer getCddComIfHandleId(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddComIfHandleId"])
					}
					
					def void setCddComIfHandleId(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddComIfHandleId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CddComIfHandleId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCddComIfPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CddComIfPduRef")
					}
							
					def void setCddComIfPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CddComIfPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class CddComIfUpperLayerTxPdu implements IWrapper<GContainer> {
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
					
					def Integer getCddComIfHandleId(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddComIfHandleId"])
					}
					
					def void setCddComIfHandleId(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddComIfHandleId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CddComIfHandleId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCddComIfPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CddComIfPduRef")
					}
							
					def void setCddComIfPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CddComIfPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
			static class CddComMLowerLayerContribution implements IWrapper<GContainer> {
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
				
				
				
				def List<CddComMLowerLayerChannel> getCddComMLowerLayerChannels(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "CddComMLowerLayerChannel")
						}
					}
					return new BasicWrappingEList<CddComMLowerLayerChannel, GContainer>(filteredContainers, typeof(CddComMLowerLayerChannel), typeof(GContainer))
				}
				
				
				static class CddComMLowerLayerChannel implements IWrapper<GContainer> {
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
					
					
					def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel getCddComMLowerLayerChannelRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel), "CddComMLowerLayerChannelRef")
					}
							
					def void setCddComMLowerLayerChannelRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CddComMLowerLayerChannelRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
			static class CddGenericNmLowerLayerContribution implements IWrapper<GContainer> {
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
				
				
				
				def List<CddGenericNmLowerLayerChannel> getCddGenericNmLowerLayerChannels(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "CddGenericNmLowerLayerChannel")
						}
					}
					return new BasicWrappingEList<CddGenericNmLowerLayerChannel, GContainer>(filteredContainers, typeof(CddGenericNmLowerLayerChannel), typeof(GContainer))
				}
				
				
				static class CddGenericNmLowerLayerChannel implements IWrapper<GContainer> {
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
					
					
					def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel getCddGenericNmComMNetworkHandleRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel), "CddGenericNmComMNetworkHandleRef")
					}
							
					def void setCddGenericNmComMNetworkHandleRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CddGenericNmComMNetworkHandleRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
			static class CddPduRLowerLayerContribution implements IWrapper<GContainer> {
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
				
				
				
				def List<CddPduRLowerLayerRxPdu> getCddPduRLowerLayerRxPdus(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "CddPduRLowerLayerRxPdu")
						}
					}
					return new BasicWrappingEList<CddPduRLowerLayerRxPdu, GContainer>(filteredContainers, typeof(CddPduRLowerLayerRxPdu), typeof(GContainer))
				}
				
				def List<CddPduRLowerLayerTxPdu> getCddPduRLowerLayerTxPdus(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "CddPduRLowerLayerTxPdu")
						}
					}
					return new BasicWrappingEList<CddPduRLowerLayerTxPdu, GContainer>(filteredContainers, typeof(CddPduRLowerLayerTxPdu), typeof(GContainer))
				}
				
				
				static class CddPduRLowerLayerRxPdu implements IWrapper<GContainer> {
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
					
					def CddPduRApiType getCddPduRApiType(){
						getCddPduRApiTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"])
					}
					
					def void setCddPduRApiType(CddPduRApiType value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRApiType"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					enum CddPduRApiType {
						^IF, 
						TP
					}
						
					def CddPduRApiType getCddPduRApiTypeValue(GParameterValue paramValue){
						val castedParamValue = paramValue as EcucTextualParamValue
						switch (castedParamValue.value){
							case "IF" : CddPduRApiType.^IF
							case "TP" : CddPduRApiType.TP
						}
					}
					
					def void setCddPduRApiTypeValue(GParameterValue paramValue, CddPduRApiType value){
						EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
					}
					
					def Integer getCddPduRLowerLayerHandleId(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRLowerLayerHandleId"])
					}
					
					def void setCddPduRLowerLayerHandleId(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRLowerLayerHandleId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRLowerLayerHandleId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCddPduRLowerLayerPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CddPduRLowerLayerPduRef")
					}
							
					def void setCddPduRLowerLayerPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CddPduRLowerLayerPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class CddPduRLowerLayerTxPdu implements IWrapper<GContainer> {
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
					
					def CddPduRApiType getCddPduRApiType(){
						getCddPduRApiTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"])
					}
					
					def void setCddPduRApiType(CddPduRApiType value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRApiType"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					enum CddPduRApiType {
						^IF, 
						TP
					}
						
					def CddPduRApiType getCddPduRApiTypeValue(GParameterValue paramValue){
						val castedParamValue = paramValue as EcucTextualParamValue
						switch (castedParamValue.value){
							case "IF" : CddPduRApiType.^IF
							case "TP" : CddPduRApiType.TP
						}
					}
					
					def void setCddPduRApiTypeValue(GParameterValue paramValue, CddPduRApiType value){
						EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
					}
					
					def Integer getCddPduRLowerLayerHandleId(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRLowerLayerHandleId"])
					}
					
					def void setCddPduRLowerLayerHandleId(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRLowerLayerHandleId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRLowerLayerHandleId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCddPduRLowerLayerPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CddPduRLowerLayerPduRef")
					}
							
					def void setCddPduRLowerLayerPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CddPduRLowerLayerPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
			static class CddPduRUpperLayerContribution implements IWrapper<GContainer> {
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
				
				
				
				def List<CddPduRUpperLayerRxPdu> getCddPduRUpperLayerRxPdus(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "CddPduRUpperLayerRxPdu")
						}
					}
					return new BasicWrappingEList<CddPduRUpperLayerRxPdu, GContainer>(filteredContainers, typeof(CddPduRUpperLayerRxPdu), typeof(GContainer))
				}
				
				def List<CddPduRUpperLayerTxPdu> getCddPduRUpperLayerTxPdus(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "CddPduRUpperLayerTxPdu")
						}
					}
					return new BasicWrappingEList<CddPduRUpperLayerTxPdu, GContainer>(filteredContainers, typeof(CddPduRUpperLayerTxPdu), typeof(GContainer))
				}
				
				
				static class CddPduRUpperLayerRxPdu implements IWrapper<GContainer> {
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
					
					def CddPduRApiType getCddPduRApiType(){
						getCddPduRApiTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"])
					}
					
					def void setCddPduRApiType(CddPduRApiType value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRApiType"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					enum CddPduRApiType {
						^IF, 
						TP
					}
						
					def CddPduRApiType getCddPduRApiTypeValue(GParameterValue paramValue){
						val castedParamValue = paramValue as EcucTextualParamValue
						switch (castedParamValue.value){
							case "IF" : CddPduRApiType.^IF
							case "TP" : CddPduRApiType.TP
						}
					}
					
					def void setCddPduRApiTypeValue(GParameterValue paramValue, CddPduRApiType value){
						EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
					}
					
					def Integer getCddPduRUpperLayerHandleId(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRUpperLayerHandleId"])
					}
					
					def void setCddPduRUpperLayerHandleId(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRUpperLayerHandleId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRUpperLayerHandleId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCddPduRUpperLayerPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CddPduRUpperLayerPduRef")
					}
							
					def void setCddPduRUpperLayerPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CddPduRUpperLayerPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class CddPduRUpperLayerTxPdu implements IWrapper<GContainer> {
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
					
					def CddPduRApiType getCddPduRApiType(){
						getCddPduRApiTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"])
					}
					
					def void setCddPduRApiType(CddPduRApiType value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRApiType"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					enum CddPduRApiType {
						^IF, 
						TP
					}
						
					def CddPduRApiType getCddPduRApiTypeValue(GParameterValue paramValue){
						val castedParamValue = paramValue as EcucTextualParamValue
						switch (castedParamValue.value){
							case "IF" : CddPduRApiType.^IF
							case "TP" : CddPduRApiType.TP
						}
					}
					
					def void setCddPduRApiTypeValue(GParameterValue paramValue, CddPduRApiType value){
						EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
					}
					
					def Integer getCddPduRUpperLayerHandleId(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRUpperLayerHandleId"])
					}
					
					def void setCddPduRUpperLayerHandleId(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRUpperLayerHandleId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRUpperLayerHandleId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCddPduRUpperLayerPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CddPduRUpperLayerPduRef")
					}
							
					def void setCddPduRUpperLayerPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CddPduRUpperLayerPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
			static class CddSoAdUpperLayerContribution implements IWrapper<GContainer> {
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
				
				
				
				def List<CddSoAdUpperLayerRxPdu> getCddSoAdUpperLayerRxPdus(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "CddSoAdUpperLayerRxPdu")
						}
					}
					return new BasicWrappingEList<CddSoAdUpperLayerRxPdu, GContainer>(filteredContainers, typeof(CddSoAdUpperLayerRxPdu), typeof(GContainer))
				}
				
				def List<CddSoAdUpperLayerTxPdu> getCddSoAdUpperLayerTxPdus(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "CddSoAdUpperLayerTxPdu")
						}
					}
					return new BasicWrappingEList<CddSoAdUpperLayerTxPdu, GContainer>(filteredContainers, typeof(CddSoAdUpperLayerTxPdu), typeof(GContainer))
				}
				
				
				static class CddSoAdUpperLayerRxPdu implements IWrapper<GContainer> {
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
					
					def CddPduRApiType getCddPduRApiType(){
						getCddPduRApiTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"])
					}
					
					def void setCddPduRApiType(CddPduRApiType value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRApiType"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					enum CddPduRApiType {
						^IF, 
						TP
					}
						
					def CddPduRApiType getCddPduRApiTypeValue(GParameterValue paramValue){
						val castedParamValue = paramValue as EcucTextualParamValue
						switch (castedParamValue.value){
							case "IF" : CddPduRApiType.^IF
							case "TP" : CddPduRApiType.TP
						}
					}
					
					def void setCddPduRApiTypeValue(GParameterValue paramValue, CddPduRApiType value){
						EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
					}
					
					def Integer getCddSoAdUpperLayerHandleId(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddSoAdUpperLayerHandleId"])
					}
					
					def void setCddSoAdUpperLayerHandleId(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddSoAdUpperLayerHandleId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CddSoAdUpperLayerHandleId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCddSoAdUpperLayerPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CddSoAdUpperLayerPduRef")
					}
							
					def void setCddSoAdUpperLayerPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CddSoAdUpperLayerPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class CddSoAdUpperLayerTxPdu implements IWrapper<GContainer> {
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
					
					def CddPduRApiType getCddPduRApiType(){
						getCddPduRApiTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"])
					}
					
					def void setCddPduRApiType(CddPduRApiType value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPduRApiType"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CddPduRApiType"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					enum CddPduRApiType {
						^IF, 
						TP
					}
						
					def CddPduRApiType getCddPduRApiTypeValue(GParameterValue paramValue){
						val castedParamValue = paramValue as EcucTextualParamValue
						switch (castedParamValue.value){
							case "IF" : CddPduRApiType.^IF
							case "TP" : CddPduRApiType.TP
						}
					}
					
					def void setCddPduRApiTypeValue(GParameterValue paramValue, CddPduRApiType value){
						EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
					}
					
					def Integer getCddSoAdUpperLayerHandleId(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddSoAdUpperLayerHandleId"])
					}
					
					def void setCddSoAdUpperLayerHandleId(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddSoAdUpperLayerHandleId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CddSoAdUpperLayerHandleId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCddSoAdUpperLayerPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CddSoAdUpperLayerPduRef")
					}
							
					def void setCddSoAdUpperLayerPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CddSoAdUpperLayerPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
		}
		
		static class CddEcucPartitionInteraction implements IWrapper<GContainer> {
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
			
			def String getCddPartitionStoppedFunctionName(){
				EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPartitionStoppedFunctionName"])
			}
			
			def void setCddPartitionStoppedFunctionName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPartitionStoppedFunctionName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CddPartitionStoppedFunctionName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.EcuC.EcucPartitionCollection.EcucPartition getCddEcucPartitionRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucPartitionCollection.EcucPartition), "CddEcucPartitionRef")
			}
					
			def void setCddEcucPartitionRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucPartitionCollection.EcucPartition object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CddEcucPartitionRef"], object.getTarget())
				}
			}
			
			
			
		}
		
	}
	static class CddEcucPartitionInteraction implements IWrapper<GContainer> {
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
		
		def String getCddPartitionStoppedFunctionName(){
			EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPartitionStoppedFunctionName"])
		}
		
		def void setCddPartitionStoppedFunctionName(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CddPartitionStoppedFunctionName"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CddPartitionStoppedFunctionName"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		
		def org.artop.ecuc.autosar421.accessors.EcuC.EcucPartitionCollection.EcucPartition getCddEcucPartitionRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucPartitionCollection.EcucPartition), "CddEcucPartitionRef")
		}
				
		def void setCddEcucPartitionRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucPartitionCollection.EcucPartition object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "CddEcucPartitionRef"], object.getTarget())
			}
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
