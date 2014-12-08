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

class FrNm implements IWrapper<GModuleConfiguration> {
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
	
	def FrNmChannelConfig getFrNmChannelConfig(){
		moduleConfiguration.getByType(typeof(FrNmChannelConfig))
	}
	
	def void setFrNmChannelConfig(FrNmChannelConfig frNmChannelConfig){
		val GContainer container = frNmChannelConfig.getTarget() 
	    moduleConfiguration.setContainer(container, "FrNmChannelConfig")
	}
	def FrNmGlobalConfig getFrNmGlobalConfig(){
		moduleConfiguration.getByType(typeof(FrNmGlobalConfig))
	}
	
	def void setFrNmGlobalConfig(FrNmGlobalConfig frNmGlobalConfig){
		val GContainer container = frNmGlobalConfig.getTarget() 
	    moduleConfiguration.setContainer(container, "FrNmGlobalConfig")
	}
	
	static class FrNmChannelConfig implements IWrapper<GContainer> {
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
		
		
		
		def List<FrNmChannel> getFrNmChannels(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "FrNmChannel")
				}
			}
			return new BasicWrappingEList<FrNmChannel, GContainer>(filteredContainers, typeof(FrNmChannel), typeof(GContainer))
		}
		
		
		static class FrNmChannel implements IWrapper<GContainer> {
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
			
			
			
			def FrNmChannelIdentifiers getFrNmChannelIdentifiers(){
				containerValue.getByType(typeof(FrNmChannelIdentifiers))
			}
			
			def void setFrNmChannelIdentifiers(GContainer subContainer){
				containerValue.setContainer(subContainer, "FrNmChannelIdentifiers")
			}
			
			def FrNmChannelTiming getFrNmChannelTiming(){
				containerValue.getByType(typeof(FrNmChannelTiming))
			}
			
			def void setFrNmChannelTiming(GContainer subContainer){
				containerValue.setContainer(subContainer, "FrNmChannelTiming")
			}
			
			
			static class FrNmChannelIdentifiers implements IWrapper<GContainer> {
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
				
				def Boolean getFrNmActiveWakeupBitEnabled(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmActiveWakeupBitEnabled"])
				}
				
				def void setFrNmActiveWakeupBitEnabled(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmActiveWakeupBitEnabled"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmActiveWakeupBitEnabled"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getFrNmCarWakeUpBitPosition(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmCarWakeUpBitPosition"])
				}
				
				def void setFrNmCarWakeUpBitPosition(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmCarWakeUpBitPosition"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmCarWakeUpBitPosition"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getFrNmCarWakeUpBytePosition(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmCarWakeUpBytePosition"])
				}
				
				def void setFrNmCarWakeUpBytePosition(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmCarWakeUpBytePosition"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmCarWakeUpBytePosition"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Boolean getFrNmCarWakeUpFilterEnabled(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmCarWakeUpFilterEnabled"])
				}
				
				def void setFrNmCarWakeUpFilterEnabled(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmCarWakeUpFilterEnabled"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmCarWakeUpFilterEnabled"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getFrNmCarWakeUpFilterNodeId(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmCarWakeUpFilterNodeId"])
				}
				
				def void setFrNmCarWakeUpFilterNodeId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmCarWakeUpFilterNodeId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmCarWakeUpFilterNodeId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Boolean getFrNmCarWakeUpRxEnabled(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmCarWakeUpRxEnabled"])
				}
				
				def void setFrNmCarWakeUpRxEnabled(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmCarWakeUpRxEnabled"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmCarWakeUpRxEnabled"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Boolean getFrNmControlBitVectorActive(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmControlBitVectorActive"])
				}
				
				def void setFrNmControlBitVectorActive(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmControlBitVectorActive"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmControlBitVectorActive"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getFrNmNodeId(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmNodeId"])
				}
				
				def void setFrNmNodeId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmNodeId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmNodeId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def FrNmPduScheduleVariant getFrNmPduScheduleVariant(){
					getFrNmPduScheduleVariantValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPduScheduleVariant"])
				}
				
				def void setFrNmPduScheduleVariant(FrNmPduScheduleVariant value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPduScheduleVariant"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmPduScheduleVariant"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				enum FrNmPduScheduleVariant {
					FRNM_PDU_SCHEDULE_VARIANT_1, 
					FRNM_PDU_SCHEDULE_VARIANT_2, 
					FRNM_PDU_SCHEDULE_VARIANT_3, 
					FRNM_PDU_SCHEDULE_VARIANT_4, 
					FRNM_PDU_SCHEDULE_VARIANT_5, 
					FRNM_PDU_SCHEDULE_VARIANT_6, 
					FRNM_PDU_SCHEDULE_VARIANT_7
				}
					
				def FrNmPduScheduleVariant getFrNmPduScheduleVariantValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "FRNM_PDU_SCHEDULE_VARIANT_1" : FrNmPduScheduleVariant.FRNM_PDU_SCHEDULE_VARIANT_1
						case "FRNM_PDU_SCHEDULE_VARIANT_2" : FrNmPduScheduleVariant.FRNM_PDU_SCHEDULE_VARIANT_2
						case "FRNM_PDU_SCHEDULE_VARIANT_3" : FrNmPduScheduleVariant.FRNM_PDU_SCHEDULE_VARIANT_3
						case "FRNM_PDU_SCHEDULE_VARIANT_4" : FrNmPduScheduleVariant.FRNM_PDU_SCHEDULE_VARIANT_4
						case "FRNM_PDU_SCHEDULE_VARIANT_5" : FrNmPduScheduleVariant.FRNM_PDU_SCHEDULE_VARIANT_5
						case "FRNM_PDU_SCHEDULE_VARIANT_6" : FrNmPduScheduleVariant.FRNM_PDU_SCHEDULE_VARIANT_6
						case "FRNM_PDU_SCHEDULE_VARIANT_7" : FrNmPduScheduleVariant.FRNM_PDU_SCHEDULE_VARIANT_7
					}
				}
				
				def void setFrNmPduScheduleVariantValue(GParameterValue paramValue, FrNmPduScheduleVariant value){
					EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
				}
				
				def Boolean getFrNmPnEnabled(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPnEnabled"])
				}
				
				def void setFrNmPnEnabled(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPnEnabled"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmPnEnabled"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Boolean getFrNmPnEraCalcEnabled(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPnEraCalcEnabled"])
				}
				
				def void setFrNmPnEraCalcEnabled(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPnEraCalcEnabled"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmPnEraCalcEnabled"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Boolean getFrNmSynchronizationPointEnabled(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmSynchronizationPointEnabled"])
				}
				
				def void setFrNmSynchronizationPointEnabled(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmSynchronizationPointEnabled"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmSynchronizationPointEnabled"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getFrNmPnEraRxNSduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "FrNmPnEraRxNSduRef")
				}
						
				def void setFrNmPnEraRxNSduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FrNmPnEraRxNSduRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar421.accessors.FrIf.FrIfConfig.FrIfCluster getFrNmChannelHandle(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.FrIf.FrIfConfig.FrIfCluster), "FrNmChannelHandle")
				}
						
				def void setFrNmChannelHandle(org.artop.ecuc.autosar421.accessors.FrIf.FrIfConfig.FrIfCluster object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FrNmChannelHandle"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel getFrNmComMNetworkHandleRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel), "FrNmComMNetworkHandleRef")
				}
						
				def void setFrNmComMNetworkHandleRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FrNmComMNetworkHandleRef"], object.getTarget())
					}
				}
				
				
				def List<FrNmRxPdu> getFrNmRxPdus(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "FrNmRxPdu")
						}
					}
					return new BasicWrappingEList<FrNmRxPdu, GContainer>(filteredContainers, typeof(FrNmRxPdu), typeof(GContainer))
				}
				
				def List<FrNmTxPdu> getFrNmTxPdus(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "FrNmTxPdu")
						}
					}
					return new BasicWrappingEList<FrNmTxPdu, GContainer>(filteredContainers, typeof(FrNmTxPdu), typeof(GContainer))
				}
				
				def FrNmUserDataTxPdu getFrNmUserDataTxPdu(){
					containerValue.getByType(typeof(FrNmUserDataTxPdu))
				}
				
				def void setFrNmUserDataTxPdu(GContainer subContainer){
					containerValue.setContainer(subContainer, "FrNmUserDataTxPdu")
				}
				
				
				static class FrNmRxPdu implements IWrapper<GContainer> {
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
					
					def Boolean getFrNmRxPduContainsData(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmRxPduContainsData"])
					}
					
					def void setFrNmRxPduContainsData(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmRxPduContainsData"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmRxPduContainsData"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Boolean getFrNmRxPduContainsVote(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmRxPduContainsVote"])
					}
					
					def void setFrNmRxPduContainsVote(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmRxPduContainsVote"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmRxPduContainsVote"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Integer getFrNmRxPduId(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmRxPduId"])
					}
					
					def void setFrNmRxPduId(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmRxPduId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmRxPduId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getFrNmRxPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "FrNmRxPduRef")
					}
							
					def void setFrNmRxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FrNmRxPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class FrNmTxPdu implements IWrapper<GContainer> {
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
					
					def Integer getFrNmTxConfirmationPduId(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmTxConfirmationPduId"])
					}
					
					def void setFrNmTxConfirmationPduId(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmTxConfirmationPduId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmTxConfirmationPduId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Boolean getFrNmTxPduContainsData(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmTxPduContainsData"])
					}
					
					def void setFrNmTxPduContainsData(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmTxPduContainsData"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmTxPduContainsData"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Boolean getFrNmTxPduContainsVote(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmTxPduContainsVote"])
					}
					
					def void setFrNmTxPduContainsVote(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmTxPduContainsVote"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmTxPduContainsVote"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getFrNmTxPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "FrNmTxPduRef")
					}
							
					def void setFrNmTxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FrNmTxPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class FrNmUserDataTxPdu implements IWrapper<GContainer> {
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
					
					def Integer getFrNmTxUserDataPduId(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmTxUserDataPduId"])
					}
					
					def void setFrNmTxUserDataPduId(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmTxUserDataPduId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmTxUserDataPduId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getFrNmTxUserDataPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "FrNmTxUserDataPduRef")
					}
							
					def void setFrNmTxUserDataPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FrNmTxUserDataPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
			static class FrNmChannelTiming implements IWrapper<GContainer> {
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
				
				def FrNmDataCycle getFrNmDataCycle(){
					getFrNmDataCycleValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmDataCycle"])
				}
				
				def void setFrNmDataCycle(FrNmDataCycle value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmDataCycle"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmDataCycle"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				enum FrNmDataCycle {
					FRNM_CYCLE_VALUE_1, 
					FRNM_CYCLE_VALUE_16, 
					FRNM_CYCLE_VALUE_2, 
					FRNM_CYCLE_VALUE_32, 
					FRNM_CYCLE_VALUE_4, 
					FRNM_CYCLE_VALUE_64, 
					FRNM_CYCLE_VALUE_8
				}
					
				def FrNmDataCycle getFrNmDataCycleValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "FRNM_CYCLE_VALUE_1" : FrNmDataCycle.FRNM_CYCLE_VALUE_1
						case "FRNM_CYCLE_VALUE_16" : FrNmDataCycle.FRNM_CYCLE_VALUE_16
						case "FRNM_CYCLE_VALUE_2" : FrNmDataCycle.FRNM_CYCLE_VALUE_2
						case "FRNM_CYCLE_VALUE_32" : FrNmDataCycle.FRNM_CYCLE_VALUE_32
						case "FRNM_CYCLE_VALUE_4" : FrNmDataCycle.FRNM_CYCLE_VALUE_4
						case "FRNM_CYCLE_VALUE_64" : FrNmDataCycle.FRNM_CYCLE_VALUE_64
						case "FRNM_CYCLE_VALUE_8" : FrNmDataCycle.FRNM_CYCLE_VALUE_8
					}
				}
				
				def void setFrNmDataCycleValue(GParameterValue paramValue, FrNmDataCycle value){
					EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
				}
				
				def Float getFrNmMainFunctionPeriod(){
					EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmMainFunctionPeriod"])
				}
				
				def void setFrNmMainFunctionPeriod(Float value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmMainFunctionPeriod"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmMainFunctionPeriod"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Float getFrNmMsgTimeoutTime(){
					EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmMsgTimeoutTime"])
				}
				
				def void setFrNmMsgTimeoutTime(Float value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmMsgTimeoutTime"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmMsgTimeoutTime"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getFrNmReadySleepCnt(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmReadySleepCnt"])
				}
				
				def void setFrNmReadySleepCnt(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmReadySleepCnt"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmReadySleepCnt"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Float getFrNmRemoteSleepIndTime(){
					EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmRemoteSleepIndTime"])
				}
				
				def void setFrNmRemoteSleepIndTime(Float value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmRemoteSleepIndTime"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmRemoteSleepIndTime"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Float getFrNmRepeatMessageTime(){
					EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmRepeatMessageTime"])
				}
				
				def void setFrNmRepeatMessageTime(Float value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmRepeatMessageTime"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmRepeatMessageTime"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def FrNmRepetitionCycle getFrNmRepetitionCycle(){
					getFrNmRepetitionCycleValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmRepetitionCycle"])
				}
				
				def void setFrNmRepetitionCycle(FrNmRepetitionCycle value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmRepetitionCycle"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmRepetitionCycle"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				enum FrNmRepetitionCycle {
					FRNM_CYCLE_VALUE_1, 
					FRNM_CYCLE_VALUE_16, 
					FRNM_CYCLE_VALUE_2, 
					FRNM_CYCLE_VALUE_32, 
					FRNM_CYCLE_VALUE_4, 
					FRNM_CYCLE_VALUE_64, 
					FRNM_CYCLE_VALUE_8
				}
					
				def FrNmRepetitionCycle getFrNmRepetitionCycleValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "FRNM_CYCLE_VALUE_1" : FrNmRepetitionCycle.FRNM_CYCLE_VALUE_1
						case "FRNM_CYCLE_VALUE_16" : FrNmRepetitionCycle.FRNM_CYCLE_VALUE_16
						case "FRNM_CYCLE_VALUE_2" : FrNmRepetitionCycle.FRNM_CYCLE_VALUE_2
						case "FRNM_CYCLE_VALUE_32" : FrNmRepetitionCycle.FRNM_CYCLE_VALUE_32
						case "FRNM_CYCLE_VALUE_4" : FrNmRepetitionCycle.FRNM_CYCLE_VALUE_4
						case "FRNM_CYCLE_VALUE_64" : FrNmRepetitionCycle.FRNM_CYCLE_VALUE_64
						case "FRNM_CYCLE_VALUE_8" : FrNmRepetitionCycle.FRNM_CYCLE_VALUE_8
					}
				}
				
				def void setFrNmRepetitionCycleValue(GParameterValue paramValue, FrNmRepetitionCycle value){
					EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
				}
				
				def Boolean getFrNmVoteInhibitionEnabled(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmVoteInhibitionEnabled"])
				}
				
				def void setFrNmVoteInhibitionEnabled(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmVoteInhibitionEnabled"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmVoteInhibitionEnabled"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def FrNmVotingCycle getFrNmVotingCycle(){
					getFrNmVotingCycleValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmVotingCycle"])
				}
				
				def void setFrNmVotingCycle(FrNmVotingCycle value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmVotingCycle"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmVotingCycle"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				enum FrNmVotingCycle {
					FRNM_CYCLE_VALUE_1, 
					FRNM_CYCLE_VALUE_16, 
					FRNM_CYCLE_VALUE_2, 
					FRNM_CYCLE_VALUE_32, 
					FRNM_CYCLE_VALUE_4, 
					FRNM_CYCLE_VALUE_64, 
					FRNM_CYCLE_VALUE_8
				}
					
				def FrNmVotingCycle getFrNmVotingCycleValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "FRNM_CYCLE_VALUE_1" : FrNmVotingCycle.FRNM_CYCLE_VALUE_1
						case "FRNM_CYCLE_VALUE_16" : FrNmVotingCycle.FRNM_CYCLE_VALUE_16
						case "FRNM_CYCLE_VALUE_2" : FrNmVotingCycle.FRNM_CYCLE_VALUE_2
						case "FRNM_CYCLE_VALUE_32" : FrNmVotingCycle.FRNM_CYCLE_VALUE_32
						case "FRNM_CYCLE_VALUE_4" : FrNmVotingCycle.FRNM_CYCLE_VALUE_4
						case "FRNM_CYCLE_VALUE_64" : FrNmVotingCycle.FRNM_CYCLE_VALUE_64
						case "FRNM_CYCLE_VALUE_8" : FrNmVotingCycle.FRNM_CYCLE_VALUE_8
					}
				}
				
				def void setFrNmVotingCycleValue(GParameterValue paramValue, FrNmVotingCycle value){
					EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
				}
				
				
				
				
			}
			
		}
		
	}
	static class FrNmGlobalConfig implements IWrapper<GContainer> {
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
		
		
		
		def FrNmGlobalConstants getFrNmGlobalConstants(){
			containerValue.getByType(typeof(FrNmGlobalConstants))
		}
		
		def void setFrNmGlobalConstants(GContainer subContainer){
			containerValue.setContainer(subContainer, "FrNmGlobalConstants")
		}
		
		def FrNmGlobalFeatures getFrNmGlobalFeatures(){
			containerValue.getByType(typeof(FrNmGlobalFeatures))
		}
		
		def void setFrNmGlobalFeatures(GContainer subContainer){
			containerValue.setContainer(subContainer, "FrNmGlobalFeatures")
		}
		
		def FrNmGlobalProperties getFrNmGlobalProperties(){
			containerValue.getByType(typeof(FrNmGlobalProperties))
		}
		
		def void setFrNmGlobalProperties(GContainer subContainer){
			containerValue.setContainer(subContainer, "FrNmGlobalProperties")
		}
		
		
		static class FrNmGlobalConstants implements IWrapper<GContainer> {
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
			
			def Integer getFrNmNumberOfClusters(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmNumberOfClusters"])
			}
			
			def void setFrNmNumberOfClusters(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmNumberOfClusters"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmNumberOfClusters"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
		static class FrNmGlobalFeatures implements IWrapper<GContainer> {
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
			
			def Boolean getFrNmBusSynchronizationEnabled(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmBusSynchronizationEnabled"])
			}
			
			def void setFrNmBusSynchronizationEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmBusSynchronizationEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmBusSynchronizationEnabled"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getFrNmComUserDataSupport(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmComUserDataSupport"])
			}
			
			def void setFrNmComUserDataSupport(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmComUserDataSupport"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmComUserDataSupport"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getFrNmControlBitVectorEnabled(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmControlBitVectorEnabled"])
			}
			
			def void setFrNmControlBitVectorEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmControlBitVectorEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmControlBitVectorEnabled"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getFrNmCoordinatorSyncSupport(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmCoordinatorSyncSupport"])
			}
			
			def void setFrNmCoordinatorSyncSupport(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmCoordinatorSyncSupport"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmCoordinatorSyncSupport"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getFrNmCycleCounterEmulation(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmCycleCounterEmulation"])
			}
			
			def void setFrNmCycleCounterEmulation(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmCycleCounterEmulation"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmCycleCounterEmulation"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getFrNmDualChannelPduEnable(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmDualChannelPduEnable"])
			}
			
			def void setFrNmDualChannelPduEnable(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmDualChannelPduEnable"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmDualChannelPduEnable"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getFrNmHwVoteEnable(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmHwVoteEnable"])
			}
			
			def void setFrNmHwVoteEnable(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmHwVoteEnable"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmHwVoteEnable"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getFrNmNodeDetectionEnabled(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmNodeDetectionEnabled"])
			}
			
			def void setFrNmNodeDetectionEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmNodeDetectionEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmNodeDetectionEnabled"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getFrNmPassiveModeEnabled(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPassiveModeEnabled"])
			}
			
			def void setFrNmPassiveModeEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPassiveModeEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmPassiveModeEnabled"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getFrNmPduRxIndicationEnabled(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPduRxIndicationEnabled"])
			}
			
			def void setFrNmPduRxIndicationEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPduRxIndicationEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmPduRxIndicationEnabled"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getFrNmPnEiraCalcEnabled(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPnEiraCalcEnabled"])
			}
			
			def void setFrNmPnEiraCalcEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPnEiraCalcEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmPnEiraCalcEnabled"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Float getFrNmPnResetTime(){
				EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPnResetTime"])
			}
			
			def void setFrNmPnResetTime(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPnResetTime"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmPnResetTime"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getFrNmRemoteSleepIndicationEnabled(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmRemoteSleepIndicationEnabled"])
			}
			
			def void setFrNmRemoteSleepIndicationEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmRemoteSleepIndicationEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmRemoteSleepIndicationEnabled"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getFrNmRepeatMessageBitEnabled(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmRepeatMessageBitEnabled"])
			}
			
			def void setFrNmRepeatMessageBitEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmRepeatMessageBitEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmRepeatMessageBitEnabled"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getFrNmSourceNodeIdentifierEnabled(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmSourceNodeIdentifierEnabled"])
			}
			
			def void setFrNmSourceNodeIdentifierEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmSourceNodeIdentifierEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmSourceNodeIdentifierEnabled"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getFrNmStateChangeIndicationEnabled(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmStateChangeIndicationEnabled"])
			}
			
			def void setFrNmStateChangeIndicationEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmStateChangeIndicationEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmStateChangeIndicationEnabled"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getFrNmUserDataEnabled(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmUserDataEnabled"])
			}
			
			def void setFrNmUserDataEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmUserDataEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmUserDataEnabled"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getFrNmVotingNextToLastRepetitionCycleDisable(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmVotingNextToLastRepetitionCycleDisable"])
			}
			
			def void setFrNmVotingNextToLastRepetitionCycleDisable(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmVotingNextToLastRepetitionCycleDisable"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmVotingNextToLastRepetitionCycleDisable"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getFrNmPnEiraRxNSduRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "FrNmPnEiraRxNSduRef")
			}
					
			def void setFrNmPnEiraRxNSduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FrNmPnEiraRxNSduRef"], object.getTarget())
				}
			}
			
			
			def FrNmPnInfo getFrNmPnInfo(){
				containerValue.getByType(typeof(FrNmPnInfo))
			}
			
			def void setFrNmPnInfo(GContainer subContainer){
				containerValue.setContainer(subContainer, "FrNmPnInfo")
			}
			
			
			static class FrNmPnInfo implements IWrapper<GContainer> {
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
				
				def Integer getFrNmPnInfoLength(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPnInfoLength"])
				}
				
				def void setFrNmPnInfoLength(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPnInfoLength"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmPnInfoLength"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getFrNmPnInfoOffset(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPnInfoOffset"])
				}
				
				def void setFrNmPnInfoOffset(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPnInfoOffset"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmPnInfoOffset"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				
				def List<FrNmPnFilterMaskByte> getFrNmPnFilterMaskBytes(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "FrNmPnFilterMaskByte")
						}
					}
					return new BasicWrappingEList<FrNmPnFilterMaskByte, GContainer>(filteredContainers, typeof(FrNmPnFilterMaskByte), typeof(GContainer))
				}
				
				
				static class FrNmPnFilterMaskByte implements IWrapper<GContainer> {
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
					
					def Integer getFrNmPnFilterMaskByteIndex(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPnFilterMaskByteIndex"])
					}
					
					def void setFrNmPnFilterMaskByteIndex(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPnFilterMaskByteIndex"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmPnFilterMaskByteIndex"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Integer getFrNmPnFilterMaskByteValue(){
						EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPnFilterMaskByteValue"])
					}
					
					def void setFrNmPnFilterMaskByteValue(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPnFilterMaskByteValue"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmPnFilterMaskByteValue"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					
					
					
				}
				
			}
			
		}
		
		static class FrNmGlobalProperties implements IWrapper<GContainer> {
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
			
			def Boolean getFrNmDevErrorDetect(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmDevErrorDetect"])
			}
			
			def void setFrNmDevErrorDetect(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmDevErrorDetect"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmDevErrorDetect"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getFrNmMainAcrossFrCycle(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmMainAcrossFrCycle"])
			}
			
			def void setFrNmMainAcrossFrCycle(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmMainAcrossFrCycle"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmMainAcrossFrCycle"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getFrNmVersionInfoApi(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmVersionInfoApi"])
			}
			
			def void setFrNmVersionInfoApi(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmVersionInfoApi"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrNmVersionInfoApi"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
