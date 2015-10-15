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

class UdpNm implements IWrapper<GModuleConfiguration> {
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

	def UdpNmGlobalConfig getUdpNmGlobalConfig(){
		moduleConfiguration.getByType(typeof(UdpNmGlobalConfig))
	}

	def void setUdpNmGlobalConfig(UdpNmGlobalConfig udpNmGlobalConfig){
		val GContainer container = udpNmGlobalConfig.getTarget()
	    moduleConfiguration.setContainer(container, "UdpNmGlobalConfig")
	}

	static class UdpNmGlobalConfig implements IWrapper<GContainer> {
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
	        if (!(object instanceof UdpNmGlobalConfig)){
				return false
			}
			this.target == (object as UdpNmGlobalConfig).target
		}
	
		def Boolean getUdpNmBusSynchronizationEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmBusSynchronizationEnabled"].getBooleanValue()
		}
		
		def void setUdpNmBusSynchronizationEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmBusSynchronizationEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmBusSynchronizationEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getUdpNmCarWakeUpFilterEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmCarWakeUpFilterEnabled"].getBooleanValue()
		}
		
		def void setUdpNmCarWakeUpFilterEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmCarWakeUpFilterEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmCarWakeUpFilterEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getUdpNmCarWakeUpFilterNodeId(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmCarWakeUpFilterNodeId"].getBigIntegerValue()
		}
		
		def void setUdpNmCarWakeUpFilterNodeId(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmCarWakeUpFilterNodeId"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmCarWakeUpFilterNodeId"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getUdpNmCarWakeUpRxEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmCarWakeUpRxEnabled"].getBooleanValue()
		}
		
		def void setUdpNmCarWakeUpRxEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmCarWakeUpRxEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmCarWakeUpRxEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getUdpNmComControlEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmComControlEnabled"].getBooleanValue()
		}
		
		def void setUdpNmComControlEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmComControlEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmComControlEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getUdpNmComUserDataSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmComUserDataSupport"].getBooleanValue()
		}
		
		def void setUdpNmComUserDataSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmComUserDataSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmComUserDataSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getUdpNmCoordinatorEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmCoordinatorEnabled"].getBooleanValue()
		}
		
		def void setUdpNmCoordinatorEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmCoordinatorEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmCoordinatorEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getUdpNmCoordinatorId(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmCoordinatorId"].getBigIntegerValue()
		}
		
		def void setUdpNmCoordinatorId(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmCoordinatorId"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmCoordinatorId"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getUdpNmCoordinatorSyncSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmCoordinatorSyncSupport"].getBooleanValue()
		}
		
		def void setUdpNmCoordinatorSyncSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmCoordinatorSyncSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmCoordinatorSyncSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getUdpNmDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmDevErrorDetect"].getBooleanValue()
		}
		
		def void setUdpNmDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getUdpNmImmediateRestartEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmImmediateRestartEnabled"].getBooleanValue()
		}
		
		def void setUdpNmImmediateRestartEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmImmediateRestartEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmImmediateRestartEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getUdpNmNodeDetectionEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmNodeDetectionEnabled"].getBooleanValue()
		}
		
		def void setUdpNmNodeDetectionEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmNodeDetectionEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmNodeDetectionEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getUdpNmNodeIdEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmNodeIdEnabled"].getBooleanValue()
		}
		
		def void setUdpNmNodeIdEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmNodeIdEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmNodeIdEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getUdpNmNumberOfChannels(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmNumberOfChannels"].getBigIntegerValue()
		}
		
		def void setUdpNmNumberOfChannels(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmNumberOfChannels"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmNumberOfChannels"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getUdpNmPassiveModeEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmPassiveModeEnabled"].getBooleanValue()
		}
		
		def void setUdpNmPassiveModeEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmPassiveModeEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmPassiveModeEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getUdpNmPduRxIndicationEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmPduRxIndicationEnabled"].getBooleanValue()
		}
		
		def void setUdpNmPduRxIndicationEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmPduRxIndicationEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmPduRxIndicationEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getUdpNmPnEiraCalcEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmPnEiraCalcEnabled"].getBooleanValue()
		}
		
		def void setUdpNmPnEiraCalcEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmPnEiraCalcEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmPnEiraCalcEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getUdpNmPnResetTime(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmPnResetTime"].getBigDecimalValue()
		}
		
		def void setUdpNmPnResetTime(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmPnResetTime"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmPnResetTime"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getUdpNmRemoteSleepIndEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmRemoteSleepIndEnabled"].getBooleanValue()
		}
		
		def void setUdpNmRemoteSleepIndEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmRemoteSleepIndEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmRemoteSleepIndEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getUdpNmRepeatMsgIndEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmRepeatMsgIndEnabled"].getBooleanValue()
		}
		
		def void setUdpNmRepeatMsgIndEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmRepeatMsgIndEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmRepeatMsgIndEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getUdpNmStateChangeIndEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmStateChangeIndEnabled"].getBooleanValue()
		}
		
		def void setUdpNmStateChangeIndEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmStateChangeIndEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmStateChangeIndEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getUdpNmUserDataEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmUserDataEnabled"].getBooleanValue()
		}
		
		def void setUdpNmUserDataEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmUserDataEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmUserDataEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getUdpNmVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmVersionInfoApi"].getBooleanValue()
		}
		
		def void setUdpNmVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		def org.artop.ecuc.autosar422.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getUdpNmPnEiraRxNSduRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar422.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "UdpNmPnEiraRxNSduRef")
		}
		
		def void setUdpNmPnEiraRxNSduRef(org.artop.ecuc.autosar422.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "UdpNmPnEiraRxNSduRef"], object.getTarget())
			}
		}
		
		
		def List<UdpNmChannelConfig> getUdpNmChannelConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "UdpNmChannelConfig")
				}
			}
			return new BasicWrappingEList<UdpNmChannelConfig, GContainer>(filteredContainers, typeof(UdpNmChannelConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.UdpNm.UdpNmGlobalConfig.UdpNmChannelConfig udpNmChannelConfig) {
					udpNmChannelConfig.target?.gSetDefinition(containerValue.getContainerDefinition("UdpNmChannelConfig"))
					super.delegateAdd(udpNmChannelConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.UdpNm.UdpNmGlobalConfig.UdpNmChannelConfig udpNmChannelConfig) {
					udpNmChannelConfig.target?.gSetDefinition(containerValue.getContainerDefinition("UdpNmChannelConfig"))
					super.delegateAdd(index, udpNmChannelConfig)
				}
			}
		}
		
		def UdpNmDemEventParameterRefs getUdpNmDemEventParameterRefs(){
			containerValue.getByType(typeof(UdpNmDemEventParameterRefs))
		}
		
		def void setUdpNmDemEventParameterRefs(UdpNmDemEventParameterRefs udpNmDemEventParameterRefs){
			val GContainer subContainer = udpNmDemEventParameterRefs.getTarget()
			containerValue.setContainer(subContainer, "UdpNmDemEventParameterRefs")
		}
		
		def UdpNmPnInfo getUdpNmPnInfo(){
			containerValue.getByType(typeof(UdpNmPnInfo))
		}
		
		def void setUdpNmPnInfo(UdpNmPnInfo udpNmPnInfo){
			val GContainer subContainer = udpNmPnInfo.getTarget()
			containerValue.setContainer(subContainer, "UdpNmPnInfo")
		}
		
		
		static class UdpNmChannelConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof UdpNmChannelConfig)){
					return false
				}
				this.target == (object as UdpNmChannelConfig).target
			}
		
			def Boolean getUdpNmActiveWakeupBitEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmActiveWakeupBitEnabled"].getBooleanValue()
			}
			
			def void setUdpNmActiveWakeupBitEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmActiveWakeupBitEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmActiveWakeupBitEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getUdpNmImmediateNmTransmissions(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmImmediateNmTransmissions"].getBigIntegerValue()
			}
			
			def void setUdpNmImmediateNmTransmissions(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmImmediateNmTransmissions"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmImmediateNmTransmissions"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getUdpNmMainFunctionPeriod(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmMainFunctionPeriod"].getBigDecimalValue()
			}
			
			def void setUdpNmMainFunctionPeriod(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmMainFunctionPeriod"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmMainFunctionPeriod"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getUdpNmMsgCycleOffset(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmMsgCycleOffset"].getBigDecimalValue()
			}
			
			def void setUdpNmMsgCycleOffset(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmMsgCycleOffset"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmMsgCycleOffset"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getUdpNmMsgCycleTime(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmMsgCycleTime"].getBigDecimalValue()
			}
			
			def void setUdpNmMsgCycleTime(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmMsgCycleTime"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmMsgCycleTime"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getUdpNmMsgTimeoutTime(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmMsgTimeoutTime"].getBigDecimalValue()
			}
			
			def void setUdpNmMsgTimeoutTime(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmMsgTimeoutTime"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmMsgTimeoutTime"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getUdpNmNodeId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmNodeId"].getBigIntegerValue()
			}
			
			def void setUdpNmNodeId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmNodeId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmNodeId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def UdpNmPduCbvPosition getUdpNmPduCbvPosition(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmPduCbvPosition"].getUdpNmPduCbvPositionValue()
			}
			
			def void setUdpNmPduCbvPosition(UdpNmPduCbvPosition value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmPduCbvPosition"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmPduCbvPosition"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum UdpNmPduCbvPosition {
				UDPNM_PDU_BYTE_0, 
				UDPNM_PDU_BYTE_1, 
				UDPNM_PDU_OFF
			}
			
			def UdpNmPduCbvPosition getUdpNmPduCbvPositionValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "UDPNM_PDU_BYTE_0" : UdpNmPduCbvPosition.UDPNM_PDU_BYTE_0
					case "UDPNM_PDU_BYTE_1" : UdpNmPduCbvPosition.UDPNM_PDU_BYTE_1
					case "UDPNM_PDU_OFF" : UdpNmPduCbvPosition.UDPNM_PDU_OFF
				}
			}
			
			def void setUdpNmPduCbvPositionValue(GParameterValue parameterValue, UdpNmPduCbvPosition value){
				parameterValue.setValue(value)
			}
			
			def BigInteger getUdpNmPduLength(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmPduLength"].getBigIntegerValue()
			}
			
			def void setUdpNmPduLength(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmPduLength"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmPduLength"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def UdpNmPduNidPosition getUdpNmPduNidPosition(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmPduNidPosition"].getUdpNmPduNidPositionValue()
			}
			
			def void setUdpNmPduNidPosition(UdpNmPduNidPosition value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmPduNidPosition"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmPduNidPosition"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum UdpNmPduNidPosition {
				UDPNM_PDU_BYTE_0, 
				UDPNM_PDU_BYTE_1, 
				UDPNM_PDU_OFF
			}
			
			def UdpNmPduNidPosition getUdpNmPduNidPositionValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "UDPNM_PDU_BYTE_0" : UdpNmPduNidPosition.UDPNM_PDU_BYTE_0
					case "UDPNM_PDU_BYTE_1" : UdpNmPduNidPosition.UDPNM_PDU_BYTE_1
					case "UDPNM_PDU_OFF" : UdpNmPduNidPosition.UDPNM_PDU_OFF
				}
			}
			
			def void setUdpNmPduNidPositionValue(GParameterValue parameterValue, UdpNmPduNidPosition value){
				parameterValue.setValue(value)
			}
			
			def Boolean getUdpNmPnEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmPnEnabled"].getBooleanValue()
			}
			
			def void setUdpNmPnEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmPnEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmPnEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getUdpNmPnEraCalcEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmPnEraCalcEnabled"].getBooleanValue()
			}
			
			def void setUdpNmPnEraCalcEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmPnEraCalcEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmPnEraCalcEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getUdpNmPnHandleMultipleNetworkRequests(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmPnHandleMultipleNetworkRequests"].getBooleanValue()
			}
			
			def void setUdpNmPnHandleMultipleNetworkRequests(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmPnHandleMultipleNetworkRequests"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmPnHandleMultipleNetworkRequests"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigDecimal getUdpNmRemoteSleepIndTime(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmRemoteSleepIndTime"].getBigDecimalValue()
			}
			
			def void setUdpNmRemoteSleepIndTime(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmRemoteSleepIndTime"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmRemoteSleepIndTime"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getUdpNmRepeatMessageTime(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmRepeatMessageTime"].getBigDecimalValue()
			}
			
			def void setUdpNmRepeatMessageTime(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmRepeatMessageTime"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmRepeatMessageTime"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getUdpNmTimeoutTime(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmTimeoutTime"].getBigDecimalValue()
			}
			
			def void setUdpNmTimeoutTime(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmTimeoutTime"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmTimeoutTime"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getUdpNmWaitBusSleepTime(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmWaitBusSleepTime"].getBigDecimalValue()
			}
			
			def void setUdpNmWaitBusSleepTime(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmWaitBusSleepTime"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmWaitBusSleepTime"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar422.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getUdpNmPnEraRxNSduRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar422.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "UdpNmPnEraRxNSduRef")
			}
			
			def void setUdpNmPnEraRxNSduRef(org.artop.ecuc.autosar422.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "UdpNmPnEraRxNSduRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar422.accessors.ComM.ComMConfigSet.ComMChannel getUdpNmComMNetworkHandleRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar422.accessors.ComM.ComMConfigSet.ComMChannel), "UdpNmComMNetworkHandleRef")
			}
			
			def void setUdpNmComMNetworkHandleRef(org.artop.ecuc.autosar422.accessors.ComM.ComMConfigSet.ComMChannel object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "UdpNmComMNetworkHandleRef"], object.getTarget())
				}
			}
			
			
			def List<UdpNmRxPdu> getUdpNmRxPdus(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "UdpNmRxPdu")
					}
				}
				return new BasicWrappingEList<UdpNmRxPdu, GContainer>(filteredContainers, typeof(UdpNmRxPdu), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar422.accessors.UdpNm.UdpNmGlobalConfig.UdpNmChannelConfig.UdpNmRxPdu udpNmRxPdu) {
						udpNmRxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("UdpNmRxPdu"))
						super.delegateAdd(udpNmRxPdu)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.UdpNm.UdpNmGlobalConfig.UdpNmChannelConfig.UdpNmRxPdu udpNmRxPdu) {
						udpNmRxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("UdpNmRxPdu"))
						super.delegateAdd(index, udpNmRxPdu)
					}
				}
			}
			
			def UdpNmTxPdu getUdpNmTxPdu(){
				containerValue.getByType(typeof(UdpNmTxPdu))
			}
			
			def void setUdpNmTxPdu(UdpNmTxPdu udpNmTxPdu){
				val GContainer subContainer = udpNmTxPdu.getTarget()
				containerValue.setContainer(subContainer, "UdpNmTxPdu")
			}
			
			def UdpNmUserDataTxPdu getUdpNmUserDataTxPdu(){
				containerValue.getByType(typeof(UdpNmUserDataTxPdu))
			}
			
			def void setUdpNmUserDataTxPdu(UdpNmUserDataTxPdu udpNmUserDataTxPdu){
				val GContainer subContainer = udpNmUserDataTxPdu.getTarget()
				containerValue.setContainer(subContainer, "UdpNmUserDataTxPdu")
			}
			
			
			static class UdpNmRxPdu implements IWrapper<GContainer> {
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
			        if (!(object instanceof UdpNmRxPdu)){
						return false
					}
					this.target == (object as UdpNmRxPdu).target
				}
			
				def BigInteger getUdpNmRxPduId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmRxPduId"].getBigIntegerValue()
				}
				
				def void setUdpNmRxPduId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmRxPduId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmRxPduId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar422.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getUdpNmRxPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar422.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "UdpNmRxPduRef")
				}
				
				def void setUdpNmRxPduRef(org.artop.ecuc.autosar422.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "UdpNmRxPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class UdpNmTxPdu implements IWrapper<GContainer> {
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
			        if (!(object instanceof UdpNmTxPdu)){
						return false
					}
					this.target == (object as UdpNmTxPdu).target
				}
			
				def BigInteger getUdpNmTxConfirmationPduId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmTxConfirmationPduId"].getBigIntegerValue()
				}
				
				def void setUdpNmTxConfirmationPduId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmTxConfirmationPduId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmTxConfirmationPduId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar422.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getUdpNmTxPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar422.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "UdpNmTxPduRef")
				}
				
				def void setUdpNmTxPduRef(org.artop.ecuc.autosar422.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "UdpNmTxPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class UdpNmUserDataTxPdu implements IWrapper<GContainer> {
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
			        if (!(object instanceof UdpNmUserDataTxPdu)){
						return false
					}
					this.target == (object as UdpNmUserDataTxPdu).target
				}
			
				def BigInteger getUdpNmTxUserDataPduId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmTxUserDataPduId"].getBigIntegerValue()
				}
				
				def void setUdpNmTxUserDataPduId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmTxUserDataPduId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmTxUserDataPduId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar422.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getUdpNmTxUserDataPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar422.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "UdpNmTxUserDataPduRef")
				}
				
				def void setUdpNmTxUserDataPduRef(org.artop.ecuc.autosar422.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "UdpNmTxUserDataPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class UdpNmDemEventParameterRefs implements IWrapper<GContainer> {
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
		        if (!(object instanceof UdpNmDemEventParameterRefs)){
					return false
				}
				this.target == (object as UdpNmDemEventParameterRefs).target
			}
		
			
			def org.artop.ecuc.autosar422.accessors.Dem.DemConfigSet.DemEventParameter getUDPNM_E_NETWORK_TIMEOUT(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar422.accessors.Dem.DemConfigSet.DemEventParameter), "UDPNM_E_NETWORK_TIMEOUT")
			}
			
			def void setUDPNM_E_NETWORK_TIMEOUT(org.artop.ecuc.autosar422.accessors.Dem.DemConfigSet.DemEventParameter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "UDPNM_E_NETWORK_TIMEOUT"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar422.accessors.Dem.DemConfigSet.DemEventParameter getUDPNM_E_TCPIP_TRANSMIT_ERROR(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar422.accessors.Dem.DemConfigSet.DemEventParameter), "UDPNM_E_TCPIP_TRANSMIT_ERROR")
			}
			
			def void setUDPNM_E_TCPIP_TRANSMIT_ERROR(org.artop.ecuc.autosar422.accessors.Dem.DemConfigSet.DemEventParameter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "UDPNM_E_TCPIP_TRANSMIT_ERROR"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class UdpNmPnInfo implements IWrapper<GContainer> {
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
		        if (!(object instanceof UdpNmPnInfo)){
					return false
				}
				this.target == (object as UdpNmPnInfo).target
			}
		
			def BigInteger getUdpNmPnInfoLength(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmPnInfoLength"].getBigIntegerValue()
			}
			
			def void setUdpNmPnInfoLength(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmPnInfoLength"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmPnInfoLength"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getUdpNmPnInfoOffset(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmPnInfoOffset"].getBigIntegerValue()
			}
			
			def void setUdpNmPnInfoOffset(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmPnInfoOffset"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmPnInfoOffset"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			def List<UdpNmPnFilterMaskByte> getUdpNmPnFilterMaskBytes(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "UdpNmPnFilterMaskByte")
					}
				}
				return new BasicWrappingEList<UdpNmPnFilterMaskByte, GContainer>(filteredContainers, typeof(UdpNmPnFilterMaskByte), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar422.accessors.UdpNm.UdpNmGlobalConfig.UdpNmPnInfo.UdpNmPnFilterMaskByte udpNmPnFilterMaskByte) {
						udpNmPnFilterMaskByte.target?.gSetDefinition(containerValue.getContainerDefinition("UdpNmPnFilterMaskByte"))
						super.delegateAdd(udpNmPnFilterMaskByte)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.UdpNm.UdpNmGlobalConfig.UdpNmPnInfo.UdpNmPnFilterMaskByte udpNmPnFilterMaskByte) {
						udpNmPnFilterMaskByte.target?.gSetDefinition(containerValue.getContainerDefinition("UdpNmPnFilterMaskByte"))
						super.delegateAdd(index, udpNmPnFilterMaskByte)
					}
				}
			}
			
			
			static class UdpNmPnFilterMaskByte implements IWrapper<GContainer> {
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
			        if (!(object instanceof UdpNmPnFilterMaskByte)){
						return false
					}
					this.target == (object as UdpNmPnFilterMaskByte).target
				}
			
				def BigInteger getUdpNmPnFilterMaskByteIndex(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmPnFilterMaskByteIndex"].getBigIntegerValue()
				}
				
				def void setUdpNmPnFilterMaskByteIndex(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmPnFilterMaskByteIndex"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmPnFilterMaskByteIndex"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getUdpNmPnFilterMaskByteValue(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmPnFilterMaskByteValue"].getBigIntegerValue()
				}
				
				def void setUdpNmPnFilterMaskByteValue(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "UdpNmPnFilterMaskByteValue"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "UdpNmPnFilterMaskByteValue"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
		}
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof UdpNm)){
			return false
		}
		this.target == (object as UdpNm).target
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
