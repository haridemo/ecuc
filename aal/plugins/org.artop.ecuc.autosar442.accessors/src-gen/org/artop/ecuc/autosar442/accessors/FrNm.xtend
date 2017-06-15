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
package org.artop.ecuc.autosar442.accessors

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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof FrNmChannelConfig)){
				return false
			}
			this.target == (object as FrNmChannelConfig).target
		}
	
		
		
		def List<FrNmChannel> getFrNmChannels(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "FrNmChannel")
				}
			}
			return new BasicWrappingEList<FrNmChannel, GContainer>(filteredContainers, typeof(FrNmChannel), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar442.accessors.FrNm.FrNmChannelConfig.FrNmChannel frNmChannel) {
					frNmChannel.target?.gSetDefinition(containerValue.getContainerDefinition("FrNmChannel"))
					super.delegateAdd(frNmChannel)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar442.accessors.FrNm.FrNmChannelConfig.FrNmChannel frNmChannel) {
					frNmChannel.target?.gSetDefinition(containerValue.getContainerDefinition("FrNmChannel"))
					super.delegateAdd(index, frNmChannel)
				}
			}
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof FrNmChannel)){
					return false
				}
				this.target == (object as FrNmChannel).target
			}
		
			
			
			def FrNmChannelIdentifiers getFrNmChannelIdentifiers(){
				containerValue.getByType(typeof(FrNmChannelIdentifiers))
			}
			
			def void setFrNmChannelIdentifiers(FrNmChannelIdentifiers frNmChannelIdentifiers){
				val GContainer subContainer = frNmChannelIdentifiers.getTarget()
				containerValue.setContainer(subContainer, "FrNmChannelIdentifiers")
			}
			
			def FrNmChannelTiming getFrNmChannelTiming(){
				containerValue.getByType(typeof(FrNmChannelTiming))
			}
			
			def void setFrNmChannelTiming(FrNmChannelTiming frNmChannelTiming){
				val GContainer subContainer = frNmChannelTiming.getTarget()
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof FrNmChannelIdentifiers)){
						return false
					}
					this.target == (object as FrNmChannelIdentifiers).target
				}
			
				def Boolean getFrNmActiveWakeupBitEnabled(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmActiveWakeupBitEnabled"].getBooleanValue()
				}
				
				def void setFrNmActiveWakeupBitEnabled(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmActiveWakeupBitEnabled"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmActiveWakeupBitEnabled"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				def BigInteger getFrNmCarWakeUpBitPosition(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmCarWakeUpBitPosition"].getBigIntegerValue()
				}
				
				def void setFrNmCarWakeUpBitPosition(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmCarWakeUpBitPosition"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmCarWakeUpBitPosition"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getFrNmCarWakeUpBytePosition(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmCarWakeUpBytePosition"].getBigIntegerValue()
				}
				
				def void setFrNmCarWakeUpBytePosition(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmCarWakeUpBytePosition"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmCarWakeUpBytePosition"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def Boolean getFrNmCarWakeUpFilterEnabled(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmCarWakeUpFilterEnabled"].getBooleanValue()
				}
				
				def void setFrNmCarWakeUpFilterEnabled(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmCarWakeUpFilterEnabled"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmCarWakeUpFilterEnabled"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				def BigInteger getFrNmCarWakeUpFilterNodeId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmCarWakeUpFilterNodeId"].getBigIntegerValue()
				}
				
				def void setFrNmCarWakeUpFilterNodeId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmCarWakeUpFilterNodeId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmCarWakeUpFilterNodeId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def Boolean getFrNmCarWakeUpRxEnabled(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmCarWakeUpRxEnabled"].getBooleanValue()
				}
				
				def void setFrNmCarWakeUpRxEnabled(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmCarWakeUpRxEnabled"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmCarWakeUpRxEnabled"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				def Boolean getFrNmControlBitVectorActive(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmControlBitVectorActive"].getBooleanValue()
				}
				
				def void setFrNmControlBitVectorActive(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmControlBitVectorActive"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmControlBitVectorActive"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				def BigInteger getFrNmNodeId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmNodeId"].getBigIntegerValue()
				}
				
				def void setFrNmNodeId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmNodeId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmNodeId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def FrNmPduScheduleVariant getFrNmPduScheduleVariant(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPduScheduleVariant"].getFrNmPduScheduleVariantValue()
				}
				
				def void setFrNmPduScheduleVariant(FrNmPduScheduleVariant value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPduScheduleVariant"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmPduScheduleVariant"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
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
				
				def FrNmPduScheduleVariant getFrNmPduScheduleVariantValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "FRNM_PDU_SCHEDULE_VARIANT_1" : FrNmPduScheduleVariant.FRNM_PDU_SCHEDULE_VARIANT_1
						case "FRNM_PDU_SCHEDULE_VARIANT_2" : FrNmPduScheduleVariant.FRNM_PDU_SCHEDULE_VARIANT_2
						case "FRNM_PDU_SCHEDULE_VARIANT_3" : FrNmPduScheduleVariant.FRNM_PDU_SCHEDULE_VARIANT_3
						case "FRNM_PDU_SCHEDULE_VARIANT_4" : FrNmPduScheduleVariant.FRNM_PDU_SCHEDULE_VARIANT_4
						case "FRNM_PDU_SCHEDULE_VARIANT_5" : FrNmPduScheduleVariant.FRNM_PDU_SCHEDULE_VARIANT_5
						case "FRNM_PDU_SCHEDULE_VARIANT_6" : FrNmPduScheduleVariant.FRNM_PDU_SCHEDULE_VARIANT_6
						case "FRNM_PDU_SCHEDULE_VARIANT_7" : FrNmPduScheduleVariant.FRNM_PDU_SCHEDULE_VARIANT_7
					}
				}
				
				def void setFrNmPduScheduleVariantValue(GParameterValue parameterValue, FrNmPduScheduleVariant value){
					parameterValue.setValue(value)
				}
				
				def Boolean getFrNmPnEnabled(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPnEnabled"].getBooleanValue()
				}
				
				def void setFrNmPnEnabled(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPnEnabled"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmPnEnabled"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				def Boolean getFrNmPnEraCalcEnabled(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPnEraCalcEnabled"].getBooleanValue()
				}
				
				def void setFrNmPnEraCalcEnabled(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPnEraCalcEnabled"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmPnEraCalcEnabled"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				def Boolean getFrNmSynchronizationPointEnabled(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmSynchronizationPointEnabled"].getBooleanValue()
				}
				
				def void setFrNmSynchronizationPointEnabled(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmSynchronizationPointEnabled"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmSynchronizationPointEnabled"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				
				def org.artop.ecuc.autosar442.accessors.FrIf.FrIfConfig.FrIfCluster getFrNmChannelHandle(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.FrIf.FrIfConfig.FrIfCluster), "FrNmChannelHandle")
				}
				
				def void setFrNmChannelHandle(org.artop.ecuc.autosar442.accessors.FrIf.FrIfConfig.FrIfCluster object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FrNmChannelHandle"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar442.accessors.ComM.ComMConfigSet.ComMChannel getFrNmComMNetworkHandleRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.ComM.ComMConfigSet.ComMChannel), "FrNmComMNetworkHandleRef")
				}
				
				def void setFrNmComMNetworkHandleRef(org.artop.ecuc.autosar442.accessors.ComM.ComMConfigSet.ComMChannel object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FrNmComMNetworkHandleRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar442.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getFrNmPnEraRxNSduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "FrNmPnEraRxNSduRef")
				}
				
				def void setFrNmPnEraRxNSduRef(org.artop.ecuc.autosar442.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FrNmPnEraRxNSduRef"], object.getTarget())
					}
				}
				
				
				def List<FrNmRxPdu> getFrNmRxPdus(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "FrNmRxPdu")
						}
					}
					return new BasicWrappingEList<FrNmRxPdu, GContainer>(filteredContainers, typeof(FrNmRxPdu), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar442.accessors.FrNm.FrNmChannelConfig.FrNmChannel.FrNmChannelIdentifiers.FrNmRxPdu frNmRxPdu) {
							frNmRxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("FrNmRxPdu"))
							super.delegateAdd(frNmRxPdu)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar442.accessors.FrNm.FrNmChannelConfig.FrNmChannel.FrNmChannelIdentifiers.FrNmRxPdu frNmRxPdu) {
							frNmRxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("FrNmRxPdu"))
							super.delegateAdd(index, frNmRxPdu)
						}
					}
				}
				
				def List<FrNmTxPdu> getFrNmTxPdus(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "FrNmTxPdu")
						}
					}
					return new BasicWrappingEList<FrNmTxPdu, GContainer>(filteredContainers, typeof(FrNmTxPdu), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar442.accessors.FrNm.FrNmChannelConfig.FrNmChannel.FrNmChannelIdentifiers.FrNmTxPdu frNmTxPdu) {
							frNmTxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("FrNmTxPdu"))
							super.delegateAdd(frNmTxPdu)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar442.accessors.FrNm.FrNmChannelConfig.FrNmChannel.FrNmChannelIdentifiers.FrNmTxPdu frNmTxPdu) {
							frNmTxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("FrNmTxPdu"))
							super.delegateAdd(index, frNmTxPdu)
						}
					}
				}
				
				def FrNmUserDataTxPdu getFrNmUserDataTxPdu(){
					containerValue.getByType(typeof(FrNmUserDataTxPdu))
				}
				
				def void setFrNmUserDataTxPdu(FrNmUserDataTxPdu frNmUserDataTxPdu){
					val GContainer subContainer = frNmUserDataTxPdu.getTarget()
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
				
					override def boolean equals(Object object) {
				        if (!(object instanceof FrNmRxPdu)){
							return false
						}
						this.target == (object as FrNmRxPdu).target
					}
				
					def Boolean getFrNmRxPduContainsData(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmRxPduContainsData"].getBooleanValue()
					}
					
					def void setFrNmRxPduContainsData(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmRxPduContainsData"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmRxPduContainsData"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def Boolean getFrNmRxPduContainsVote(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmRxPduContainsVote"].getBooleanValue()
					}
					
					def void setFrNmRxPduContainsVote(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmRxPduContainsVote"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmRxPduContainsVote"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def BigInteger getFrNmRxPduId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmRxPduId"].getBigIntegerValue()
					}
					
					def void setFrNmRxPduId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmRxPduId"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmRxPduId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar442.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getFrNmRxPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "FrNmRxPduRef")
					}
					
					def void setFrNmRxPduRef(org.artop.ecuc.autosar442.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FrNmRxPduRef"], object.getTarget())
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
				
					override def boolean equals(Object object) {
				        if (!(object instanceof FrNmTxPdu)){
							return false
						}
						this.target == (object as FrNmTxPdu).target
					}
				
					def BigInteger getFrNmTxConfirmationPduId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmTxConfirmationPduId"].getBigIntegerValue()
					}
					
					def void setFrNmTxConfirmationPduId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmTxConfirmationPduId"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmTxConfirmationPduId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def Boolean getFrNmTxPduContainsData(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmTxPduContainsData"].getBooleanValue()
					}
					
					def void setFrNmTxPduContainsData(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmTxPduContainsData"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmTxPduContainsData"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def Boolean getFrNmTxPduContainsVote(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmTxPduContainsVote"].getBooleanValue()
					}
					
					def void setFrNmTxPduContainsVote(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmTxPduContainsVote"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmTxPduContainsVote"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					
					def org.artop.ecuc.autosar442.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getFrNmTxPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "FrNmTxPduRef")
					}
					
					def void setFrNmTxPduRef(org.artop.ecuc.autosar442.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FrNmTxPduRef"], object.getTarget())
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
				
					override def boolean equals(Object object) {
				        if (!(object instanceof FrNmUserDataTxPdu)){
							return false
						}
						this.target == (object as FrNmUserDataTxPdu).target
					}
				
					def BigInteger getFrNmTxUserDataPduId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmTxUserDataPduId"].getBigIntegerValue()
					}
					
					def void setFrNmTxUserDataPduId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmTxUserDataPduId"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmTxUserDataPduId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar442.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getFrNmTxUserDataPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "FrNmTxUserDataPduRef")
					}
					
					def void setFrNmTxUserDataPduRef(org.artop.ecuc.autosar442.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FrNmTxUserDataPduRef"], object.getTarget())
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof FrNmChannelTiming)){
						return false
					}
					this.target == (object as FrNmChannelTiming).target
				}
			
				def FrNmDataCycle getFrNmDataCycle(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmDataCycle"].getFrNmDataCycleValue()
				}
				
				def void setFrNmDataCycle(FrNmDataCycle value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmDataCycle"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmDataCycle"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
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
				
				def FrNmDataCycle getFrNmDataCycleValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "FRNM_CYCLE_VALUE_1" : FrNmDataCycle.FRNM_CYCLE_VALUE_1
						case "FRNM_CYCLE_VALUE_16" : FrNmDataCycle.FRNM_CYCLE_VALUE_16
						case "FRNM_CYCLE_VALUE_2" : FrNmDataCycle.FRNM_CYCLE_VALUE_2
						case "FRNM_CYCLE_VALUE_32" : FrNmDataCycle.FRNM_CYCLE_VALUE_32
						case "FRNM_CYCLE_VALUE_4" : FrNmDataCycle.FRNM_CYCLE_VALUE_4
						case "FRNM_CYCLE_VALUE_64" : FrNmDataCycle.FRNM_CYCLE_VALUE_64
						case "FRNM_CYCLE_VALUE_8" : FrNmDataCycle.FRNM_CYCLE_VALUE_8
					}
				}
				
				def void setFrNmDataCycleValue(GParameterValue parameterValue, FrNmDataCycle value){
					parameterValue.setValue(value)
				}
				
				def BigDecimal getFrNmMainFunctionPeriod(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmMainFunctionPeriod"].getBigDecimalValue()
				}
				
				def void setFrNmMainFunctionPeriod(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmMainFunctionPeriod"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmMainFunctionPeriod"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigDecimal getFrNmMsgTimeoutTime(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmMsgTimeoutTime"].getBigDecimalValue()
				}
				
				def void setFrNmMsgTimeoutTime(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmMsgTimeoutTime"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmMsgTimeoutTime"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getFrNmReadySleepCnt(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmReadySleepCnt"].getBigIntegerValue()
				}
				
				def void setFrNmReadySleepCnt(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmReadySleepCnt"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmReadySleepCnt"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigDecimal getFrNmRemoteSleepIndTime(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmRemoteSleepIndTime"].getBigDecimalValue()
				}
				
				def void setFrNmRemoteSleepIndTime(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmRemoteSleepIndTime"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmRemoteSleepIndTime"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigDecimal getFrNmRepeatMessageTime(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmRepeatMessageTime"].getBigDecimalValue()
				}
				
				def void setFrNmRepeatMessageTime(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmRepeatMessageTime"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmRepeatMessageTime"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def FrNmRepetitionCycle getFrNmRepetitionCycle(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmRepetitionCycle"].getFrNmRepetitionCycleValue()
				}
				
				def void setFrNmRepetitionCycle(FrNmRepetitionCycle value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmRepetitionCycle"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmRepetitionCycle"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
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
				
				def FrNmRepetitionCycle getFrNmRepetitionCycleValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "FRNM_CYCLE_VALUE_1" : FrNmRepetitionCycle.FRNM_CYCLE_VALUE_1
						case "FRNM_CYCLE_VALUE_16" : FrNmRepetitionCycle.FRNM_CYCLE_VALUE_16
						case "FRNM_CYCLE_VALUE_2" : FrNmRepetitionCycle.FRNM_CYCLE_VALUE_2
						case "FRNM_CYCLE_VALUE_32" : FrNmRepetitionCycle.FRNM_CYCLE_VALUE_32
						case "FRNM_CYCLE_VALUE_4" : FrNmRepetitionCycle.FRNM_CYCLE_VALUE_4
						case "FRNM_CYCLE_VALUE_64" : FrNmRepetitionCycle.FRNM_CYCLE_VALUE_64
						case "FRNM_CYCLE_VALUE_8" : FrNmRepetitionCycle.FRNM_CYCLE_VALUE_8
					}
				}
				
				def void setFrNmRepetitionCycleValue(GParameterValue parameterValue, FrNmRepetitionCycle value){
					parameterValue.setValue(value)
				}
				
				def Boolean getFrNmVoteInhibitionEnabled(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmVoteInhibitionEnabled"].getBooleanValue()
				}
				
				def void setFrNmVoteInhibitionEnabled(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmVoteInhibitionEnabled"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmVoteInhibitionEnabled"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				def FrNmVotingCycle getFrNmVotingCycle(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmVotingCycle"].getFrNmVotingCycleValue()
				}
				
				def void setFrNmVotingCycle(FrNmVotingCycle value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmVotingCycle"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmVotingCycle"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
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
				
				def FrNmVotingCycle getFrNmVotingCycleValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "FRNM_CYCLE_VALUE_1" : FrNmVotingCycle.FRNM_CYCLE_VALUE_1
						case "FRNM_CYCLE_VALUE_16" : FrNmVotingCycle.FRNM_CYCLE_VALUE_16
						case "FRNM_CYCLE_VALUE_2" : FrNmVotingCycle.FRNM_CYCLE_VALUE_2
						case "FRNM_CYCLE_VALUE_32" : FrNmVotingCycle.FRNM_CYCLE_VALUE_32
						case "FRNM_CYCLE_VALUE_4" : FrNmVotingCycle.FRNM_CYCLE_VALUE_4
						case "FRNM_CYCLE_VALUE_64" : FrNmVotingCycle.FRNM_CYCLE_VALUE_64
						case "FRNM_CYCLE_VALUE_8" : FrNmVotingCycle.FRNM_CYCLE_VALUE_8
					}
				}
				
				def void setFrNmVotingCycleValue(GParameterValue parameterValue, FrNmVotingCycle value){
					parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof FrNmGlobalConfig)){
				return false
			}
			this.target == (object as FrNmGlobalConfig).target
		}
	
		
		
		def FrNmGlobalFeatures getFrNmGlobalFeatures(){
			containerValue.getByType(typeof(FrNmGlobalFeatures))
		}
		
		def void setFrNmGlobalFeatures(FrNmGlobalFeatures frNmGlobalFeatures){
			val GContainer subContainer = frNmGlobalFeatures.getTarget()
			containerValue.setContainer(subContainer, "FrNmGlobalFeatures")
		}
		
		def FrNmGlobalProperties getFrNmGlobalProperties(){
			containerValue.getByType(typeof(FrNmGlobalProperties))
		}
		
		def void setFrNmGlobalProperties(FrNmGlobalProperties frNmGlobalProperties){
			val GContainer subContainer = frNmGlobalProperties.getTarget()
			containerValue.setContainer(subContainer, "FrNmGlobalProperties")
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof FrNmGlobalFeatures)){
					return false
				}
				this.target == (object as FrNmGlobalFeatures).target
			}
		
			def Boolean getFrNmBusSynchronizationEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmBusSynchronizationEnabled"].getBooleanValue()
			}
			
			def void setFrNmBusSynchronizationEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmBusSynchronizationEnabled"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmBusSynchronizationEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getFrNmComUserDataSupport(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmComUserDataSupport"].getBooleanValue()
			}
			
			def void setFrNmComUserDataSupport(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmComUserDataSupport"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmComUserDataSupport"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getFrNmControlBitVectorEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmControlBitVectorEnabled"].getBooleanValue()
			}
			
			def void setFrNmControlBitVectorEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmControlBitVectorEnabled"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmControlBitVectorEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getFrNmCoordinatorSyncSupport(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmCoordinatorSyncSupport"].getBooleanValue()
			}
			
			def void setFrNmCoordinatorSyncSupport(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmCoordinatorSyncSupport"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmCoordinatorSyncSupport"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getFrNmCycleCounterEmulation(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmCycleCounterEmulation"].getBooleanValue()
			}
			
			def void setFrNmCycleCounterEmulation(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmCycleCounterEmulation"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmCycleCounterEmulation"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getFrNmDualChannelPduEnable(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmDualChannelPduEnable"].getBooleanValue()
			}
			
			def void setFrNmDualChannelPduEnable(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmDualChannelPduEnable"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmDualChannelPduEnable"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getFrNmHwVoteEnable(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmHwVoteEnable"].getBooleanValue()
			}
			
			def void setFrNmHwVoteEnable(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmHwVoteEnable"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmHwVoteEnable"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getFrNmNodeDetectionEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmNodeDetectionEnabled"].getBooleanValue()
			}
			
			def void setFrNmNodeDetectionEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmNodeDetectionEnabled"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmNodeDetectionEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getFrNmPassiveModeEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPassiveModeEnabled"].getBooleanValue()
			}
			
			def void setFrNmPassiveModeEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPassiveModeEnabled"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmPassiveModeEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getFrNmPduRxIndicationEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPduRxIndicationEnabled"].getBooleanValue()
			}
			
			def void setFrNmPduRxIndicationEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPduRxIndicationEnabled"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmPduRxIndicationEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getFrNmPnEiraCalcEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPnEiraCalcEnabled"].getBooleanValue()
			}
			
			def void setFrNmPnEiraCalcEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPnEiraCalcEnabled"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmPnEiraCalcEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigDecimal getFrNmPnResetTime(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPnResetTime"].getBigDecimalValue()
			}
			
			def void setFrNmPnResetTime(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPnResetTime"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmPnResetTime"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getFrNmRemoteSleepIndicationEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmRemoteSleepIndicationEnabled"].getBooleanValue()
			}
			
			def void setFrNmRemoteSleepIndicationEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmRemoteSleepIndicationEnabled"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmRemoteSleepIndicationEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getFrNmSourceNodeIdentifierEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmSourceNodeIdentifierEnabled"].getBooleanValue()
			}
			
			def void setFrNmSourceNodeIdentifierEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmSourceNodeIdentifierEnabled"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmSourceNodeIdentifierEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getFrNmStateChangeIndicationEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmStateChangeIndicationEnabled"].getBooleanValue()
			}
			
			def void setFrNmStateChangeIndicationEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmStateChangeIndicationEnabled"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmStateChangeIndicationEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getFrNmUserDataEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmUserDataEnabled"].getBooleanValue()
			}
			
			def void setFrNmUserDataEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmUserDataEnabled"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmUserDataEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getFrNmVotingNextToLastRepetitionCycleDisable(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmVotingNextToLastRepetitionCycleDisable"].getBooleanValue()
			}
			
			def void setFrNmVotingNextToLastRepetitionCycleDisable(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmVotingNextToLastRepetitionCycleDisable"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmVotingNextToLastRepetitionCycleDisable"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			def org.artop.ecuc.autosar442.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getFrNmPnEiraRxNSduRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "FrNmPnEiraRxNSduRef")
			}
			
			def void setFrNmPnEiraRxNSduRef(org.artop.ecuc.autosar442.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FrNmPnEiraRxNSduRef"], object.getTarget())
				}
			}
			
			
			def FrNmPnInfo getFrNmPnInfo(){
				containerValue.getByType(typeof(FrNmPnInfo))
			}
			
			def void setFrNmPnInfo(FrNmPnInfo frNmPnInfo){
				val GContainer subContainer = frNmPnInfo.getTarget()
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof FrNmPnInfo)){
						return false
					}
					this.target == (object as FrNmPnInfo).target
				}
			
				def BigInteger getFrNmPnInfoLength(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPnInfoLength"].getBigIntegerValue()
				}
				
				def void setFrNmPnInfoLength(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPnInfoLength"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmPnInfoLength"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getFrNmPnInfoOffset(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPnInfoOffset"].getBigIntegerValue()
				}
				
				def void setFrNmPnInfoOffset(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPnInfoOffset"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmPnInfoOffset"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				def List<FrNmPnFilterMaskByte> getFrNmPnFilterMaskBytes(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "FrNmPnFilterMaskByte")
						}
					}
					return new BasicWrappingEList<FrNmPnFilterMaskByte, GContainer>(filteredContainers, typeof(FrNmPnFilterMaskByte), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar442.accessors.FrNm.FrNmGlobalConfig.FrNmGlobalFeatures.FrNmPnInfo.FrNmPnFilterMaskByte frNmPnFilterMaskByte) {
							frNmPnFilterMaskByte.target?.gSetDefinition(containerValue.getContainerDefinition("FrNmPnFilterMaskByte"))
							super.delegateAdd(frNmPnFilterMaskByte)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar442.accessors.FrNm.FrNmGlobalConfig.FrNmGlobalFeatures.FrNmPnInfo.FrNmPnFilterMaskByte frNmPnFilterMaskByte) {
							frNmPnFilterMaskByte.target?.gSetDefinition(containerValue.getContainerDefinition("FrNmPnFilterMaskByte"))
							super.delegateAdd(index, frNmPnFilterMaskByte)
						}
					}
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
				
					override def boolean equals(Object object) {
				        if (!(object instanceof FrNmPnFilterMaskByte)){
							return false
						}
						this.target == (object as FrNmPnFilterMaskByte).target
					}
				
					def BigInteger getFrNmPnFilterMaskByteIndex(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPnFilterMaskByteIndex"].getBigIntegerValue()
					}
					
					def void setFrNmPnFilterMaskByteIndex(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPnFilterMaskByteIndex"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmPnFilterMaskByteIndex"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getFrNmPnFilterMaskByteValue(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPnFilterMaskByteValue"].getBigIntegerValue()
					}
					
					def void setFrNmPnFilterMaskByteValue(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmPnFilterMaskByteValue"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmPnFilterMaskByteValue"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof FrNmGlobalProperties)){
					return false
				}
				this.target == (object as FrNmGlobalProperties).target
			}
		
			def Boolean getFrNmDevErrorDetect(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmDevErrorDetect"].getBooleanValue()
			}
			
			def void setFrNmDevErrorDetect(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmDevErrorDetect"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmDevErrorDetect"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getFrNmMainAcrossFrCycle(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmMainAcrossFrCycle"].getBooleanValue()
			}
			
			def void setFrNmMainAcrossFrCycle(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmMainAcrossFrCycle"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmMainAcrossFrCycle"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getFrNmVersionInfoApi(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmVersionInfoApi"].getBooleanValue()
			}
			
			def void setFrNmVersionInfoApi(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNmVersionInfoApi"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNmVersionInfoApi"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			
			
		}
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof FrNm)){
			return false
		}
		this.target == (object as FrNm).target
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
