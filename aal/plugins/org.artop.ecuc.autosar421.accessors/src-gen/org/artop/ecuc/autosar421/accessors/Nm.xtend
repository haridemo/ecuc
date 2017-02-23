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

class Nm implements IWrapper<GModuleConfiguration> {
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

	def List<NmChannelConfig> getNmChannelConfigs(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "NmChannelConfig")
			}
		}
		return new BasicWrappingEList<NmChannelConfig, GContainer>(filteredContainers, typeof(NmChannelConfig), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Nm.NmChannelConfig nmChannelConfig) {
				nmChannelConfig.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("NmChannelConfig"))
				super.delegateAdd(nmChannelConfig)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Nm.NmChannelConfig nmChannelConfig) {
				nmChannelConfig.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("NmChannelConfig"))
				super.delegateAdd(index, nmChannelConfig)
			}
		}
	}
	def NmGlobalConfig getNmGlobalConfig(){
		moduleConfiguration.getByType(typeof(NmGlobalConfig))
	}

	def void setNmGlobalConfig(NmGlobalConfig nmGlobalConfig){
		val GContainer container = nmGlobalConfig.getTarget()
	    moduleConfiguration.setContainer(container, "NmGlobalConfig")
	}

	static class NmChannelConfig implements IWrapper<GContainer> {
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
	        if (!(object instanceof NmChannelConfig)){
				return false
			}
			this.target == (object as NmChannelConfig).target
		}
	
		def Boolean getNmActiveCoordinator(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmActiveCoordinator"].getBooleanValue()
		}
		
		def void setNmActiveCoordinator(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmActiveCoordinator"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NmActiveCoordinator"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getNmChannelSleepMaster(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmChannelSleepMaster"].getBooleanValue()
		}
		
		def void setNmChannelSleepMaster(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmChannelSleepMaster"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NmChannelSleepMaster"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getNmCoordClusterIndex(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmCoordClusterIndex"].getBigIntegerValue()
		}
		
		def void setNmCoordClusterIndex(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmCoordClusterIndex"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NmCoordClusterIndex"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getNmStateReportEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmStateReportEnabled"].getBooleanValue()
		}
		
		def void setNmStateReportEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmStateReportEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NmStateReportEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getNmSynchronizingNetwork(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmSynchronizingNetwork"].getBooleanValue()
		}
		
		def void setNmSynchronizingNetwork(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmSynchronizingNetwork"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NmSynchronizingNetwork"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel getNmComMChannelRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel), "NmComMChannelRef")
		}
		
		def void setNmComMChannelRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "NmComMChannelRef"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComSignal getNmStateReportSignalRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComSignal), "NmStateReportSignalRef")
		}
		
		def void setNmStateReportSignalRef(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComSignal object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "NmStateReportSignalRef"], object.getTarget())
			}
		}
		
		
		def NmBusType getNmBusType(){
			containerValue.getByType(typeof(NmBusType))
		}
		
		def void setNmBusType(NmBusType nmBusType){
			val GContainer subContainer = nmBusType.getTarget()
			containerValue.setContainer(subContainer, "NmBusType")
		}
		
		
		static class NmBusType implements IWrapper<GContainer> {
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
		        if (!(object instanceof NmBusType)){
					return false
				}
				this.target == (object as NmBusType).target
			}
		
			def NmGenericBusNmConfig getNmGenericBusNmConfig(){
				containerValue.getByType(typeof(NmGenericBusNmConfig))
			}
			
			def void setNmGenericBusNmConfig(NmGenericBusNmConfig nmGenericBusNmConfig){
				val GContainer subContainer = nmGenericBusNmConfig.getTarget()
				containerValue.setContainer(subContainer, "NmGenericBusNmConfig")
			}
			def NmStandardBusNmConfig getNmStandardBusNmConfig(){
				containerValue.getByType(typeof(NmStandardBusNmConfig))
			}
			
			def void setNmStandardBusNmConfig(NmStandardBusNmConfig nmStandardBusNmConfig){
				val GContainer subContainer = nmStandardBusNmConfig.getTarget()
				containerValue.setContainer(subContainer, "NmStandardBusNmConfig")
			}
			
			static class NmGenericBusNmConfig implements IWrapper<GContainer> {
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
			        if (!(object instanceof NmGenericBusNmConfig)){
						return false
					}
					this.target == (object as NmGenericBusNmConfig).target
				}
			
				def String getNmGenericBusNmPrefix(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmGenericBusNmPrefix"].getStringValue()
				}
				
				def void setNmGenericBusNmPrefix(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmGenericBusNmPrefix"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NmGenericBusNmPrefix"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigDecimal getNmGenericBusNmShutdownTime(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmGenericBusNmShutdownTime"].getBigDecimalValue()
				}
				
				def void setNmGenericBusNmShutdownTime(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmGenericBusNmShutdownTime"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NmGenericBusNmShutdownTime"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
			static class NmStandardBusNmConfig implements IWrapper<GContainer> {
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
			        if (!(object instanceof NmStandardBusNmConfig)){
						return false
					}
					this.target == (object as NmStandardBusNmConfig).target
				}
			
				def NmStandardBusType getNmStandardBusType(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmStandardBusType"].getNmStandardBusTypeValue()
				}
				
				def void setNmStandardBusType(NmStandardBusType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmStandardBusType"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NmStandardBusType"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum NmStandardBusType {
					NM_BUSNM_CANNM, 
					NM_BUSNM_FRNM, 
					NM_BUSNM_J1939NM, 
					NM_BUSNM_LINNM, 
					NM_BUSNM_UDPNM
				}
				
				def NmStandardBusType getNmStandardBusTypeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "NM_BUSNM_CANNM" : NmStandardBusType.NM_BUSNM_CANNM
						case "NM_BUSNM_FRNM" : NmStandardBusType.NM_BUSNM_FRNM
						case "NM_BUSNM_J1939NM" : NmStandardBusType.NM_BUSNM_J1939NM
						case "NM_BUSNM_LINNM" : NmStandardBusType.NM_BUSNM_LINNM
						case "NM_BUSNM_UDPNM" : NmStandardBusType.NM_BUSNM_UDPNM
					}
				}
				
				def void setNmStandardBusTypeValue(GParameterValue parameterValue, NmStandardBusType value){
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
		}
		
	}
	static class NmGlobalConfig implements IWrapper<GContainer> {
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
	        if (!(object instanceof NmGlobalConfig)){
				return false
			}
			this.target == (object as NmGlobalConfig).target
		}
	
		
		
		def NmGlobalConstants getNmGlobalConstants(){
			containerValue.getByType(typeof(NmGlobalConstants))
		}
		
		def void setNmGlobalConstants(NmGlobalConstants nmGlobalConstants){
			val GContainer subContainer = nmGlobalConstants.getTarget()
			containerValue.setContainer(subContainer, "NmGlobalConstants")
		}
		
		def NmGlobalFeatures getNmGlobalFeatures(){
			containerValue.getByType(typeof(NmGlobalFeatures))
		}
		
		def void setNmGlobalFeatures(NmGlobalFeatures nmGlobalFeatures){
			val GContainer subContainer = nmGlobalFeatures.getTarget()
			containerValue.setContainer(subContainer, "NmGlobalFeatures")
		}
		
		def NmGlobalProperties getNmGlobalProperties(){
			containerValue.getByType(typeof(NmGlobalProperties))
		}
		
		def void setNmGlobalProperties(NmGlobalProperties nmGlobalProperties){
			val GContainer subContainer = nmGlobalProperties.getTarget()
			containerValue.setContainer(subContainer, "NmGlobalProperties")
		}
		
		
		static class NmGlobalConstants implements IWrapper<GContainer> {
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
		        if (!(object instanceof NmGlobalConstants)){
					return false
				}
				this.target == (object as NmGlobalConstants).target
			}
		
			def BigInteger getNmNumberOfChannels(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmNumberOfChannels"].getBigIntegerValue()
			}
			
			def void setNmNumberOfChannels(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmNumberOfChannels"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NmNumberOfChannels"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
		static class NmGlobalFeatures implements IWrapper<GContainer> {
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
		        if (!(object instanceof NmGlobalFeatures)){
					return false
				}
				this.target == (object as NmGlobalFeatures).target
			}
		
			def Boolean getNmBusSynchronizationEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmBusSynchronizationEnabled"].getBooleanValue()
			}
			
			def void setNmBusSynchronizationEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmBusSynchronizationEnabled"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NmBusSynchronizationEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def String getNmCarWakeUpCallout(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmCarWakeUpCallout"].getStringValue()
			}
			
			def void setNmCarWakeUpCallout(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmCarWakeUpCallout"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NmCarWakeUpCallout"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getNmCarWakeUpRxEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmCarWakeUpRxEnabled"].getBooleanValue()
			}
			
			def void setNmCarWakeUpRxEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmCarWakeUpRxEnabled"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NmCarWakeUpRxEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getNmComControlEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmComControlEnabled"].getBooleanValue()
			}
			
			def void setNmComControlEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmComControlEnabled"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NmComControlEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getNmComUserDataSupport(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmComUserDataSupport"].getBooleanValue()
			}
			
			def void setNmComUserDataSupport(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmComUserDataSupport"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NmComUserDataSupport"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getNmCoordinatorSupportEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmCoordinatorSupportEnabled"].getBooleanValue()
			}
			
			def void setNmCoordinatorSupportEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmCoordinatorSupportEnabled"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NmCoordinatorSupportEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getNmCoordinatorSyncSupport(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmCoordinatorSyncSupport"].getBooleanValue()
			}
			
			def void setNmCoordinatorSyncSupport(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmCoordinatorSyncSupport"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NmCoordinatorSyncSupport"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigDecimal getNmGlobalCoordinatorTime(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmGlobalCoordinatorTime"].getBigDecimalValue()
			}
			
			def void setNmGlobalCoordinatorTime(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmGlobalCoordinatorTime"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NmGlobalCoordinatorTime"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getNmNodeDetectionEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmNodeDetectionEnabled"].getBooleanValue()
			}
			
			def void setNmNodeDetectionEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmNodeDetectionEnabled"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NmNodeDetectionEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getNmNodeIdEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmNodeIdEnabled"].getBooleanValue()
			}
			
			def void setNmNodeIdEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmNodeIdEnabled"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NmNodeIdEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getNmPassiveModeEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmPassiveModeEnabled"].getBooleanValue()
			}
			
			def void setNmPassiveModeEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmPassiveModeEnabled"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NmPassiveModeEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getNmPduRxIndicationEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmPduRxIndicationEnabled"].getBooleanValue()
			}
			
			def void setNmPduRxIndicationEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmPduRxIndicationEnabled"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NmPduRxIndicationEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getNmRemoteSleepIndEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmRemoteSleepIndEnabled"].getBooleanValue()
			}
			
			def void setNmRemoteSleepIndEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmRemoteSleepIndEnabled"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NmRemoteSleepIndEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getNmRepeatMsgIndEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmRepeatMsgIndEnabled"].getBooleanValue()
			}
			
			def void setNmRepeatMsgIndEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmRepeatMsgIndEnabled"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NmRepeatMsgIndEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getNmStateChangeIndEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmStateChangeIndEnabled"].getBooleanValue()
			}
			
			def void setNmStateChangeIndEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmStateChangeIndEnabled"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NmStateChangeIndEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getNmUserDataEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmUserDataEnabled"].getBooleanValue()
			}
			
			def void setNmUserDataEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmUserDataEnabled"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NmUserDataEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			
			
		}
		
		static class NmGlobalProperties implements IWrapper<GContainer> {
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
		        if (!(object instanceof NmGlobalProperties)){
					return false
				}
				this.target == (object as NmGlobalProperties).target
			}
		
			def BigDecimal getNmCycletimeMainFunction(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmCycletimeMainFunction"].getBigDecimalValue()
			}
			
			def void setNmCycletimeMainFunction(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmCycletimeMainFunction"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NmCycletimeMainFunction"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getNmDevErrorDetect(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmDevErrorDetect"].getBooleanValue()
			}
			
			def void setNmDevErrorDetect(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmDevErrorDetect"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NmDevErrorDetect"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getNmVersionInfoApi(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmVersionInfoApi"].getBooleanValue()
			}
			
			def void setNmVersionInfoApi(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "NmVersionInfoApi"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "NmVersionInfoApi"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			
			
		}
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof Nm)){
			return false
		}
		this.target == (object as Nm).target
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
