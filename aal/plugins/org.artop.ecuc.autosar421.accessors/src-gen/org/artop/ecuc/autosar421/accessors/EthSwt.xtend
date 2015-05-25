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
			override protected delegateAdd(org.artop.ecuc.autosar421.accessors.EthSwt$EthSwtConfig ethSwtConfig) {
				ethSwtConfig.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("EthSwtConfig"))
				super.delegateAdd(ethSwtConfig)
			}
		
			override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.EthSwt$EthSwtConfig ethSwtConfig) {
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
		
		def BigInteger getEthSwtIdx(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtIdx"])
		}
		
		def void setEthSwtIdx(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtIdx"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtIdx"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.EthSwt$EthSwtConfig$EthSwtPort ethSwtPort) {
					ethSwtPort.target?.gSetDefinition(containerValue.getContainerDefinition("EthSwtPort"))
					super.delegateAdd(ethSwtPort)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.EthSwt$EthSwtConfig$EthSwtPort ethSwtPort) {
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
			
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getETHSWT_E_ACCESS(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "ETHSWT_E_ACCESS")
			}
					
			def void setETHSWT_E_ACCESS(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "ETHSWT_E_ACCESS"], object.getTarget())
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
			
			
			def org.artop.ecuc.autosar421.accessors.NvM.NvMBlockDescriptor getEthSwtNvmBlockDescriptorRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.NvM.NvMBlockDescriptor), "EthSwtNvmBlockDescriptorRef")
			}
					
			def void setEthSwtNvmBlockDescriptorRef(org.artop.ecuc.autosar421.accessors.NvM.NvMBlockDescriptor object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "EthSwtNvmBlockDescriptorRef"], object.getTarget())
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
				EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortEnableLinkDownCallback"])
			}
			
			def void setEthSwtPortEnableLinkDownCallback(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortEnableLinkDownCallback"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortEnableLinkDownCallback"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getEthSwtPortIdx(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortIdx"])
			}
			
			def void setEthSwtPortIdx(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortIdx"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortIdx"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def EthSwtPortPhysicalLayerType getEthSwtPortPhysicalLayerType(){
				getEthSwtPortPhysicalLayerTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortPhysicalLayerType"])
			}
			
			def void setEthSwtPortPhysicalLayerType(EthSwtPortPhysicalLayerType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortPhysicalLayerType"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortPhysicalLayerType"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum EthSwtPortPhysicalLayerType {
				ETHSWT_PORT_BASE_T, 
				ETHSWT_PORT_BROAD_R_REACH, 
				ETHSWT_PORT_RTPGE, 
				ETHSWT_PORT_X_MII
			}
				
			def EthSwtPortPhysicalLayerType getEthSwtPortPhysicalLayerTypeValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "ETHSWT_PORT_BASE_T" : EthSwtPortPhysicalLayerType.ETHSWT_PORT_BASE_T
					case "ETHSWT_PORT_BROAD_R_REACH" : EthSwtPortPhysicalLayerType.ETHSWT_PORT_BROAD_R_REACH
					case "ETHSWT_PORT_RTPGE" : EthSwtPortPhysicalLayerType.ETHSWT_PORT_RTPGE
					case "ETHSWT_PORT_X_MII" : EthSwtPortPhysicalLayerType.ETHSWT_PORT_X_MII
				}
			}
			
			def void setEthSwtPortPhysicalLayerTypeValue(GParameterValue paramValue, EthSwtPortPhysicalLayerType value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
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
			
			def EthSwtPortSpeed getEthSwtPortSpeed(){
				getEthSwtPortSpeedValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortSpeed"])
			}
			
			def void setEthSwtPortSpeed(EthSwtPortSpeed value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortSpeed"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortSpeed"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum EthSwtPortSpeed {
				ETHSWT_PORT_SPEED_10, 
				ETHSWT_PORT_SPEED_100, 
				ETHSWT_PORT_SPEED_1000
			}
				
			def EthSwtPortSpeed getEthSwtPortSpeedValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "ETHSWT_PORT_SPEED_10" : EthSwtPortSpeed.ETHSWT_PORT_SPEED_10
					case "ETHSWT_PORT_SPEED_100" : EthSwtPortSpeed.ETHSWT_PORT_SPEED_100
					case "ETHSWT_PORT_SPEED_1000" : EthSwtPortSpeed.ETHSWT_PORT_SPEED_1000
				}
			}
			
			def void setEthSwtPortSpeedValue(GParameterValue paramValue, EthSwtPortSpeed value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.EthTrcv.EthTrcvConfigSet.EthTrcvConfig getEthSwtPortTrcvRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EthTrcv.EthTrcvConfigSet.EthTrcvConfig), "EthSwtPortTrcvRef")
			}
					
			def void setEthSwtPortTrcvRef(org.artop.ecuc.autosar421.accessors.EthTrcv.EthTrcvConfigSet.EthTrcvConfig object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "EthSwtPortTrcvRef"], object.getTarget())
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
				
				
				def org.artop.ecuc.autosar421.accessors.EthSwt.EthSwtConfig.EthSwtPort.EthSwtPortEgress.EthSwtPortScheduler getEthSwtPortEgressLastSchedulerRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EthSwt.EthSwtConfig.EthSwtPort.EthSwtPortEgress.EthSwtPortScheduler), "EthSwtPortEgressLastSchedulerRef")
				}
						
				def void setEthSwtPortEgressLastSchedulerRef(org.artop.ecuc.autosar421.accessors.EthSwt.EthSwtConfig.EthSwtPort.EthSwtPortEgress.EthSwtPortScheduler object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "EthSwtPortEgressLastSchedulerRef"], object.getTarget())
					}
				}
				
				
				def List<EthSwtPortFifo> getEthSwtPortFifos(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "EthSwtPortFifo")
						}
					}
					return new BasicWrappingEList<EthSwtPortFifo, GContainer>(filteredContainers, typeof(EthSwtPortFifo), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.EthSwt$EthSwtConfig$EthSwtPort$EthSwtPortEgress$EthSwtPortFifo ethSwtPortFifo) {
							ethSwtPortFifo.target?.gSetDefinition(containerValue.getContainerDefinition("EthSwtPortFifo"))
							super.delegateAdd(ethSwtPortFifo)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.EthSwt$EthSwtConfig$EthSwtPort$EthSwtPortEgress$EthSwtPortFifo ethSwtPortFifo) {
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
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.EthSwt$EthSwtConfig$EthSwtPort$EthSwtPortEgress$EthSwtPortScheduler ethSwtPortScheduler) {
							ethSwtPortScheduler.target?.gSetDefinition(containerValue.getContainerDefinition("EthSwtPortScheduler"))
							super.delegateAdd(ethSwtPortScheduler)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.EthSwt$EthSwtConfig$EthSwtPort$EthSwtPortEgress$EthSwtPortScheduler ethSwtPortScheduler) {
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
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.EthSwt$EthSwtConfig$EthSwtPort$EthSwtPortEgress$EthSwtPortShaper ethSwtPortShaper) {
							ethSwtPortShaper.target?.gSetDefinition(containerValue.getContainerDefinition("EthSwtPortShaper"))
							super.delegateAdd(ethSwtPortShaper)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.EthSwt$EthSwtConfig$EthSwtPort$EthSwtPortEgress$EthSwtPortShaper ethSwtPortShaper) {
							ethSwtPortShaper.target?.gSetDefinition(containerValue.getContainerDefinition("EthSwtPortShaper"))
							super.delegateAdd(index, ethSwtPortShaper)
						}	
					}
				}
				
				def List<EthSwtPortVlanForwarding> getEthSwtPortVlanForwardings(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "EthSwtPortVlanForwarding")
						}
					}
					return new BasicWrappingEList<EthSwtPortVlanForwarding, GContainer>(filteredContainers, typeof(EthSwtPortVlanForwarding), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.EthSwt$EthSwtConfig$EthSwtPort$EthSwtPortEgress$EthSwtPortVlanForwarding ethSwtPortVlanForwarding) {
							ethSwtPortVlanForwarding.target?.gSetDefinition(containerValue.getContainerDefinition("EthSwtPortVlanForwarding"))
							super.delegateAdd(ethSwtPortVlanForwarding)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.EthSwt$EthSwtConfig$EthSwtPort$EthSwtPortEgress$EthSwtPortVlanForwarding ethSwtPortVlanForwarding) {
							ethSwtPortVlanForwarding.target?.gSetDefinition(containerValue.getContainerDefinition("EthSwtPortVlanForwarding"))
							super.delegateAdd(index, ethSwtPortVlanForwarding)
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
						getEthSwtPortSchedulerAlgorithmValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortSchedulerAlgorithm"])
					}
					
					def void setEthSwtPortSchedulerAlgorithm(EthSwtPortSchedulerAlgorithm value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortSchedulerAlgorithm"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortSchedulerAlgorithm"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					enum EthSwtPortSchedulerAlgorithm {
						ETHSWT_SCHEDULER_DEFICIT_ROUND_ROBIN, 
						ETHSWT_SCHEDULER_STRICT_PRIORITY, 
						ETHSWT_SCHEDULER_WEIGHTED_ROUND_ROBIN
					}
						
					def EthSwtPortSchedulerAlgorithm getEthSwtPortSchedulerAlgorithmValue(GParameterValue paramValue){
						val castedParamValue = paramValue as EcucTextualParamValue
						switch (castedParamValue.value){
							case "ETHSWT_SCHEDULER_DEFICIT_ROUND_ROBIN" : EthSwtPortSchedulerAlgorithm.ETHSWT_SCHEDULER_DEFICIT_ROUND_ROBIN
							case "ETHSWT_SCHEDULER_STRICT_PRIORITY" : EthSwtPortSchedulerAlgorithm.ETHSWT_SCHEDULER_STRICT_PRIORITY
							case "ETHSWT_SCHEDULER_WEIGHTED_ROUND_ROBIN" : EthSwtPortSchedulerAlgorithm.ETHSWT_SCHEDULER_WEIGHTED_ROUND_ROBIN
						}
					}
					
					def void setEthSwtPortSchedulerAlgorithmValue(GParameterValue paramValue, EthSwtPortSchedulerAlgorithm value){
						EcucValueAccessor421Util.setParameterValue(paramValue, value)
					}
					
					
					
					def List<EthSwtPortSchedulerPredecessor> getEthSwtPortSchedulerPredecessors(){
						val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
							override protected accept(GContainer item) {
								return accept(item, typeof(GContainerDef), "EthSwtPortSchedulerPredecessor")
							}
						}
						return new BasicWrappingEList<EthSwtPortSchedulerPredecessor, GContainer>(filteredContainers, typeof(EthSwtPortSchedulerPredecessor), typeof(GContainer)) {
							override protected delegateAdd(org.artop.ecuc.autosar421.accessors.EthSwt$EthSwtConfig$EthSwtPort$EthSwtPortEgress$EthSwtPortScheduler$EthSwtPortSchedulerPredecessor ethSwtPortSchedulerPredecessor) {
								ethSwtPortSchedulerPredecessor.target?.gSetDefinition(containerValue.getContainerDefinition("EthSwtPortSchedulerPredecessor"))
								super.delegateAdd(ethSwtPortSchedulerPredecessor)
							}
							
							override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.EthSwt$EthSwtConfig$EthSwtPort$EthSwtPortEgress$EthSwtPortScheduler$EthSwtPortSchedulerPredecessor ethSwtPortSchedulerPredecessor) {
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
							EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortSchedulerPredecessorOrder"])
						}
						
						def void setEthSwtPortSchedulerPredecessorOrder(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortSchedulerPredecessorOrder"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortSchedulerPredecessorOrder"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortShaperIdleSlope"])
					}
					
					def void setEthSwtPortShaperIdleSlope(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortShaperIdleSlope"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortShaperIdleSlope"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EthSwt.EthSwtConfig.EthSwtPort.EthSwtPortEgress.EthSwtPortFifo getEthSwtPortEgressPredecessorFifoRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EthSwt.EthSwtConfig.EthSwtPort.EthSwtPortEgress.EthSwtPortFifo), "EthSwtPortEgressPredecessorFifoRef")
					}
							
					def void setEthSwtPortEgressPredecessorFifoRef(org.artop.ecuc.autosar421.accessors.EthSwt.EthSwtConfig.EthSwtPort.EthSwtPortEgress.EthSwtPortFifo object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "EthSwtPortEgressPredecessorFifoRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class EthSwtPortVlanForwarding implements IWrapper<GContainer> {
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
				        if (!(object instanceof EthSwtPortVlanForwarding)){
							return false
						}
						this.target == (object as EthSwtPortVlanForwarding).target
					}
					
					def BigInteger getEthSwtPortVlanDefaultPriority(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortVlanDefaultPriority"])
					}
					
					def void setEthSwtPortVlanDefaultPriority(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortVlanDefaultPriority"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortVlanDefaultPriority"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getEthSwtPortVlanForwardingId(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortVlanForwardingId"])
					}
					
					def void setEthSwtPortVlanForwardingId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortVlanForwardingId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortVlanForwardingId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def EthSwtPortVlanForwardingType getEthSwtPortVlanForwardingType(){
						getEthSwtPortVlanForwardingTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortVlanForwardingType"])
					}
					
					def void setEthSwtPortVlanForwardingType(EthSwtPortVlanForwardingType value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortVlanForwardingType"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortVlanForwardingType"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					enum EthSwtPortVlanForwardingType {
						ETHSWT_NOT_SENT, 
						ETHSWT_SENT_TAGGED, 
						ETHSWT_SENT_UNTAGGED
					}
						
					def EthSwtPortVlanForwardingType getEthSwtPortVlanForwardingTypeValue(GParameterValue paramValue){
						val castedParamValue = paramValue as EcucTextualParamValue
						switch (castedParamValue.value){
							case "ETHSWT_NOT_SENT" : EthSwtPortVlanForwardingType.ETHSWT_NOT_SENT
							case "ETHSWT_SENT_TAGGED" : EthSwtPortVlanForwardingType.ETHSWT_SENT_TAGGED
							case "ETHSWT_SENT_UNTAGGED" : EthSwtPortVlanForwardingType.ETHSWT_SENT_UNTAGGED
						}
					}
					
					def void setEthSwtPortVlanForwardingTypeValue(GParameterValue paramValue, EthSwtPortVlanForwardingType value){
						EcucValueAccessor421Util.setParameterValue(paramValue, value)
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
				
				def BigInteger getEthSwtPortIngressVlanModification(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortIngressVlanModification"])
				}
				
				def void setEthSwtPortIngressVlanModification(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortIngressVlanModification"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortIngressVlanModification"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigInteger getEthSwtPortTrafficClassAssignment(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortTrafficClassAssignment"])
				}
				
				def void setEthSwtPortTrafficClassAssignment(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortTrafficClassAssignment"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortTrafficClassAssignment"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				
				def List<EthSwtPriorityRegeneration> getEthSwtPriorityRegenerations(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "EthSwtPriorityRegeneration")
						}
					}
					return new BasicWrappingEList<EthSwtPriorityRegeneration, GContainer>(filteredContainers, typeof(EthSwtPriorityRegeneration), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.EthSwt$EthSwtConfig$EthSwtPort$EthSwtPortIngress$EthSwtPriorityRegeneration ethSwtPriorityRegeneration) {
							ethSwtPriorityRegeneration.target?.gSetDefinition(containerValue.getContainerDefinition("EthSwtPriorityRegeneration"))
							super.delegateAdd(ethSwtPriorityRegeneration)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.EthSwt$EthSwtConfig$EthSwtPort$EthSwtPortIngress$EthSwtPriorityRegeneration ethSwtPriorityRegeneration) {
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
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.EthSwt$EthSwtConfig$EthSwtPort$EthSwtPortIngress$EthSwtPriorityTrafficClassAssignment ethSwtPriorityTrafficClassAssignment) {
							ethSwtPriorityTrafficClassAssignment.target?.gSetDefinition(containerValue.getContainerDefinition("EthSwtPriorityTrafficClassAssignment"))
							super.delegateAdd(ethSwtPriorityTrafficClassAssignment)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.EthSwt$EthSwtConfig$EthSwtPort$EthSwtPortIngress$EthSwtPriorityTrafficClassAssignment ethSwtPriorityTrafficClassAssignment) {
							ethSwtPriorityTrafficClassAssignment.target?.gSetDefinition(containerValue.getContainerDefinition("EthSwtPriorityTrafficClassAssignment"))
							super.delegateAdd(index, ethSwtPriorityTrafficClassAssignment)
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
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPriorityRegenerationIngressPriority"])
					}
					
					def void setEthSwtPriorityRegenerationIngressPriority(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPriorityRegenerationIngressPriority"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPriorityRegenerationIngressPriority"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getEthSwtPriorityRegenerationRegeneratedPriority(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPriorityRegenerationRegeneratedPriority"])
					}
					
					def void setEthSwtPriorityRegenerationRegeneratedPriority(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPriorityRegenerationRegeneratedPriority"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPriorityRegenerationRegeneratedPriority"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPriorityTrafficClassAssignmentPriority"])
					}
					
					def void setEthSwtPriorityTrafficClassAssignmentPriority(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPriorityTrafficClassAssignmentPriority"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPriorityTrafficClassAssignmentPriority"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getEthSwtPriorityTrafficClassAssignmentTrafficClass(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPriorityTrafficClassAssignmentTrafficClass"])
					}
					
					def void setEthSwtPriorityTrafficClassAssignmentTrafficClass(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPriorityTrafficClassAssignmentTrafficClass"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPriorityTrafficClassAssignmentTrafficClass"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					
					
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
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.EthSwt$EthSwtConfig$EthSwtSpi$EthSwtSpiSequence ethSwtSpiSequence) {
						ethSwtSpiSequence.target?.gSetDefinition(containerValue.getContainerDefinition("EthSwtSpiSequence"))
						super.delegateAdd(ethSwtSpiSequence)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.EthSwt$EthSwtConfig$EthSwtSpi$EthSwtSpiSequence ethSwtSpiSequence) {
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
					EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtSpiAccessSynchronous"])
				}
				
				def void setEthSwtSpiAccessSynchronous(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtSpiAccessSynchronous"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtSpiAccessSynchronous"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
				}
				
				
				def List<org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiSequence> getEthSwtSpiSequenceNames(){
					val containerDef = containerValue.gGetDefinition
					val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
						containerDef.gGetReferences.findFirst[gGetShortName == "EthSwtSpiSequenceName"] else null
									
					val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
						override protected accept(GReferenceValue item) {
							return accept(item, typeof(GConfigReference), "EthSwtSpiSequenceName")
						}
					}
					
					return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiSequence>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiSequence)) {
						override protected wrap(org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiSequence object) throws CoreException {
							if (object != null) {
								val container = object.getTarget()
								val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
								referenceValue.gSetDefinition(referenceValueDef)
								referenceValue.gSetValue(container)
								return referenceValue
							}
						}
						
						override protected unwrap(GReferenceValue referenceValue) {
							if (referenceValue != null) {
								val referenceValueValue = referenceValue.gGetValue
								if (referenceValueValue instanceof GContainer) {
									return new org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiSequence(referenceValueValue as GContainer)
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
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtDevErrorDetect"])
		}
		
		def void setEthSwtDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtEnableVlanApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtEnableVlanApi"])
		}
		
		def void setEthSwtEnableVlanApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtEnableVlanApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtEnableVlanApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtGetArlTableApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetArlTableApi"])
		}
		
		def void setEthSwtGetArlTableApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetArlTableApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtGetArlTableApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtGetBufferLevelApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetBufferLevelApi"])
		}
		
		def void setEthSwtGetBufferLevelApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetBufferLevelApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtGetBufferLevelApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtGetDropCountApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetDropCountApi"])
		}
		
		def void setEthSwtGetDropCountApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetDropCountApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtGetDropCountApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtGetEtherStatsApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetEtherStatsApi"])
		}
		
		def void setEthSwtGetEtherStatsApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetEtherStatsApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtGetEtherStatsApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtGetMacLearningModeApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetMacLearningModeApi"])
		}
		
		def void setEthSwtGetMacLearningModeApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetMacLearningModeApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtGetMacLearningModeApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtGetPortMacAddrApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetPortMacAddrApi"])
		}
		
		def void setEthSwtGetPortMacAddrApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetPortMacAddrApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtGetPortMacAddrApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtGetSwitchRegApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetSwitchRegApi"])
		}
		
		def void setEthSwtGetSwitchRegApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetSwitchRegApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtGetSwitchRegApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getEthSwtIndex(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtIndex"])
		}
		
		def void setEthSwtIndex(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtIndex"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtIndex"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def String getEthSwtLinkDownUser(){
			EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtLinkDownUser"])
		}
		
		def void setEthSwtLinkDownUser(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtLinkDownUser"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtLinkDownUser"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def String getEthSwtLinkUpUser(){
			EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtLinkUpUser"])
		}
		
		def void setEthSwtLinkUpUser(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtLinkUpUser"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtLinkUpUser"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEthSwtPersistentConfigurationResult(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPersistentConfigurationResult"])
		}
		
		def void setEthSwtPersistentConfigurationResult(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPersistentConfigurationResult"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPersistentConfigurationResult"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def String getEthSwtPersistentConfigurationResultUser(){
			EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPersistentConfigurationResultUser"])
		}
		
		def void setEthSwtPersistentConfigurationResultUser(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPersistentConfigurationResultUser"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPersistentConfigurationResultUser"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		
		def Boolean getEthSwtReadTrcvRegisterApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtReadTrcvRegisterApi"])
		}
		
		def void setEthSwtReadTrcvRegisterApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtReadTrcvRegisterApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtReadTrcvRegisterApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtResetConfigurationApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtResetConfigurationApi"])
		}
		
		def void setEthSwtResetConfigurationApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtResetConfigurationApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtResetConfigurationApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtSetMacLearningModeApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtSetMacLearningModeApi"])
		}
		
		def void setEthSwtSetMacLearningModeApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtSetMacLearningModeApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtSetMacLearningModeApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtSetSwitchRegApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtSetSwitchRegApi"])
		}
		
		def void setEthSwtSetSwitchRegApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtSetSwitchRegApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtSetSwitchRegApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtStoreConfigurationApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtStoreConfigurationApi"])
		}
		
		def void setEthSwtStoreConfigurationApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtStoreConfigurationApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtStoreConfigurationApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtVersionInfoApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtVersionInfoApi"])
		}
		
		def void setEthSwtVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthSwtWriteTrcvRegisterApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtWriteTrcvRegisterApi"])
		}
		
		def void setEthSwtWriteTrcvRegisterApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtWriteTrcvRegisterApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtWriteTrcvRegisterApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
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
		if (definitionFeature != null) {
			val definition = child.eGet(definitionFeature)
			if (ecucTypeDefType.isInstance(definition)) {
				return ecucTypeDefType.cast(definition).gGetShortName.equals(ecucTypeDefName)
			}
		}
		return false
	}
}
