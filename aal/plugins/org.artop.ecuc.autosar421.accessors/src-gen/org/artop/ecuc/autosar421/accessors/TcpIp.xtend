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
import org.artop.ecuc.autosar421.accessors.lib.IntegerValueUnwrappingEList
import org.artop.ecuc.autosar421.accessors.lib.FloatValueUnwrappingEList
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

class TcpIp implements IWrapper<GModuleConfiguration> {
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
	
	def TcpIpConfig getTcpIpConfig(){
		moduleConfiguration.getByType(typeof(TcpIpConfig))
	}
	
	def void setTcpIpConfig(TcpIpConfig tcpIpConfig){
		val GContainer container = tcpIpConfig.getTarget() 
	    moduleConfiguration.setContainer(container, "TcpIpConfig")
	}
	def TcpIpGeneral getTcpIpGeneral(){
		moduleConfiguration.getByType(typeof(TcpIpGeneral))
	}
	
	def void setTcpIpGeneral(TcpIpGeneral tcpIpGeneral){
		val GContainer container = tcpIpGeneral.getTarget() 
	    moduleConfiguration.setContainer(container, "TcpIpGeneral")
	}
	
	static class TcpIpConfig implements IWrapper<GContainer> {
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
		
		
		
		def List<TcpIpCtrl> getTcpIpCtrls(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "TcpIpCtrl")
				}
			}
			return new BasicWrappingEList<TcpIpCtrl, GContainer>(filteredContainers, typeof(TcpIpCtrl), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.TcpIp$TcpIpConfig$TcpIpCtrl tcpIpCtrl) {
					tcpIpCtrl.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpCtrl"))
					super.delegateAdd(tcpIpCtrl)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.TcpIp$TcpIpConfig$TcpIpCtrl tcpIpCtrl) {
					tcpIpCtrl.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpCtrl"))
					super.delegateAdd(index, tcpIpCtrl)
				}	
			}
		}
		
		def List<TcpIpDhcpServerConfig> getTcpIpDhcpServerConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "TcpIpDhcpServerConfig")
				}
			}
			return new BasicWrappingEList<TcpIpDhcpServerConfig, GContainer>(filteredContainers, typeof(TcpIpDhcpServerConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.TcpIp$TcpIpConfig$TcpIpDhcpServerConfig tcpIpDhcpServerConfig) {
					tcpIpDhcpServerConfig.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpDhcpServerConfig"))
					super.delegateAdd(tcpIpDhcpServerConfig)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.TcpIp$TcpIpConfig$TcpIpDhcpServerConfig tcpIpDhcpServerConfig) {
					tcpIpDhcpServerConfig.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpDhcpServerConfig"))
					super.delegateAdd(index, tcpIpDhcpServerConfig)
				}	
			}
		}
		
		def TcpIpIpConfig getTcpIpIpConfig(){
			containerValue.getByType(typeof(TcpIpIpConfig))
		}
		
		def void setTcpIpIpConfig(TcpIpIpConfig tcpIpIpConfig){
			val GContainer subContainer = tcpIpIpConfig.getTarget()
			containerValue.setContainer(subContainer, "TcpIpIpConfig")
		}
		
		def List<TcpIpLocalAddr> getTcpIpLocalAddrs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "TcpIpLocalAddr")
				}
			}
			return new BasicWrappingEList<TcpIpLocalAddr, GContainer>(filteredContainers, typeof(TcpIpLocalAddr), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.TcpIp$TcpIpConfig$TcpIpLocalAddr tcpIpLocalAddr) {
					tcpIpLocalAddr.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpLocalAddr"))
					super.delegateAdd(tcpIpLocalAddr)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.TcpIp$TcpIpConfig$TcpIpLocalAddr tcpIpLocalAddr) {
					tcpIpLocalAddr.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpLocalAddr"))
					super.delegateAdd(index, tcpIpLocalAddr)
				}	
			}
		}
		
		def TcpIpNvmBlock getTcpIpNvmBlock(){
			containerValue.getByType(typeof(TcpIpNvmBlock))
		}
		
		def void setTcpIpNvmBlock(TcpIpNvmBlock tcpIpNvmBlock){
			val GContainer subContainer = tcpIpNvmBlock.getTarget()
			containerValue.setContainer(subContainer, "TcpIpNvmBlock")
		}
		
		def TcpIpPhysAddrConfig getTcpIpPhysAddrConfig(){
			containerValue.getByType(typeof(TcpIpPhysAddrConfig))
		}
		
		def void setTcpIpPhysAddrConfig(TcpIpPhysAddrConfig tcpIpPhysAddrConfig){
			val GContainer subContainer = tcpIpPhysAddrConfig.getTarget()
			containerValue.setContainer(subContainer, "TcpIpPhysAddrConfig")
		}
		
		def TcpIpSocketOwnerConfig getTcpIpSocketOwnerConfig(){
			containerValue.getByType(typeof(TcpIpSocketOwnerConfig))
		}
		
		def void setTcpIpSocketOwnerConfig(TcpIpSocketOwnerConfig tcpIpSocketOwnerConfig){
			val GContainer subContainer = tcpIpSocketOwnerConfig.getTarget()
			containerValue.setContainer(subContainer, "TcpIpSocketOwnerConfig")
		}
		
		def TcpIpTcpConfig getTcpIpTcpConfig(){
			containerValue.getByType(typeof(TcpIpTcpConfig))
		}
		
		def void setTcpIpTcpConfig(TcpIpTcpConfig tcpIpTcpConfig){
			val GContainer subContainer = tcpIpTcpConfig.getTarget()
			containerValue.setContainer(subContainer, "TcpIpTcpConfig")
		}
		
		def TcpIpUdpConfig getTcpIpUdpConfig(){
			containerValue.getByType(typeof(TcpIpUdpConfig))
		}
		
		def void setTcpIpUdpConfig(TcpIpUdpConfig tcpIpUdpConfig){
			val GContainer subContainer = tcpIpUdpConfig.getTarget()
			containerValue.setContainer(subContainer, "TcpIpUdpConfig")
		}
		
		
		static class TcpIpCtrl implements IWrapper<GContainer> {
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
			
			def Integer getTcpIpIpFramePrioDefault(){
				EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpFramePrioDefault"])
			}
			
			def void setTcpIpIpFramePrioDefault(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpFramePrioDefault"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIpFramePrioDefault"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.TcpIp.TcpIpConfig.TcpIpDhcpServerConfig getTcpIpDhcpServerConfigRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.TcpIp.TcpIpConfig.TcpIpDhcpServerConfig), "TcpIpDhcpServerConfigRef")
			}
					
			def void setTcpIpDhcpServerConfigRef(org.artop.ecuc.autosar421.accessors.TcpIp.TcpIpConfig.TcpIpDhcpServerConfig object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "TcpIpDhcpServerConfigRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.EthIf.EthIfConfigSet.EthIfController getTcpIpEthIfCtrlRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EthIf.EthIfConfigSet.EthIfController), "TcpIpEthIfCtrlRef")
			}
					
			def void setTcpIpEthIfCtrlRef(org.artop.ecuc.autosar421.accessors.EthIf.EthIfConfigSet.EthIfController object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "TcpIpEthIfCtrlRef"], object.getTarget())
				}
			}
			
			
			def TcpIpCtrlDemEventParameterRefs getTcpIpCtrlDemEventParameterRefs(){
				containerValue.getByType(typeof(TcpIpCtrlDemEventParameterRefs))
			}
			
			def void setTcpIpCtrlDemEventParameterRefs(TcpIpCtrlDemEventParameterRefs tcpIpCtrlDemEventParameterRefs){
				val GContainer subContainer = tcpIpCtrlDemEventParameterRefs.getTarget()
				containerValue.setContainer(subContainer, "TcpIpCtrlDemEventParameterRefs")
			}
			
			def TcpIpIpVXCtrl getTcpIpIpVXCtrl(){
				containerValue.getByType(typeof(TcpIpIpVXCtrl))
			}
			
			def void setTcpIpIpVXCtrl(TcpIpIpVXCtrl tcpIpIpVXCtrl){
				val GContainer subContainer = tcpIpIpVXCtrl.getTarget()
				containerValue.setContainer(subContainer, "TcpIpIpVXCtrl")
			}
			
			
			static class TcpIpCtrlDemEventParameterRefs implements IWrapper<GContainer> {
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
				
				
				def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getTCPIP_E_CONNREFUSED(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "TCPIP_E_CONNREFUSED")
				}
						
				def void setTCPIP_E_CONNREFUSED(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "TCPIP_E_CONNREFUSED"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getTCPIP_E_HOSTUNREACH(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "TCPIP_E_HOSTUNREACH")
				}
						
				def void setTCPIP_E_HOSTUNREACH(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "TCPIP_E_HOSTUNREACH"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getTCPIP_E_PACKETTOBIG(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "TCPIP_E_PACKETTOBIG")
				}
						
				def void setTCPIP_E_PACKETTOBIG(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "TCPIP_E_PACKETTOBIG"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getTCPIP_E_TIMEDOUT(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "TCPIP_E_TIMEDOUT")
				}
						
				def void setTCPIP_E_TIMEDOUT(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "TCPIP_E_TIMEDOUT"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class TcpIpIpVXCtrl implements IWrapper<GContainer> {
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
				
				def TcpIpIpV4Ctrl getTcpIpIpV4Ctrl(){
					containerValue.getByType(typeof(TcpIpIpV4Ctrl))
				}
				
				def void setTcpIpIpV4Ctrl(TcpIpIpV4Ctrl tcpIpIpV4Ctrl){
					val GContainer subContainer = tcpIpIpV4Ctrl.getTarget()
					containerValue.setContainer(subContainer, "TcpIpIpV4Ctrl")
				}
				def TcpIpIpV6Ctrl getTcpIpIpV6Ctrl(){
					containerValue.getByType(typeof(TcpIpIpV6Ctrl))
				}
				
				def void setTcpIpIpV6Ctrl(TcpIpIpV6Ctrl tcpIpIpV6Ctrl){
					val GContainer subContainer = tcpIpIpV6Ctrl.getTarget()
					containerValue.setContainer(subContainer, "TcpIpIpV6Ctrl")
				}
				
				static class TcpIpIpV4Ctrl implements IWrapper<GContainer> {
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
					
					
					def org.artop.ecuc.autosar421.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV4Config.TcpIpArpConfig getTcpIpArpConfigRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV4Config.TcpIpArpConfig), "TcpIpArpConfigRef")
					}
							
					def void setTcpIpArpConfigRef(org.artop.ecuc.autosar421.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV4Config.TcpIpArpConfig object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "TcpIpArpConfigRef"], object.getTarget())
						}
					}
					
					def org.artop.ecuc.autosar421.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV4Config.TcpIpAutoIpConfig getTcpIpAutoIpConfigRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV4Config.TcpIpAutoIpConfig), "TcpIpAutoIpConfigRef")
					}
							
					def void setTcpIpAutoIpConfigRef(org.artop.ecuc.autosar421.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV4Config.TcpIpAutoIpConfig object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "TcpIpAutoIpConfigRef"], object.getTarget())
						}
					}
					
					def org.artop.ecuc.autosar421.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV4Config.TcpIpDhcpConfig getTcpIpDhcpConfigRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV4Config.TcpIpDhcpConfig), "TcpIpDhcpConfigRef")
					}
							
					def void setTcpIpDhcpConfigRef(org.artop.ecuc.autosar421.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV4Config.TcpIpDhcpConfig object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "TcpIpDhcpConfigRef"], object.getTarget())
						}
					}
					
					def org.artop.ecuc.autosar421.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV4Config.TcpIpIpFragmentationConfig getTcpIpFragmentationConfigRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV4Config.TcpIpIpFragmentationConfig), "TcpIpFragmentationConfigRef")
					}
							
					def void setTcpIpFragmentationConfigRef(org.artop.ecuc.autosar421.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV4Config.TcpIpIpFragmentationConfig object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "TcpIpFragmentationConfigRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class TcpIpIpV6Ctrl implements IWrapper<GContainer> {
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
					
					
					def org.artop.ecuc.autosar421.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV6Config.TcpIpDhcpV6Config getTcpIpIpV6DhcpConfigRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV6Config.TcpIpDhcpV6Config), "TcpIpIpV6DhcpConfigRef")
					}
							
					def void setTcpIpIpV6DhcpConfigRef(org.artop.ecuc.autosar421.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV6Config.TcpIpDhcpV6Config object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "TcpIpIpV6DhcpConfigRef"], object.getTarget())
						}
					}
					
					def org.artop.ecuc.autosar421.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV6Config.TcpIpIpV6FragmentationConfig getTcpIpIpV6FragmentationConfigRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV6Config.TcpIpIpV6FragmentationConfig), "TcpIpIpV6FragmentationConfigRef")
					}
							
					def void setTcpIpIpV6FragmentationConfigRef(org.artop.ecuc.autosar421.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV6Config.TcpIpIpV6FragmentationConfig object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "TcpIpIpV6FragmentationConfigRef"], object.getTarget())
						}
					}
					
					def org.artop.ecuc.autosar421.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV6Config.TcpIpNdpConfig getTcpIpIpV6NdpConfigRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV6Config.TcpIpNdpConfig), "TcpIpIpV6NdpConfigRef")
					}
							
					def void setTcpIpIpV6NdpConfigRef(org.artop.ecuc.autosar421.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV6Config.TcpIpNdpConfig object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "TcpIpIpV6NdpConfigRef"], object.getTarget())
						}
					}
					
					
					def TcpIpIpV6MtuConfig getTcpIpIpV6MtuConfig(){
						containerValue.getByType(typeof(TcpIpIpV6MtuConfig))
					}
					
					def void setTcpIpIpV6MtuConfig(TcpIpIpV6MtuConfig tcpIpIpV6MtuConfig){
						val GContainer subContainer = tcpIpIpV6MtuConfig.getTarget()
						containerValue.setContainer(subContainer, "TcpIpIpV6MtuConfig")
					}
					
					
					static class TcpIpIpV6MtuConfig implements IWrapper<GContainer> {
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
						
						def Integer getTcpIpIpV6DefaultMtuSize(){
							EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6DefaultMtuSize"])
						}
						
						def void setTcpIpIpV6DefaultMtuSize(Integer value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6DefaultMtuSize"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIpV6DefaultMtuSize"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def Boolean getTcpIpIpV6PathMtuEnabled(){
							getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6PathMtuEnabled"])
						}
						
						def void setTcpIpIpV6PathMtuEnabled(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6PathMtuEnabled"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIpV6PathMtuEnabled"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def Float getTcpIpIpV6PathMtuTimeout(){
							EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6PathMtuTimeout"])
						}
						
						def void setTcpIpIpV6PathMtuTimeout(Float value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6PathMtuTimeout"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIpV6PathMtuTimeout"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						
						
						
					}
					
				}
				
			}
			
		}
		
		static class TcpIpDhcpServerConfig implements IWrapper<GContainer> {
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
			
			def String getTcpIpDhcpDefaultRouter(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpDefaultRouter"])
			}
			
			def void setTcpIpDhcpDefaultRouter(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpDefaultRouter"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpDhcpDefaultRouter"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Integer getTcpIpDhcpNetmask(){
				EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpNetmask"])
			}
			
			def void setTcpIpDhcpNetmask(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpNetmask"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpDhcpNetmask"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.EthIf.EthIfConfigSet.EthIfSwitch getTcpIpDhcpEthIfSwitchRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EthIf.EthIfConfigSet.EthIfSwitch), "TcpIpDhcpEthIfSwitchRef")
			}
					
			def void setTcpIpDhcpEthIfSwitchRef(org.artop.ecuc.autosar421.accessors.EthIf.EthIfConfigSet.EthIfSwitch object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "TcpIpDhcpEthIfSwitchRef"], object.getTarget())
				}
			}
			
			
			def List<TcpIpDhcpAddressAssignment> getTcpIpDhcpAddressAssignments(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "TcpIpDhcpAddressAssignment")
					}
				}
				return new BasicWrappingEList<TcpIpDhcpAddressAssignment, GContainer>(filteredContainers, typeof(TcpIpDhcpAddressAssignment), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.TcpIp$TcpIpConfig$TcpIpDhcpServerConfig$TcpIpDhcpAddressAssignment tcpIpDhcpAddressAssignment) {
						tcpIpDhcpAddressAssignment.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpDhcpAddressAssignment"))
						super.delegateAdd(tcpIpDhcpAddressAssignment)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.TcpIp$TcpIpConfig$TcpIpDhcpServerConfig$TcpIpDhcpAddressAssignment tcpIpDhcpAddressAssignment) {
						tcpIpDhcpAddressAssignment.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpDhcpAddressAssignment"))
						super.delegateAdd(index, tcpIpDhcpAddressAssignment)
					}	
				}
			}
			
			
			static class TcpIpDhcpAddressAssignment implements IWrapper<GContainer> {
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
				
				def String getTcpIpDhcpAddressLowerBound(){
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpAddressLowerBound"])
				}
				
				def void setTcpIpDhcpAddressLowerBound(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpAddressLowerBound"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpDhcpAddressLowerBound"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def String getTcpIpDhcpAddressUpperBound(){
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpAddressUpperBound"])
				}
				
				def void setTcpIpDhcpAddressUpperBound(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpAddressUpperBound"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpDhcpAddressUpperBound"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EthSwt.EthSwtConfig.EthSwtPort getTcpIpDhcpSwitchPortRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EthSwt.EthSwtConfig.EthSwtPort), "TcpIpDhcpSwitchPortRef")
				}
						
				def void setTcpIpDhcpSwitchPortRef(org.artop.ecuc.autosar421.accessors.EthSwt.EthSwtConfig.EthSwtPort object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "TcpIpDhcpSwitchPortRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class TcpIpIpConfig implements IWrapper<GContainer> {
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
			
			
			
			def TcpIpIpV4Config getTcpIpIpV4Config(){
				containerValue.getByType(typeof(TcpIpIpV4Config))
			}
			
			def void setTcpIpIpV4Config(TcpIpIpV4Config tcpIpIpV4Config){
				val GContainer subContainer = tcpIpIpV4Config.getTarget()
				containerValue.setContainer(subContainer, "TcpIpIpV4Config")
			}
			
			def TcpIpIpV6Config getTcpIpIpV6Config(){
				containerValue.getByType(typeof(TcpIpIpV6Config))
			}
			
			def void setTcpIpIpV6Config(TcpIpIpV6Config tcpIpIpV6Config){
				val GContainer subContainer = tcpIpIpV6Config.getTarget()
				containerValue.setContainer(subContainer, "TcpIpIpV6Config")
			}
			
			
			static class TcpIpIpV4Config implements IWrapper<GContainer> {
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
				
				
				
				def List<TcpIpArpConfig> getTcpIpArpConfigs(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "TcpIpArpConfig")
						}
					}
					return new BasicWrappingEList<TcpIpArpConfig, GContainer>(filteredContainers, typeof(TcpIpArpConfig), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.TcpIp$TcpIpConfig$TcpIpIpConfig$TcpIpIpV4Config$TcpIpArpConfig tcpIpArpConfig) {
							tcpIpArpConfig.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpArpConfig"))
							super.delegateAdd(tcpIpArpConfig)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.TcpIp$TcpIpConfig$TcpIpIpConfig$TcpIpIpV4Config$TcpIpArpConfig tcpIpArpConfig) {
							tcpIpArpConfig.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpArpConfig"))
							super.delegateAdd(index, tcpIpArpConfig)
						}	
					}
				}
				
				def List<TcpIpAutoIpConfig> getTcpIpAutoIpConfigs(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "TcpIpAutoIpConfig")
						}
					}
					return new BasicWrappingEList<TcpIpAutoIpConfig, GContainer>(filteredContainers, typeof(TcpIpAutoIpConfig), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.TcpIp$TcpIpConfig$TcpIpIpConfig$TcpIpIpV4Config$TcpIpAutoIpConfig tcpIpAutoIpConfig) {
							tcpIpAutoIpConfig.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpAutoIpConfig"))
							super.delegateAdd(tcpIpAutoIpConfig)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.TcpIp$TcpIpConfig$TcpIpIpConfig$TcpIpIpV4Config$TcpIpAutoIpConfig tcpIpAutoIpConfig) {
							tcpIpAutoIpConfig.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpAutoIpConfig"))
							super.delegateAdd(index, tcpIpAutoIpConfig)
						}	
					}
				}
				
				def List<TcpIpDhcpConfig> getTcpIpDhcpConfigs(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "TcpIpDhcpConfig")
						}
					}
					return new BasicWrappingEList<TcpIpDhcpConfig, GContainer>(filteredContainers, typeof(TcpIpDhcpConfig), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.TcpIp$TcpIpConfig$TcpIpIpConfig$TcpIpIpV4Config$TcpIpDhcpConfig tcpIpDhcpConfig) {
							tcpIpDhcpConfig.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpDhcpConfig"))
							super.delegateAdd(tcpIpDhcpConfig)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.TcpIp$TcpIpConfig$TcpIpIpConfig$TcpIpIpV4Config$TcpIpDhcpConfig tcpIpDhcpConfig) {
							tcpIpDhcpConfig.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpDhcpConfig"))
							super.delegateAdd(index, tcpIpDhcpConfig)
						}	
					}
				}
				
				def TcpIpIcmpConfig getTcpIpIcmpConfig(){
					containerValue.getByType(typeof(TcpIpIcmpConfig))
				}
				
				def void setTcpIpIcmpConfig(TcpIpIcmpConfig tcpIpIcmpConfig){
					val GContainer subContainer = tcpIpIcmpConfig.getTarget()
					containerValue.setContainer(subContainer, "TcpIpIcmpConfig")
				}
				
				def List<TcpIpIpFragmentationConfig> getTcpIpIpFragmentationConfigs(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "TcpIpIpFragmentationConfig")
						}
					}
					return new BasicWrappingEList<TcpIpIpFragmentationConfig, GContainer>(filteredContainers, typeof(TcpIpIpFragmentationConfig), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.TcpIp$TcpIpConfig$TcpIpIpConfig$TcpIpIpV4Config$TcpIpIpFragmentationConfig tcpIpIpFragmentationConfig) {
							tcpIpIpFragmentationConfig.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpIpFragmentationConfig"))
							super.delegateAdd(tcpIpIpFragmentationConfig)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.TcpIp$TcpIpConfig$TcpIpIpConfig$TcpIpIpV4Config$TcpIpIpFragmentationConfig tcpIpIpFragmentationConfig) {
							tcpIpIpFragmentationConfig.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpIpFragmentationConfig"))
							super.delegateAdd(index, tcpIpIpFragmentationConfig)
						}	
					}
				}
				
				
				static class TcpIpArpConfig implements IWrapper<GContainer> {
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
					
					def Integer getTcpIpArpNumGratuitousARPonStartup(){
						EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpArpNumGratuitousARPonStartup"])
					}
					
					def void setTcpIpArpNumGratuitousARPonStartup(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpArpNumGratuitousARPonStartup"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpArpNumGratuitousARPonStartup"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Boolean getTcpIpArpPacketQueueEnabled(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpArpPacketQueueEnabled"])
					}
					
					def void setTcpIpArpPacketQueueEnabled(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpArpPacketQueueEnabled"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpArpPacketQueueEnabled"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Float getTcpIpArpTableEntryTimeout(){
						EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpArpTableEntryTimeout"])
					}
					
					def void setTcpIpArpTableEntryTimeout(Float value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpArpTableEntryTimeout"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpArpTableEntryTimeout"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Integer getTcpIpArpTableSizeMax(){
						EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpArpTableSizeMax"])
					}
					
					def void setTcpIpArpTableSizeMax(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpArpTableSizeMax"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpArpTableSizeMax"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					
					
				}
				
				static class TcpIpAutoIpConfig implements IWrapper<GContainer> {
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
					
					def Float getTcpIpAutoIpInitTimeout(){
						EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpAutoIpInitTimeout"])
					}
					
					def void setTcpIpAutoIpInitTimeout(Float value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpAutoIpInitTimeout"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpAutoIpInitTimeout"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					
					
				}
				
				static class TcpIpDhcpConfig implements IWrapper<GContainer> {
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
					
					
					
					
				}
				
				static class TcpIpIcmpConfig implements IWrapper<GContainer> {
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
					
					def Integer getTcpIpIcmpTtl(){
						EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpTtl"])
					}
					
					def void setTcpIpIcmpTtl(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpTtl"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIcmpTtl"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					
					def TcpIpIcmpMsgHandler getTcpIpIcmpMsgHandler(){
						containerValue.getByType(typeof(TcpIpIcmpMsgHandler))
					}
					
					def void setTcpIpIcmpMsgHandler(TcpIpIcmpMsgHandler tcpIpIcmpMsgHandler){
						val GContainer subContainer = tcpIpIcmpMsgHandler.getTarget()
						containerValue.setContainer(subContainer, "TcpIpIcmpMsgHandler")
					}
					
					
					static class TcpIpIcmpMsgHandler implements IWrapper<GContainer> {
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
						
						def String getTcpIpIcmpMsgHandlerHeaderFileName(){
							EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpMsgHandlerHeaderFileName"])
						}
						
						def void setTcpIpIcmpMsgHandlerHeaderFileName(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpMsgHandlerHeaderFileName"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIcmpMsgHandlerHeaderFileName"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def String getTcpIpIcmpMsgHandlerName(){
							EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpMsgHandlerName"])
						}
						
						def void setTcpIpIcmpMsgHandlerName(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpMsgHandlerName"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIcmpMsgHandlerName"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						
						
						
					}
					
				}
				
				static class TcpIpIpFragmentationConfig implements IWrapper<GContainer> {
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
					
					def Boolean getTcpIpIpFragmentationRxEnabled(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpFragmentationRxEnabled"])
					}
					
					def void setTcpIpIpFragmentationRxEnabled(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpFragmentationRxEnabled"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIpFragmentationRxEnabled"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Integer getTcpIpIpNumFragments(){
						EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpNumFragments"])
					}
					
					def void setTcpIpIpNumFragments(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpNumFragments"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIpNumFragments"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Integer getTcpIpIpNumReassDgrams(){
						EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpNumReassDgrams"])
					}
					
					def void setTcpIpIpNumReassDgrams(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpNumReassDgrams"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIpNumReassDgrams"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Float getTcpIpIpReassTimeout(){
						EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpReassTimeout"])
					}
					
					def void setTcpIpIpReassTimeout(Float value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpReassTimeout"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIpReassTimeout"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					
					
				}
				
			}
			
			static class TcpIpIpV6Config implements IWrapper<GContainer> {
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
				
				
				
				def List<TcpIpDhcpV6Config> getTcpIpDhcpV6Configs(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "TcpIpDhcpV6Config")
						}
					}
					return new BasicWrappingEList<TcpIpDhcpV6Config, GContainer>(filteredContainers, typeof(TcpIpDhcpV6Config), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.TcpIp$TcpIpConfig$TcpIpIpConfig$TcpIpIpV6Config$TcpIpDhcpV6Config tcpIpDhcpV6Config) {
							tcpIpDhcpV6Config.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpDhcpV6Config"))
							super.delegateAdd(tcpIpDhcpV6Config)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.TcpIp$TcpIpConfig$TcpIpIpConfig$TcpIpIpV6Config$TcpIpDhcpV6Config tcpIpDhcpV6Config) {
							tcpIpDhcpV6Config.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpDhcpV6Config"))
							super.delegateAdd(index, tcpIpDhcpV6Config)
						}	
					}
				}
				
				def TcpIpIcmpV6Config getTcpIpIcmpV6Config(){
					containerValue.getByType(typeof(TcpIpIcmpV6Config))
				}
				
				def void setTcpIpIcmpV6Config(TcpIpIcmpV6Config tcpIpIcmpV6Config){
					val GContainer subContainer = tcpIpIcmpV6Config.getTarget()
					containerValue.setContainer(subContainer, "TcpIpIcmpV6Config")
				}
				
				def List<TcpIpIpV6FragmentationConfig> getTcpIpIpV6FragmentationConfigs(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "TcpIpIpV6FragmentationConfig")
						}
					}
					return new BasicWrappingEList<TcpIpIpV6FragmentationConfig, GContainer>(filteredContainers, typeof(TcpIpIpV6FragmentationConfig), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.TcpIp$TcpIpConfig$TcpIpIpConfig$TcpIpIpV6Config$TcpIpIpV6FragmentationConfig tcpIpIpV6FragmentationConfig) {
							tcpIpIpV6FragmentationConfig.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpIpV6FragmentationConfig"))
							super.delegateAdd(tcpIpIpV6FragmentationConfig)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.TcpIp$TcpIpConfig$TcpIpIpConfig$TcpIpIpV6Config$TcpIpIpV6FragmentationConfig tcpIpIpV6FragmentationConfig) {
							tcpIpIpV6FragmentationConfig.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpIpV6FragmentationConfig"))
							super.delegateAdd(index, tcpIpIpV6FragmentationConfig)
						}	
					}
				}
				
				def List<TcpIpNdpConfig> getTcpIpNdpConfigs(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "TcpIpNdpConfig")
						}
					}
					return new BasicWrappingEList<TcpIpNdpConfig, GContainer>(filteredContainers, typeof(TcpIpNdpConfig), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.TcpIp$TcpIpConfig$TcpIpIpConfig$TcpIpIpV6Config$TcpIpNdpConfig tcpIpNdpConfig) {
							tcpIpNdpConfig.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpNdpConfig"))
							super.delegateAdd(tcpIpNdpConfig)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.TcpIp$TcpIpConfig$TcpIpIpConfig$TcpIpIpV6Config$TcpIpNdpConfig tcpIpNdpConfig) {
							tcpIpNdpConfig.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpNdpConfig"))
							super.delegateAdd(index, tcpIpNdpConfig)
						}	
					}
				}
				
				
				static class TcpIpDhcpV6Config implements IWrapper<GContainer> {
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
					
					def Float getTcpIpDhcpV6CnfDelayMax(){
						EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpV6CnfDelayMax"])
					}
					
					def void setTcpIpDhcpV6CnfDelayMax(Float value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpV6CnfDelayMax"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpDhcpV6CnfDelayMax"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Float getTcpIpDhcpV6CnfDelayMin(){
						EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpV6CnfDelayMin"])
					}
					
					def void setTcpIpDhcpV6CnfDelayMin(Float value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpV6CnfDelayMin"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpDhcpV6CnfDelayMin"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Float getTcpIpDhcpV6InfDelayMax(){
						EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpV6InfDelayMax"])
					}
					
					def void setTcpIpDhcpV6InfDelayMax(Float value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpV6InfDelayMax"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpDhcpV6InfDelayMax"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Float getTcpIpDhcpV6InfDelayMin(){
						EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpV6InfDelayMin"])
					}
					
					def void setTcpIpDhcpV6InfDelayMin(Float value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpV6InfDelayMin"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpDhcpV6InfDelayMin"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Float getTcpIpDhcpV6SolDelayMax(){
						EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpV6SolDelayMax"])
					}
					
					def void setTcpIpDhcpV6SolDelayMax(Float value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpV6SolDelayMax"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpDhcpV6SolDelayMax"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Float getTcpIpDhcpV6SolDelayMin(){
						EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpV6SolDelayMin"])
					}
					
					def void setTcpIpDhcpV6SolDelayMin(Float value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpV6SolDelayMin"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpDhcpV6SolDelayMin"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					
					
				}
				
				static class TcpIpIcmpV6Config implements IWrapper<GContainer> {
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
					
					def Integer getTcpIpIcmpV6EchoDataBufferSize(){
						EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpV6EchoDataBufferSize"])
					}
					
					def void setTcpIpIcmpV6EchoDataBufferSize(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpV6EchoDataBufferSize"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIcmpV6EchoDataBufferSize"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Boolean getTcpIpIcmpV6EchoReplyEnabled(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpV6EchoReplyEnabled"])
					}
					
					def void setTcpIpIcmpV6EchoReplyEnabled(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpV6EchoReplyEnabled"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIcmpV6EchoReplyEnabled"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Integer getTcpIpIcmpV6HopLimit(){
						EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpV6HopLimit"])
					}
					
					def void setTcpIpIcmpV6HopLimit(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpV6HopLimit"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIcmpV6HopLimit"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Boolean getTcpIpIcmpV6MsgDestinationUnreachableEnabled(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpV6MsgDestinationUnreachableEnabled"])
					}
					
					def void setTcpIpIcmpV6MsgDestinationUnreachableEnabled(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpV6MsgDestinationUnreachableEnabled"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIcmpV6MsgDestinationUnreachableEnabled"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Boolean getTcpIpIcmpV6MsgParameterProblemEnabled(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpV6MsgParameterProblemEnabled"])
					}
					
					def void setTcpIpIcmpV6MsgParameterProblemEnabled(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpV6MsgParameterProblemEnabled"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIcmpV6MsgParameterProblemEnabled"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					
					def TcpIpIcmpV6MsgHandler getTcpIpIcmpV6MsgHandler(){
						containerValue.getByType(typeof(TcpIpIcmpV6MsgHandler))
					}
					
					def void setTcpIpIcmpV6MsgHandler(TcpIpIcmpV6MsgHandler tcpIpIcmpV6MsgHandler){
						val GContainer subContainer = tcpIpIcmpV6MsgHandler.getTarget()
						containerValue.setContainer(subContainer, "TcpIpIcmpV6MsgHandler")
					}
					
					
					static class TcpIpIcmpV6MsgHandler implements IWrapper<GContainer> {
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
						
						def String getTcpIpIcmpV6MsgHandlerHeaderFileName(){
							EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpV6MsgHandlerHeaderFileName"])
						}
						
						def void setTcpIpIcmpV6MsgHandlerHeaderFileName(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpV6MsgHandlerHeaderFileName"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIcmpV6MsgHandlerHeaderFileName"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def String getTcpIpIcmpV6MsgHandlerName(){
							EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpV6MsgHandlerName"])
						}
						
						def void setTcpIpIcmpV6MsgHandlerName(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpV6MsgHandlerName"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIcmpV6MsgHandlerName"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						
						
						
					}
					
				}
				
				static class TcpIpIpV6FragmentationConfig implements IWrapper<GContainer> {
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
					
					def Integer getTcpIpIpV6ReassemblyBufferCount(){
						EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6ReassemblyBufferCount"])
					}
					
					def void setTcpIpIpV6ReassemblyBufferCount(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6ReassemblyBufferCount"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIpV6ReassemblyBufferCount"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Integer getTcpIpIpV6ReassemblyBufferSize(){
						EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6ReassemblyBufferSize"])
					}
					
					def void setTcpIpIpV6ReassemblyBufferSize(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6ReassemblyBufferSize"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIpV6ReassemblyBufferSize"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Integer getTcpIpIpV6ReassemblySegmentCount(){
						EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6ReassemblySegmentCount"])
					}
					
					def void setTcpIpIpV6ReassemblySegmentCount(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6ReassemblySegmentCount"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIpV6ReassemblySegmentCount"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Float getTcpIpIpV6ReassemblyTimeout(){
						EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6ReassemblyTimeout"])
					}
					
					def void setTcpIpIpV6ReassemblyTimeout(Float value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6ReassemblyTimeout"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIpV6ReassemblyTimeout"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Integer getTcpIpIpV6TxFragmentBufferCount(){
						EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6TxFragmentBufferCount"])
					}
					
					def void setTcpIpIpV6TxFragmentBufferCount(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6TxFragmentBufferCount"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIpV6TxFragmentBufferCount"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Integer getTcpIpIpV6TxFragmentBufferSize(){
						EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6TxFragmentBufferSize"])
					}
					
					def void setTcpIpIpV6TxFragmentBufferSize(Integer value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6TxFragmentBufferSize"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIpV6TxFragmentBufferSize"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					
					
				}
				
				static class TcpIpNdpConfig implements IWrapper<GContainer> {
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
					
					
					
					def TcpIpNdpArNudConfig getTcpIpNdpArNudConfig(){
						containerValue.getByType(typeof(TcpIpNdpArNudConfig))
					}
					
					def void setTcpIpNdpArNudConfig(TcpIpNdpArNudConfig tcpIpNdpArNudConfig){
						val GContainer subContainer = tcpIpNdpArNudConfig.getTarget()
						containerValue.setContainer(subContainer, "TcpIpNdpArNudConfig")
					}
					
					def TcpIpNdpPrefixRouterDiscoveryConfig getTcpIpNdpPrefixRouterDiscoveryConfig(){
						containerValue.getByType(typeof(TcpIpNdpPrefixRouterDiscoveryConfig))
					}
					
					def void setTcpIpNdpPrefixRouterDiscoveryConfig(TcpIpNdpPrefixRouterDiscoveryConfig tcpIpNdpPrefixRouterDiscoveryConfig){
						val GContainer subContainer = tcpIpNdpPrefixRouterDiscoveryConfig.getTarget()
						containerValue.setContainer(subContainer, "TcpIpNdpPrefixRouterDiscoveryConfig")
					}
					
					def TcpIpNdpSlaacConfig getTcpIpNdpSlaacConfig(){
						containerValue.getByType(typeof(TcpIpNdpSlaacConfig))
					}
					
					def void setTcpIpNdpSlaacConfig(TcpIpNdpSlaacConfig tcpIpNdpSlaacConfig){
						val GContainer subContainer = tcpIpNdpSlaacConfig.getTarget()
						containerValue.setContainer(subContainer, "TcpIpNdpSlaacConfig")
					}
					
					
					static class TcpIpNdpArNudConfig implements IWrapper<GContainer> {
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
						
						def Float getTcpIpNdpDefaultReachableTime(){
							EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDefaultReachableTime"])
						}
						
						def void setTcpIpNdpDefaultReachableTime(Float value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDefaultReachableTime"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpDefaultReachableTime"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def Float getTcpIpNdpDefaultRetransTimer(){
							EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDefaultRetransTimer"])
						}
						
						def void setTcpIpNdpDefaultRetransTimer(Float value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDefaultRetransTimer"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpDefaultRetransTimer"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def Float getTcpIpNdpDelayFirstProbeTime(){
							EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDelayFirstProbeTime"])
						}
						
						def void setTcpIpNdpDelayFirstProbeTime(Float value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDelayFirstProbeTime"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpDelayFirstProbeTime"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def Integer getTcpIpNdpMaxNeighborCacheSize(){
							EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpMaxNeighborCacheSize"])
						}
						
						def void setTcpIpNdpMaxNeighborCacheSize(Integer value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpMaxNeighborCacheSize"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpMaxNeighborCacheSize"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def Integer getTcpIpNdpMaxRandomFactor(){
							EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpMaxRandomFactor"])
						}
						
						def void setTcpIpNdpMaxRandomFactor(Integer value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpMaxRandomFactor"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpMaxRandomFactor"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def Integer getTcpIpNdpMinRandomFactor(){
							EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpMinRandomFactor"])
						}
						
						def void setTcpIpNdpMinRandomFactor(Integer value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpMinRandomFactor"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpMinRandomFactor"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def Boolean getTcpIpNdpNeighborUnreachabilityDetectionEnabled(){
							getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpNeighborUnreachabilityDetectionEnabled"])
						}
						
						def void setTcpIpNdpNeighborUnreachabilityDetectionEnabled(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpNeighborUnreachabilityDetectionEnabled"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpNeighborUnreachabilityDetectionEnabled"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def Integer getTcpIpNdpNumMulticastSolicitations(){
							EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpNumMulticastSolicitations"])
						}
						
						def void setTcpIpNdpNumMulticastSolicitations(Integer value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpNumMulticastSolicitations"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpNumMulticastSolicitations"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def Integer getTcpIpNdpNumUnicastSolicitations(){
							EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpNumUnicastSolicitations"])
						}
						
						def void setTcpIpNdpNumUnicastSolicitations(Integer value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpNumUnicastSolicitations"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpNumUnicastSolicitations"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def Boolean getTcpIpNdpPacketQueueEnabled(){
							getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpPacketQueueEnabled"])
						}
						
						def void setTcpIpNdpPacketQueueEnabled(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpPacketQueueEnabled"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpPacketQueueEnabled"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def Boolean getTcpIpNdpRandomReachableTimeEnabled(){
							getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpRandomReachableTimeEnabled"])
						}
						
						def void setTcpIpNdpRandomReachableTimeEnabled(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpRandomReachableTimeEnabled"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpRandomReachableTimeEnabled"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						
						
						
					}
					
					static class TcpIpNdpPrefixRouterDiscoveryConfig implements IWrapper<GContainer> {
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
						
						def Integer getTcpIpNdpDefaultRouterListSize(){
							EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDefaultRouterListSize"])
						}
						
						def void setTcpIpNdpDefaultRouterListSize(Integer value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDefaultRouterListSize"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpDefaultRouterListSize"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def Integer getTcpIpNdpDestinationCacheSize(){
							EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDestinationCacheSize"])
						}
						
						def void setTcpIpNdpDestinationCacheSize(Integer value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDestinationCacheSize"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpDestinationCacheSize"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def Boolean getTcpIpNdpDynamicHopLimitEnabled(){
							getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDynamicHopLimitEnabled"])
						}
						
						def void setTcpIpNdpDynamicHopLimitEnabled(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDynamicHopLimitEnabled"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpDynamicHopLimitEnabled"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def Boolean getTcpIpNdpDynamicMtuEnabled(){
							getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDynamicMtuEnabled"])
						}
						
						def void setTcpIpNdpDynamicMtuEnabled(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDynamicMtuEnabled"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpDynamicMtuEnabled"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def Boolean getTcpIpNdpDynamicReachableTimeEnabled(){
							getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDynamicReachableTimeEnabled"])
						}
						
						def void setTcpIpNdpDynamicReachableTimeEnabled(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDynamicReachableTimeEnabled"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpDynamicReachableTimeEnabled"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def Boolean getTcpIpNdpDynamicRetransTimeEnabled(){
							getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDynamicRetransTimeEnabled"])
						}
						
						def void setTcpIpNdpDynamicRetransTimeEnabled(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDynamicRetransTimeEnabled"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpDynamicRetransTimeEnabled"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def Float getTcpIpNdpMaxRtrSolicitationDelay(){
							EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpMaxRtrSolicitationDelay"])
						}
						
						def void setTcpIpNdpMaxRtrSolicitationDelay(Float value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpMaxRtrSolicitationDelay"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpMaxRtrSolicitationDelay"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def Integer getTcpIpNdpMaxRtrSolicitations(){
							EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpMaxRtrSolicitations"])
						}
						
						def void setTcpIpNdpMaxRtrSolicitations(Integer value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpMaxRtrSolicitations"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpMaxRtrSolicitations"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def Integer getTcpIpNdpPrefixListSize(){
							EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpPrefixListSize"])
						}
						
						def void setTcpIpNdpPrefixListSize(Integer value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpPrefixListSize"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpPrefixListSize"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def Boolean getTcpIpNdpRndRtrSolicitationDelayEnabled(){
							getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpRndRtrSolicitationDelayEnabled"])
						}
						
						def void setTcpIpNdpRndRtrSolicitationDelayEnabled(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpRndRtrSolicitationDelayEnabled"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpRndRtrSolicitationDelayEnabled"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def Float getTcpIpNdpRtrSolicitationInterval(){
							EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpRtrSolicitationInterval"])
						}
						
						def void setTcpIpNdpRtrSolicitationInterval(Float value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpRtrSolicitationInterval"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpRtrSolicitationInterval"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						
						
						
					}
					
					static class TcpIpNdpSlaacConfig implements IWrapper<GContainer> {
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
						
						def Integer getTcpIpNdpSlaacDadNumberOfTransmissions(){
							EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpSlaacDadNumberOfTransmissions"])
						}
						
						def void setTcpIpNdpSlaacDadNumberOfTransmissions(Integer value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpSlaacDadNumberOfTransmissions"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpSlaacDadNumberOfTransmissions"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def Float getTcpIpNdpSlaacDadRetransmissionDelay(){
							EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpSlaacDadRetransmissionDelay"])
						}
						
						def void setTcpIpNdpSlaacDadRetransmissionDelay(Float value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpSlaacDadRetransmissionDelay"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpSlaacDadRetransmissionDelay"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def Boolean getTcpIpNdpSlaacDelayEnabled(){
							getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpSlaacDelayEnabled"])
						}
						
						def void setTcpIpNdpSlaacDelayEnabled(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpSlaacDelayEnabled"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpSlaacDelayEnabled"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def Boolean getTcpIpNdpSlaacOptimisticDadEnabled(){
							getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpSlaacOptimisticDadEnabled"])
						}
						
						def void setTcpIpNdpSlaacOptimisticDadEnabled(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpSlaacOptimisticDadEnabled"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpSlaacOptimisticDadEnabled"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						
						
						
					}
					
				}
				
			}
			
		}
		
		static class TcpIpLocalAddr implements IWrapper<GContainer> {
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
			
			def Integer getTcpIpAddrId(){
				EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpAddrId"])
			}
			
			def void setTcpIpAddrId(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpAddrId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpAddrId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def TcpIpAddressType getTcpIpAddressType(){
				getTcpIpAddressTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpAddressType"])
			}
			
			def void setTcpIpAddressType(TcpIpAddressType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpAddressType"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpAddressType"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum TcpIpAddressType {
				TCPIP_MULTICAST, 
				TCPIP_UNICAST
			}
				
			def TcpIpAddressType getTcpIpAddressTypeValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "TCPIP_MULTICAST" : TcpIpAddressType.TCPIP_MULTICAST
					case "TCPIP_UNICAST" : TcpIpAddressType.TCPIP_UNICAST
				}
			}
			
			def void setTcpIpAddressTypeValue(GParameterValue paramValue, TcpIpAddressType value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			def TcpIpDomainType getTcpIpDomainType(){
				getTcpIpDomainTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDomainType"])
			}
			
			def void setTcpIpDomainType(TcpIpDomainType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDomainType"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpDomainType"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum TcpIpDomainType {
				TCPIP_AF_INET, 
				TCPIP_AF_INET6
			}
				
			def TcpIpDomainType getTcpIpDomainTypeValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "TCPIP_AF_INET" : TcpIpDomainType.TCPIP_AF_INET
					case "TCPIP_AF_INET6" : TcpIpDomainType.TCPIP_AF_INET6
				}
			}
			
			def void setTcpIpDomainTypeValue(GParameterValue paramValue, TcpIpDomainType value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.TcpIp.TcpIpConfig.TcpIpCtrl getTcpIpCtrlRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.TcpIp.TcpIpConfig.TcpIpCtrl), "TcpIpCtrlRef")
			}
					
			def void setTcpIpCtrlRef(org.artop.ecuc.autosar421.accessors.TcpIp.TcpIpConfig.TcpIpCtrl object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "TcpIpCtrlRef"], object.getTarget())
				}
			}
			
			
			def List<TcpIpAddrAssignment> getTcpIpAddrAssignments(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "TcpIpAddrAssignment")
					}
				}
				return new BasicWrappingEList<TcpIpAddrAssignment, GContainer>(filteredContainers, typeof(TcpIpAddrAssignment), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.TcpIp$TcpIpConfig$TcpIpLocalAddr$TcpIpAddrAssignment tcpIpAddrAssignment) {
						tcpIpAddrAssignment.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpAddrAssignment"))
						super.delegateAdd(tcpIpAddrAssignment)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.TcpIp$TcpIpConfig$TcpIpLocalAddr$TcpIpAddrAssignment tcpIpAddrAssignment) {
						tcpIpAddrAssignment.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpAddrAssignment"))
						super.delegateAdd(index, tcpIpAddrAssignment)
					}	
				}
			}
			
			def TcpIpStaticIpAddressConfig getTcpIpStaticIpAddressConfig(){
				containerValue.getByType(typeof(TcpIpStaticIpAddressConfig))
			}
			
			def void setTcpIpStaticIpAddressConfig(TcpIpStaticIpAddressConfig tcpIpStaticIpAddressConfig){
				val GContainer subContainer = tcpIpStaticIpAddressConfig.getTarget()
				containerValue.setContainer(subContainer, "TcpIpStaticIpAddressConfig")
			}
			
			
			static class TcpIpAddrAssignment implements IWrapper<GContainer> {
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
				
				def TcpIpAssignmentLifetime getTcpIpAssignmentLifetime(){
					getTcpIpAssignmentLifetimeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpAssignmentLifetime"])
				}
				
				def void setTcpIpAssignmentLifetime(TcpIpAssignmentLifetime value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpAssignmentLifetime"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpAssignmentLifetime"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum TcpIpAssignmentLifetime {
					TCPIP_FORGET, 
					TCPIP_STORE
				}
					
				def TcpIpAssignmentLifetime getTcpIpAssignmentLifetimeValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "TCPIP_FORGET" : TcpIpAssignmentLifetime.TCPIP_FORGET
						case "TCPIP_STORE" : TcpIpAssignmentLifetime.TCPIP_STORE
					}
				}
				
				def void setTcpIpAssignmentLifetimeValue(GParameterValue paramValue, TcpIpAssignmentLifetime value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				def TcpIpAssignmentMethod getTcpIpAssignmentMethod(){
					getTcpIpAssignmentMethodValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpAssignmentMethod"])
				}
				
				def void setTcpIpAssignmentMethod(TcpIpAssignmentMethod value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpAssignmentMethod"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpAssignmentMethod"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum TcpIpAssignmentMethod {
					TCPIP_DHCP, 
					TCPIP_IPV6_ROUTER, 
					TCPIP_LINKLOCAL, 
					TCPIP_LINKLOCAL_DOIP, 
					TCPIP_STATIC
				}
					
				def TcpIpAssignmentMethod getTcpIpAssignmentMethodValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "TCPIP_DHCP" : TcpIpAssignmentMethod.TCPIP_DHCP
						case "TCPIP_IPV6_ROUTER" : TcpIpAssignmentMethod.TCPIP_IPV6_ROUTER
						case "TCPIP_LINKLOCAL" : TcpIpAssignmentMethod.TCPIP_LINKLOCAL
						case "TCPIP_LINKLOCAL_DOIP" : TcpIpAssignmentMethod.TCPIP_LINKLOCAL_DOIP
						case "TCPIP_STATIC" : TcpIpAssignmentMethod.TCPIP_STATIC
					}
				}
				
				def void setTcpIpAssignmentMethodValue(GParameterValue paramValue, TcpIpAssignmentMethod value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				def Integer getTcpIpAssignmentPriority(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpAssignmentPriority"])
				}
				
				def void setTcpIpAssignmentPriority(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpAssignmentPriority"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpAssignmentPriority"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def TcpIpAssignmentTrigger getTcpIpAssignmentTrigger(){
					getTcpIpAssignmentTriggerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpAssignmentTrigger"])
				}
				
				def void setTcpIpAssignmentTrigger(TcpIpAssignmentTrigger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpAssignmentTrigger"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpAssignmentTrigger"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum TcpIpAssignmentTrigger {
					TCPIP_AUTOMATIC, 
					TCPIP_MANUAL
				}
					
				def TcpIpAssignmentTrigger getTcpIpAssignmentTriggerValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "TCPIP_AUTOMATIC" : TcpIpAssignmentTrigger.TCPIP_AUTOMATIC
						case "TCPIP_MANUAL" : TcpIpAssignmentTrigger.TCPIP_MANUAL
					}
				}
				
				def void setTcpIpAssignmentTriggerValue(GParameterValue paramValue, TcpIpAssignmentTrigger value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				
				
				
			}
			
			static class TcpIpStaticIpAddressConfig implements IWrapper<GContainer> {
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
				
				def String getTcpIpDefaultRouter(){
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDefaultRouter"])
				}
				
				def void setTcpIpDefaultRouter(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDefaultRouter"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpDefaultRouter"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def Integer getTcpIpNetmask(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNetmask"])
				}
				
				def void setTcpIpNetmask(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNetmask"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNetmask"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def String getTcpIpStaticIpAddress(){
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpStaticIpAddress"])
				}
				
				def void setTcpIpStaticIpAddress(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpStaticIpAddress"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpStaticIpAddress"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				
				
			}
			
		}
		
		static class TcpIpNvmBlock implements IWrapper<GContainer> {
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
			
			
			def org.artop.ecuc.autosar421.accessors.NvM.NvMBlockDescriptor getTcpIpNvmBlockDescriptorRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.NvM.NvMBlockDescriptor), "TcpIpNvmBlockDescriptorRef")
			}
					
			def void setTcpIpNvmBlockDescriptorRef(org.artop.ecuc.autosar421.accessors.NvM.NvMBlockDescriptor object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "TcpIpNvmBlockDescriptorRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class TcpIpPhysAddrConfig implements IWrapper<GContainer> {
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
			
			
			
			def TcpIpPhysAddrChgHandler getTcpIpPhysAddrChgHandler(){
				containerValue.getByType(typeof(TcpIpPhysAddrChgHandler))
			}
			
			def void setTcpIpPhysAddrChgHandler(TcpIpPhysAddrChgHandler tcpIpPhysAddrChgHandler){
				val GContainer subContainer = tcpIpPhysAddrChgHandler.getTarget()
				containerValue.setContainer(subContainer, "TcpIpPhysAddrChgHandler")
			}
			
			
			static class TcpIpPhysAddrChgHandler implements IWrapper<GContainer> {
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
				
				def String getTcpIpPhysAddrChgHandlerHeaderFileName(){
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpPhysAddrChgHandlerHeaderFileName"])
				}
				
				def void setTcpIpPhysAddrChgHandlerHeaderFileName(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpPhysAddrChgHandlerHeaderFileName"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpPhysAddrChgHandlerHeaderFileName"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def String getTcpIpPhysAddrChgHandlerName(){
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpPhysAddrChgHandlerName"])
				}
				
				def void setTcpIpPhysAddrChgHandlerName(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpPhysAddrChgHandlerName"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpPhysAddrChgHandlerName"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				
				
			}
			
		}
		
		static class TcpIpSocketOwnerConfig implements IWrapper<GContainer> {
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
			
			
			
			def List<TcpIpSocketOwner> getTcpIpSocketOwners(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "TcpIpSocketOwner")
					}
				}
				return new BasicWrappingEList<TcpIpSocketOwner, GContainer>(filteredContainers, typeof(TcpIpSocketOwner), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.TcpIp$TcpIpConfig$TcpIpSocketOwnerConfig$TcpIpSocketOwner tcpIpSocketOwner) {
						tcpIpSocketOwner.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpSocketOwner"))
						super.delegateAdd(tcpIpSocketOwner)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.TcpIp$TcpIpConfig$TcpIpSocketOwnerConfig$TcpIpSocketOwner tcpIpSocketOwner) {
						tcpIpSocketOwner.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpSocketOwner"))
						super.delegateAdd(index, tcpIpSocketOwner)
					}	
				}
			}
			
			
			static class TcpIpSocketOwner implements IWrapper<GContainer> {
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
				
				def String getTcpIpSocketOwnerCopyTxDataName(){
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpSocketOwnerCopyTxDataName"])
				}
				
				def void setTcpIpSocketOwnerCopyTxDataName(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpSocketOwnerCopyTxDataName"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpSocketOwnerCopyTxDataName"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def String getTcpIpSocketOwnerHeaderFileName(){
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpSocketOwnerHeaderFileName"])
				}
				
				def void setTcpIpSocketOwnerHeaderFileName(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpSocketOwnerHeaderFileName"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpSocketOwnerHeaderFileName"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def String getTcpIpSocketOwnerLocalIpAddrAssignmentChgName(){
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpSocketOwnerLocalIpAddrAssignmentChgName"])
				}
				
				def void setTcpIpSocketOwnerLocalIpAddrAssignmentChgName(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpSocketOwnerLocalIpAddrAssignmentChgName"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpSocketOwnerLocalIpAddrAssignmentChgName"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def String getTcpIpSocketOwnerRxIndicationName(){
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpSocketOwnerRxIndicationName"])
				}
				
				def void setTcpIpSocketOwnerRxIndicationName(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpSocketOwnerRxIndicationName"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpSocketOwnerRxIndicationName"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def String getTcpIpSocketOwnerTcpAcceptedName(){
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpSocketOwnerTcpAcceptedName"])
				}
				
				def void setTcpIpSocketOwnerTcpAcceptedName(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpSocketOwnerTcpAcceptedName"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpSocketOwnerTcpAcceptedName"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def String getTcpIpSocketOwnerTcpConnectedName(){
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpSocketOwnerTcpConnectedName"])
				}
				
				def void setTcpIpSocketOwnerTcpConnectedName(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpSocketOwnerTcpConnectedName"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpSocketOwnerTcpConnectedName"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def String getTcpIpSocketOwnerTxConfirmationName(){
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpSocketOwnerTxConfirmationName"])
				}
				
				def void setTcpIpSocketOwnerTxConfirmationName(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpSocketOwnerTxConfirmationName"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpSocketOwnerTxConfirmationName"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def TcpIpSocketOwnerUpperLayerType getTcpIpSocketOwnerUpperLayerType(){
					getTcpIpSocketOwnerUpperLayerTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpSocketOwnerUpperLayerType"])
				}
				
				def void setTcpIpSocketOwnerUpperLayerType(TcpIpSocketOwnerUpperLayerType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpSocketOwnerUpperLayerType"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpSocketOwnerUpperLayerType"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum TcpIpSocketOwnerUpperLayerType {
					CDD, 
					SOAD
				}
					
				def TcpIpSocketOwnerUpperLayerType getTcpIpSocketOwnerUpperLayerTypeValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "CDD" : TcpIpSocketOwnerUpperLayerType.CDD
						case "SOAD" : TcpIpSocketOwnerUpperLayerType.SOAD
					}
				}
				
				def void setTcpIpSocketOwnerUpperLayerTypeValue(GParameterValue paramValue, TcpIpSocketOwnerUpperLayerType value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				
				
				
			}
			
		}
		
		static class TcpIpTcpConfig implements IWrapper<GContainer> {
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
			
			def Boolean getTcpIpTcpCongestionAvoidanceEnabled(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpCongestionAvoidanceEnabled"])
			}
			
			def void setTcpIpTcpCongestionAvoidanceEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpCongestionAvoidanceEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpCongestionAvoidanceEnabled"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getTcpIpTcpFastRecoveryEnabled(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpFastRecoveryEnabled"])
			}
			
			def void setTcpIpTcpFastRecoveryEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpFastRecoveryEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpFastRecoveryEnabled"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getTcpIpTcpFastRetransmitEnabled(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpFastRetransmitEnabled"])
			}
			
			def void setTcpIpTcpFastRetransmitEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpFastRetransmitEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpFastRetransmitEnabled"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Float getTcpIpTcpFinWait2Timeout(){
				EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpFinWait2Timeout"])
			}
			
			def void setTcpIpTcpFinWait2Timeout(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpFinWait2Timeout"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpFinWait2Timeout"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getTcpIpTcpKeepAliveEnabled(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpKeepAliveEnabled"])
			}
			
			def void setTcpIpTcpKeepAliveEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpKeepAliveEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpKeepAliveEnabled"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Float getTcpIpTcpKeepAliveInterval(){
				EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpKeepAliveInterval"])
			}
			
			def void setTcpIpTcpKeepAliveInterval(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpKeepAliveInterval"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpKeepAliveInterval"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Integer getTcpIpTcpKeepAliveProbesMax(){
				EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpKeepAliveProbesMax"])
			}
			
			def void setTcpIpTcpKeepAliveProbesMax(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpKeepAliveProbesMax"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpKeepAliveProbesMax"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Float getTcpIpTcpKeepAliveTime(){
				EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpKeepAliveTime"])
			}
			
			def void setTcpIpTcpKeepAliveTime(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpKeepAliveTime"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpKeepAliveTime"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Integer getTcpIpTcpMaxRtx(){
				EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpMaxRtx"])
			}
			
			def void setTcpIpTcpMaxRtx(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpMaxRtx"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpMaxRtx"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Float getTcpIpTcpMsl(){
				EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpMsl"])
			}
			
			def void setTcpIpTcpMsl(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpMsl"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpMsl"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getTcpIpTcpNagleEnabled(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpNagleEnabled"])
			}
			
			def void setTcpIpTcpNagleEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpNagleEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpNagleEnabled"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Integer getTcpIpTcpReceiveWindowMax(){
				EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpReceiveWindowMax"])
			}
			
			def void setTcpIpTcpReceiveWindowMax(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpReceiveWindowMax"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpReceiveWindowMax"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Float getTcpIpTcpRetransmissionTimeout(){
				EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpRetransmissionTimeout"])
			}
			
			def void setTcpIpTcpRetransmissionTimeout(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpRetransmissionTimeout"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpRetransmissionTimeout"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getTcpIpTcpSlowStartEnabled(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpSlowStartEnabled"])
			}
			
			def void setTcpIpTcpSlowStartEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpSlowStartEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpSlowStartEnabled"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Integer getTcpIpTcpSynMaxRtx(){
				EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpSynMaxRtx"])
			}
			
			def void setTcpIpTcpSynMaxRtx(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpSynMaxRtx"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpSynMaxRtx"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Float getTcpIpTcpSynReceivedTimeout(){
				EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpSynReceivedTimeout"])
			}
			
			def void setTcpIpTcpSynReceivedTimeout(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpSynReceivedTimeout"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpSynReceivedTimeout"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Integer getTcpIpTcpTtl(){
				EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpTtl"])
			}
			
			def void setTcpIpTcpTtl(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpTtl"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpTtl"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
		static class TcpIpUdpConfig implements IWrapper<GContainer> {
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
			
			def Integer getTcpIpUdpTtl(){
				EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpUdpTtl"])
			}
			
			def void setTcpIpUdpTtl(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpUdpTtl"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpUdpTtl"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class TcpIpGeneral implements IWrapper<GContainer> {
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
		
		def Integer getTcpIpBufferMemory(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpBufferMemory"])
		}
		
		def void setTcpIpBufferMemory(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpBufferMemory"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpBufferMemory"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getTcpIpDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDevErrorDetect"])
		}
		
		def void setTcpIpDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getTcpIpDhcpServerEnabled(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpServerEnabled"])
		}
		
		def void setTcpIpDhcpServerEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpServerEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpDhcpServerEnabled"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Float getTcpIpMainFunctionPeriod(){
			EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpMainFunctionPeriod"])
		}
		
		def void setTcpIpMainFunctionPeriod(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpMainFunctionPeriod"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpMainFunctionPeriod"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getTcpIpResetIpAssignmentApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpResetIpAssignmentApi"])
		}
		
		def void setTcpIpResetIpAssignmentApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpResetIpAssignmentApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpResetIpAssignmentApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def TcpIpScalabilityClass getTcpIpScalabilityClass(){
			getTcpIpScalabilityClassValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpScalabilityClass"])
		}
		
		def void setTcpIpScalabilityClass(TcpIpScalabilityClass value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpScalabilityClass"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpScalabilityClass"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		enum TcpIpScalabilityClass {
			SC1, 
			SC2, 
			SC3
		}
			
		def TcpIpScalabilityClass getTcpIpScalabilityClassValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "SC1" : TcpIpScalabilityClass.SC1
				case "SC2" : TcpIpScalabilityClass.SC2
				case "SC3" : TcpIpScalabilityClass.SC3
			}
		}
		
		def void setTcpIpScalabilityClassValue(GParameterValue paramValue, TcpIpScalabilityClass value){
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		def Boolean getTcpIpTcpEnabled(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpEnabled"])
		}
		
		def void setTcpIpTcpEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpEnabled"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getTcpIpTcpSocketMax(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpSocketMax"])
		}
		
		def void setTcpIpTcpSocketMax(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpSocketMax"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpSocketMax"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getTcpIpUdpEnabled(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpUdpEnabled"])
		}
		
		def void setTcpIpUdpEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpUdpEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpUdpEnabled"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getTcpIpUdpSocketMax(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpUdpSocketMax"])
		}
		
		def void setTcpIpUdpSocketMax(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpUdpSocketMax"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpUdpSocketMax"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getTcpIpVersionInfoApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpVersionInfoApi"])
		}
		
		def void setTcpIpVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def TcpIpIpV4General getTcpIpIpV4General(){
			containerValue.getByType(typeof(TcpIpIpV4General))
		}
		
		def void setTcpIpIpV4General(TcpIpIpV4General tcpIpIpV4General){
			val GContainer subContainer = tcpIpIpV4General.getTarget()
			containerValue.setContainer(subContainer, "TcpIpIpV4General")
		}
		
		def TcpIpIpV6General getTcpIpIpV6General(){
			containerValue.getByType(typeof(TcpIpIpV6General))
		}
		
		def void setTcpIpIpV6General(TcpIpIpV6General tcpIpIpV6General){
			val GContainer subContainer = tcpIpIpV6General.getTarget()
			containerValue.setContainer(subContainer, "TcpIpIpV6General")
		}
		
		
		static class TcpIpIpV4General implements IWrapper<GContainer> {
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
			
			def Boolean getTcpIpArpEnabled(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpArpEnabled"])
			}
			
			def void setTcpIpArpEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpArpEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpArpEnabled"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getTcpIpAutoIpEnabled(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpAutoIpEnabled"])
			}
			
			def void setTcpIpAutoIpEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpAutoIpEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpAutoIpEnabled"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getTcpIpDhcpClientEnabled(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpClientEnabled"])
			}
			
			def void setTcpIpDhcpClientEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpClientEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpDhcpClientEnabled"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getTcpIpIcmpEnabled(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpEnabled"])
			}
			
			def void setTcpIpIcmpEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIcmpEnabled"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getTcpIpIpV4Enabled(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV4Enabled"])
			}
			
			def void setTcpIpIpV4Enabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV4Enabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIpV4Enabled"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Integer getTcpIpLocalAddrIpv4EntriesMax(){
				EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpLocalAddrIpv4EntriesMax"])
			}
			
			def void setTcpIpLocalAddrIpv4EntriesMax(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpLocalAddrIpv4EntriesMax"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpLocalAddrIpv4EntriesMax"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getTcpIpPathMtuDiscoveryEnabled(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpPathMtuDiscoveryEnabled"])
			}
			
			def void setTcpIpPathMtuDiscoveryEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpPathMtuDiscoveryEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpPathMtuDiscoveryEnabled"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
		static class TcpIpIpV6General implements IWrapper<GContainer> {
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
			
			def Boolean getTcpIpDhcpV6ClientEnabled(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpV6ClientEnabled"])
			}
			
			def void setTcpIpDhcpV6ClientEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpV6ClientEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpDhcpV6ClientEnabled"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getTcpIpIpV6Enabled(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6Enabled"])
			}
			
			def void setTcpIpIpV6Enabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6Enabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIpV6Enabled"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getTcpIpIpV6PathMtuDiscoveryEnabled(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6PathMtuDiscoveryEnabled"])
			}
			
			def void setTcpIpIpV6PathMtuDiscoveryEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6PathMtuDiscoveryEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIpV6PathMtuDiscoveryEnabled"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Integer getTcpIpLocalAddrIpv6EntriesMax(){
				EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpLocalAddrIpv6EntriesMax"])
			}
			
			def void setTcpIpLocalAddrIpv6EntriesMax(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpLocalAddrIpv6EntriesMax"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpLocalAddrIpv6EntriesMax"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getTcpIpNdpAddressResolutionUnrechabilityDetectionEnabled(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpAddressResolutionUnrechabilityDetectionEnabled"])
			}
			
			def void setTcpIpNdpAddressResolutionUnrechabilityDetectionEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpAddressResolutionUnrechabilityDetectionEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpAddressResolutionUnrechabilityDetectionEnabled"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getTcpIpNdpPrefixAndRouterDiscoveryEnabled(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpPrefixAndRouterDiscoveryEnabled"])
			}
			
			def void setTcpIpNdpPrefixAndRouterDiscoveryEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpPrefixAndRouterDiscoveryEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpPrefixAndRouterDiscoveryEnabled"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
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
