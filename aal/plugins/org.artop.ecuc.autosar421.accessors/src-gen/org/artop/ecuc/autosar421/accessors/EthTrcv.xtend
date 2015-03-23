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

class EthTrcv implements IWrapper<GModuleConfiguration> {
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
	
	def EthTrcvConfigSet getEthTrcvConfigSet(){
		moduleConfiguration.getByType(typeof(EthTrcvConfigSet))
	}
	
	def void setEthTrcvConfigSet(EthTrcvConfigSet ethTrcvConfigSet){
		val GContainer container = ethTrcvConfigSet.getTarget() 
	    moduleConfiguration.setContainer(container, "EthTrcvConfigSet")
	}
	def EthTrcvGeneral getEthTrcvGeneral(){
		moduleConfiguration.getByType(typeof(EthTrcvGeneral))
	}
	
	def void setEthTrcvGeneral(EthTrcvGeneral ethTrcvGeneral){
		val GContainer container = ethTrcvGeneral.getTarget() 
	    moduleConfiguration.setContainer(container, "EthTrcvGeneral")
	}
	
	static class EthTrcvConfigSet implements IWrapper<GContainer> {
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
		
		
		
		def List<EthTrcvConfig> getEthTrcvConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "EthTrcvConfig")
				}
			}
			return new BasicWrappingEList<EthTrcvConfig, GContainer>(filteredContainers, typeof(EthTrcvConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.EthTrcv$EthTrcvConfigSet$EthTrcvConfig ethTrcvConfig) {
					ethTrcvConfig.target?.gSetDefinition(containerValue.getContainerDefinition("EthTrcvConfig"))
					super.delegateAdd(ethTrcvConfig)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.EthTrcv$EthTrcvConfigSet$EthTrcvConfig ethTrcvConfig) {
					ethTrcvConfig.target?.gSetDefinition(containerValue.getContainerDefinition("EthTrcvConfig"))
					super.delegateAdd(index, ethTrcvConfig)
				}	
			}
		}
		
		
		static class EthTrcvConfig implements IWrapper<GContainer> {
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
			
			def Boolean getEthTrcvAutoNegotiationEnabled(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvAutoNegotiationEnabled"])
			}
			
			def void setEthTrcvAutoNegotiationEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvAutoNegotiationEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthTrcvAutoNegotiationEnabled"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def EthTrcvConnNeg getEthTrcvConnNeg(){
				getEthTrcvConnNegValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvConnNeg"])
			}
			
			def void setEthTrcvConnNeg(EthTrcvConnNeg value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvConnNeg"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthTrcvConnNeg"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum EthTrcvConnNeg {
				TRCV_CONN_NEG_AUTO, 
				TRCV_CONN_NEG_MASTER, 
				TRCV_CONN_NEG_SLAVE
			}
				
			def EthTrcvConnNeg getEthTrcvConnNegValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "TRCV_CONN_NEG_AUTO" : EthTrcvConnNeg.TRCV_CONN_NEG_AUTO
					case "TRCV_CONN_NEG_MASTER" : EthTrcvConnNeg.TRCV_CONN_NEG_MASTER
					case "TRCV_CONN_NEG_SLAVE" : EthTrcvConnNeg.TRCV_CONN_NEG_SLAVE
				}
			}
			
			def void setEthTrcvConnNegValue(GParameterValue paramValue, EthTrcvConnNeg value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			def BigInteger getEthTrcvCtrlIdx(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvCtrlIdx"])
			}
			
			def void setEthTrcvCtrlIdx(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvCtrlIdx"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthTrcvCtrlIdx"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def EthTrcvDuplexMode getEthTrcvDuplexMode(){
				getEthTrcvDuplexModeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvDuplexMode"])
			}
			
			def void setEthTrcvDuplexMode(EthTrcvDuplexMode value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvDuplexMode"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthTrcvDuplexMode"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum EthTrcvDuplexMode {
				ETHTRCV_DUPLEX_MODE_FULL, 
				ETHTRCV_DUPLEX_MODE_HALF
			}
				
			def EthTrcvDuplexMode getEthTrcvDuplexModeValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "ETHTRCV_DUPLEX_MODE_FULL" : EthTrcvDuplexMode.ETHTRCV_DUPLEX_MODE_FULL
					case "ETHTRCV_DUPLEX_MODE_HALF" : EthTrcvDuplexMode.ETHTRCV_DUPLEX_MODE_HALF
				}
			}
			
			def void setEthTrcvDuplexModeValue(GParameterValue paramValue, EthTrcvDuplexMode value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			def BigInteger getEthTrcvIdx(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvIdx"])
			}
			
			def void setEthTrcvIdx(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvIdx"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthTrcvIdx"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getEthTrcvMiiIdx(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvMiiIdx"])
			}
			
			def void setEthTrcvMiiIdx(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvMiiIdx"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthTrcvMiiIdx"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def EthTrcvPhysLayerType getEthTrcvPhysLayerType(){
				getEthTrcvPhysLayerTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvPhysLayerType"])
			}
			
			def void setEthTrcvPhysLayerType(EthTrcvPhysLayerType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvPhysLayerType"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthTrcvPhysLayerType"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum EthTrcvPhysLayerType {
				TRCV_PHYS_LAYER_TYPE_BASE_T, 
				TRCV_PHYS_LAYER_TYPE_BROADR_REACH
			}
				
			def EthTrcvPhysLayerType getEthTrcvPhysLayerTypeValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "TRCV_PHYS_LAYER_TYPE_BASE_T" : EthTrcvPhysLayerType.TRCV_PHYS_LAYER_TYPE_BASE_T
					case "TRCV_PHYS_LAYER_TYPE_BROADR_REACH" : EthTrcvPhysLayerType.TRCV_PHYS_LAYER_TYPE_BROADR_REACH
				}
			}
			
			def void setEthTrcvPhysLayerTypeValue(GParameterValue paramValue, EthTrcvPhysLayerType value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			def EthTrcvSpeed getEthTrcvSpeed(){
				getEthTrcvSpeedValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvSpeed"])
			}
			
			def void setEthTrcvSpeed(EthTrcvSpeed value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvSpeed"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthTrcvSpeed"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum EthTrcvSpeed {
				TRCV_SPEED_10, 
				TRCV_SPEED_100, 
				TRCV_SPEED_1000
			}
				
			def EthTrcvSpeed getEthTrcvSpeedValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "TRCV_SPEED_10" : EthTrcvSpeed.TRCV_SPEED_10
					case "TRCV_SPEED_100" : EthTrcvSpeed.TRCV_SPEED_100
					case "TRCV_SPEED_1000" : EthTrcvSpeed.TRCV_SPEED_1000
				}
			}
			
			def void setEthTrcvSpeedValue(GParameterValue paramValue, EthTrcvSpeed value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			def String getEthTrcvWakeUpCallout(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvWakeUpCallout"])
			}
			
			def void setEthTrcvWakeUpCallout(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvWakeUpCallout"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthTrcvWakeUpCallout"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.Icu.IcuConfigSet.IcuChannel getEthTrcvIcuChannelRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Icu.IcuConfigSet.IcuChannel), "EthTrcvIcuChannelRef")
			}
					
			def void setEthTrcvIcuChannelRef(org.artop.ecuc.autosar421.accessors.Icu.IcuConfigSet.IcuChannel object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "EthTrcvIcuChannelRef"], object.getTarget())
				}
			}
			
			
			def EthTrcvDemEventParameterRefs getEthTrcvDemEventParameterRefs(){
				containerValue.getByType(typeof(EthTrcvDemEventParameterRefs))
			}
			
			def void setEthTrcvDemEventParameterRefs(EthTrcvDemEventParameterRefs ethTrcvDemEventParameterRefs){
				val GContainer subContainer = ethTrcvDemEventParameterRefs.getTarget()
				containerValue.setContainer(subContainer, "EthTrcvDemEventParameterRefs")
			}
			
			def List<EthTrcvWakeupMap> getEthTrcvWakeupMaps(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "EthTrcvWakeupMap")
					}
				}
				return new BasicWrappingEList<EthTrcvWakeupMap, GContainer>(filteredContainers, typeof(EthTrcvWakeupMap), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.EthTrcv$EthTrcvConfigSet$EthTrcvConfig$EthTrcvWakeupMap ethTrcvWakeupMap) {
						ethTrcvWakeupMap.target?.gSetDefinition(containerValue.getContainerDefinition("EthTrcvWakeupMap"))
						super.delegateAdd(ethTrcvWakeupMap)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.EthTrcv$EthTrcvConfigSet$EthTrcvConfig$EthTrcvWakeupMap ethTrcvWakeupMap) {
						ethTrcvWakeupMap.target?.gSetDefinition(containerValue.getContainerDefinition("EthTrcvWakeupMap"))
						super.delegateAdd(index, ethTrcvWakeupMap)
					}	
				}
			}
			
			
			static class EthTrcvDemEventParameterRefs implements IWrapper<GContainer> {
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
				
				
				def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getETHTRCV_E_ACCESS(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "ETHTRCV_E_ACCESS")
				}
						
				def void setETHTRCV_E_ACCESS(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "ETHTRCV_E_ACCESS"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class EthTrcvWakeupMap implements IWrapper<GContainer> {
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
				
				def EthTrcvWakeupReason getEthTrcvWakeupReason(){
					getEthTrcvWakeupReasonValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvWakeupReason"])
				}
				
				def void setEthTrcvWakeupReason(EthTrcvWakeupReason value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvWakeupReason"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthTrcvWakeupReason"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum EthTrcvWakeupReason {
					ETHTRCV_WUR_BUS, 
					ETHTRCV_WUR_GENERAL, 
					ETHTRCV_WUR_INTERNAL, 
					ETHTRCV_WUR_PIN, 
					ETHTRCV_WUR_POWER_ON, 
					ETHTRCV_WUR_RESET, 
					ETHTRCV_WUR_SYSERR
				}
					
				def EthTrcvWakeupReason getEthTrcvWakeupReasonValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "ETHTRCV_WUR_BUS" : EthTrcvWakeupReason.ETHTRCV_WUR_BUS
						case "ETHTRCV_WUR_GENERAL" : EthTrcvWakeupReason.ETHTRCV_WUR_GENERAL
						case "ETHTRCV_WUR_INTERNAL" : EthTrcvWakeupReason.ETHTRCV_WUR_INTERNAL
						case "ETHTRCV_WUR_PIN" : EthTrcvWakeupReason.ETHTRCV_WUR_PIN
						case "ETHTRCV_WUR_POWER_ON" : EthTrcvWakeupReason.ETHTRCV_WUR_POWER_ON
						case "ETHTRCV_WUR_RESET" : EthTrcvWakeupReason.ETHTRCV_WUR_RESET
						case "ETHTRCV_WUR_SYSERR" : EthTrcvWakeupReason.ETHTRCV_WUR_SYSERR
					}
				}
				
				def void setEthTrcvWakeupReasonValue(GParameterValue paramValue, EthTrcvWakeupReason value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource getEthTrcvWakeupSourceRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource), "EthTrcvWakeupSourceRef")
				}
						
				def void setEthTrcvWakeupSourceRef(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "EthTrcvWakeupSourceRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
	}
	static class EthTrcvGeneral implements IWrapper<GContainer> {
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
		
		def Boolean getEthTrcvDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvDevErrorDetect"])
		}
		
		def void setEthTrcvDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthTrcvDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEthTrcvGetBaudRateApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvGetBaudRateApi"])
		}
		
		def void setEthTrcvGetBaudRateApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvGetBaudRateApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthTrcvGetBaudRateApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEthTrcvGetDuplexModeApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvGetDuplexModeApi"])
		}
		
		def void setEthTrcvGetDuplexModeApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvGetDuplexModeApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthTrcvGetDuplexModeApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEthTrcvGetLinkStateApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvGetLinkStateApi"])
		}
		
		def void setEthTrcvGetLinkStateApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvGetLinkStateApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthTrcvGetLinkStateApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEthTrcvGetTransceiverModeApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvGetTransceiverModeApi"])
		}
		
		def void setEthTrcvGetTransceiverModeApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvGetTransceiverModeApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthTrcvGetTransceiverModeApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEthTrcvGetTransceiverWakeupModeApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvGetTransceiverWakeupModeApi"])
		}
		
		def void setEthTrcvGetTransceiverWakeupModeApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvGetTransceiverWakeupModeApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthTrcvGetTransceiverWakeupModeApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getEthTrcvIndex(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvIndex"])
		}
		
		def void setEthTrcvIndex(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvIndex"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthTrcvIndex"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigDecimal getEthTrcvMainFunctionPeriod(){
			EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvMainFunctionPeriod"])
		}
		
		def void setEthTrcvMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvMainFunctionPeriod"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthTrcvMainFunctionPeriod"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getEthTrcvMaxTrcvsSupported(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvMaxTrcvsSupported"])
		}
		
		def void setEthTrcvMaxTrcvsSupported(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvMaxTrcvsSupported"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthTrcvMaxTrcvsSupported"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEthTrcvSetTransceiverModeApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvSetTransceiverModeApi"])
		}
		
		def void setEthTrcvSetTransceiverModeApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvSetTransceiverModeApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthTrcvSetTransceiverModeApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEthTrcvStartAutoNegotiationApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvStartAutoNegotiationApi"])
		}
		
		def void setEthTrcvStartAutoNegotiationApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvStartAutoNegotiationApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthTrcvStartAutoNegotiationApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEthTrcvVersionInfoApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvVersionInfoApi"])
		}
		
		def void setEthTrcvVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthTrcvVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEthTrcvVersionInfoApiMacro(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvVersionInfoApiMacro"])
		}
		
		def void setEthTrcvVersionInfoApiMacro(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvVersionInfoApiMacro"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthTrcvVersionInfoApiMacro"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def EthTrcvWakeUpSupport getEthTrcvWakeUpSupport(){
			getEthTrcvWakeUpSupportValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvWakeUpSupport"])
		}
		
		def void setEthTrcvWakeUpSupport(EthTrcvWakeUpSupport value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthTrcvWakeUpSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthTrcvWakeUpSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		enum EthTrcvWakeUpSupport {
			ETHTRCV_WAKEUP_BY_INTERRUPT, 
			ETHTRCV_WAKEUP_BY_POLLING, 
			ETHTRCV_WAKEUP_NOT_SUPPORTED
		}
			
		def EthTrcvWakeUpSupport getEthTrcvWakeUpSupportValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "ETHTRCV_WAKEUP_BY_INTERRUPT" : EthTrcvWakeUpSupport.ETHTRCV_WAKEUP_BY_INTERRUPT
				case "ETHTRCV_WAKEUP_BY_POLLING" : EthTrcvWakeUpSupport.ETHTRCV_WAKEUP_BY_POLLING
				case "ETHTRCV_WAKEUP_NOT_SUPPORTED" : EthTrcvWakeUpSupport.ETHTRCV_WAKEUP_NOT_SUPPORTED
			}
		}
		
		def void setEthTrcvWakeUpSupportValue(GParameterValue paramValue, EthTrcvWakeUpSupport value){
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
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
