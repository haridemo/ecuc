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

class CanNm implements IWrapper<GModuleConfiguration> {
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

	def CanNmGlobalConfig getCanNmGlobalConfig(){
		moduleConfiguration.getByType(typeof(CanNmGlobalConfig))
	}

	def void setCanNmGlobalConfig(CanNmGlobalConfig canNmGlobalConfig){
		val GContainer container = canNmGlobalConfig.getTarget()
	    moduleConfiguration.setContainer(container, "CanNmGlobalConfig")
	}

	static class CanNmGlobalConfig implements IWrapper<GContainer> {
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
	        if (!(object instanceof CanNmGlobalConfig)){
				return false
			}
			this.target == (object as CanNmGlobalConfig).target
		}
	
		def Boolean getCanNmBusLoadReductionEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmBusLoadReductionEnabled"].getBooleanValue()
		}
		
		def void setCanNmBusLoadReductionEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmBusLoadReductionEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmBusLoadReductionEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanNmBusSynchronizationEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmBusSynchronizationEnabled"].getBooleanValue()
		}
		
		def void setCanNmBusSynchronizationEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmBusSynchronizationEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmBusSynchronizationEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanNmComControlEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmComControlEnabled"].getBooleanValue()
		}
		
		def void setCanNmComControlEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmComControlEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmComControlEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanNmComUserDataSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmComUserDataSupport"].getBooleanValue()
		}
		
		def void setCanNmComUserDataSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmComUserDataSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmComUserDataSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanNmCoordinatorSyncSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmCoordinatorSyncSupport"].getBooleanValue()
		}
		
		def void setCanNmCoordinatorSyncSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmCoordinatorSyncSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmCoordinatorSyncSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanNmDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmDevErrorDetect"].getBooleanValue()
		}
		
		def void setCanNmDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanNmImmediateRestartEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmImmediateRestartEnabled"].getBooleanValue()
		}
		
		def void setCanNmImmediateRestartEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmImmediateRestartEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmImmediateRestartEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanNmImmediateTxconfEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmImmediateTxconfEnabled"].getBooleanValue()
		}
		
		def void setCanNmImmediateTxconfEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmImmediateTxconfEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmImmediateTxconfEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getCanNmMainFunctionPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmMainFunctionPeriod"].getBigDecimalValue()
		}
		
		def void setCanNmMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmMainFunctionPeriod"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmMainFunctionPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getCanNmNodeDetectionEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmNodeDetectionEnabled"].getBooleanValue()
		}
		
		def void setCanNmNodeDetectionEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmNodeDetectionEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmNodeDetectionEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanNmNodeIdEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmNodeIdEnabled"].getBooleanValue()
		}
		
		def void setCanNmNodeIdEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmNodeIdEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmNodeIdEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanNmPassiveModeEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmPassiveModeEnabled"].getBooleanValue()
		}
		
		def void setCanNmPassiveModeEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmPassiveModeEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmPassiveModeEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanNmPduRxIndicationEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmPduRxIndicationEnabled"].getBooleanValue()
		}
		
		def void setCanNmPduRxIndicationEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmPduRxIndicationEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmPduRxIndicationEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanNmPnEiraCalcEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmPnEiraCalcEnabled"].getBooleanValue()
		}
		
		def void setCanNmPnEiraCalcEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmPnEiraCalcEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmPnEiraCalcEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getCanNmPnResetTime(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmPnResetTime"].getBigDecimalValue()
		}
		
		def void setCanNmPnResetTime(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmPnResetTime"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmPnResetTime"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getCanNmRemoteSleepIndEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmRemoteSleepIndEnabled"].getBooleanValue()
		}
		
		def void setCanNmRemoteSleepIndEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmRemoteSleepIndEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmRemoteSleepIndEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanNmRepeatMsgIndEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmRepeatMsgIndEnabled"].getBooleanValue()
		}
		
		def void setCanNmRepeatMsgIndEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmRepeatMsgIndEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmRepeatMsgIndEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanNmStateChangeIndEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmStateChangeIndEnabled"].getBooleanValue()
		}
		
		def void setCanNmStateChangeIndEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmStateChangeIndEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmStateChangeIndEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanNmUserDataEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmUserDataEnabled"].getBooleanValue()
		}
		
		def void setCanNmUserDataEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmUserDataEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmUserDataEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanNmVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmVersionInfoApi"].getBooleanValue()
		}
		
		def void setCanNmVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCanNmPnEiraRxNSduRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CanNmPnEiraRxNSduRef")
		}
		
		def void setCanNmPnEiraRxNSduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanNmPnEiraRxNSduRef"], object.getTarget())
			}
		}
		
		
		def List<CanNmChannelConfig> getCanNmChannelConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CanNmChannelConfig")
				}
			}
			return new BasicWrappingEList<CanNmChannelConfig, GContainer>(filteredContainers, typeof(CanNmChannelConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.CanNm.CanNmGlobalConfig.CanNmChannelConfig canNmChannelConfig) {
					canNmChannelConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CanNmChannelConfig"))
					super.delegateAdd(canNmChannelConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.CanNm.CanNmGlobalConfig.CanNmChannelConfig canNmChannelConfig) {
					canNmChannelConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CanNmChannelConfig"))
					super.delegateAdd(index, canNmChannelConfig)
				}
			}
		}
		
		def CanNmPnInfo getCanNmPnInfo(){
			containerValue.getByType(typeof(CanNmPnInfo))
		}
		
		def void setCanNmPnInfo(CanNmPnInfo canNmPnInfo){
			val GContainer subContainer = canNmPnInfo.getTarget()
			containerValue.setContainer(subContainer, "CanNmPnInfo")
		}
		
		
		static class CanNmChannelConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof CanNmChannelConfig)){
					return false
				}
				this.target == (object as CanNmChannelConfig).target
			}
		
			def Boolean getCanNmActiveWakeupBitEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmActiveWakeupBitEnabled"].getBooleanValue()
			}
			
			def void setCanNmActiveWakeupBitEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmActiveWakeupBitEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmActiveWakeupBitEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getCanNmAllNmMessagesKeepAwake(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmAllNmMessagesKeepAwake"].getBooleanValue()
			}
			
			def void setCanNmAllNmMessagesKeepAwake(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmAllNmMessagesKeepAwake"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmAllNmMessagesKeepAwake"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getCanNmBusLoadReductionActive(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmBusLoadReductionActive"].getBooleanValue()
			}
			
			def void setCanNmBusLoadReductionActive(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmBusLoadReductionActive"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmBusLoadReductionActive"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getCanNmCarWakeUpBitPosition(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmCarWakeUpBitPosition"].getBigIntegerValue()
			}
			
			def void setCanNmCarWakeUpBitPosition(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmCarWakeUpBitPosition"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmCarWakeUpBitPosition"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getCanNmCarWakeUpBytePosition(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmCarWakeUpBytePosition"].getBigIntegerValue()
			}
			
			def void setCanNmCarWakeUpBytePosition(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmCarWakeUpBytePosition"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmCarWakeUpBytePosition"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getCanNmCarWakeUpFilterEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmCarWakeUpFilterEnabled"].getBooleanValue()
			}
			
			def void setCanNmCarWakeUpFilterEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmCarWakeUpFilterEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmCarWakeUpFilterEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getCanNmCarWakeUpFilterNodeId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmCarWakeUpFilterNodeId"].getBigIntegerValue()
			}
			
			def void setCanNmCarWakeUpFilterNodeId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmCarWakeUpFilterNodeId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmCarWakeUpFilterNodeId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getCanNmCarWakeUpRxEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmCarWakeUpRxEnabled"].getBooleanValue()
			}
			
			def void setCanNmCarWakeUpRxEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmCarWakeUpRxEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmCarWakeUpRxEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigDecimal getCanNmImmediateNmCycleTime(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmImmediateNmCycleTime"].getBigDecimalValue()
			}
			
			def void setCanNmImmediateNmCycleTime(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmImmediateNmCycleTime"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmImmediateNmCycleTime"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getCanNmImmediateNmTransmissions(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmImmediateNmTransmissions"].getBigIntegerValue()
			}
			
			def void setCanNmImmediateNmTransmissions(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmImmediateNmTransmissions"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmImmediateNmTransmissions"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getCanNmMsgCycleOffset(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmMsgCycleOffset"].getBigDecimalValue()
			}
			
			def void setCanNmMsgCycleOffset(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmMsgCycleOffset"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmMsgCycleOffset"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getCanNmMsgCycleTime(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmMsgCycleTime"].getBigDecimalValue()
			}
			
			def void setCanNmMsgCycleTime(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmMsgCycleTime"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmMsgCycleTime"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getCanNmMsgReducedTime(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmMsgReducedTime"].getBigDecimalValue()
			}
			
			def void setCanNmMsgReducedTime(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmMsgReducedTime"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmMsgReducedTime"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getCanNmMsgTimeoutTime(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmMsgTimeoutTime"].getBigDecimalValue()
			}
			
			def void setCanNmMsgTimeoutTime(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmMsgTimeoutTime"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmMsgTimeoutTime"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getCanNmNodeId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmNodeId"].getBigIntegerValue()
			}
			
			def void setCanNmNodeId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmNodeId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmNodeId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def CanNmPduCbvPosition getCanNmPduCbvPosition(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmPduCbvPosition"].getCanNmPduCbvPositionValue()
			}
			
			def void setCanNmPduCbvPosition(CanNmPduCbvPosition value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmPduCbvPosition"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmPduCbvPosition"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum CanNmPduCbvPosition {
				CANNM_PDU_BYTE_0, 
				CANNM_PDU_BYTE_1, 
				CANNM_PDU_OFF
			}
			
			def CanNmPduCbvPosition getCanNmPduCbvPositionValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "CANNM_PDU_BYTE_0" : CanNmPduCbvPosition.CANNM_PDU_BYTE_0
					case "CANNM_PDU_BYTE_1" : CanNmPduCbvPosition.CANNM_PDU_BYTE_1
					case "CANNM_PDU_OFF" : CanNmPduCbvPosition.CANNM_PDU_OFF
				}
			}
			
			def void setCanNmPduCbvPositionValue(GParameterValue parameterValue, CanNmPduCbvPosition value){
				parameterValue.setValue(value)
			}
			
			def CanNmPduNidPosition getCanNmPduNidPosition(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmPduNidPosition"].getCanNmPduNidPositionValue()
			}
			
			def void setCanNmPduNidPosition(CanNmPduNidPosition value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmPduNidPosition"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmPduNidPosition"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum CanNmPduNidPosition {
				CANNM_PDU_BYTE_0, 
				CANNM_PDU_BYTE_1, 
				CANNM_PDU_OFF
			}
			
			def CanNmPduNidPosition getCanNmPduNidPositionValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "CANNM_PDU_BYTE_0" : CanNmPduNidPosition.CANNM_PDU_BYTE_0
					case "CANNM_PDU_BYTE_1" : CanNmPduNidPosition.CANNM_PDU_BYTE_1
					case "CANNM_PDU_OFF" : CanNmPduNidPosition.CANNM_PDU_OFF
				}
			}
			
			def void setCanNmPduNidPositionValue(GParameterValue parameterValue, CanNmPduNidPosition value){
				parameterValue.setValue(value)
			}
			
			def Boolean getCanNmPnEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmPnEnabled"].getBooleanValue()
			}
			
			def void setCanNmPnEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmPnEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmPnEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getCanNmPnEraCalcEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmPnEraCalcEnabled"].getBooleanValue()
			}
			
			def void setCanNmPnEraCalcEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmPnEraCalcEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmPnEraCalcEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getCanNmPnHandleMultipleNetworkRequests(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmPnHandleMultipleNetworkRequests"].getBooleanValue()
			}
			
			def void setCanNmPnHandleMultipleNetworkRequests(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmPnHandleMultipleNetworkRequests"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmPnHandleMultipleNetworkRequests"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigDecimal getCanNmRemoteSleepIndTime(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmRemoteSleepIndTime"].getBigDecimalValue()
			}
			
			def void setCanNmRemoteSleepIndTime(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmRemoteSleepIndTime"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmRemoteSleepIndTime"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getCanNmRepeatMessageTime(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmRepeatMessageTime"].getBigDecimalValue()
			}
			
			def void setCanNmRepeatMessageTime(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmRepeatMessageTime"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmRepeatMessageTime"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getCanNmRetryFirstMessageRequest(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmRetryFirstMessageRequest"].getBooleanValue()
			}
			
			def void setCanNmRetryFirstMessageRequest(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmRetryFirstMessageRequest"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmRetryFirstMessageRequest"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigDecimal getCanNmTimeoutTime(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmTimeoutTime"].getBigDecimalValue()
			}
			
			def void setCanNmTimeoutTime(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmTimeoutTime"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmTimeoutTime"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getCanNmWaitBusSleepTime(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmWaitBusSleepTime"].getBigDecimalValue()
			}
			
			def void setCanNmWaitBusSleepTime(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmWaitBusSleepTime"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmWaitBusSleepTime"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCanNmPnEraRxNSduRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CanNmPnEraRxNSduRef")
			}
			
			def void setCanNmPnEraRxNSduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanNmPnEraRxNSduRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel getCanNmComMNetworkHandleRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel), "CanNmComMNetworkHandleRef")
			}
			
			def void setCanNmComMNetworkHandleRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanNmComMNetworkHandleRef"], object.getTarget())
				}
			}
			
			
			def List<CanNmRxPdu> getCanNmRxPdus(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CanNmRxPdu")
					}
				}
				return new BasicWrappingEList<CanNmRxPdu, GContainer>(filteredContainers, typeof(CanNmRxPdu), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.CanNm.CanNmGlobalConfig.CanNmChannelConfig.CanNmRxPdu canNmRxPdu) {
						canNmRxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("CanNmRxPdu"))
						super.delegateAdd(canNmRxPdu)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.CanNm.CanNmGlobalConfig.CanNmChannelConfig.CanNmRxPdu canNmRxPdu) {
						canNmRxPdu.target?.gSetDefinition(containerValue.getContainerDefinition("CanNmRxPdu"))
						super.delegateAdd(index, canNmRxPdu)
					}
				}
			}
			
			def CanNmTxPdu getCanNmTxPdu(){
				containerValue.getByType(typeof(CanNmTxPdu))
			}
			
			def void setCanNmTxPdu(CanNmTxPdu canNmTxPdu){
				val GContainer subContainer = canNmTxPdu.getTarget()
				containerValue.setContainer(subContainer, "CanNmTxPdu")
			}
			
			def CanNmUserDataTxPdu getCanNmUserDataTxPdu(){
				containerValue.getByType(typeof(CanNmUserDataTxPdu))
			}
			
			def void setCanNmUserDataTxPdu(CanNmUserDataTxPdu canNmUserDataTxPdu){
				val GContainer subContainer = canNmUserDataTxPdu.getTarget()
				containerValue.setContainer(subContainer, "CanNmUserDataTxPdu")
			}
			
			
			static class CanNmRxPdu implements IWrapper<GContainer> {
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
			        if (!(object instanceof CanNmRxPdu)){
						return false
					}
					this.target == (object as CanNmRxPdu).target
				}
			
				def BigInteger getCanNmRxPduId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmRxPduId"].getBigIntegerValue()
				}
				
				def void setCanNmRxPduId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmRxPduId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmRxPduId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCanNmRxPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CanNmRxPduRef")
				}
				
				def void setCanNmRxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanNmRxPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class CanNmTxPdu implements IWrapper<GContainer> {
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
			        if (!(object instanceof CanNmTxPdu)){
						return false
					}
					this.target == (object as CanNmTxPdu).target
				}
			
				def BigInteger getCanNmTxConfirmationPduId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmTxConfirmationPduId"].getBigIntegerValue()
				}
				
				def void setCanNmTxConfirmationPduId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmTxConfirmationPduId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmTxConfirmationPduId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCanNmTxPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CanNmTxPduRef")
				}
				
				def void setCanNmTxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanNmTxPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class CanNmUserDataTxPdu implements IWrapper<GContainer> {
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
			        if (!(object instanceof CanNmUserDataTxPdu)){
						return false
					}
					this.target == (object as CanNmUserDataTxPdu).target
				}
			
				def BigInteger getCanNmTxUserDataPduId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmTxUserDataPduId"].getBigIntegerValue()
				}
				
				def void setCanNmTxUserDataPduId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmTxUserDataPduId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmTxUserDataPduId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getCanNmTxUserDataPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "CanNmTxUserDataPduRef")
				}
				
				def void setCanNmTxUserDataPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanNmTxUserDataPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class CanNmPnInfo implements IWrapper<GContainer> {
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
		        if (!(object instanceof CanNmPnInfo)){
					return false
				}
				this.target == (object as CanNmPnInfo).target
			}
		
			def BigInteger getCanNmPnInfoLength(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmPnInfoLength"].getBigIntegerValue()
			}
			
			def void setCanNmPnInfoLength(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmPnInfoLength"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmPnInfoLength"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getCanNmPnInfoOffset(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmPnInfoOffset"].getBigIntegerValue()
			}
			
			def void setCanNmPnInfoOffset(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmPnInfoOffset"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmPnInfoOffset"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			def List<CanNmPnFilterMaskByte> getCanNmPnFilterMaskBytes(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CanNmPnFilterMaskByte")
					}
				}
				return new BasicWrappingEList<CanNmPnFilterMaskByte, GContainer>(filteredContainers, typeof(CanNmPnFilterMaskByte), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.CanNm.CanNmGlobalConfig.CanNmPnInfo.CanNmPnFilterMaskByte canNmPnFilterMaskByte) {
						canNmPnFilterMaskByte.target?.gSetDefinition(containerValue.getContainerDefinition("CanNmPnFilterMaskByte"))
						super.delegateAdd(canNmPnFilterMaskByte)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.CanNm.CanNmGlobalConfig.CanNmPnInfo.CanNmPnFilterMaskByte canNmPnFilterMaskByte) {
						canNmPnFilterMaskByte.target?.gSetDefinition(containerValue.getContainerDefinition("CanNmPnFilterMaskByte"))
						super.delegateAdd(index, canNmPnFilterMaskByte)
					}
				}
			}
			
			
			static class CanNmPnFilterMaskByte implements IWrapper<GContainer> {
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
			        if (!(object instanceof CanNmPnFilterMaskByte)){
						return false
					}
					this.target == (object as CanNmPnFilterMaskByte).target
				}
			
				def BigInteger getCanNmPnFilterMaskByteIndex(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmPnFilterMaskByteIndex"].getBigIntegerValue()
				}
				
				def void setCanNmPnFilterMaskByteIndex(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmPnFilterMaskByteIndex"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmPnFilterMaskByteIndex"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getCanNmPnFilterMaskByteValue(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmPnFilterMaskByteValue"].getBigIntegerValue()
				}
				
				def void setCanNmPnFilterMaskByteValue(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanNmPnFilterMaskByteValue"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanNmPnFilterMaskByteValue"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
		}
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof CanNm)){
			return false
		}
		this.target == (object as CanNm).target
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
