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

class CanSM implements IWrapper<GModuleConfiguration> {
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

	def CanSMConfiguration getCanSMConfiguration(){
		moduleConfiguration.getByType(typeof(CanSMConfiguration))
	}

	def void setCanSMConfiguration(CanSMConfiguration canSMConfiguration){
		val GContainer container = canSMConfiguration.getTarget()
	    moduleConfiguration.setContainer(container, "CanSMConfiguration")
	}
	def CanSMGeneral getCanSMGeneral(){
		moduleConfiguration.getByType(typeof(CanSMGeneral))
	}

	def void setCanSMGeneral(CanSMGeneral canSMGeneral){
		val GContainer container = canSMGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "CanSMGeneral")
	}

	static class CanSMConfiguration implements IWrapper<GContainer> {
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
	        if (!(object instanceof CanSMConfiguration)){
				return false
			}
			this.target == (object as CanSMConfiguration).target
		}
	
		def BigInteger getCanSMModeRequestRepetitionMax(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSMModeRequestRepetitionMax"].getBigIntegerValue()
		}
		
		def void setCanSMModeRequestRepetitionMax(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSMModeRequestRepetitionMax"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanSMModeRequestRepetitionMax"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getCanSMModeRequestRepetitionTime(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSMModeRequestRepetitionTime"].getBigDecimalValue()
		}
		
		def void setCanSMModeRequestRepetitionTime(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSMModeRequestRepetitionTime"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanSMModeRequestRepetitionTime"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<CanSMManagerNetwork> getCanSMManagerNetworks(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CanSMManagerNetwork")
				}
			}
			return new BasicWrappingEList<CanSMManagerNetwork, GContainer>(filteredContainers, typeof(CanSMManagerNetwork), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.CanSM.CanSMConfiguration.CanSMManagerNetwork canSMManagerNetwork) {
					canSMManagerNetwork.target?.gSetDefinition(containerValue.getContainerDefinition("CanSMManagerNetwork"))
					super.delegateAdd(canSMManagerNetwork)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.CanSM.CanSMConfiguration.CanSMManagerNetwork canSMManagerNetwork) {
					canSMManagerNetwork.target?.gSetDefinition(containerValue.getContainerDefinition("CanSMManagerNetwork"))
					super.delegateAdd(index, canSMManagerNetwork)
				}
			}
		}
		
		
		static class CanSMManagerNetwork implements IWrapper<GContainer> {
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
		        if (!(object instanceof CanSMManagerNetwork)){
					return false
				}
				this.target == (object as CanSMManagerNetwork).target
			}
		
			def BigInteger getCanSMBorCounterL1ToL2(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSMBorCounterL1ToL2"].getBigIntegerValue()
			}
			
			def void setCanSMBorCounterL1ToL2(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSMBorCounterL1ToL2"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanSMBorCounterL1ToL2"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getCanSMBorTimeL1(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSMBorTimeL1"].getBigDecimalValue()
			}
			
			def void setCanSMBorTimeL1(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSMBorTimeL1"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanSMBorTimeL1"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getCanSMBorTimeL2(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSMBorTimeL2"].getBigDecimalValue()
			}
			
			def void setCanSMBorTimeL2(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSMBorTimeL2"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanSMBorTimeL2"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getCanSMBorTimeTxEnsured(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSMBorTimeTxEnsured"].getBigDecimalValue()
			}
			
			def void setCanSMBorTimeTxEnsured(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSMBorTimeTxEnsured"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanSMBorTimeTxEnsured"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getCanSMBorTxConfirmationPolling(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSMBorTxConfirmationPolling"].getBooleanValue()
			}
			
			def void setCanSMBorTxConfirmationPolling(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSMBorTxConfirmationPolling"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanSMBorTxConfirmationPolling"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getCanSMEnableBusOffDelay(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSMEnableBusOffDelay"].getBooleanValue()
			}
			
			def void setCanSMEnableBusOffDelay(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSMEnableBusOffDelay"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanSMEnableBusOffDelay"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel getCanSMComMNetworkHandleRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel), "CanSMComMNetworkHandleRef")
			}
			
			def void setCanSMComMNetworkHandleRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanSMComMNetworkHandleRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.CanIf.CanIfTrcvDrvCfg.CanIfTrcvCfg getCanSMTransceiverId(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.CanIf.CanIfTrcvDrvCfg.CanIfTrcvCfg), "CanSMTransceiverId")
			}
			
			def void setCanSMTransceiverId(org.artop.ecuc.autosar421.accessors.CanIf.CanIfTrcvDrvCfg.CanIfTrcvCfg object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanSMTransceiverId"], object.getTarget())
				}
			}
			
			
			def List<CanSMController> getCanSMControllers(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "CanSMController")
					}
				}
				return new BasicWrappingEList<CanSMController, GContainer>(filteredContainers, typeof(CanSMController), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.CanSM.CanSMConfiguration.CanSMManagerNetwork.CanSMController canSMController) {
						canSMController.target?.gSetDefinition(containerValue.getContainerDefinition("CanSMController"))
						super.delegateAdd(canSMController)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.CanSM.CanSMConfiguration.CanSMManagerNetwork.CanSMController canSMController) {
						canSMController.target?.gSetDefinition(containerValue.getContainerDefinition("CanSMController"))
						super.delegateAdd(index, canSMController)
					}
				}
			}
			
			def CanSMDemEventParameterRefs getCanSMDemEventParameterRefs(){
				containerValue.getByType(typeof(CanSMDemEventParameterRefs))
			}
			
			def void setCanSMDemEventParameterRefs(CanSMDemEventParameterRefs canSMDemEventParameterRefs){
				val GContainer subContainer = canSMDemEventParameterRefs.getTarget()
				containerValue.setContainer(subContainer, "CanSMDemEventParameterRefs")
			}
			
			
			static class CanSMController implements IWrapper<GContainer> {
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
			        if (!(object instanceof CanSMController)){
						return false
					}
					this.target == (object as CanSMController).target
				}
			
				
				def org.artop.ecuc.autosar421.accessors.CanIf.CanIfCtrlDrvCfg.CanIfCtrlCfg getCanSMControllerId(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.CanIf.CanIfCtrlDrvCfg.CanIfCtrlCfg), "CanSMControllerId")
				}
				
				def void setCanSMControllerId(org.artop.ecuc.autosar421.accessors.CanIf.CanIfCtrlDrvCfg.CanIfCtrlCfg object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CanSMControllerId"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class CanSMDemEventParameterRefs implements IWrapper<GContainer> {
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
			        if (!(object instanceof CanSMDemEventParameterRefs)){
						return false
					}
					this.target == (object as CanSMDemEventParameterRefs).target
				}
			
				
				def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getCANSM_E_BUS_OFF(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "CANSM_E_BUS_OFF")
				}
				
				def void setCANSM_E_BUS_OFF(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "CANSM_E_BUS_OFF"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
	}
	static class CanSMGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof CanSMGeneral)){
				return false
			}
			this.target == (object as CanSMGeneral).target
		}
	
		def Boolean getCanSMDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSMDevErrorDetect"].getBooleanValue()
		}
		
		def void setCanSMDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSMDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanSMDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def String getCanSMGetBusOffDelayFunction(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSMGetBusOffDelayFunction"].getStringValue()
		}
		
		def void setCanSMGetBusOffDelayFunction(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSMGetBusOffDelayFunction"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanSMGetBusOffDelayFunction"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def String getCanSMGetBusOffDelayHeader(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSMGetBusOffDelayHeader"].getStringValue()
		}
		
		def void setCanSMGetBusOffDelayHeader(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSMGetBusOffDelayHeader"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanSMGetBusOffDelayHeader"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getCanSMIcomSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSMIcomSupport"].getBooleanValue()
		}
		
		def void setCanSMIcomSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSMIcomSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanSMIcomSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getCanSMMainFunctionTimePeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSMMainFunctionTimePeriod"].getBigDecimalValue()
		}
		
		def void setCanSMMainFunctionTimePeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSMMainFunctionTimePeriod"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanSMMainFunctionTimePeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getCanSMPncSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSMPncSupport"].getBooleanValue()
		}
		
		def void setCanSMPncSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSMPncSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanSMPncSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanSMSetBaudrateApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSMSetBaudrateApi"].getBooleanValue()
		}
		
		def void setCanSMSetBaudrateApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSMSetBaudrateApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanSMSetBaudrateApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanSMTxOfflineActiveSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSMTxOfflineActiveSupport"].getBooleanValue()
		}
		
		def void setCanSMTxOfflineActiveSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSMTxOfflineActiveSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanSMTxOfflineActiveSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getCanSMVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSMVersionInfoApi"].getBooleanValue()
		}
		
		def void setCanSMVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CanSMVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "CanSMVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof CanSM)){
			return false
		}
		this.target == (object as CanSM).target
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
