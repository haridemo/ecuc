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
package org.artop.ecuc.autosar431.accessors

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

class WEthTrcv implements IWrapper<GModuleConfiguration> {
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

	def WEthTrcvAntennaConfigSet getWEthTrcvAntennaConfigSet(){
		moduleConfiguration.getByType(typeof(WEthTrcvAntennaConfigSet))
	}

	def void setWEthTrcvAntennaConfigSet(WEthTrcvAntennaConfigSet wEthTrcvAntennaConfigSet){
		val GContainer container = wEthTrcvAntennaConfigSet.getTarget()
	    moduleConfiguration.setContainer(container, "WEthTrcvAntennaConfigSet")
	}
	def WEthTrcvConfigSet getWEthTrcvConfigSet(){
		moduleConfiguration.getByType(typeof(WEthTrcvConfigSet))
	}

	def void setWEthTrcvConfigSet(WEthTrcvConfigSet wEthTrcvConfigSet){
		val GContainer container = wEthTrcvConfigSet.getTarget()
	    moduleConfiguration.setContainer(container, "WEthTrcvConfigSet")
	}
	def WEthTrcvGeneral getWEthTrcvGeneral(){
		moduleConfiguration.getByType(typeof(WEthTrcvGeneral))
	}

	def void setWEthTrcvGeneral(WEthTrcvGeneral wEthTrcvGeneral){
		val GContainer container = wEthTrcvGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "WEthTrcvGeneral")
	}
	def List<WEthTrcvRadioConfigSet> getWEthTrcvRadioConfigSets(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "WEthTrcvRadioConfigSet")
			}
		}
		return new BasicWrappingEList<WEthTrcvRadioConfigSet, GContainer>(filteredContainers, typeof(WEthTrcvRadioConfigSet), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar431.accessors.WEthTrcv.WEthTrcvRadioConfigSet wEthTrcvRadioConfigSet) {
				wEthTrcvRadioConfigSet.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("WEthTrcvRadioConfigSet"))
				super.delegateAdd(wEthTrcvRadioConfigSet)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.WEthTrcv.WEthTrcvRadioConfigSet wEthTrcvRadioConfigSet) {
				wEthTrcvRadioConfigSet.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("WEthTrcvRadioConfigSet"))
				super.delegateAdd(index, wEthTrcvRadioConfigSet)
			}
		}
	}

	static class WEthTrcvAntennaConfigSet implements IWrapper<GContainer> {
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
	        if (!(object instanceof WEthTrcvAntennaConfigSet)){
				return false
			}
			this.target == (object as WEthTrcvAntennaConfigSet).target
		}
	
		
		
		def List<WEthTrcvAntennaConfig> getWEthTrcvAntennaConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "WEthTrcvAntennaConfig")
				}
			}
			return new BasicWrappingEList<WEthTrcvAntennaConfig, GContainer>(filteredContainers, typeof(WEthTrcvAntennaConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar431.accessors.WEthTrcv.WEthTrcvAntennaConfigSet.WEthTrcvAntennaConfig wEthTrcvAntennaConfig) {
					wEthTrcvAntennaConfig.target?.gSetDefinition(containerValue.getContainerDefinition("WEthTrcvAntennaConfig"))
					super.delegateAdd(wEthTrcvAntennaConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.WEthTrcv.WEthTrcvAntennaConfigSet.WEthTrcvAntennaConfig wEthTrcvAntennaConfig) {
					wEthTrcvAntennaConfig.target?.gSetDefinition(containerValue.getContainerDefinition("WEthTrcvAntennaConfig"))
					super.delegateAdd(index, wEthTrcvAntennaConfig)
				}
			}
		}
		
		
		static class WEthTrcvAntennaConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof WEthTrcvAntennaConfig)){
					return false
				}
				this.target == (object as WEthTrcvAntennaConfig).target
			}
		
			def BigInteger getWEthTrcvAntennaId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvAntennaId"].getBigIntegerValue()
			}
			
			def void setWEthTrcvAntennaId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvAntennaId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WEthTrcvAntennaId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
	}
	static class WEthTrcvConfigSet implements IWrapper<GContainer> {
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
	        if (!(object instanceof WEthTrcvConfigSet)){
				return false
			}
			this.target == (object as WEthTrcvConfigSet).target
		}
	
		
		
		def List<WEthTrcvConfig> getWEthTrcvConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "WEthTrcvConfig")
				}
			}
			return new BasicWrappingEList<WEthTrcvConfig, GContainer>(filteredContainers, typeof(WEthTrcvConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar431.accessors.WEthTrcv.WEthTrcvConfigSet.WEthTrcvConfig wEthTrcvConfig) {
					wEthTrcvConfig.target?.gSetDefinition(containerValue.getContainerDefinition("WEthTrcvConfig"))
					super.delegateAdd(wEthTrcvConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.WEthTrcv.WEthTrcvConfigSet.WEthTrcvConfig wEthTrcvConfig) {
					wEthTrcvConfig.target?.gSetDefinition(containerValue.getContainerDefinition("WEthTrcvConfig"))
					super.delegateAdd(index, wEthTrcvConfig)
				}
			}
		}
		
		
		static class WEthTrcvConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof WEthTrcvConfig)){
					return false
				}
				this.target == (object as WEthTrcvConfig).target
			}
		
			def BigInteger getWEthTrcvBusId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvBusId"].getBigIntegerValue()
			}
			
			def void setWEthTrcvBusId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvBusId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WEthTrcvBusId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getWEthTrcvId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvId"].getBigIntegerValue()
			}
			
			def void setWEthTrcvId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WEthTrcvId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def WEthTrcvPhysLayerType getWEthTrcvPhysLayerType(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvPhysLayerType"].getWEthTrcvPhysLayerTypeValue()
			}
			
			def void setWEthTrcvPhysLayerType(WEthTrcvPhysLayerType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvPhysLayerType"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WEthTrcvPhysLayerType"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum WEthTrcvPhysLayerType {
				TRCV_PHYS_LAYER_TYPE_80211_P
			}
			
			def WEthTrcvPhysLayerType getWEthTrcvPhysLayerTypeValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "TRCV_PHYS_LAYER_TYPE_80211_P" : WEthTrcvPhysLayerType.TRCV_PHYS_LAYER_TYPE_80211_P
				}
			}
			
			def void setWEthTrcvPhysLayerTypeValue(GParameterValue parameterValue, WEthTrcvPhysLayerType value){
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar431.accessors.WEth.WEthConfigSet.WEthCtrlConfig getWEthTrcvCtrlRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.WEth.WEthConfigSet.WEthCtrlConfig), "WEthTrcvCtrlRef")
			}
			
			def void setWEthTrcvCtrlRef(org.artop.ecuc.autosar431.accessors.WEth.WEthConfigSet.WEthCtrlConfig object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "WEthTrcvCtrlRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar431.accessors.WEthTrcv.WEthTrcvRadioConfigSet getWEthTrcvRadioConfigSetRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.WEthTrcv.WEthTrcvRadioConfigSet), "WEthTrcvRadioConfigSetRef")
			}
			
			def void setWEthTrcvRadioConfigSetRef(org.artop.ecuc.autosar431.accessors.WEthTrcv.WEthTrcvRadioConfigSet object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "WEthTrcvRadioConfigSetRef"], object.getTarget())
				}
			}
			
			
			def WEthTrcvDemEventParameterRefs getWEthTrcvDemEventParameterRefs(){
				containerValue.getByType(typeof(WEthTrcvDemEventParameterRefs))
			}
			
			def void setWEthTrcvDemEventParameterRefs(WEthTrcvDemEventParameterRefs wEthTrcvDemEventParameterRefs){
				val GContainer subContainer = wEthTrcvDemEventParameterRefs.getTarget()
				containerValue.setContainer(subContainer, "WEthTrcvDemEventParameterRefs")
			}
			
			
			static class WEthTrcvDemEventParameterRefs implements IWrapper<GContainer> {
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
			        if (!(object instanceof WEthTrcvDemEventParameterRefs)){
						return false
					}
					this.target == (object as WEthTrcvDemEventParameterRefs).target
				}
			
				
				def org.artop.ecuc.autosar431.accessors.Dem.DemConfigSet.DemEventParameter getWETHTRCV_E_ACCESS(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Dem.DemConfigSet.DemEventParameter), "WETHTRCV_E_ACCESS")
				}
				
				def void setWETHTRCV_E_ACCESS(org.artop.ecuc.autosar431.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "WETHTRCV_E_ACCESS"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
	}
	static class WEthTrcvGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof WEthTrcvGeneral)){
				return false
			}
			this.target == (object as WEthTrcvGeneral).target
		}
	
		def Boolean getWEthTrcvDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvDevErrorDetect"].getBooleanValue()
		}
		
		def void setWEthTrcvDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WEthTrcvDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getWEthTrcvGetLinkStateApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvGetLinkStateApi"].getBooleanValue()
		}
		
		def void setWEthTrcvGetLinkStateApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvGetLinkStateApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WEthTrcvGetLinkStateApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getWEthTrcvGetTransceiverModeApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvGetTransceiverModeApi"].getBooleanValue()
		}
		
		def void setWEthTrcvGetTransceiverModeApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvGetTransceiverModeApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WEthTrcvGetTransceiverModeApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getWEthTrcvIndex(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvIndex"].getBigIntegerValue()
		}
		
		def void setWEthTrcvIndex(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvIndex"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WEthTrcvIndex"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getWEthTrcvMainFunctionPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvMainFunctionPeriod"].getBigDecimalValue()
		}
		
		def void setWEthTrcvMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvMainFunctionPeriod"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WEthTrcvMainFunctionPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getWEthTrcvMaxTrcvsSupported(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvMaxTrcvsSupported"].getBigIntegerValue()
		}
		
		def void setWEthTrcvMaxTrcvsSupported(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvMaxTrcvsSupported"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WEthTrcvMaxTrcvsSupported"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getWEthTrcvSetTransceiverModeApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvSetTransceiverModeApi"].getBooleanValue()
		}
		
		def void setWEthTrcvSetTransceiverModeApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvSetTransceiverModeApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WEthTrcvSetTransceiverModeApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getWEthTrcvVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvVersionInfoApi"].getBooleanValue()
		}
		
		def void setWEthTrcvVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WEthTrcvVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getWEthTrcvVersionInfoApiMacro(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvVersionInfoApiMacro"].getBooleanValue()
		}
		
		def void setWEthTrcvVersionInfoApiMacro(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvVersionInfoApiMacro"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WEthTrcvVersionInfoApiMacro"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}
	static class WEthTrcvRadioConfigSet implements IWrapper<GContainer> {
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
	        if (!(object instanceof WEthTrcvRadioConfigSet)){
				return false
			}
			this.target == (object as WEthTrcvRadioConfigSet).target
		}
	
		
		
		def List<WEthTrcvRadioConfig> getWEthTrcvRadioConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "WEthTrcvRadioConfig")
				}
			}
			return new BasicWrappingEList<WEthTrcvRadioConfig, GContainer>(filteredContainers, typeof(WEthTrcvRadioConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar431.accessors.WEthTrcv.WEthTrcvRadioConfigSet.WEthTrcvRadioConfig wEthTrcvRadioConfig) {
					wEthTrcvRadioConfig.target?.gSetDefinition(containerValue.getContainerDefinition("WEthTrcvRadioConfig"))
					super.delegateAdd(wEthTrcvRadioConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.WEthTrcv.WEthTrcvRadioConfigSet.WEthTrcvRadioConfig wEthTrcvRadioConfig) {
					wEthTrcvRadioConfig.target?.gSetDefinition(containerValue.getContainerDefinition("WEthTrcvRadioConfig"))
					super.delegateAdd(index, wEthTrcvRadioConfig)
				}
			}
		}
		
		
		static class WEthTrcvRadioConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof WEthTrcvRadioConfig)){
					return false
				}
				this.target == (object as WEthTrcvRadioConfig).target
			}
		
			def WEthTrcvRadioChannelBandwidth getWEthTrcvRadioChannelBandwidth(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvRadioChannelBandwidth"].getWEthTrcvRadioChannelBandwidthValue()
			}
			
			def void setWEthTrcvRadioChannelBandwidth(WEthTrcvRadioChannelBandwidth value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvRadioChannelBandwidth"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WEthTrcvRadioChannelBandwidth"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum WEthTrcvRadioChannelBandwidth {
				BW_10MHZ, 
				BW_20MHZ, 
				BW_40MHZ, 
				BW_5MHZ
			}
			
			def WEthTrcvRadioChannelBandwidth getWEthTrcvRadioChannelBandwidthValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "BW_10MHZ" : WEthTrcvRadioChannelBandwidth.BW_10MHZ
					case "BW_20MHZ" : WEthTrcvRadioChannelBandwidth.BW_20MHZ
					case "BW_40MHZ" : WEthTrcvRadioChannelBandwidth.BW_40MHZ
					case "BW_5MHZ" : WEthTrcvRadioChannelBandwidth.BW_5MHZ
				}
			}
			
			def void setWEthTrcvRadioChannelBandwidthValue(GParameterValue parameterValue, WEthTrcvRadioChannelBandwidth value){
				parameterValue.setValue(value)
			}
			
			def BigDecimal getWEthTrcvRadioChannelCsPowerThreshold(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvRadioChannelCsPowerThreshold"].getBigDecimalValue()
			}
			
			def void setWEthTrcvRadioChannelCsPowerThreshold(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvRadioChannelCsPowerThreshold"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WEthTrcvRadioChannelCsPowerThreshold"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getWEthTrcvRadioChannelFreq(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvRadioChannelFreq"].getBigIntegerValue()
			}
			
			def void setWEthTrcvRadioChannelFreq(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvRadioChannelFreq"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WEthTrcvRadioChannelFreq"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getWEthTrcvRadioChannelMaxTxPower(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvRadioChannelMaxTxPower"].getBigDecimalValue()
			}
			
			def void setWEthTrcvRadioChannelMaxTxPower(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvRadioChannelMaxTxPower"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WEthTrcvRadioChannelMaxTxPower"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getWEthTrcvRadioChannelTxDatarate(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvRadioChannelTxDatarate"].getBigDecimalValue()
			}
			
			def void setWEthTrcvRadioChannelTxDatarate(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvRadioChannelTxDatarate"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WEthTrcvRadioChannelTxDatarate"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getWEthTrcvRadioId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvRadioId"].getBigIntegerValue()
			}
			
			def void setWEthTrcvRadioId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvRadioId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WEthTrcvRadioId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def WEthTrcvRadioMode getWEthTrcvRadioMode(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvRadioMode"].getWEthTrcvRadioModeValue()
			}
			
			def void setWEthTrcvRadioMode(WEthTrcvRadioMode value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvRadioMode"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WEthTrcvRadioMode"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum WEthTrcvRadioMode {
				OFF, 
				RX_ON, 
				RX_TX_ON, 
				TX_ON, 
				USED_FOR_CHANNEL_SWITCHING
			}
			
			def WEthTrcvRadioMode getWEthTrcvRadioModeValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "OFF" : WEthTrcvRadioMode.OFF
					case "RX_ON" : WEthTrcvRadioMode.RX_ON
					case "RX_TX_ON" : WEthTrcvRadioMode.RX_TX_ON
					case "TX_ON" : WEthTrcvRadioMode.TX_ON
					case "USED_FOR_CHANNEL_SWITCHING" : WEthTrcvRadioMode.USED_FOR_CHANNEL_SWITCHING
				}
			}
			
			def void setWEthTrcvRadioModeValue(GParameterValue parameterValue, WEthTrcvRadioMode value){
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar431.accessors.WEthTrcv.WEthTrcvAntennaConfigSet.WEthTrcvAntennaConfig getWEthTrcvRadioChannelRxAntenna(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.WEthTrcv.WEthTrcvAntennaConfigSet.WEthTrcvAntennaConfig), "WEthTrcvRadioChannelRxAntenna")
			}
			
			def void setWEthTrcvRadioChannelRxAntenna(org.artop.ecuc.autosar431.accessors.WEthTrcv.WEthTrcvAntennaConfigSet.WEthTrcvAntennaConfig object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "WEthTrcvRadioChannelRxAntenna"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar431.accessors.WEthTrcv.WEthTrcvAntennaConfigSet.WEthTrcvAntennaConfig getWEthTrcvRadioChannelTxAntenna(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.WEthTrcv.WEthTrcvAntennaConfigSet.WEthTrcvAntennaConfig), "WEthTrcvRadioChannelTxAntenna")
			}
			
			def void setWEthTrcvRadioChannelTxAntenna(org.artop.ecuc.autosar431.accessors.WEthTrcv.WEthTrcvAntennaConfigSet.WEthTrcvAntennaConfig object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "WEthTrcvRadioChannelTxAntenna"], object.getTarget())
				}
			}
			
			
			def List<WEthTrcvRadioChannelTxQueueConfig> getWEthTrcvRadioChannelTxQueueConfigs(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "WEthTrcvRadioChannelTxQueueConfig")
					}
				}
				return new BasicWrappingEList<WEthTrcvRadioChannelTxQueueConfig, GContainer>(filteredContainers, typeof(WEthTrcvRadioChannelTxQueueConfig), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar431.accessors.WEthTrcv.WEthTrcvRadioConfigSet.WEthTrcvRadioConfig.WEthTrcvRadioChannelTxQueueConfig wEthTrcvRadioChannelTxQueueConfig) {
						wEthTrcvRadioChannelTxQueueConfig.target?.gSetDefinition(containerValue.getContainerDefinition("WEthTrcvRadioChannelTxQueueConfig"))
						super.delegateAdd(wEthTrcvRadioChannelTxQueueConfig)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar431.accessors.WEthTrcv.WEthTrcvRadioConfigSet.WEthTrcvRadioConfig.WEthTrcvRadioChannelTxQueueConfig wEthTrcvRadioChannelTxQueueConfig) {
						wEthTrcvRadioChannelTxQueueConfig.target?.gSetDefinition(containerValue.getContainerDefinition("WEthTrcvRadioChannelTxQueueConfig"))
						super.delegateAdd(index, wEthTrcvRadioChannelTxQueueConfig)
					}
				}
			}
			
			
			static class WEthTrcvRadioChannelTxQueueConfig implements IWrapper<GContainer> {
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
			        if (!(object instanceof WEthTrcvRadioChannelTxQueueConfig)){
						return false
					}
					this.target == (object as WEthTrcvRadioChannelTxQueueConfig).target
				}
			
				def BigInteger getWEthTrcvRadioChannelTxQueueAifsn(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvRadioChannelTxQueueAifsn"].getBigIntegerValue()
				}
				
				def void setWEthTrcvRadioChannelTxQueueAifsn(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvRadioChannelTxQueueAifsn"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WEthTrcvRadioChannelTxQueueAifsn"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getWEthTrcvRadioChannelTxQueueCwMax(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvRadioChannelTxQueueCwMax"].getBigIntegerValue()
				}
				
				def void setWEthTrcvRadioChannelTxQueueCwMax(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvRadioChannelTxQueueCwMax"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WEthTrcvRadioChannelTxQueueCwMax"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getWEthTrcvRadioChannelTxQueueCwMin(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvRadioChannelTxQueueCwMin"].getBigIntegerValue()
				}
				
				def void setWEthTrcvRadioChannelTxQueueCwMin(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvRadioChannelTxQueueCwMin"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WEthTrcvRadioChannelTxQueueCwMin"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getWEthTrcvRadioChannelTxQueueId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvRadioChannelTxQueueId"].getBigIntegerValue()
				}
				
				def void setWEthTrcvRadioChannelTxQueueId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvRadioChannelTxQueueId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WEthTrcvRadioChannelTxQueueId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigDecimal getWEthTrcvRadioChannelTxQueueTxOpDurationLimit(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvRadioChannelTxQueueTxOpDurationLimit"].getBigDecimalValue()
				}
				
				def void setWEthTrcvRadioChannelTxQueueTxOpDurationLimit(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WEthTrcvRadioChannelTxQueueTxOpDurationLimit"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WEthTrcvRadioChannelTxQueueTxOpDurationLimit"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
		}
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof WEthTrcv)){
			return false
		}
		this.target == (object as WEthTrcv).target
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
