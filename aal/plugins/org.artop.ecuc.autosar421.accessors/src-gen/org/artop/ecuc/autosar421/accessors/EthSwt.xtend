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

import static extension org.artop.ecuc.autosar4x.accessors.lib.ParameterValueAccessor4xUtil.*
import org.artop.ecuc.autosar4x.accessors.lib.ParameterValueAccessor4xUtil
import org.artop.ecuc.autosar4x.accessors.lib.IntegerValueUnwrappingEList
import org.artop.ecuc.autosar4x.accessors.lib.FloatValueUnwrappingEList
import org.artop.ecuc.autosar4x.accessors.lib.BooleanValueUnwrappingEList
import org.artop.ecuc.autosar4x.accessors.lib.StringValueUnwrappingEList
import org.artop.ecuc.autosar4x.accessors.lib.DocumentationBlockValueUnwrappingEList

import org.eclipse.sphinx.emf.util.AbstractFilteringEList
import org.eclipse.sphinx.emf.util.BasicWrappingEList

import gautosar.gecucdescription.GContainer
import gautosar.gecucdescription.GModuleConfiguration
import gautosar.gecucdescription.GParameterValue
import gautosar.gecucdescription.GecucdescriptionPackage
import gautosar.gecucparameterdef.GConfigParameter
import gautosar.gecucparameterdef.GContainerDef
import gautosar.gecucparameterdef.GParamConfContainerDef
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable
import static extension org.artop.ecuc.gautosar.accessors.lib.ParameterValueAccessorUtil.*
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EStructuralFeature
import org.eclipse.sphinx.emf.util.AbstractUnwrappingEList
import org.eclipse.core.runtime.CoreException

class EthSwt implements BasicWrappingEList.IWrapper<GModuleConfiguration> {
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
		return new BasicWrappingEList<EthSwtConfig, GContainer>(filteredContainers, typeof(EthSwtConfig), typeof(GContainer))
	}
	def EthSwtGeneral getEthSwtGeneral(){
		moduleConfiguration.getByType(typeof(EthSwtGeneral))
	}
	
	def void setEthSwtGeneral(EthSwtGeneral ethSwtGeneral){
		val GContainer container = ethSwtGeneral.getTarget() 
	    moduleConfiguration.setContainer(container, "EthSwtGeneral")
	}
	
	static class EthSwtConfig implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		def Integer getEthSwtIdx(){
			ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtIdx"])
		}
		
		def void setEthSwtIdx(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtIdx"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtIdx"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		
		
		def EthSwtDemEventParameterRefs getEthSwtDemEventParameterRefs(){
			containerValue.getByType(typeof(EthSwtDemEventParameterRefs))
		}
		
		def void setEthSwtDemEventParameterRefs(GContainer subContainer){
			containerValue.setContainer(subContainer, "EthSwtDemEventParameterRefs")
		}
		
		def EthSwtNvm getEthSwtNvm(){
			containerValue.getByType(typeof(EthSwtNvm))
		}
		
		def void setEthSwtNvm(GContainer subContainer){
			containerValue.setContainer(subContainer, "EthSwtNvm")
		}
		
		def List<EthSwtPort> getEthSwtPorts(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "EthSwtPort")
				}
			}
			return new BasicWrappingEList<EthSwtPort, GContainer>(filteredContainers, typeof(EthSwtPort), typeof(GContainer))
		}
		
		def EthSwtSpi getEthSwtSpi(){
			containerValue.getByType(typeof(EthSwtSpi))
		}
		
		def void setEthSwtSpi(GContainer subContainer){
			containerValue.setContainer(subContainer, "EthSwtSpi")
		}
		
		
		static class EthSwtDemEventParameterRefs implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		static class EthSwtNvm implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		static class EthSwtPort implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Boolean getEthSwtPortEnableLinkDownCallback(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortEnableLinkDownCallback"])
			}
			
			def void setEthSwtPortEnableLinkDownCallback(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortEnableLinkDownCallback"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortEnableLinkDownCallback"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getEthSwtPortIdx(){
				ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortIdx"])
			}
			
			def void setEthSwtPortIdx(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortIdx"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortIdx"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def EthSwtPortPhysicalLayerType getEthSwtPortPhysicalLayerType(){
				getEthSwtPortPhysicalLayerTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortPhysicalLayerType"])
			}
			
			def void setEthSwtPortPhysicalLayerType(EthSwtPortPhysicalLayerType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortPhysicalLayerType"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortPhysicalLayerType"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
				ParameterValueAccessor4xUtil.setParameterValue(paramValue, value)
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
						parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortSpeed"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
				ParameterValueAccessor4xUtil.setParameterValue(paramValue, value)
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
			
			def void setEthSwtPortEgress(GContainer subContainer){
				containerValue.setContainer(subContainer, "EthSwtPortEgress")
			}
			
			def EthSwtPortIngress getEthSwtPortIngress(){
				containerValue.getByType(typeof(EthSwtPortIngress))
			}
			
			def void setEthSwtPortIngress(GContainer subContainer){
				containerValue.setContainer(subContainer, "EthSwtPortIngress")
			}
			
			
			static class EthSwtPortEgress implements BasicWrappingEList.IWrapper<GContainer> {
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
					return new BasicWrappingEList<EthSwtPortFifo, GContainer>(filteredContainers, typeof(EthSwtPortFifo), typeof(GContainer))
				}
				
				def List<EthSwtPortScheduler> getEthSwtPortSchedulers(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "EthSwtPortScheduler")
						}
					}
					return new BasicWrappingEList<EthSwtPortScheduler, GContainer>(filteredContainers, typeof(EthSwtPortScheduler), typeof(GContainer))
				}
				
				def List<EthSwtPortShaper> getEthSwtPortShapers(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "EthSwtPortShaper")
						}
					}
					return new BasicWrappingEList<EthSwtPortShaper, GContainer>(filteredContainers, typeof(EthSwtPortShaper), typeof(GContainer))
				}
				
				def List<EthSwtPortVlanForwarding> getEthSwtPortVlanForwardings(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "EthSwtPortVlanForwarding")
						}
					}
					return new BasicWrappingEList<EthSwtPortVlanForwarding, GContainer>(filteredContainers, typeof(EthSwtPortVlanForwarding), typeof(GContainer))
				}
				
				
				static class EthSwtPortFifo implements BasicWrappingEList.IWrapper<GContainer> {
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
					
					def List<Integer> getEthSwtPortFifoTrafficClassAssignments(){
						val List<EcucNumericalParamValue> filteredParameterValues = new AbstractFilteringEList<EcucNumericalParamValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {
							override protected accept(EcucNumericalParamValue item) {
								return accept(item, typeof(GConfigParameter), "EthSwtPortFifoTrafficClassAssignment")
							}
						}
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortFifoTrafficClassAssignment"]
							return new IntegerValueUnwrappingEList(filteredParameterValues, typeof(EcucNumericalParamValue), typeof(Integer), parameterDef)
						}
					}
					
					
					
					
				}
				
				static class EthSwtPortScheduler implements BasicWrappingEList.IWrapper<GContainer> {
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
					
					def EthSwtPortSchedulerAlgorithm getEthSwtPortSchedulerAlgorithm(){
						getEthSwtPortSchedulerAlgorithmValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortSchedulerAlgorithm"])
					}
					
					def void setEthSwtPortSchedulerAlgorithm(EthSwtPortSchedulerAlgorithm value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortSchedulerAlgorithm"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortSchedulerAlgorithm"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
						ParameterValueAccessor4xUtil.setParameterValue(paramValue, value)
					}
					
					
					
					def List<EthSwtPortSchedulerPredecessor> getEthSwtPortSchedulerPredecessors(){
						val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
							override protected accept(GContainer item) {
								return accept(item, typeof(GContainerDef), "EthSwtPortSchedulerPredecessor")
							}
						}
						return new BasicWrappingEList<EthSwtPortSchedulerPredecessor, GContainer>(filteredContainers, typeof(EthSwtPortSchedulerPredecessor), typeof(GContainer))
					}
					
					
					static class EthSwtPortSchedulerPredecessor implements BasicWrappingEList.IWrapper<GContainer> {
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
						
						def Integer getEthSwtPortSchedulerPredecessorOrder(){
							ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortSchedulerPredecessorOrder"])
						}
						
						def void setEthSwtPortSchedulerPredecessorOrder(Integer value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortSchedulerPredecessorOrder"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortSchedulerPredecessorOrder"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
						}
						
						
						
						
						
					}
					
				}
				
				static class EthSwtPortShaper implements BasicWrappingEList.IWrapper<GContainer> {
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
					
					def Integer getEthSwtPortShaperIdleSlope(){
						ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortShaperIdleSlope"])
					}
					
					def void setEthSwtPortShaperIdleSlope(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortShaperIdleSlope"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortShaperIdleSlope"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
				
				static class EthSwtPortVlanForwarding implements BasicWrappingEList.IWrapper<GContainer> {
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
					
					def Integer getEthSwtPortVlanDefaultPriority(){
						ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortVlanDefaultPriority"])
					}
					
					def void setEthSwtPortVlanDefaultPriority(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortVlanDefaultPriority"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortVlanDefaultPriority"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Integer getEthSwtPortVlanForwardingId(){
						ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortVlanForwardingId"])
					}
					
					def void setEthSwtPortVlanForwardingId(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortVlanForwardingId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortVlanForwardingId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def EthSwtPortVlanForwardingType getEthSwtPortVlanForwardingType(){
						getEthSwtPortVlanForwardingTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortVlanForwardingType"])
					}
					
					def void setEthSwtPortVlanForwardingType(EthSwtPortVlanForwardingType value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortVlanForwardingType"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortVlanForwardingType"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
						ParameterValueAccessor4xUtil.setParameterValue(paramValue, value)
					}
					
					
					
					
				}
				
			}
			
			static class EthSwtPortIngress implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def Integer getEthSwtPortIngressVlanModification(){
					ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortIngressVlanModification"])
				}
				
				def void setEthSwtPortIngressVlanModification(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortIngressVlanModification"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortIngressVlanModification"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getEthSwtPortTrafficClassAssignment(){
					ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortTrafficClassAssignment"])
				}
				
				def void setEthSwtPortTrafficClassAssignment(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPortTrafficClassAssignment"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPortTrafficClassAssignment"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				
				def List<EthSwtPriorityRegeneration> getEthSwtPriorityRegenerations(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "EthSwtPriorityRegeneration")
						}
					}
					return new BasicWrappingEList<EthSwtPriorityRegeneration, GContainer>(filteredContainers, typeof(EthSwtPriorityRegeneration), typeof(GContainer))
				}
				
				def List<EthSwtPriorityTrafficClassAssignment> getEthSwtPriorityTrafficClassAssignments(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "EthSwtPriorityTrafficClassAssignment")
						}
					}
					return new BasicWrappingEList<EthSwtPriorityTrafficClassAssignment, GContainer>(filteredContainers, typeof(EthSwtPriorityTrafficClassAssignment), typeof(GContainer))
				}
				
				
				static class EthSwtPriorityRegeneration implements BasicWrappingEList.IWrapper<GContainer> {
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
					
					def Integer getEthSwtPriorityRegenerationIngressPriority(){
						ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPriorityRegenerationIngressPriority"])
					}
					
					def void setEthSwtPriorityRegenerationIngressPriority(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPriorityRegenerationIngressPriority"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPriorityRegenerationIngressPriority"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Integer getEthSwtPriorityRegenerationRegeneratedPriority(){
						ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPriorityRegenerationRegeneratedPriority"])
					}
					
					def void setEthSwtPriorityRegenerationRegeneratedPriority(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPriorityRegenerationRegeneratedPriority"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPriorityRegenerationRegeneratedPriority"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					
					
					
				}
				
				static class EthSwtPriorityTrafficClassAssignment implements BasicWrappingEList.IWrapper<GContainer> {
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
					
					def Integer getEthSwtPriorityTrafficClassAssignmentPriority(){
						ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPriorityTrafficClassAssignmentPriority"])
					}
					
					def void setEthSwtPriorityTrafficClassAssignmentPriority(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPriorityTrafficClassAssignmentPriority"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPriorityTrafficClassAssignmentPriority"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					def Integer getEthSwtPriorityTrafficClassAssignmentTrafficClass(){
						ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPriorityTrafficClassAssignmentTrafficClass"])
					}
					
					def void setEthSwtPriorityTrafficClassAssignmentTrafficClass(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPriorityTrafficClassAssignmentTrafficClass"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPriorityTrafficClassAssignmentTrafficClass"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
					}
					
					
					
					
				}
				
			}
			
		}
		
		static class EthSwtSpi implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			
			
			def List<EthSwtSpiSequence> getEthSwtSpiSequences(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "EthSwtSpiSequence")
					}
				}
				return new BasicWrappingEList<EthSwtSpiSequence, GContainer>(filteredContainers, typeof(EthSwtSpiSequence), typeof(GContainer))
			}
			
			
			static class EthSwtSpiSequence implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def Boolean getEthSwtSpiAccessSynchronous(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtSpiAccessSynchronous"])
				}
				
				def void setEthSwtSpiAccessSynchronous(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtSpiAccessSynchronous"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtSpiAccessSynchronous"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiSequence getEthSwtSpiSequenceName(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiSequence), "EthSwtSpiSequenceName")
				}
						
				def void setEthSwtSpiSequenceName(org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiSequence object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "EthSwtSpiSequenceName"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
	}
	static class EthSwtGeneral implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		def Boolean getEthSwtDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtDevErrorDetect"])
		}
		
		def void setEthSwtDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEthSwtEnableVlanApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtEnableVlanApi"])
		}
		
		def void setEthSwtEnableVlanApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtEnableVlanApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtEnableVlanApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEthSwtGetArlTableApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetArlTableApi"])
		}
		
		def void setEthSwtGetArlTableApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetArlTableApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtGetArlTableApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEthSwtGetBufferLevelApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetBufferLevelApi"])
		}
		
		def void setEthSwtGetBufferLevelApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetBufferLevelApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtGetBufferLevelApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEthSwtGetDropCountApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetDropCountApi"])
		}
		
		def void setEthSwtGetDropCountApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetDropCountApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtGetDropCountApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEthSwtGetEtherStatsApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetEtherStatsApi"])
		}
		
		def void setEthSwtGetEtherStatsApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetEtherStatsApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtGetEtherStatsApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEthSwtGetMacLearningModeApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetMacLearningModeApi"])
		}
		
		def void setEthSwtGetMacLearningModeApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetMacLearningModeApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtGetMacLearningModeApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEthSwtGetPortMacAddrApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetPortMacAddrApi"])
		}
		
		def void setEthSwtGetPortMacAddrApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetPortMacAddrApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtGetPortMacAddrApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEthSwtGetSwitchRegApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetSwitchRegApi"])
		}
		
		def void setEthSwtGetSwitchRegApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtGetSwitchRegApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtGetSwitchRegApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getEthSwtIndex(){
			ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtIndex"])
		}
		
		def void setEthSwtIndex(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtIndex"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtIndex"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def String getEthSwtLinkDownUser(){
			ParameterValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtLinkDownUser"])
		}
		
		def void setEthSwtLinkDownUser(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtLinkDownUser"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtLinkDownUser"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def String getEthSwtLinkUpUser(){
			ParameterValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtLinkUpUser"])
		}
		
		def void setEthSwtLinkUpUser(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtLinkUpUser"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtLinkUpUser"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEthSwtPersistentConfigurationResult(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPersistentConfigurationResult"])
		}
		
		def void setEthSwtPersistentConfigurationResult(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPersistentConfigurationResult"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPersistentConfigurationResult"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def String getEthSwtPersistentConfigurationResultUser(){
			ParameterValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPersistentConfigurationResultUser"])
		}
		
		def void setEthSwtPersistentConfigurationResultUser(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtPersistentConfigurationResultUser"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtPersistentConfigurationResultUser"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtReadTrcvRegisterApi"])
		}
		
		def void setEthSwtReadTrcvRegisterApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtReadTrcvRegisterApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtReadTrcvRegisterApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEthSwtResetConfigurationApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtResetConfigurationApi"])
		}
		
		def void setEthSwtResetConfigurationApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtResetConfigurationApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtResetConfigurationApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEthSwtSetMacLearningModeApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtSetMacLearningModeApi"])
		}
		
		def void setEthSwtSetMacLearningModeApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtSetMacLearningModeApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtSetMacLearningModeApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEthSwtSetSwitchRegApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtSetSwitchRegApi"])
		}
		
		def void setEthSwtSetSwitchRegApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtSetSwitchRegApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtSetSwitchRegApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEthSwtStoreConfigurationApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtStoreConfigurationApi"])
		}
		
		def void setEthSwtStoreConfigurationApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtStoreConfigurationApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtStoreConfigurationApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEthSwtVersionInfoApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtVersionInfoApi"])
		}
		
		def void setEthSwtVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEthSwtWriteTrcvRegisterApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtWriteTrcvRegisterApi"])
		}
		
		def void setEthSwtWriteTrcvRegisterApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthSwtWriteTrcvRegisterApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthSwtWriteTrcvRegisterApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
