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

class EthSwt implements IWrapper<GModuleConfiguration> {
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

	def List<EthSwtConfig> getEthSwtConfigs(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "EthSwtConfig")
			}
		}
		return new BasicWrappingEList<EthSwtConfig, GContainer>(filteredContainers, typeof(EthSwtConfig), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar442.accessors.EthSwt.EthSwtConfig ethSwtConfig) {
				ethSwtConfig.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("EthSwtConfig"))
				super.delegateAdd(ethSwtConfig)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar442.accessors.EthSwt.EthSwtConfig ethSwtConfig) {
				ethSwtConfig.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("EthSwtConfig"))
				super.delegateAdd(index, ethSwtConfig)
			}
		}
	}
	def EthSwtGeneral getEthSwtGeneral(){
		moduleConfiguration.getByType(typeof(EthSwtGeneral))
	}

	def void setEthSwtGeneral(EthSwtGeneral ethSwtGeneral){
		val GContainer container = ethSwtGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "EthSwtGeneral")
	}

	static class EthSwtConfig implements IWrapper<GContainer> {
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
	        if (!(object instanceof EthSwtConfig)){
				return false
			}
			this.target == (object as EthSwtConfig).target
		}
	
		def Boolean getEthSwtDropDoubleTagged(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtDropDoubleTagged"].getBooleanValue()
		}
		
		def void setEthSwtDropDoubleTagged(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtDropDoubleTagged"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtDropDoubleTagged"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getEthSwtIdx(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtIdx"].getBigIntegerValue()
		}
		
		def void setEthSwtIdx(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtIdx"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtIdx"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		def org.artop.ecuc.autosar442.accessors.Eth.EthConfigSet.EthCtrlConfig getEthSwtManagementEthCtrlRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.Eth.EthConfigSet.EthCtrlConfig), "EthSwtManagementEthCtrlRef")
		}
		
		def void setEthSwtManagementEthCtrlRef(org.artop.ecuc.autosar442.accessors.Eth.EthConfigSet.EthCtrlConfig object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EthSwtManagementEthCtrlRef"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar442.accessors.EthSwt.EthSwtConfig.EthSwtPort getEthSwtManagementPortRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.EthSwt.EthSwtConfig.EthSwtPort), "EthSwtManagementPortRef")
		}
		
		def void setEthSwtManagementPortRef(org.artop.ecuc.autosar442.accessors.EthSwt.EthSwtConfig.EthSwtPort object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EthSwtManagementPortRef"], object.getTarget())
			}
		}
		
		
		def EthSwtDemEventParameterRefs getEthSwtDemEventParameterRefs(){
			containerValue.getByType(typeof(EthSwtDemEventParameterRefs))
		}
		
		def void setEthSwtDemEventParameterRefs(EthSwtDemEventParameterRefs ethSwtDemEventParameterRefs){
			val GContainer subContainer = ethSwtDemEventParameterRefs.getTarget()
			containerValue.setContainer(subContainer, "EthSwtDemEventParameterRefs")
		}
		
		def EthSwtNvm getEthSwtNvm(){
			containerValue.getByType(typeof(EthSwtNvm))
		}
		
		def void setEthSwtNvm(EthSwtNvm ethSwtNvm){
			val GContainer subContainer = ethSwtNvm.getTarget()
			containerValue.setContainer(subContainer, "EthSwtNvm")
		}
		
		def List<EthSwtPort> getEthSwtPorts(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "EthSwtPort")
				}
			}
			return new BasicWrappingEList<EthSwtPort, GContainer>(filteredContainers, typeof(EthSwtPort), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar442.accessors.EthSwt.EthSwtConfig.EthSwtPort ethSwtPort) {
					ethSwtPort.target?.gSetDefinition(containerValue.getContainerDefinition("EthSwtPort"))
					super.delegateAdd(ethSwtPort)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar442.accessors.EthSwt.EthSwtConfig.EthSwtPort ethSwtPort) {
					ethSwtPort.target?.gSetDefinition(containerValue.getContainerDefinition("EthSwtPort"))
					super.delegateAdd(index, ethSwtPort)
				}
			}
		}
		
		def EthSwtSpi getEthSwtSpi(){
			containerValue.getByType(typeof(EthSwtSpi))
		}
		
		def void setEthSwtSpi(EthSwtSpi ethSwtSpi){
			val GContainer subContainer = ethSwtSpi.getTarget()
			containerValue.setContainer(subContainer, "EthSwtSpi")
		}
		
		
		static class EthSwtDemEventParameterRefs implements IWrapper<GContainer> {
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
		        if (!(object instanceof EthSwtDemEventParameterRefs)){
					return false
				}
				this.target == (object as EthSwtDemEventParameterRefs).target
			}
		
			
			def org.artop.ecuc.autosar442.accessors.Dem.DemConfigSet.DemEventParameter getETHSWT_E_ACCESS(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.Dem.DemConfigSet.DemEventParameter), "ETHSWT_E_ACCESS")
			}
			
			def void setETHSWT_E_ACCESS(org.artop.ecuc.autosar442.accessors.Dem.DemConfigSet.DemEventParameter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "ETHSWT_E_ACCESS"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class EthSwtNvm implements IWrapper<GContainer> {
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
		        if (!(object instanceof EthSwtNvm)){
					return false
				}
				this.target == (object as EthSwtNvm).target
			}
		
			
			def org.artop.ecuc.autosar442.accessors.NvM.NvMBlockDescriptor getEthSwtNvmBlockDescriptorRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.NvM.NvMBlockDescriptor), "EthSwtNvmBlockDescriptorRef")
			}
			
			def void setEthSwtNvmBlockDescriptorRef(org.artop.ecuc.autosar442.accessors.NvM.NvMBlockDescriptor object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EthSwtNvmBlockDescriptorRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class EthSwtPort implements IWrapper<GContainer> {
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
		        if (!(object instanceof EthSwtPort)){
					return false
				}
				this.target == (object as EthSwtPort).target
			}
		
			def Boolean getEthSwtPortEnableLinkDownCallback(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortEnableLinkDownCallback"].getBooleanValue()
			}
			
			def void setEthSwtPortEnableLinkDownCallback(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortEnableLinkDownCallback"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortEnableLinkDownCallback"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getEthSwtPortIdx(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortIdx"].getBigIntegerValue()
			}
			
			def void setEthSwtPortIdx(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortIdx"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortIdx"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def EthSwtPortMacLayerType getEthSwtPortMacLayerType(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortMacLayerType"].getEthSwtPortMacLayerTypeValue()
			}
			
			def void setEthSwtPortMacLayerType(EthSwtPortMacLayerType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortMacLayerType"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortMacLayerType"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum EthSwtPortMacLayerType {
				ETHSWT_PORT_MAC_LAYER_TYPE_XGMII, 
				ETHSWT_PORT_MAC_LAYER_TYPE_XMII, 
				ETHSWT_PORT_MAC_LAYER_TYPE_XXGMII
			}
			
			def EthSwtPortMacLayerType getEthSwtPortMacLayerTypeValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "ETHSWT_PORT_MAC_LAYER_TYPE_XGMII" : EthSwtPortMacLayerType.ETHSWT_PORT_MAC_LAYER_TYPE_XGMII
					case "ETHSWT_PORT_MAC_LAYER_TYPE_XMII" : EthSwtPortMacLayerType.ETHSWT_PORT_MAC_LAYER_TYPE_XMII
					case "ETHSWT_PORT_MAC_LAYER_TYPE_XXGMII" : EthSwtPortMacLayerType.ETHSWT_PORT_MAC_LAYER_TYPE_XXGMII
				}
			}
			
			def void setEthSwtPortMacLayerTypeValue(GParameterValue parameterValue, EthSwtPortMacLayerType value){
				parameterValue.setValue(value)
			}
			
			def EthSwtPortPhysicalLayerType getEthSwtPortPhysicalLayerType(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortPhysicalLayerType"].getEthSwtPortPhysicalLayerTypeValue()
			}
			
			def void setEthSwtPortPhysicalLayerType(EthSwtPortPhysicalLayerType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortPhysicalLayerType"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortPhysicalLayerType"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum EthSwtPortPhysicalLayerType {
				ETHSWT_PORT_1000BASE_T, 
				ETHSWT_PORT_1000BASE_T1, 
				ETHSWT_PORT_100BASE_T1, 
				ETHSWT_PORT_100BASE_TX
			}
			
			def EthSwtPortPhysicalLayerType getEthSwtPortPhysicalLayerTypeValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "ETHSWT_PORT_1000BASE_T" : EthSwtPortPhysicalLayerType.ETHSWT_PORT_1000BASE_T
					case "ETHSWT_PORT_1000BASE_T1" : EthSwtPortPhysicalLayerType.ETHSWT_PORT_1000BASE_T1
					case "ETHSWT_PORT_100BASE_T1" : EthSwtPortPhysicalLayerType.ETHSWT_PORT_100BASE_T1
					case "ETHSWT_PORT_100BASE_TX" : EthSwtPortPhysicalLayerType.ETHSWT_PORT_100BASE_TX
				}
			}
			
			def void setEthSwtPortPhysicalLayerTypeValue(GParameterValue parameterValue, EthSwtPortPhysicalLayerType value){
				parameterValue.setValue(value)
			}
			
			def List<String> getEthSwtPortPredefinedMacAddresses(){
				val List<EcucTextualParamValue> filteredParameterValues = new AbstractFilteringEList<EcucTextualParamValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {
					override protected accept(EcucTextualParamValue item) {
						return accept(item, typeof(GConfigParameter), "EthSwtPortPredefinedMacAddresses")
					}
				}
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortPredefinedMacAddresses"]
					return new StringValueUnwrappingEList(filteredParameterValues, typeof(EcucTextualParamValue), typeof(String), parameterDef)
				}
			}
			
			def EthSwtPortRole getEthSwtPortRole(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortRole"].getEthSwtPortRoleValue()
			}
			
			def void setEthSwtPortRole(EthSwtPortRole value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortRole"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortRole"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum EthSwtPortRole {
				ETHSWT_HOST_PORT, 
				ETHSWT_UP_LINK_PORT
			}
			
			def EthSwtPortRole getEthSwtPortRoleValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "ETHSWT_HOST_PORT" : EthSwtPortRole.ETHSWT_HOST_PORT
					case "ETHSWT_UP_LINK_PORT" : EthSwtPortRole.ETHSWT_UP_LINK_PORT
				}
			}
			
			def void setEthSwtPortRoleValue(GParameterValue parameterValue, EthSwtPortRole value){
				parameterValue.setValue(value)
			}
			
			def Boolean getEthSwtPortTimeStampSupport(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortTimeStampSupport"].getBooleanValue()
			}
			
			def void setEthSwtPortTimeStampSupport(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortTimeStampSupport"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortTimeStampSupport"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			def org.artop.ecuc.autosar442.accessors.EthTrcv.EthTrcvConfigSet.EthTrcvConfig getEthSwtPortTrcvRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.EthTrcv.EthTrcvConfigSet.EthTrcvConfig), "EthSwtPortTrcvRef")
			}
			
			def void setEthSwtPortTrcvRef(org.artop.ecuc.autosar442.accessors.EthTrcv.EthTrcvConfigSet.EthTrcvConfig object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EthSwtPortTrcvRef"], object.getTarget())
				}
			}
			
			
			def EthSwtPortEgress getEthSwtPortEgress(){
				containerValue.getByType(typeof(EthSwtPortEgress))
			}
			
			def void setEthSwtPortEgress(EthSwtPortEgress ethSwtPortEgress){
				val GContainer subContainer = ethSwtPortEgress.getTarget()
				containerValue.setContainer(subContainer, "EthSwtPortEgress")
			}
			
			def EthSwtPortIngress getEthSwtPortIngress(){
				containerValue.getByType(typeof(EthSwtPortIngress))
			}
			
			def void setEthSwtPortIngress(EthSwtPortIngress ethSwtPortIngress){
				val GContainer subContainer = ethSwtPortIngress.getTarget()
				containerValue.setContainer(subContainer, "EthSwtPortIngress")
			}
			
			def List<EthSwtPortVlanMembership> getEthSwtPortVlanMemberships(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "EthSwtPortVlanMembership")
					}
				}
				return new BasicWrappingEList<EthSwtPortVlanMembership, GContainer>(filteredContainers, typeof(EthSwtPortVlanMembership), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar442.accessors.EthSwt.EthSwtConfig.EthSwtPort.EthSwtPortVlanMembership ethSwtPortVlanMembership) {
						ethSwtPortVlanMembership.target?.gSetDefinition(containerValue.getContainerDefinition("EthSwtPortVlanMembership"))
						super.delegateAdd(ethSwtPortVlanMembership)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar442.accessors.EthSwt.EthSwtConfig.EthSwtPort.EthSwtPortVlanMembership ethSwtPortVlanMembership) {
						ethSwtPortVlanMembership.target?.gSetDefinition(containerValue.getContainerDefinition("EthSwtPortVlanMembership"))
						super.delegateAdd(index, ethSwtPortVlanMembership)
					}
				}
			}
			
			
			static class EthSwtPortEgress implements IWrapper<GContainer> {
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
			        if (!(object instanceof EthSwtPortEgress)){
						return false
					}
					this.target == (object as EthSwtPortEgress).target
				}
			
				
				def org.artop.ecuc.autosar442.accessors.EthSwt.EthSwtConfig.EthSwtPort.EthSwtPortEgress.EthSwtPortScheduler getEthSwtPortEgressLastSchedulerRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.EthSwt.EthSwtConfig.EthSwtPort.EthSwtPortEgress.EthSwtPortScheduler), "EthSwtPortEgressLastSchedulerRef")
				}
				
				def void setEthSwtPortEgressLastSchedulerRef(org.artop.ecuc.autosar442.accessors.EthSwt.EthSwtConfig.EthSwtPort.EthSwtPortEgress.EthSwtPortScheduler object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EthSwtPortEgressLastSchedulerRef"], object.getTarget())
					}
				}
				
				
				def List<EthSwtPortFifo> getEthSwtPortFifos(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "EthSwtPortFifo")
						}
					}
					return new BasicWrappingEList<EthSwtPortFifo, GContainer>(filteredContainers, typeof(EthSwtPortFifo), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar442.accessors.EthSwt.EthSwtConfig.EthSwtPort.EthSwtPortEgress.EthSwtPortFifo ethSwtPortFifo) {
							ethSwtPortFifo.target?.gSetDefinition(containerValue.getContainerDefinition("EthSwtPortFifo"))
							super.delegateAdd(ethSwtPortFifo)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar442.accessors.EthSwt.EthSwtConfig.EthSwtPort.EthSwtPortEgress.EthSwtPortFifo ethSwtPortFifo) {
							ethSwtPortFifo.target?.gSetDefinition(containerValue.getContainerDefinition("EthSwtPortFifo"))
							super.delegateAdd(index, ethSwtPortFifo)
						}
					}
				}
				
				def List<EthSwtPortScheduler> getEthSwtPortSchedulers(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "EthSwtPortScheduler")
						}
					}
					return new BasicWrappingEList<EthSwtPortScheduler, GContainer>(filteredContainers, typeof(EthSwtPortScheduler), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar442.accessors.EthSwt.EthSwtConfig.EthSwtPort.EthSwtPortEgress.EthSwtPortScheduler ethSwtPortScheduler) {
							ethSwtPortScheduler.target?.gSetDefinition(containerValue.getContainerDefinition("EthSwtPortScheduler"))
							super.delegateAdd(ethSwtPortScheduler)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar442.accessors.EthSwt.EthSwtConfig.EthSwtPort.EthSwtPortEgress.EthSwtPortScheduler ethSwtPortScheduler) {
							ethSwtPortScheduler.target?.gSetDefinition(containerValue.getContainerDefinition("EthSwtPortScheduler"))
							super.delegateAdd(index, ethSwtPortScheduler)
						}
					}
				}
				
				def List<EthSwtPortShaper> getEthSwtPortShapers(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "EthSwtPortShaper")
						}
					}
					return new BasicWrappingEList<EthSwtPortShaper, GContainer>(filteredContainers, typeof(EthSwtPortShaper), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar442.accessors.EthSwt.EthSwtConfig.EthSwtPort.EthSwtPortEgress.EthSwtPortShaper ethSwtPortShaper) {
							ethSwtPortShaper.target?.gSetDefinition(containerValue.getContainerDefinition("EthSwtPortShaper"))
							super.delegateAdd(ethSwtPortShaper)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar442.accessors.EthSwt.EthSwtConfig.EthSwtPort.EthSwtPortEgress.EthSwtPortShaper ethSwtPortShaper) {
							ethSwtPortShaper.target?.gSetDefinition(containerValue.getContainerDefinition("EthSwtPortShaper"))
							super.delegateAdd(index, ethSwtPortShaper)
						}
					}
				}
				
				
				static class EthSwtPortFifo implements IWrapper<GContainer> {
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
				        if (!(object instanceof EthSwtPortFifo)){
							return false
						}
						this.target == (object as EthSwtPortFifo).target
					}
				
					def BigInteger getEthSwtPortFifoMinimumLength(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortFifoMinimumLength"].getBigIntegerValue()
					}
					
					def void setEthSwtPortFifoMinimumLength(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortFifoMinimumLength"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortFifoMinimumLength"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def List<BigInteger> getEthSwtPortFifoTrafficClassAssignments(){
						val List<EcucNumericalParamValue> filteredParameterValues = new AbstractFilteringEList<EcucNumericalParamValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {
							override protected accept(EcucNumericalParamValue item) {
								return accept(item, typeof(GConfigParameter), "EthSwtPortFifoTrafficClassAssignment")
							}
						}
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortFifoTrafficClassAssignment"]
							return new BigIntegerValueUnwrappingEList(filteredParameterValues, typeof(EcucNumericalParamValue), typeof(BigInteger), parameterDef)
						}
					}
					
					
					
					
				}
				
				static class EthSwtPortScheduler implements IWrapper<GContainer> {
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
				        if (!(object instanceof EthSwtPortScheduler)){
							return false
						}
						this.target == (object as EthSwtPortScheduler).target
					}
				
					def EthSwtPortSchedulerAlgorithm getEthSwtPortSchedulerAlgorithm(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortSchedulerAlgorithm"].getEthSwtPortSchedulerAlgorithmValue()
					}
					
					def void setEthSwtPortSchedulerAlgorithm(EthSwtPortSchedulerAlgorithm value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortSchedulerAlgorithm"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortSchedulerAlgorithm"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					enum EthSwtPortSchedulerAlgorithm {
						ETHSWT_SCHEDULER_DEFICIT_ROUND_ROBIN, 
						ETHSWT_SCHEDULER_STRICT_PRIORITY, 
						ETHSWT_SCHEDULER_WEIGHTED_ROUND_ROBIN
					}
					
					def EthSwtPortSchedulerAlgorithm getEthSwtPortSchedulerAlgorithmValue(GParameterValue parameterValue){
						val castedParameterValue = parameterValue as EcucTextualParamValue
						switch (castedParameterValue.value){
							case "ETHSWT_SCHEDULER_DEFICIT_ROUND_ROBIN" : EthSwtPortSchedulerAlgorithm.ETHSWT_SCHEDULER_DEFICIT_ROUND_ROBIN
							case "ETHSWT_SCHEDULER_STRICT_PRIORITY" : EthSwtPortSchedulerAlgorithm.ETHSWT_SCHEDULER_STRICT_PRIORITY
							case "ETHSWT_SCHEDULER_WEIGHTED_ROUND_ROBIN" : EthSwtPortSchedulerAlgorithm.ETHSWT_SCHEDULER_WEIGHTED_ROUND_ROBIN
						}
					}
					
					def void setEthSwtPortSchedulerAlgorithmValue(GParameterValue parameterValue, EthSwtPortSchedulerAlgorithm value){
						parameterValue.setValue(value)
					}
					
					
					
					def List<EthSwtPortSchedulerPredecessor> getEthSwtPortSchedulerPredecessors(){
						val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
							override protected accept(GContainer item) {
								return accept(item, typeof(GContainerDef), "EthSwtPortSchedulerPredecessor")
							}
						}
						return new BasicWrappingEList<EthSwtPortSchedulerPredecessor, GContainer>(filteredContainers, typeof(EthSwtPortSchedulerPredecessor), typeof(GContainer)) {
							override protected delegateAdd(org.artop.ecuc.autosar442.accessors.EthSwt.EthSwtConfig.EthSwtPort.EthSwtPortEgress.EthSwtPortScheduler.EthSwtPortSchedulerPredecessor ethSwtPortSchedulerPredecessor) {
								ethSwtPortSchedulerPredecessor.target?.gSetDefinition(containerValue.getContainerDefinition("EthSwtPortSchedulerPredecessor"))
								super.delegateAdd(ethSwtPortSchedulerPredecessor)
							}
					
							override protected delegateAdd(int index, org.artop.ecuc.autosar442.accessors.EthSwt.EthSwtConfig.EthSwtPort.EthSwtPortEgress.EthSwtPortScheduler.EthSwtPortSchedulerPredecessor ethSwtPortSchedulerPredecessor) {
								ethSwtPortSchedulerPredecessor.target?.gSetDefinition(containerValue.getContainerDefinition("EthSwtPortSchedulerPredecessor"))
								super.delegateAdd(index, ethSwtPortSchedulerPredecessor)
							}
						}
					}
					
					
					static class EthSwtPortSchedulerPredecessor implements IWrapper<GContainer> {
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
					        if (!(object instanceof EthSwtPortSchedulerPredecessor)){
								return false
							}
							this.target == (object as EthSwtPortSchedulerPredecessor).target
						}
					
						def BigInteger getEthSwtPortSchedulerPredecessorOrder(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortSchedulerPredecessorOrder"].getBigIntegerValue()
						}
						
						def void setEthSwtPortSchedulerPredecessorOrder(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortSchedulerPredecessorOrder"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortSchedulerPredecessorOrder"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						
						
						
						
					}
					
				}
				
				static class EthSwtPortShaper implements IWrapper<GContainer> {
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
				        if (!(object instanceof EthSwtPortShaper)){
							return false
						}
						this.target == (object as EthSwtPortShaper).target
					}
				
					def BigInteger getEthSwtPortShaperIdleSlope(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortShaperIdleSlope"].getBigIntegerValue()
					}
					
					def void setEthSwtPortShaperIdleSlope(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortShaperIdleSlope"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortShaperIdleSlope"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar442.accessors.EthSwt.EthSwtConfig.EthSwtPort.EthSwtPortEgress.EthSwtPortFifo getEthSwtPortEgressPredecessorFifoRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.EthSwt.EthSwtConfig.EthSwtPort.EthSwtPortEgress.EthSwtPortFifo), "EthSwtPortEgressPredecessorFifoRef")
					}
					
					def void setEthSwtPortEgressPredecessorFifoRef(org.artop.ecuc.autosar442.accessors.EthSwt.EthSwtConfig.EthSwtPort.EthSwtPortEgress.EthSwtPortFifo object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EthSwtPortEgressPredecessorFifoRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
			static class EthSwtPortIngress implements IWrapper<GContainer> {
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
			        if (!(object instanceof EthSwtPortIngress)){
						return false
					}
					this.target == (object as EthSwtPortIngress).target
				}
			
				def BigInteger getEthSwtPortIngressDefaultPriority(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortIngressDefaultPriority"].getBigIntegerValue()
				}
				
				def void setEthSwtPortIngressDefaultPriority(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortIngressDefaultPriority"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortIngressDefaultPriority"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getEthSwtPortIngressDefaultVlan(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortIngressDefaultVlan"].getBigIntegerValue()
				}
				
				def void setEthSwtPortIngressDefaultVlan(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortIngressDefaultVlan"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortIngressDefaultVlan"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def Boolean getEthSwtPortIngressDropUntagged(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortIngressDropUntagged"].getBooleanValue()
				}
				
				def void setEthSwtPortIngressDropUntagged(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortIngressDropUntagged"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortIngressDropUntagged"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				def BigInteger getEthSwtPortIngressVlanModification(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortIngressVlanModification"].getBigIntegerValue()
				}
				
				def void setEthSwtPortIngressVlanModification(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortIngressVlanModification"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortIngressVlanModification"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getEthSwtPortTrafficClassAssignment(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortTrafficClassAssignment"].getBigIntegerValue()
				}
				
				def void setEthSwtPortTrafficClassAssignment(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortTrafficClassAssignment"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortTrafficClassAssignment"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				def List<EthSwtPortPolicer> getEthSwtPortPolicers(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "EthSwtPortPolicer")
						}
					}
					return new BasicWrappingEList<EthSwtPortPolicer, GContainer>(filteredContainers, typeof(EthSwtPortPolicer), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar442.accessors.EthSwt.EthSwtConfig.EthSwtPort.EthSwtPortIngress.EthSwtPortPolicer ethSwtPortPolicer) {
							ethSwtPortPolicer.target?.gSetDefinition(containerValue.getContainerDefinition("EthSwtPortPolicer"))
							super.delegateAdd(ethSwtPortPolicer)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar442.accessors.EthSwt.EthSwtConfig.EthSwtPort.EthSwtPortIngress.EthSwtPortPolicer ethSwtPortPolicer) {
							ethSwtPortPolicer.target?.gSetDefinition(containerValue.getContainerDefinition("EthSwtPortPolicer"))
							super.delegateAdd(index, ethSwtPortPolicer)
						}
					}
				}
				
				def List<EthSwtPriorityRegeneration> getEthSwtPriorityRegenerations(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "EthSwtPriorityRegeneration")
						}
					}
					return new BasicWrappingEList<EthSwtPriorityRegeneration, GContainer>(filteredContainers, typeof(EthSwtPriorityRegeneration), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar442.accessors.EthSwt.EthSwtConfig.EthSwtPort.EthSwtPortIngress.EthSwtPriorityRegeneration ethSwtPriorityRegeneration) {
							ethSwtPriorityRegeneration.target?.gSetDefinition(containerValue.getContainerDefinition("EthSwtPriorityRegeneration"))
							super.delegateAdd(ethSwtPriorityRegeneration)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar442.accessors.EthSwt.EthSwtConfig.EthSwtPort.EthSwtPortIngress.EthSwtPriorityRegeneration ethSwtPriorityRegeneration) {
							ethSwtPriorityRegeneration.target?.gSetDefinition(containerValue.getContainerDefinition("EthSwtPriorityRegeneration"))
							super.delegateAdd(index, ethSwtPriorityRegeneration)
						}
					}
				}
				
				def List<EthSwtPriorityTrafficClassAssignment> getEthSwtPriorityTrafficClassAssignments(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "EthSwtPriorityTrafficClassAssignment")
						}
					}
					return new BasicWrappingEList<EthSwtPriorityTrafficClassAssignment, GContainer>(filteredContainers, typeof(EthSwtPriorityTrafficClassAssignment), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar442.accessors.EthSwt.EthSwtConfig.EthSwtPort.EthSwtPortIngress.EthSwtPriorityTrafficClassAssignment ethSwtPriorityTrafficClassAssignment) {
							ethSwtPriorityTrafficClassAssignment.target?.gSetDefinition(containerValue.getContainerDefinition("EthSwtPriorityTrafficClassAssignment"))
							super.delegateAdd(ethSwtPriorityTrafficClassAssignment)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar442.accessors.EthSwt.EthSwtConfig.EthSwtPort.EthSwtPortIngress.EthSwtPriorityTrafficClassAssignment ethSwtPriorityTrafficClassAssignment) {
							ethSwtPriorityTrafficClassAssignment.target?.gSetDefinition(containerValue.getContainerDefinition("EthSwtPriorityTrafficClassAssignment"))
							super.delegateAdd(index, ethSwtPriorityTrafficClassAssignment)
						}
					}
				}
				
				
				static class EthSwtPortPolicer implements IWrapper<GContainer> {
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
				        if (!(object instanceof EthSwtPortPolicer)){
							return false
						}
						this.target == (object as EthSwtPortPolicer).target
					}
				
					def BigInteger getEthSwtPortRatePolicedByteCount(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortRatePolicedByteCount"].getBigIntegerValue()
					}
					
					def void setEthSwtPortRatePolicedByteCount(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortRatePolicedByteCount"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortRatePolicedByteCount"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getEthSwtPortRatePolicedPriority(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortRatePolicedPriority"].getBigIntegerValue()
					}
					
					def void setEthSwtPortRatePolicedPriority(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortRatePolicedPriority"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortRatePolicedPriority"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigDecimal getEthSwtPortRatePolicedTimeInterval(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortRatePolicedTimeInterval"].getBigDecimalValue()
					}
					
					def void setEthSwtPortRatePolicedTimeInterval(BigDecimal value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortRatePolicedTimeInterval"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortRatePolicedTimeInterval"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def EthSwtPortRateViolationAction getEthSwtPortRateViolationAction(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortRateViolationAction"].getEthSwtPortRateViolationActionValue()
					}
					
					def void setEthSwtPortRateViolationAction(EthSwtPortRateViolationAction value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortRateViolationAction"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortRateViolationAction"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					enum EthSwtPortRateViolationAction {
						BLOCK_SOURCE, 
						DROP_FRAME
					}
					
					def EthSwtPortRateViolationAction getEthSwtPortRateViolationActionValue(GParameterValue parameterValue){
						val castedParameterValue = parameterValue as EcucTextualParamValue
						switch (castedParameterValue.value){
							case "BLOCK_SOURCE" : EthSwtPortRateViolationAction.BLOCK_SOURCE
							case "DROP_FRAME" : EthSwtPortRateViolationAction.DROP_FRAME
						}
					}
					
					def void setEthSwtPortRateViolationActionValue(GParameterValue parameterValue, EthSwtPortRateViolationAction value){
						parameterValue.setValue(value)
					}
					
					
					def List<org.artop.ecuc.autosar442.accessors.EthSwt.EthSwtConfig.EthSwtPort.EthSwtPortVlanMembership> getEthSwtPortRateVlanMembershipRefs(){
						val containerDef = containerValue.gGetDefinition
						val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
							containerDef.gGetReferences.findFirst[gGetShortName == "EthSwtPortRateVlanMembershipRef"] else null
					
						val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
							override protected accept(GReferenceValue item) {
								return accept(item, typeof(GConfigReference), "EthSwtPortRateVlanMembershipRef")
							}
						}
					
						return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar442.accessors.EthSwt.EthSwtConfig.EthSwtPort.EthSwtPortVlanMembership>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar442.accessors.EthSwt.EthSwtConfig.EthSwtPort.EthSwtPortVlanMembership)) {
							override protected wrap(org.artop.ecuc.autosar442.accessors.EthSwt.EthSwtConfig.EthSwtPort.EthSwtPortVlanMembership object) throws CoreException {
								if (object !== null) {
									val container = object.getTarget()
									val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
									referenceValue.gSetDefinition(referenceValueDef)
									referenceValue.gSetValue(container)
									return referenceValue
								}
							}
					
							override protected unwrap(GReferenceValue referenceValue) {
								if (referenceValue !== null) {
									val referenceValueValue = referenceValue.gGetValue
									if (referenceValueValue instanceof GContainer) {
										return new org.artop.ecuc.autosar442.accessors.EthSwt.EthSwtConfig.EthSwtPort.EthSwtPortVlanMembership(referenceValueValue as GContainer)
									}
								}
							}
						}
					}
					
					
					
				}
				
				static class EthSwtPriorityRegeneration implements IWrapper<GContainer> {
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
				        if (!(object instanceof EthSwtPriorityRegeneration)){
							return false
						}
						this.target == (object as EthSwtPriorityRegeneration).target
					}
				
					def BigInteger getEthSwtPriorityRegenerationIngressPriority(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPriorityRegenerationIngressPriority"].getBigIntegerValue()
					}
					
					def void setEthSwtPriorityRegenerationIngressPriority(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPriorityRegenerationIngressPriority"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPriorityRegenerationIngressPriority"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getEthSwtPriorityRegenerationRegeneratedPriority(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPriorityRegenerationRegeneratedPriority"].getBigIntegerValue()
					}
					
					def void setEthSwtPriorityRegenerationRegeneratedPriority(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPriorityRegenerationRegeneratedPriority"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPriorityRegenerationRegeneratedPriority"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					
					
				}
				
				static class EthSwtPriorityTrafficClassAssignment implements IWrapper<GContainer> {
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
				        if (!(object instanceof EthSwtPriorityTrafficClassAssignment)){
							return false
						}
						this.target == (object as EthSwtPriorityTrafficClassAssignment).target
					}
				
					def BigInteger getEthSwtPriorityTrafficClassAssignmentPriority(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPriorityTrafficClassAssignmentPriority"].getBigIntegerValue()
					}
					
					def void setEthSwtPriorityTrafficClassAssignmentPriority(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPriorityTrafficClassAssignmentPriority"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPriorityTrafficClassAssignmentPriority"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getEthSwtPriorityTrafficClassAssignmentTrafficClass(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPriorityTrafficClassAssignmentTrafficClass"].getBigIntegerValue()
					}
					
					def void setEthSwtPriorityTrafficClassAssignmentTrafficClass(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPriorityTrafficClassAssignmentTrafficClass"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPriorityTrafficClassAssignmentTrafficClass"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					
					
				}
				
			}
			
			static class EthSwtPortVlanMembership implements IWrapper<GContainer> {
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
			        if (!(object instanceof EthSwtPortVlanMembership)){
						return false
					}
					this.target == (object as EthSwtPortVlanMembership).target
				}
			
				def BigInteger getEthSwtPortVlanDefaultPriority(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortVlanDefaultPriority"].getBigIntegerValue()
				}
				
				def void setEthSwtPortVlanDefaultPriority(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortVlanDefaultPriority"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortVlanDefaultPriority"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def EthSwtPortVlanForwardingType getEthSwtPortVlanForwardingType(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortVlanForwardingType"].getEthSwtPortVlanForwardingTypeValue()
				}
				
				def void setEthSwtPortVlanForwardingType(EthSwtPortVlanForwardingType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortVlanForwardingType"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortVlanForwardingType"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum EthSwtPortVlanForwardingType {
					ETHSWT_NOT_SENT, 
					ETHSWT_SENT_TAGGED, 
					ETHSWT_SENT_UNTAGGED
				}
				
				def EthSwtPortVlanForwardingType getEthSwtPortVlanForwardingTypeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "ETHSWT_NOT_SENT" : EthSwtPortVlanForwardingType.ETHSWT_NOT_SENT
						case "ETHSWT_SENT_TAGGED" : EthSwtPortVlanForwardingType.ETHSWT_SENT_TAGGED
						case "ETHSWT_SENT_UNTAGGED" : EthSwtPortVlanForwardingType.ETHSWT_SENT_UNTAGGED
					}
				}
				
				def void setEthSwtPortVlanForwardingTypeValue(GParameterValue parameterValue, EthSwtPortVlanForwardingType value){
					parameterValue.setValue(value)
				}
				
				def BigInteger getEthSwtPortVlanMembershipId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortVlanMembershipId"].getBigIntegerValue()
				}
				
				def void setEthSwtPortVlanMembershipId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortVlanMembershipId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortVlanMembershipId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
		}
		
		static class EthSwtSpi implements IWrapper<GContainer> {
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
		        if (!(object instanceof EthSwtSpi)){
					return false
				}
				this.target == (object as EthSwtSpi).target
			}
		
			
			
			def List<EthSwtSpiSequence> getEthSwtSpiSequences(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "EthSwtSpiSequence")
					}
				}
				return new BasicWrappingEList<EthSwtSpiSequence, GContainer>(filteredContainers, typeof(EthSwtSpiSequence), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar442.accessors.EthSwt.EthSwtConfig.EthSwtSpi.EthSwtSpiSequence ethSwtSpiSequence) {
						ethSwtSpiSequence.target?.gSetDefinition(containerValue.getContainerDefinition("EthSwtSpiSequence"))
						super.delegateAdd(ethSwtSpiSequence)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar442.accessors.EthSwt.EthSwtConfig.EthSwtSpi.EthSwtSpiSequence ethSwtSpiSequence) {
						ethSwtSpiSequence.target?.gSetDefinition(containerValue.getContainerDefinition("EthSwtSpiSequence"))
						super.delegateAdd(index, ethSwtSpiSequence)
					}
				}
			}
			
			
			static class EthSwtSpiSequence implements IWrapper<GContainer> {
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
			        if (!(object instanceof EthSwtSpiSequence)){
						return false
					}
					this.target == (object as EthSwtSpiSequence).target
				}
			
				def Boolean getEthSwtSpiAccessSynchronous(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtSpiAccessSynchronous"].getBooleanValue()
				}
				
				def void setEthSwtSpiAccessSynchronous(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtSpiAccessSynchronous"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtSpiAccessSynchronous"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				
				def List<org.artop.ecuc.autosar442.accessors.Spi.SpiDriver.SpiSequence> getEthSwtSpiSequenceNames(){
					val containerDef = containerValue.gGetDefinition
					val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
						containerDef.gGetReferences.findFirst[gGetShortName == "EthSwtSpiSequenceName"] else null
				
					val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
						override protected accept(GReferenceValue item) {
							return accept(item, typeof(GConfigReference), "EthSwtSpiSequenceName")
						}
					}
				
					return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar442.accessors.Spi.SpiDriver.SpiSequence>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar442.accessors.Spi.SpiDriver.SpiSequence)) {
						override protected wrap(org.artop.ecuc.autosar442.accessors.Spi.SpiDriver.SpiSequence object) throws CoreException {
							if (object !== null) {
								val container = object.getTarget()
								val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
								referenceValue.gSetDefinition(referenceValueDef)
								referenceValue.gSetValue(container)
								return referenceValue
							}
						}
				
						override protected unwrap(GReferenceValue referenceValue) {
							if (referenceValue !== null) {
								val referenceValueValue = referenceValue.gGetValue
								if (referenceValueValue instanceof GContainer) {
									return new org.artop.ecuc.autosar442.accessors.Spi.SpiDriver.SpiSequence(referenceValueValue as GContainer)
								}
							}
						}
					}
				}
				
				
				
			}
			
		}
		
	}
	static class EthSwtGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof EthSwtGeneral)){
				return false
			}
			this.target == (object as EthSwtGeneral).target
		}
	
		def Boolean getEthSwtDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtDevErrorDetect"].getBooleanValue()
		}
		
		def void setEthSwtDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtEnableVlanApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtEnableVlanApi"].getBooleanValue()
		}
		
		def void setEthSwtEnableVlanApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtEnableVlanApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtEnableVlanApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtGetArlTableApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetArlTableApi"].getBooleanValue()
		}
		
		def void setEthSwtGetArlTableApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetArlTableApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtGetArlTableApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtGetBufferLevelApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetBufferLevelApi"].getBooleanValue()
		}
		
		def void setEthSwtGetBufferLevelApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetBufferLevelApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtGetBufferLevelApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtGetCfgHexDumpApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetCfgHexDumpApi"].getBooleanValue()
		}
		
		def void setEthSwtGetCfgHexDumpApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetCfgHexDumpApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtGetCfgHexDumpApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtGetCfgHexDumpLengthApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetCfgHexDumpLengthApi"].getBooleanValue()
		}
		
		def void setEthSwtGetCfgHexDumpLengthApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetCfgHexDumpLengthApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtGetCfgHexDumpLengthApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtGetDropCountApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetDropCountApi"].getBooleanValue()
		}
		
		def void setEthSwtGetDropCountApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetDropCountApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtGetDropCountApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtGetMacLearningModeApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetMacLearningModeApi"].getBooleanValue()
		}
		
		def void setEthSwtGetMacLearningModeApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetMacLearningModeApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtGetMacLearningModeApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtGetPortCableDiagnosticsResultApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetPortCableDiagnosticsResultApi"].getBooleanValue()
		}
		
		def void setEthSwtGetPortCableDiagnosticsResultApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetPortCableDiagnosticsResultApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtGetPortCableDiagnosticsResultApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtGetPortIdentifierApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetPortIdentifierApi"].getBooleanValue()
		}
		
		def void setEthSwtGetPortIdentifierApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetPortIdentifierApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtGetPortIdentifierApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtGetPortMacAddrApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetPortMacAddrApi"].getBooleanValue()
		}
		
		def void setEthSwtGetPortMacAddrApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetPortMacAddrApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtGetPortMacAddrApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtGetPortMirrorStateApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetPortMirrorStateApi"].getBooleanValue()
		}
		
		def void setEthSwtGetPortMirrorStateApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetPortMirrorStateApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtGetPortMirrorStateApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtGetPortSignalQualityApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetPortSignalQualityApi"].getBooleanValue()
		}
		
		def void setEthSwtGetPortSignalQualityApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetPortSignalQualityApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtGetPortSignalQualityApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtGetRxStatsApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetRxStatsApi"].getBooleanValue()
		}
		
		def void setEthSwtGetRxStatsApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetRxStatsApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtGetRxStatsApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtGetSwitchIdentifierApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetSwitchIdentifierApi"].getBooleanValue()
		}
		
		def void setEthSwtGetSwitchIdentifierApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetSwitchIdentifierApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtGetSwitchIdentifierApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtGetSwitchRegApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetSwitchRegApi"].getBooleanValue()
		}
		
		def void setEthSwtGetSwitchRegApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetSwitchRegApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtGetSwitchRegApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtGetTxErrorCounterValuesApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetTxErrorCounterValuesApi"].getBooleanValue()
		}
		
		def void setEthSwtGetTxErrorCounterValuesApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetTxErrorCounterValuesApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtGetTxErrorCounterValuesApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtGetTxStatsApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetTxStatsApi"].getBooleanValue()
		}
		
		def void setEthSwtGetTxStatsApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetTxStatsApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtGetTxStatsApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtGlobalTimeSupportApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGlobalTimeSupportApi"].getBooleanValue()
		}
		
		def void setEthSwtGlobalTimeSupportApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGlobalTimeSupportApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtGlobalTimeSupportApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getEthSwtIndex(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtIndex"].getBigIntegerValue()
		}
		
		def void setEthSwtIndex(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtIndex"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtIndex"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def String getEthSwtLinkDownUser(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtLinkDownUser"].getStringValue()
		}
		
		def void setEthSwtLinkDownUser(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtLinkDownUser"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtLinkDownUser"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def String getEthSwtLinkUpUser(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtLinkUpUser"].getStringValue()
		}
		
		def void setEthSwtLinkUpUser(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtLinkUpUser"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtLinkUpUser"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getEthSwtLowPowerModeSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtLowPowerModeSupport"].getBooleanValue()
		}
		
		def void setEthSwtLowPowerModeSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtLowPowerModeSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtLowPowerModeSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getEthSwtMainFunctionPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtMainFunctionPeriod"].getBigDecimalValue()
		}
		
		def void setEthSwtMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtMainFunctionPeriod"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtMainFunctionPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getEthSwtManagementSupportApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtManagementSupportApi"].getBooleanValue()
		}
		
		def void setEthSwtManagementSupportApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtManagementSupportApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtManagementSupportApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getEthSwtMgmtInfoIndicationTimeout(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtMgmtInfoIndicationTimeout"].getBigDecimalValue()
		}
		
		def void setEthSwtMgmtInfoIndicationTimeout(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtMgmtInfoIndicationTimeout"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtMgmtInfoIndicationTimeout"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getEthSwtPersistentConfigurationResult(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPersistentConfigurationResult"].getBooleanValue()
		}
		
		def void setEthSwtPersistentConfigurationResult(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPersistentConfigurationResult"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPersistentConfigurationResult"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def String getEthSwtPersistentConfigurationResultUser(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPersistentConfigurationResultUser"].getStringValue()
		}
		
		def void setEthSwtPersistentConfigurationResultUser(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPersistentConfigurationResultUser"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPersistentConfigurationResultUser"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def List<String> getEthSwtPublicCddHeaderFiles(){
			val List<EcucTextualParamValue> filteredParameterValues = new AbstractFilteringEList<EcucTextualParamValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {
				override protected accept(EcucTextualParamValue item) {
					return accept(item, typeof(GConfigParameter), "EthSwtPublicCddHeaderFile")
				}
			}
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPublicCddHeaderFile"]
				return new StringValueUnwrappingEList(filteredParameterValues, typeof(EcucTextualParamValue), typeof(String), parameterDef)
			}
		}
		
		def Boolean getEthSwtReadPortMirrorConfigurationApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtReadPortMirrorConfigurationApi"].getBooleanValue()
		}
		
		def void setEthSwtReadPortMirrorConfigurationApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtReadPortMirrorConfigurationApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtReadPortMirrorConfigurationApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtReadTrcvRegisterApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtReadTrcvRegisterApi"].getBooleanValue()
		}
		
		def void setEthSwtReadTrcvRegisterApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtReadTrcvRegisterApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtReadTrcvRegisterApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtResetConfigurationApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtResetConfigurationApi"].getBooleanValue()
		}
		
		def void setEthSwtResetConfigurationApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtResetConfigurationApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtResetConfigurationApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtSetForwardingModeApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtSetForwardingModeApi"].getBooleanValue()
		}
		
		def void setEthSwtSetForwardingModeApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtSetForwardingModeApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtSetForwardingModeApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtSetMacLearningModeApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtSetMacLearningModeApi"].getBooleanValue()
		}
		
		def void setEthSwtSetMacLearningModeApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtSetMacLearningModeApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtSetMacLearningModeApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtSetPortLoopbackModeApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtSetPortLoopbackModeApi"].getBooleanValue()
		}
		
		def void setEthSwtSetPortLoopbackModeApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtSetPortLoopbackModeApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtSetPortLoopbackModeApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtSetPortMirrorStateApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtSetPortMirrorStateApi"].getBooleanValue()
		}
		
		def void setEthSwtSetPortMirrorStateApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtSetPortMirrorStateApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtSetPortMirrorStateApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtSetPortTestModeApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtSetPortTestModeApi"].getBooleanValue()
		}
		
		def void setEthSwtSetPortTestModeApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtSetPortTestModeApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtSetPortTestModeApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtSetPortTxModeApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtSetPortTxModeApi"].getBooleanValue()
		}
		
		def void setEthSwtSetPortTxModeApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtSetPortTxModeApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtSetPortTxModeApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtSetSwitchRegApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtSetSwitchRegApi"].getBooleanValue()
		}
		
		def void setEthSwtSetSwitchRegApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtSetSwitchRegApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtSetSwitchRegApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtStoreConfigurationApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtStoreConfigurationApi"].getBooleanValue()
		}
		
		def void setEthSwtStoreConfigurationApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtStoreConfigurationApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtStoreConfigurationApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtVerifyConfigApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtVerifyConfigApi"].getBooleanValue()
		}
		
		def void setEthSwtVerifyConfigApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtVerifyConfigApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtVerifyConfigApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtVersionInfoApi"].getBooleanValue()
		}
		
		def void setEthSwtVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtWritePortMirrorConfigurationApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtWritePortMirrorConfigurationApi"].getBooleanValue()
		}
		
		def void setEthSwtWritePortMirrorConfigurationApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtWritePortMirrorConfigurationApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtWritePortMirrorConfigurationApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtWriteTrcvRegisterApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtWriteTrcvRegisterApi"].getBooleanValue()
		}
		
		def void setEthSwtWriteTrcvRegisterApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtWriteTrcvRegisterApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtWriteTrcvRegisterApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof EthSwt)){
			return false
		}
		this.target == (object as EthSwt).target
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
