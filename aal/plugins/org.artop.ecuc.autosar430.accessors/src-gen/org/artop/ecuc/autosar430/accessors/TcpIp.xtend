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
package org.artop.ecuc.autosar430.accessors

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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof TcpIpConfig)){
				return false
			}
			this.target == (object as TcpIpConfig).target
		}
	
		
		
		def List<TcpIpCtrl> getTcpIpCtrls(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "TcpIpCtrl")
				}
			}
			return new BasicWrappingEList<TcpIpCtrl, GContainer>(filteredContainers, typeof(TcpIpCtrl), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpCtrl tcpIpCtrl) {
					tcpIpCtrl.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpCtrl"))
					super.delegateAdd(tcpIpCtrl)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpCtrl tcpIpCtrl) {
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
				override protected delegateAdd(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpDhcpServerConfig tcpIpDhcpServerConfig) {
					tcpIpDhcpServerConfig.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpDhcpServerConfig"))
					super.delegateAdd(tcpIpDhcpServerConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpDhcpServerConfig tcpIpDhcpServerConfig) {
					tcpIpDhcpServerConfig.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpDhcpServerConfig"))
					super.delegateAdd(index, tcpIpDhcpServerConfig)
				}
			}
		}
		
		def TcpIpDuplicateAddressDetectionConfig getTcpIpDuplicateAddressDetectionConfig(){
			containerValue.getByType(typeof(TcpIpDuplicateAddressDetectionConfig))
		}
		
		def void setTcpIpDuplicateAddressDetectionConfig(TcpIpDuplicateAddressDetectionConfig tcpIpDuplicateAddressDetectionConfig){
			val GContainer subContainer = tcpIpDuplicateAddressDetectionConfig.getTarget()
			containerValue.setContainer(subContainer, "TcpIpDuplicateAddressDetectionConfig")
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
				override protected delegateAdd(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpLocalAddr tcpIpLocalAddr) {
					tcpIpLocalAddr.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpLocalAddr"))
					super.delegateAdd(tcpIpLocalAddr)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpLocalAddr tcpIpLocalAddr) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof TcpIpCtrl)){
					return false
				}
				this.target == (object as TcpIpCtrl).target
			}
		
			def BigInteger getTcpIpIpFramePrioDefault(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpFramePrioDefault"].getBigIntegerValue()
			}
			
			def void setTcpIpIpFramePrioDefault(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpFramePrioDefault"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIpFramePrioDefault"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpDhcpServerConfig getTcpIpDhcpServerConfigRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpDhcpServerConfig), "TcpIpDhcpServerConfigRef")
			}
			
			def void setTcpIpDhcpServerConfigRef(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpDhcpServerConfig object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "TcpIpDhcpServerConfigRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar430.accessors.EthIf.EthIfConfigSet.EthIfController getTcpIpEthIfCtrlRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EthIf.EthIfConfigSet.EthIfController), "TcpIpEthIfCtrlRef")
			}
			
			def void setTcpIpEthIfCtrlRef(org.artop.ecuc.autosar430.accessors.EthIf.EthIfConfigSet.EthIfController object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "TcpIpEthIfCtrlRef"], object.getTarget())
				}
			}
			
			
			def TcpIpIpVXCtrl getTcpIpIpVXCtrl(){
				containerValue.getByType(typeof(TcpIpIpVXCtrl))
			}
			
			def void setTcpIpIpVXCtrl(TcpIpIpVXCtrl tcpIpIpVXCtrl){
				val GContainer subContainer = tcpIpIpVXCtrl.getTarget()
				containerValue.setContainer(subContainer, "TcpIpIpVXCtrl")
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof TcpIpIpVXCtrl)){
						return false
					}
					this.target == (object as TcpIpIpVXCtrl).target
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
				
					override def boolean equals(Object object) {
				        if (!(object instanceof TcpIpIpV4Ctrl)){
							return false
						}
						this.target == (object as TcpIpIpV4Ctrl).target
					}
				
					
					def org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV4Config.TcpIpArpConfig getTcpIpArpConfigRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV4Config.TcpIpArpConfig), "TcpIpArpConfigRef")
					}
					
					def void setTcpIpArpConfigRef(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV4Config.TcpIpArpConfig object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "TcpIpArpConfigRef"], object.getTarget())
						}
					}
					
					def org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV4Config.TcpIpAutoIpConfig getTcpIpAutoIpConfigRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV4Config.TcpIpAutoIpConfig), "TcpIpAutoIpConfigRef")
					}
					
					def void setTcpIpAutoIpConfigRef(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV4Config.TcpIpAutoIpConfig object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "TcpIpAutoIpConfigRef"], object.getTarget())
						}
					}
					
					def org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV4Config.TcpIpDhcpConfig getTcpIpDhcpConfigRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV4Config.TcpIpDhcpConfig), "TcpIpDhcpConfigRef")
					}
					
					def void setTcpIpDhcpConfigRef(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV4Config.TcpIpDhcpConfig object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "TcpIpDhcpConfigRef"], object.getTarget())
						}
					}
					
					def org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV4Config.TcpIpIpFragmentationConfig getTcpIpFragmentationConfigRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV4Config.TcpIpIpFragmentationConfig), "TcpIpFragmentationConfigRef")
					}
					
					def void setTcpIpFragmentationConfigRef(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV4Config.TcpIpIpFragmentationConfig object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "TcpIpFragmentationConfigRef"], object.getTarget())
						}
					}
					
					
					def TcpIpIpV4MtuConfig getTcpIpIpV4MtuConfig(){
						containerValue.getByType(typeof(TcpIpIpV4MtuConfig))
					}
					
					def void setTcpIpIpV4MtuConfig(TcpIpIpV4MtuConfig tcpIpIpV4MtuConfig){
						val GContainer subContainer = tcpIpIpV4MtuConfig.getTarget()
						containerValue.setContainer(subContainer, "TcpIpIpV4MtuConfig")
					}
					
					
					static class TcpIpIpV4MtuConfig implements IWrapper<GContainer> {
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
					        if (!(object instanceof TcpIpIpV4MtuConfig)){
								return false
							}
							this.target == (object as TcpIpIpV4MtuConfig).target
						}
					
						def Boolean getTcpIpIpV4PathMtuEnabled(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV4PathMtuEnabled"].getBooleanValue()
						}
						
						def void setTcpIpIpV4PathMtuEnabled(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV4PathMtuEnabled"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIpV4PathMtuEnabled"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(getBooleanParameterValueValue(value, true))
						}
						
						def BigDecimal getTcpIpIpV4PathMtuTimeout(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV4PathMtuTimeout"].getBigDecimalValue()
						}
						
						def void setTcpIpIpV4PathMtuTimeout(BigDecimal value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV4PathMtuTimeout"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIpV4PathMtuTimeout"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
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
				
					override def boolean equals(Object object) {
				        if (!(object instanceof TcpIpIpV6Ctrl)){
							return false
						}
						this.target == (object as TcpIpIpV6Ctrl).target
					}
				
					
					def org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV6Config.TcpIpDhcpV6Config getTcpIpIpV6DhcpConfigRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV6Config.TcpIpDhcpV6Config), "TcpIpIpV6DhcpConfigRef")
					}
					
					def void setTcpIpIpV6DhcpConfigRef(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV6Config.TcpIpDhcpV6Config object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "TcpIpIpV6DhcpConfigRef"], object.getTarget())
						}
					}
					
					def org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV6Config.TcpIpIpV6FragmentationConfig getTcpIpIpV6FragmentationConfigRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV6Config.TcpIpIpV6FragmentationConfig), "TcpIpIpV6FragmentationConfigRef")
					}
					
					def void setTcpIpIpV6FragmentationConfigRef(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV6Config.TcpIpIpV6FragmentationConfig object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "TcpIpIpV6FragmentationConfigRef"], object.getTarget())
						}
					}
					
					def org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV6Config.TcpIpNdpConfig getTcpIpIpV6NdpConfigRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV6Config.TcpIpNdpConfig), "TcpIpIpV6NdpConfigRef")
					}
					
					def void setTcpIpIpV6NdpConfigRef(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV6Config.TcpIpNdpConfig object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "TcpIpIpV6NdpConfigRef"], object.getTarget())
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
					
						override def boolean equals(Object object) {
					        if (!(object instanceof TcpIpIpV6MtuConfig)){
								return false
							}
							this.target == (object as TcpIpIpV6MtuConfig).target
						}
					
						def Boolean getTcpIpIpV6PathMtuEnabled(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6PathMtuEnabled"].getBooleanValue()
						}
						
						def void setTcpIpIpV6PathMtuEnabled(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6PathMtuEnabled"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIpV6PathMtuEnabled"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(getBooleanParameterValueValue(value, true))
						}
						
						def BigDecimal getTcpIpIpV6PathMtuTimeout(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6PathMtuTimeout"].getBigDecimalValue()
						}
						
						def void setTcpIpIpV6PathMtuTimeout(BigDecimal value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6PathMtuTimeout"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIpV6PathMtuTimeout"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof TcpIpDhcpServerConfig)){
					return false
				}
				this.target == (object as TcpIpDhcpServerConfig).target
			}
		
			def String getTcpIpDhcpDefaultRouter(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpDefaultRouter"].getStringValue()
			}
			
			def void setTcpIpDhcpDefaultRouter(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpDefaultRouter"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpDhcpDefaultRouter"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getTcpIpDhcpNetmask(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpNetmask"].getBigIntegerValue()
			}
			
			def void setTcpIpDhcpNetmask(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpNetmask"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpDhcpNetmask"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar430.accessors.EthIf.EthIfConfigSet.EthIfSwitch getTcpIpDhcpEthIfSwitchRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EthIf.EthIfConfigSet.EthIfSwitch), "TcpIpDhcpEthIfSwitchRef")
			}
			
			def void setTcpIpDhcpEthIfSwitchRef(org.artop.ecuc.autosar430.accessors.EthIf.EthIfConfigSet.EthIfSwitch object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "TcpIpDhcpEthIfSwitchRef"], object.getTarget())
				}
			}
			
			
			def List<TcpIpDhcpAddressAssignment> getTcpIpDhcpAddressAssignments(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "TcpIpDhcpAddressAssignment")
					}
				}
				return new BasicWrappingEList<TcpIpDhcpAddressAssignment, GContainer>(filteredContainers, typeof(TcpIpDhcpAddressAssignment), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpDhcpServerConfig.TcpIpDhcpAddressAssignment tcpIpDhcpAddressAssignment) {
						tcpIpDhcpAddressAssignment.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpDhcpAddressAssignment"))
						super.delegateAdd(tcpIpDhcpAddressAssignment)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpDhcpServerConfig.TcpIpDhcpAddressAssignment tcpIpDhcpAddressAssignment) {
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof TcpIpDhcpAddressAssignment)){
						return false
					}
					this.target == (object as TcpIpDhcpAddressAssignment).target
				}
			
				def String getTcpIpDhcpAddressLowerBound(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpAddressLowerBound"].getStringValue()
				}
				
				def void setTcpIpDhcpAddressLowerBound(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpAddressLowerBound"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpDhcpAddressLowerBound"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def String getTcpIpDhcpAddressUpperBound(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpAddressUpperBound"].getStringValue()
				}
				
				def void setTcpIpDhcpAddressUpperBound(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpAddressUpperBound"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpDhcpAddressUpperBound"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar430.accessors.EthSwt.EthSwtConfig.EthSwtPort getTcpIpDhcpSwitchPortRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EthSwt.EthSwtConfig.EthSwtPort), "TcpIpDhcpSwitchPortRef")
				}
				
				def void setTcpIpDhcpSwitchPortRef(org.artop.ecuc.autosar430.accessors.EthSwt.EthSwtConfig.EthSwtPort object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "TcpIpDhcpSwitchPortRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class TcpIpDuplicateAddressDetectionConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof TcpIpDuplicateAddressDetectionConfig)){
					return false
				}
				this.target == (object as TcpIpDuplicateAddressDetectionConfig).target
			}
		
			def String getTcpIpDuplicateAddressDetectionCalloutName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDuplicateAddressDetectionCalloutName"].getStringValue()
			}
			
			def void setTcpIpDuplicateAddressDetectionCalloutName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDuplicateAddressDetectionCalloutName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpDuplicateAddressDetectionCalloutName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getTcpIpDuplicateAddressDetectionHeaderFileName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDuplicateAddressDetectionHeaderFileName"].getStringValue()
			}
			
			def void setTcpIpDuplicateAddressDetectionHeaderFileName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDuplicateAddressDetectionHeaderFileName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpDuplicateAddressDetectionHeaderFileName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof TcpIpIpConfig)){
					return false
				}
				this.target == (object as TcpIpIpConfig).target
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof TcpIpIpV4Config)){
						return false
					}
					this.target == (object as TcpIpIpV4Config).target
				}
			
				
				
				def List<TcpIpArpConfig> getTcpIpArpConfigs(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "TcpIpArpConfig")
						}
					}
					return new BasicWrappingEList<TcpIpArpConfig, GContainer>(filteredContainers, typeof(TcpIpArpConfig), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV4Config.TcpIpArpConfig tcpIpArpConfig) {
							tcpIpArpConfig.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpArpConfig"))
							super.delegateAdd(tcpIpArpConfig)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV4Config.TcpIpArpConfig tcpIpArpConfig) {
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
						override protected delegateAdd(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV4Config.TcpIpAutoIpConfig tcpIpAutoIpConfig) {
							tcpIpAutoIpConfig.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpAutoIpConfig"))
							super.delegateAdd(tcpIpAutoIpConfig)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV4Config.TcpIpAutoIpConfig tcpIpAutoIpConfig) {
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
						override protected delegateAdd(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV4Config.TcpIpDhcpConfig tcpIpDhcpConfig) {
							tcpIpDhcpConfig.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpDhcpConfig"))
							super.delegateAdd(tcpIpDhcpConfig)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV4Config.TcpIpDhcpConfig tcpIpDhcpConfig) {
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
						override protected delegateAdd(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV4Config.TcpIpIpFragmentationConfig tcpIpIpFragmentationConfig) {
							tcpIpIpFragmentationConfig.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpIpFragmentationConfig"))
							super.delegateAdd(tcpIpIpFragmentationConfig)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV4Config.TcpIpIpFragmentationConfig tcpIpIpFragmentationConfig) {
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
				
					override def boolean equals(Object object) {
				        if (!(object instanceof TcpIpArpConfig)){
							return false
						}
						this.target == (object as TcpIpArpConfig).target
					}
				
					def BigInteger getTcpIpArpNumGratuitousARPonStartup(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpArpNumGratuitousARPonStartup"].getBigIntegerValue()
					}
					
					def void setTcpIpArpNumGratuitousARPonStartup(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpArpNumGratuitousARPonStartup"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpArpNumGratuitousARPonStartup"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def Boolean getTcpIpArpPacketQueueEnabled(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpArpPacketQueueEnabled"].getBooleanValue()
					}
					
					def void setTcpIpArpPacketQueueEnabled(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpArpPacketQueueEnabled"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpArpPacketQueueEnabled"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def BigDecimal getTcpIpArpTableEntryTimeout(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpArpTableEntryTimeout"].getBigDecimalValue()
					}
					
					def void setTcpIpArpTableEntryTimeout(BigDecimal value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpArpTableEntryTimeout"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpArpTableEntryTimeout"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getTcpIpArpTableSizeMax(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpArpTableSizeMax"].getBigIntegerValue()
					}
					
					def void setTcpIpArpTableSizeMax(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpArpTableSizeMax"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpArpTableSizeMax"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
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
				
					override def boolean equals(Object object) {
				        if (!(object instanceof TcpIpAutoIpConfig)){
							return false
						}
						this.target == (object as TcpIpAutoIpConfig).target
					}
				
					def BigDecimal getTcpIpAutoIpInitTimeout(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpAutoIpInitTimeout"].getBigDecimalValue()
					}
					
					def void setTcpIpAutoIpInitTimeout(BigDecimal value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpAutoIpInitTimeout"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpAutoIpInitTimeout"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
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
				
					override def boolean equals(Object object) {
				        if (!(object instanceof TcpIpDhcpConfig)){
							return false
						}
						this.target == (object as TcpIpDhcpConfig).target
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
				
					override def boolean equals(Object object) {
				        if (!(object instanceof TcpIpIcmpConfig)){
							return false
						}
						this.target == (object as TcpIpIcmpConfig).target
					}
				
					def Boolean getTcpIpIcmpEchoReplyEnabled(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpEchoReplyEnabled"].getBooleanValue()
					}
					
					def void setTcpIpIcmpEchoReplyEnabled(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpEchoReplyEnabled"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIcmpEchoReplyEnabled"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def BigInteger getTcpIpIcmpTtl(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpTtl"].getBigIntegerValue()
					}
					
					def void setTcpIpIcmpTtl(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpTtl"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIcmpTtl"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
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
					
						override def boolean equals(Object object) {
					        if (!(object instanceof TcpIpIcmpMsgHandler)){
								return false
							}
							this.target == (object as TcpIpIcmpMsgHandler).target
						}
					
						def String getTcpIpIcmpMsgHandlerHeaderFileName(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpMsgHandlerHeaderFileName"].getStringValue()
						}
						
						def void setTcpIpIcmpMsgHandlerHeaderFileName(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpMsgHandlerHeaderFileName"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIcmpMsgHandlerHeaderFileName"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						def String getTcpIpIcmpMsgHandlerName(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpMsgHandlerName"].getStringValue()
						}
						
						def void setTcpIpIcmpMsgHandlerName(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpMsgHandlerName"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIcmpMsgHandlerName"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
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
				
					override def boolean equals(Object object) {
				        if (!(object instanceof TcpIpIpFragmentationConfig)){
							return false
						}
						this.target == (object as TcpIpIpFragmentationConfig).target
					}
				
					def Boolean getTcpIpIpFragmentationRxEnabled(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpFragmentationRxEnabled"].getBooleanValue()
					}
					
					def void setTcpIpIpFragmentationRxEnabled(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpFragmentationRxEnabled"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIpFragmentationRxEnabled"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def BigInteger getTcpIpIpNumFragments(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpNumFragments"].getBigIntegerValue()
					}
					
					def void setTcpIpIpNumFragments(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpNumFragments"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIpNumFragments"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getTcpIpIpNumReassDgrams(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpNumReassDgrams"].getBigIntegerValue()
					}
					
					def void setTcpIpIpNumReassDgrams(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpNumReassDgrams"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIpNumReassDgrams"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigDecimal getTcpIpIpReassTimeout(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpReassTimeout"].getBigDecimalValue()
					}
					
					def void setTcpIpIpReassTimeout(BigDecimal value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpReassTimeout"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIpReassTimeout"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof TcpIpIpV6Config)){
						return false
					}
					this.target == (object as TcpIpIpV6Config).target
				}
			
				
				
				def List<TcpIpDhcpV6Config> getTcpIpDhcpV6Configs(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "TcpIpDhcpV6Config")
						}
					}
					return new BasicWrappingEList<TcpIpDhcpV6Config, GContainer>(filteredContainers, typeof(TcpIpDhcpV6Config), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV6Config.TcpIpDhcpV6Config tcpIpDhcpV6Config) {
							tcpIpDhcpV6Config.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpDhcpV6Config"))
							super.delegateAdd(tcpIpDhcpV6Config)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV6Config.TcpIpDhcpV6Config tcpIpDhcpV6Config) {
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
				
				def List<TcpIpIpV6ConfigExtHeaderFilter> getTcpIpIpV6ConfigExtHeaderFilters(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "TcpIpIpV6ConfigExtHeaderFilter")
						}
					}
					return new BasicWrappingEList<TcpIpIpV6ConfigExtHeaderFilter, GContainer>(filteredContainers, typeof(TcpIpIpV6ConfigExtHeaderFilter), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV6Config.TcpIpIpV6ConfigExtHeaderFilter tcpIpIpV6ConfigExtHeaderFilter) {
							tcpIpIpV6ConfigExtHeaderFilter.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpIpV6ConfigExtHeaderFilter"))
							super.delegateAdd(tcpIpIpV6ConfigExtHeaderFilter)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV6Config.TcpIpIpV6ConfigExtHeaderFilter tcpIpIpV6ConfigExtHeaderFilter) {
							tcpIpIpV6ConfigExtHeaderFilter.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpIpV6ConfigExtHeaderFilter"))
							super.delegateAdd(index, tcpIpIpV6ConfigExtHeaderFilter)
						}
					}
				}
				
				def List<TcpIpIpV6FragmentationConfig> getTcpIpIpV6FragmentationConfigs(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "TcpIpIpV6FragmentationConfig")
						}
					}
					return new BasicWrappingEList<TcpIpIpV6FragmentationConfig, GContainer>(filteredContainers, typeof(TcpIpIpV6FragmentationConfig), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV6Config.TcpIpIpV6FragmentationConfig tcpIpIpV6FragmentationConfig) {
							tcpIpIpV6FragmentationConfig.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpIpV6FragmentationConfig"))
							super.delegateAdd(tcpIpIpV6FragmentationConfig)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV6Config.TcpIpIpV6FragmentationConfig tcpIpIpV6FragmentationConfig) {
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
						override protected delegateAdd(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV6Config.TcpIpNdpConfig tcpIpNdpConfig) {
							tcpIpNdpConfig.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpNdpConfig"))
							super.delegateAdd(tcpIpNdpConfig)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV6Config.TcpIpNdpConfig tcpIpNdpConfig) {
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
				
					override def boolean equals(Object object) {
				        if (!(object instanceof TcpIpDhcpV6Config)){
							return false
						}
						this.target == (object as TcpIpDhcpV6Config).target
					}
				
					def BigDecimal getTcpIpDhcpV6CnfDelayMax(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpV6CnfDelayMax"].getBigDecimalValue()
					}
					
					def void setTcpIpDhcpV6CnfDelayMax(BigDecimal value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpV6CnfDelayMax"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpDhcpV6CnfDelayMax"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigDecimal getTcpIpDhcpV6CnfDelayMin(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpV6CnfDelayMin"].getBigDecimalValue()
					}
					
					def void setTcpIpDhcpV6CnfDelayMin(BigDecimal value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpV6CnfDelayMin"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpDhcpV6CnfDelayMin"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigDecimal getTcpIpDhcpV6InfDelayMax(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpV6InfDelayMax"].getBigDecimalValue()
					}
					
					def void setTcpIpDhcpV6InfDelayMax(BigDecimal value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpV6InfDelayMax"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpDhcpV6InfDelayMax"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigDecimal getTcpIpDhcpV6InfDelayMin(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpV6InfDelayMin"].getBigDecimalValue()
					}
					
					def void setTcpIpDhcpV6InfDelayMin(BigDecimal value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpV6InfDelayMin"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpDhcpV6InfDelayMin"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigDecimal getTcpIpDhcpV6SolDelayMax(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpV6SolDelayMax"].getBigDecimalValue()
					}
					
					def void setTcpIpDhcpV6SolDelayMax(BigDecimal value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpV6SolDelayMax"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpDhcpV6SolDelayMax"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigDecimal getTcpIpDhcpV6SolDelayMin(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpV6SolDelayMin"].getBigDecimalValue()
					}
					
					def void setTcpIpDhcpV6SolDelayMin(BigDecimal value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpV6SolDelayMin"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpDhcpV6SolDelayMin"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
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
				
					override def boolean equals(Object object) {
				        if (!(object instanceof TcpIpIcmpV6Config)){
							return false
						}
						this.target == (object as TcpIpIcmpV6Config).target
					}
				
					def Boolean getTcpIpIcmpV6EchoReplyAvoidFragmentation(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpV6EchoReplyAvoidFragmentation"].getBooleanValue()
					}
					
					def void setTcpIpIcmpV6EchoReplyAvoidFragmentation(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpV6EchoReplyAvoidFragmentation"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIcmpV6EchoReplyAvoidFragmentation"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def Boolean getTcpIpIcmpV6EchoReplyEnabled(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpV6EchoReplyEnabled"].getBooleanValue()
					}
					
					def void setTcpIpIcmpV6EchoReplyEnabled(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpV6EchoReplyEnabled"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIcmpV6EchoReplyEnabled"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def BigInteger getTcpIpIcmpV6HopLimit(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpV6HopLimit"].getBigIntegerValue()
					}
					
					def void setTcpIpIcmpV6HopLimit(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpV6HopLimit"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIcmpV6HopLimit"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def Boolean getTcpIpIcmpV6MsgDestinationUnreachableEnabled(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpV6MsgDestinationUnreachableEnabled"].getBooleanValue()
					}
					
					def void setTcpIpIcmpV6MsgDestinationUnreachableEnabled(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpV6MsgDestinationUnreachableEnabled"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIcmpV6MsgDestinationUnreachableEnabled"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def Boolean getTcpIpIcmpV6MsgParameterProblemEnabled(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpV6MsgParameterProblemEnabled"].getBooleanValue()
					}
					
					def void setTcpIpIcmpV6MsgParameterProblemEnabled(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpV6MsgParameterProblemEnabled"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIcmpV6MsgParameterProblemEnabled"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
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
					
						override def boolean equals(Object object) {
					        if (!(object instanceof TcpIpIcmpV6MsgHandler)){
								return false
							}
							this.target == (object as TcpIpIcmpV6MsgHandler).target
						}
					
						def String getTcpIpIcmpV6MsgHandlerHeaderFileName(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpV6MsgHandlerHeaderFileName"].getStringValue()
						}
						
						def void setTcpIpIcmpV6MsgHandlerHeaderFileName(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpV6MsgHandlerHeaderFileName"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIcmpV6MsgHandlerHeaderFileName"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						def String getTcpIpIcmpV6MsgHandlerName(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpV6MsgHandlerName"].getStringValue()
						}
						
						def void setTcpIpIcmpV6MsgHandlerName(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpV6MsgHandlerName"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIcmpV6MsgHandlerName"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						
						
						
					}
					
				}
				
				static class TcpIpIpV6ConfigExtHeaderFilter implements IWrapper<GContainer> {
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
				        if (!(object instanceof TcpIpIpV6ConfigExtHeaderFilter)){
							return false
						}
						this.target == (object as TcpIpIpV6ConfigExtHeaderFilter).target
					}
				
					def List<BigInteger> getTcpIpIpV6ConfigExtHeaderFilterEntries(){
						val List<EcucNumericalParamValue> filteredParameterValues = new AbstractFilteringEList<EcucNumericalParamValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {
							override protected accept(EcucNumericalParamValue item) {
								return accept(item, typeof(GConfigParameter), "TcpIpIpV6ConfigExtHeaderFilterEntry")
							}
						}
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIpV6ConfigExtHeaderFilterEntry"]
							return new BigIntegerValueUnwrappingEList(filteredParameterValues, typeof(EcucNumericalParamValue), typeof(BigInteger), parameterDef)
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
				
					override def boolean equals(Object object) {
				        if (!(object instanceof TcpIpIpV6FragmentationConfig)){
							return false
						}
						this.target == (object as TcpIpIpV6FragmentationConfig).target
					}
				
					def BigInteger getTcpIpIpV6ReassemblyBufferCount(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6ReassemblyBufferCount"].getBigIntegerValue()
					}
					
					def void setTcpIpIpV6ReassemblyBufferCount(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6ReassemblyBufferCount"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIpV6ReassemblyBufferCount"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getTcpIpIpV6ReassemblyBufferSize(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6ReassemblyBufferSize"].getBigIntegerValue()
					}
					
					def void setTcpIpIpV6ReassemblyBufferSize(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6ReassemblyBufferSize"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIpV6ReassemblyBufferSize"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getTcpIpIpV6ReassemblySegmentCount(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6ReassemblySegmentCount"].getBigIntegerValue()
					}
					
					def void setTcpIpIpV6ReassemblySegmentCount(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6ReassemblySegmentCount"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIpV6ReassemblySegmentCount"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigDecimal getTcpIpIpV6ReassemblyTimeout(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6ReassemblyTimeout"].getBigDecimalValue()
					}
					
					def void setTcpIpIpV6ReassemblyTimeout(BigDecimal value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6ReassemblyTimeout"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIpV6ReassemblyTimeout"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getTcpIpIpV6TxFragmentBufferCount(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6TxFragmentBufferCount"].getBigIntegerValue()
					}
					
					def void setTcpIpIpV6TxFragmentBufferCount(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6TxFragmentBufferCount"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIpV6TxFragmentBufferCount"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getTcpIpIpV6TxFragmentBufferSize(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6TxFragmentBufferSize"].getBigIntegerValue()
					}
					
					def void setTcpIpIpV6TxFragmentBufferSize(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6TxFragmentBufferSize"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIpV6TxFragmentBufferSize"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
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
				
					override def boolean equals(Object object) {
				        if (!(object instanceof TcpIpNdpConfig)){
							return false
						}
						this.target == (object as TcpIpNdpConfig).target
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
					
						override def boolean equals(Object object) {
					        if (!(object instanceof TcpIpNdpArNudConfig)){
								return false
							}
							this.target == (object as TcpIpNdpArNudConfig).target
						}
					
						def BigDecimal getTcpIpNdpDefaultReachableTime(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDefaultReachableTime"].getBigDecimalValue()
						}
						
						def void setTcpIpNdpDefaultReachableTime(BigDecimal value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDefaultReachableTime"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpDefaultReachableTime"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						def BigDecimal getTcpIpNdpDefaultRetransTimer(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDefaultRetransTimer"].getBigDecimalValue()
						}
						
						def void setTcpIpNdpDefaultRetransTimer(BigDecimal value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDefaultRetransTimer"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpDefaultRetransTimer"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						def Boolean getTcpIpNdpDefensiveProcessing(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDefensiveProcessing"].getBooleanValue()
						}
						
						def void setTcpIpNdpDefensiveProcessing(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDefensiveProcessing"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpDefensiveProcessing"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(getBooleanParameterValueValue(value, true))
						}
						
						def BigDecimal getTcpIpNdpDelayFirstProbeTime(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDelayFirstProbeTime"].getBigDecimalValue()
						}
						
						def void setTcpIpNdpDelayFirstProbeTime(BigDecimal value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDelayFirstProbeTime"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpDelayFirstProbeTime"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						def BigInteger getTcpIpNdpMaxNeighborCacheSize(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpMaxNeighborCacheSize"].getBigIntegerValue()
						}
						
						def void setTcpIpNdpMaxNeighborCacheSize(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpMaxNeighborCacheSize"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpMaxNeighborCacheSize"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						def BigInteger getTcpIpNdpMaxRandomFactor(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpMaxRandomFactor"].getBigIntegerValue()
						}
						
						def void setTcpIpNdpMaxRandomFactor(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpMaxRandomFactor"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpMaxRandomFactor"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						def BigInteger getTcpIpNdpMinRandomFactor(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpMinRandomFactor"].getBigIntegerValue()
						}
						
						def void setTcpIpNdpMinRandomFactor(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpMinRandomFactor"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpMinRandomFactor"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						def Boolean getTcpIpNdpNeighborUnreachabilityDetectionEnabled(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpNeighborUnreachabilityDetectionEnabled"].getBooleanValue()
						}
						
						def void setTcpIpNdpNeighborUnreachabilityDetectionEnabled(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpNeighborUnreachabilityDetectionEnabled"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpNeighborUnreachabilityDetectionEnabled"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(getBooleanParameterValueValue(value, true))
						}
						
						def BigInteger getTcpIpNdpNumMulticastSolicitations(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpNumMulticastSolicitations"].getBigIntegerValue()
						}
						
						def void setTcpIpNdpNumMulticastSolicitations(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpNumMulticastSolicitations"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpNumMulticastSolicitations"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						def BigInteger getTcpIpNdpNumUnicastSolicitations(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpNumUnicastSolicitations"].getBigIntegerValue()
						}
						
						def void setTcpIpNdpNumUnicastSolicitations(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpNumUnicastSolicitations"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpNumUnicastSolicitations"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						def Boolean getTcpIpNdpPacketQueueEnabled(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpPacketQueueEnabled"].getBooleanValue()
						}
						
						def void setTcpIpNdpPacketQueueEnabled(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpPacketQueueEnabled"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpPacketQueueEnabled"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(getBooleanParameterValueValue(value, true))
						}
						
						def Boolean getTcpIpNdpRandomReachableTimeEnabled(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpRandomReachableTimeEnabled"].getBooleanValue()
						}
						
						def void setTcpIpNdpRandomReachableTimeEnabled(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpRandomReachableTimeEnabled"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpRandomReachableTimeEnabled"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(getBooleanParameterValueValue(value, true))
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
					
						override def boolean equals(Object object) {
					        if (!(object instanceof TcpIpNdpPrefixRouterDiscoveryConfig)){
								return false
							}
							this.target == (object as TcpIpNdpPrefixRouterDiscoveryConfig).target
						}
					
						def BigInteger getTcpIpNdpDefaultRouterListSize(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDefaultRouterListSize"].getBigIntegerValue()
						}
						
						def void setTcpIpNdpDefaultRouterListSize(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDefaultRouterListSize"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpDefaultRouterListSize"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						def BigInteger getTcpIpNdpDestinationCacheSize(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDestinationCacheSize"].getBigIntegerValue()
						}
						
						def void setTcpIpNdpDestinationCacheSize(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDestinationCacheSize"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpDestinationCacheSize"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						def Boolean getTcpIpNdpDynamicHopLimitEnabled(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDynamicHopLimitEnabled"].getBooleanValue()
						}
						
						def void setTcpIpNdpDynamicHopLimitEnabled(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDynamicHopLimitEnabled"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpDynamicHopLimitEnabled"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(getBooleanParameterValueValue(value, true))
						}
						
						def Boolean getTcpIpNdpDynamicMtuEnabled(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDynamicMtuEnabled"].getBooleanValue()
						}
						
						def void setTcpIpNdpDynamicMtuEnabled(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDynamicMtuEnabled"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpDynamicMtuEnabled"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(getBooleanParameterValueValue(value, true))
						}
						
						def Boolean getTcpIpNdpDynamicReachableTimeEnabled(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDynamicReachableTimeEnabled"].getBooleanValue()
						}
						
						def void setTcpIpNdpDynamicReachableTimeEnabled(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDynamicReachableTimeEnabled"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpDynamicReachableTimeEnabled"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(getBooleanParameterValueValue(value, true))
						}
						
						def Boolean getTcpIpNdpDynamicRetransTimeEnabled(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDynamicRetransTimeEnabled"].getBooleanValue()
						}
						
						def void setTcpIpNdpDynamicRetransTimeEnabled(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpDynamicRetransTimeEnabled"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpDynamicRetransTimeEnabled"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(getBooleanParameterValueValue(value, true))
						}
						
						def BigDecimal getTcpIpNdpMaxRtrSolicitationDelay(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpMaxRtrSolicitationDelay"].getBigDecimalValue()
						}
						
						def void setTcpIpNdpMaxRtrSolicitationDelay(BigDecimal value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpMaxRtrSolicitationDelay"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpMaxRtrSolicitationDelay"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						def BigInteger getTcpIpNdpMaxRtrSolicitations(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpMaxRtrSolicitations"].getBigIntegerValue()
						}
						
						def void setTcpIpNdpMaxRtrSolicitations(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpMaxRtrSolicitations"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpMaxRtrSolicitations"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						def BigInteger getTcpIpNdpPrefixListSize(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpPrefixListSize"].getBigIntegerValue()
						}
						
						def void setTcpIpNdpPrefixListSize(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpPrefixListSize"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpPrefixListSize"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						def Boolean getTcpIpNdpRndRtrSolicitationDelayEnabled(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpRndRtrSolicitationDelayEnabled"].getBooleanValue()
						}
						
						def void setTcpIpNdpRndRtrSolicitationDelayEnabled(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpRndRtrSolicitationDelayEnabled"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpRndRtrSolicitationDelayEnabled"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(getBooleanParameterValueValue(value, true))
						}
						
						def BigDecimal getTcpIpNdpRtrSolicitationInterval(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpRtrSolicitationInterval"].getBigDecimalValue()
						}
						
						def void setTcpIpNdpRtrSolicitationInterval(BigDecimal value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpRtrSolicitationInterval"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpRtrSolicitationInterval"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						
						
						def TcpIpNdpPrefixList getTcpIpNdpPrefixList(){
							containerValue.getByType(typeof(TcpIpNdpPrefixList))
						}
						
						def void setTcpIpNdpPrefixList(TcpIpNdpPrefixList tcpIpNdpPrefixList){
							val GContainer subContainer = tcpIpNdpPrefixList.getTarget()
							containerValue.setContainer(subContainer, "TcpIpNdpPrefixList")
						}
						
						
						static class TcpIpNdpPrefixList implements IWrapper<GContainer> {
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
						        if (!(object instanceof TcpIpNdpPrefixList)){
									return false
								}
								this.target == (object as TcpIpNdpPrefixList).target
							}
						
							
							
							def List<TcpIpNdpPrefixListEntry> getTcpIpNdpPrefixListEntries(){
								val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
									override protected accept(GContainer item) {
										return accept(item, typeof(GContainerDef), "TcpIpNdpPrefixListEntry")
									}
								}
								return new BasicWrappingEList<TcpIpNdpPrefixListEntry, GContainer>(filteredContainers, typeof(TcpIpNdpPrefixListEntry), typeof(GContainer)) {
									override protected delegateAdd(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV6Config.TcpIpNdpConfig.TcpIpNdpPrefixRouterDiscoveryConfig.TcpIpNdpPrefixList.TcpIpNdpPrefixListEntry tcpIpNdpPrefixListEntry) {
										tcpIpNdpPrefixListEntry.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpNdpPrefixListEntry"))
										super.delegateAdd(tcpIpNdpPrefixListEntry)
									}
							
									override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV6Config.TcpIpNdpConfig.TcpIpNdpPrefixRouterDiscoveryConfig.TcpIpNdpPrefixList.TcpIpNdpPrefixListEntry tcpIpNdpPrefixListEntry) {
										tcpIpNdpPrefixListEntry.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpNdpPrefixListEntry"))
										super.delegateAdd(index, tcpIpNdpPrefixListEntry)
									}
								}
							}
							
							
							static class TcpIpNdpPrefixListEntry implements IWrapper<GContainer> {
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
							        if (!(object instanceof TcpIpNdpPrefixListEntry)){
										return false
									}
									this.target == (object as TcpIpNdpPrefixListEntry).target
								}
							
								def String getTcpIpNdpPrefixListEntryPrefixAddress(){
									containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpPrefixListEntryPrefixAddress"].getStringValue()
								}
								
								def void setTcpIpNdpPrefixListEntryPrefixAddress(String value){
									var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpPrefixListEntryPrefixAddress"]
									if (parameterValue == null) {
										val containerDef = containerValue.gGetDefinition
										if (containerDef instanceof GParamConfContainerDef) {
											parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpPrefixListEntryPrefixAddress"].createParameterValue()
											containerValue.gGetParameterValues += parameterValue
										}
									}
									parameterValue.setValue(value)
								}
								
								def BigInteger getTcpIpNdpPrefixListEntryPrefixLength(){
									containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpPrefixListEntryPrefixLength"].getBigIntegerValue()
								}
								
								def void setTcpIpNdpPrefixListEntryPrefixLength(BigInteger value){
									var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpPrefixListEntryPrefixLength"]
									if (parameterValue == null) {
										val containerDef = containerValue.gGetDefinition
										if (containerDef instanceof GParamConfContainerDef) {
											parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpPrefixListEntryPrefixLength"].createParameterValue()
											containerValue.gGetParameterValues += parameterValue
										}
									}
									parameterValue.setValue(value)
								}
								
								
								
								
							}
							
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
					
						override def boolean equals(Object object) {
					        if (!(object instanceof TcpIpNdpSlaacConfig)){
								return false
							}
							this.target == (object as TcpIpNdpSlaacConfig).target
						}
					
						def BigInteger getTcpIpNdpSlaacDadNumberOfTransmissions(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpSlaacDadNumberOfTransmissions"].getBigIntegerValue()
						}
						
						def void setTcpIpNdpSlaacDadNumberOfTransmissions(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpSlaacDadNumberOfTransmissions"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpSlaacDadNumberOfTransmissions"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						def BigDecimal getTcpIpNdpSlaacDadRetransmissionDelay(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpSlaacDadRetransmissionDelay"].getBigDecimalValue()
						}
						
						def void setTcpIpNdpSlaacDadRetransmissionDelay(BigDecimal value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpSlaacDadRetransmissionDelay"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpSlaacDadRetransmissionDelay"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						def Boolean getTcpIpNdpSlaacDelayEnabled(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpSlaacDelayEnabled"].getBooleanValue()
						}
						
						def void setTcpIpNdpSlaacDelayEnabled(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpSlaacDelayEnabled"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpSlaacDelayEnabled"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(getBooleanParameterValueValue(value, true))
						}
						
						def Boolean getTcpIpNdpSlaacOptimisticDadEnabled(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpSlaacOptimisticDadEnabled"].getBooleanValue()
						}
						
						def void setTcpIpNdpSlaacOptimisticDadEnabled(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpSlaacOptimisticDadEnabled"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpSlaacOptimisticDadEnabled"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(getBooleanParameterValueValue(value, true))
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof TcpIpLocalAddr)){
					return false
				}
				this.target == (object as TcpIpLocalAddr).target
			}
		
			def TcpIpAddressType getTcpIpAddressType(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpAddressType"].getTcpIpAddressTypeValue()
			}
			
			def void setTcpIpAddressType(TcpIpAddressType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpAddressType"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpAddressType"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum TcpIpAddressType {
				TCPIP_ANYCAST, 
				TCPIP_MULTICAST, 
				TCPIP_UNICAST
			}
			
			def TcpIpAddressType getTcpIpAddressTypeValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "TCPIP_ANYCAST" : TcpIpAddressType.TCPIP_ANYCAST
					case "TCPIP_MULTICAST" : TcpIpAddressType.TCPIP_MULTICAST
					case "TCPIP_UNICAST" : TcpIpAddressType.TCPIP_UNICAST
				}
			}
			
			def void setTcpIpAddressTypeValue(GParameterValue parameterValue, TcpIpAddressType value){
				parameterValue.setValue(value)
			}
			
			def BigInteger getTcpIpAddrId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpAddrId"].getBigIntegerValue()
			}
			
			def void setTcpIpAddrId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpAddrId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpAddrId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def TcpIpDomainType getTcpIpDomainType(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDomainType"].getTcpIpDomainTypeValue()
			}
			
			def void setTcpIpDomainType(TcpIpDomainType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDomainType"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpDomainType"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum TcpIpDomainType {
				TCPIP_AF_INET, 
				TCPIP_AF_INET6
			}
			
			def TcpIpDomainType getTcpIpDomainTypeValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "TCPIP_AF_INET" : TcpIpDomainType.TCPIP_AF_INET
					case "TCPIP_AF_INET6" : TcpIpDomainType.TCPIP_AF_INET6
				}
			}
			
			def void setTcpIpDomainTypeValue(GParameterValue parameterValue, TcpIpDomainType value){
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpCtrl getTcpIpCtrlRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpCtrl), "TcpIpCtrlRef")
			}
			
			def void setTcpIpCtrlRef(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpCtrl object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "TcpIpCtrlRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV6Config.TcpIpIpV6ConfigExtHeaderFilter getTcpIpLocalAddrIPv6ExtHeaderFilterRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV6Config.TcpIpIpV6ConfigExtHeaderFilter), "TcpIpLocalAddrIPv6ExtHeaderFilterRef")
			}
			
			def void setTcpIpLocalAddrIPv6ExtHeaderFilterRef(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpIpConfig.TcpIpIpV6Config.TcpIpIpV6ConfigExtHeaderFilter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "TcpIpLocalAddrIPv6ExtHeaderFilterRef"], object.getTarget())
				}
			}
			
			
			def List<TcpIpAddrAssignment> getTcpIpAddrAssignments(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "TcpIpAddrAssignment")
					}
				}
				return new BasicWrappingEList<TcpIpAddrAssignment, GContainer>(filteredContainers, typeof(TcpIpAddrAssignment), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpLocalAddr.TcpIpAddrAssignment tcpIpAddrAssignment) {
						tcpIpAddrAssignment.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpAddrAssignment"))
						super.delegateAdd(tcpIpAddrAssignment)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpLocalAddr.TcpIpAddrAssignment tcpIpAddrAssignment) {
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof TcpIpAddrAssignment)){
						return false
					}
					this.target == (object as TcpIpAddrAssignment).target
				}
			
				def TcpIpAssignmentLifetime getTcpIpAssignmentLifetime(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpAssignmentLifetime"].getTcpIpAssignmentLifetimeValue()
				}
				
				def void setTcpIpAssignmentLifetime(TcpIpAssignmentLifetime value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpAssignmentLifetime"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpAssignmentLifetime"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum TcpIpAssignmentLifetime {
					TCPIP_FORGET, 
					TCPIP_STORE
				}
				
				def TcpIpAssignmentLifetime getTcpIpAssignmentLifetimeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "TCPIP_FORGET" : TcpIpAssignmentLifetime.TCPIP_FORGET
						case "TCPIP_STORE" : TcpIpAssignmentLifetime.TCPIP_STORE
					}
				}
				
				def void setTcpIpAssignmentLifetimeValue(GParameterValue parameterValue, TcpIpAssignmentLifetime value){
					parameterValue.setValue(value)
				}
				
				def TcpIpAssignmentMethod getTcpIpAssignmentMethod(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpAssignmentMethod"].getTcpIpAssignmentMethodValue()
				}
				
				def void setTcpIpAssignmentMethod(TcpIpAssignmentMethod value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpAssignmentMethod"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpAssignmentMethod"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum TcpIpAssignmentMethod {
					TCPIP_DHCP, 
					TCPIP_IPV6_ROUTER, 
					TCPIP_LINKLOCAL, 
					TCPIP_LINKLOCAL_DOIP, 
					TCPIP_STATIC
				}
				
				def TcpIpAssignmentMethod getTcpIpAssignmentMethodValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "TCPIP_DHCP" : TcpIpAssignmentMethod.TCPIP_DHCP
						case "TCPIP_IPV6_ROUTER" : TcpIpAssignmentMethod.TCPIP_IPV6_ROUTER
						case "TCPIP_LINKLOCAL" : TcpIpAssignmentMethod.TCPIP_LINKLOCAL
						case "TCPIP_LINKLOCAL_DOIP" : TcpIpAssignmentMethod.TCPIP_LINKLOCAL_DOIP
						case "TCPIP_STATIC" : TcpIpAssignmentMethod.TCPIP_STATIC
					}
				}
				
				def void setTcpIpAssignmentMethodValue(GParameterValue parameterValue, TcpIpAssignmentMethod value){
					parameterValue.setValue(value)
				}
				
				def BigInteger getTcpIpAssignmentPriority(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpAssignmentPriority"].getBigIntegerValue()
				}
				
				def void setTcpIpAssignmentPriority(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpAssignmentPriority"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpAssignmentPriority"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def TcpIpAssignmentTrigger getTcpIpAssignmentTrigger(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpAssignmentTrigger"].getTcpIpAssignmentTriggerValue()
				}
				
				def void setTcpIpAssignmentTrigger(TcpIpAssignmentTrigger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpAssignmentTrigger"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpAssignmentTrigger"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum TcpIpAssignmentTrigger {
					TCPIP_AUTOMATIC, 
					TCPIP_MANUAL
				}
				
				def TcpIpAssignmentTrigger getTcpIpAssignmentTriggerValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "TCPIP_AUTOMATIC" : TcpIpAssignmentTrigger.TCPIP_AUTOMATIC
						case "TCPIP_MANUAL" : TcpIpAssignmentTrigger.TCPIP_MANUAL
					}
				}
				
				def void setTcpIpAssignmentTriggerValue(GParameterValue parameterValue, TcpIpAssignmentTrigger value){
					parameterValue.setValue(value)
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof TcpIpStaticIpAddressConfig)){
						return false
					}
					this.target == (object as TcpIpStaticIpAddressConfig).target
				}
			
				def String getTcpIpDefaultRouter(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDefaultRouter"].getStringValue()
				}
				
				def void setTcpIpDefaultRouter(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDefaultRouter"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpDefaultRouter"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getTcpIpNetmask(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNetmask"].getBigIntegerValue()
				}
				
				def void setTcpIpNetmask(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNetmask"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNetmask"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def String getTcpIpStaticIpAddress(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpStaticIpAddress"].getStringValue()
				}
				
				def void setTcpIpStaticIpAddress(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpStaticIpAddress"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpStaticIpAddress"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof TcpIpNvmBlock)){
					return false
				}
				this.target == (object as TcpIpNvmBlock).target
			}
		
			
			def org.artop.ecuc.autosar430.accessors.NvM.NvMBlockDescriptor getTcpIpNvmBlockDescriptorRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.NvM.NvMBlockDescriptor), "TcpIpNvmBlockDescriptorRef")
			}
			
			def void setTcpIpNvmBlockDescriptorRef(org.artop.ecuc.autosar430.accessors.NvM.NvMBlockDescriptor object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "TcpIpNvmBlockDescriptorRef"], object.getTarget())
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof TcpIpPhysAddrConfig)){
					return false
				}
				this.target == (object as TcpIpPhysAddrConfig).target
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof TcpIpPhysAddrChgHandler)){
						return false
					}
					this.target == (object as TcpIpPhysAddrChgHandler).target
				}
			
				def String getTcpIpPhysAddrChgHandlerHeaderFileName(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpPhysAddrChgHandlerHeaderFileName"].getStringValue()
				}
				
				def void setTcpIpPhysAddrChgHandlerHeaderFileName(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpPhysAddrChgHandlerHeaderFileName"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpPhysAddrChgHandlerHeaderFileName"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def String getTcpIpPhysAddrChgHandlerName(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpPhysAddrChgHandlerName"].getStringValue()
				}
				
				def void setTcpIpPhysAddrChgHandlerName(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpPhysAddrChgHandlerName"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpPhysAddrChgHandlerName"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof TcpIpSocketOwnerConfig)){
					return false
				}
				this.target == (object as TcpIpSocketOwnerConfig).target
			}
		
			
			
			def List<TcpIpSocketOwner> getTcpIpSocketOwners(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "TcpIpSocketOwner")
					}
				}
				return new BasicWrappingEList<TcpIpSocketOwner, GContainer>(filteredContainers, typeof(TcpIpSocketOwner), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpSocketOwnerConfig.TcpIpSocketOwner tcpIpSocketOwner) {
						tcpIpSocketOwner.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpSocketOwner"))
						super.delegateAdd(tcpIpSocketOwner)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpSocketOwnerConfig.TcpIpSocketOwner tcpIpSocketOwner) {
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof TcpIpSocketOwner)){
						return false
					}
					this.target == (object as TcpIpSocketOwner).target
				}
			
				def String getTcpIpSocketOwnerCopyTxDataName(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpSocketOwnerCopyTxDataName"].getStringValue()
				}
				
				def void setTcpIpSocketOwnerCopyTxDataName(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpSocketOwnerCopyTxDataName"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpSocketOwnerCopyTxDataName"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def String getTcpIpSocketOwnerHeaderFileName(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpSocketOwnerHeaderFileName"].getStringValue()
				}
				
				def void setTcpIpSocketOwnerHeaderFileName(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpSocketOwnerHeaderFileName"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpSocketOwnerHeaderFileName"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def String getTcpIpSocketOwnerLocalIpAddrAssignmentChgName(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpSocketOwnerLocalIpAddrAssignmentChgName"].getStringValue()
				}
				
				def void setTcpIpSocketOwnerLocalIpAddrAssignmentChgName(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpSocketOwnerLocalIpAddrAssignmentChgName"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpSocketOwnerLocalIpAddrAssignmentChgName"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def String getTcpIpSocketOwnerRxIndicationName(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpSocketOwnerRxIndicationName"].getStringValue()
				}
				
				def void setTcpIpSocketOwnerRxIndicationName(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpSocketOwnerRxIndicationName"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpSocketOwnerRxIndicationName"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def String getTcpIpSocketOwnerTcpAcceptedName(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpSocketOwnerTcpAcceptedName"].getStringValue()
				}
				
				def void setTcpIpSocketOwnerTcpAcceptedName(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpSocketOwnerTcpAcceptedName"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpSocketOwnerTcpAcceptedName"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def String getTcpIpSocketOwnerTcpConnectedName(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpSocketOwnerTcpConnectedName"].getStringValue()
				}
				
				def void setTcpIpSocketOwnerTcpConnectedName(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpSocketOwnerTcpConnectedName"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpSocketOwnerTcpConnectedName"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def String getTcpIpSocketOwnerTcpIpEventName(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpSocketOwnerTcpIpEventName"].getStringValue()
				}
				
				def void setTcpIpSocketOwnerTcpIpEventName(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpSocketOwnerTcpIpEventName"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpSocketOwnerTcpIpEventName"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def String getTcpIpSocketOwnerTxConfirmationName(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpSocketOwnerTxConfirmationName"].getStringValue()
				}
				
				def void setTcpIpSocketOwnerTxConfirmationName(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpSocketOwnerTxConfirmationName"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpSocketOwnerTxConfirmationName"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def TcpIpSocketOwnerUpperLayerType getTcpIpSocketOwnerUpperLayerType(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpSocketOwnerUpperLayerType"].getTcpIpSocketOwnerUpperLayerTypeValue()
				}
				
				def void setTcpIpSocketOwnerUpperLayerType(TcpIpSocketOwnerUpperLayerType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpSocketOwnerUpperLayerType"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpSocketOwnerUpperLayerType"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum TcpIpSocketOwnerUpperLayerType {
					CDD, 
					SOAD
				}
				
				def TcpIpSocketOwnerUpperLayerType getTcpIpSocketOwnerUpperLayerTypeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "CDD" : TcpIpSocketOwnerUpperLayerType.CDD
						case "SOAD" : TcpIpSocketOwnerUpperLayerType.SOAD
					}
				}
				
				def void setTcpIpSocketOwnerUpperLayerTypeValue(GParameterValue parameterValue, TcpIpSocketOwnerUpperLayerType value){
					parameterValue.setValue(value)
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof TcpIpTcpConfig)){
					return false
				}
				this.target == (object as TcpIpTcpConfig).target
			}
		
			def Boolean getTcpIpTcpCongestionAvoidanceEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpCongestionAvoidanceEnabled"].getBooleanValue()
			}
			
			def void setTcpIpTcpCongestionAvoidanceEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpCongestionAvoidanceEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpCongestionAvoidanceEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getTcpIpTcpFastRecoveryEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpFastRecoveryEnabled"].getBooleanValue()
			}
			
			def void setTcpIpTcpFastRecoveryEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpFastRecoveryEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpFastRecoveryEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getTcpIpTcpFastRetransmitEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpFastRetransmitEnabled"].getBooleanValue()
			}
			
			def void setTcpIpTcpFastRetransmitEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpFastRetransmitEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpFastRetransmitEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigDecimal getTcpIpTcpFinWait2Timeout(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpFinWait2Timeout"].getBigDecimalValue()
			}
			
			def void setTcpIpTcpFinWait2Timeout(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpFinWait2Timeout"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpFinWait2Timeout"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getTcpIpTcpKeepAliveEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpKeepAliveEnabled"].getBooleanValue()
			}
			
			def void setTcpIpTcpKeepAliveEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpKeepAliveEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpKeepAliveEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigDecimal getTcpIpTcpKeepAliveInterval(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpKeepAliveInterval"].getBigDecimalValue()
			}
			
			def void setTcpIpTcpKeepAliveInterval(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpKeepAliveInterval"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpKeepAliveInterval"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getTcpIpTcpKeepAliveProbesMax(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpKeepAliveProbesMax"].getBigIntegerValue()
			}
			
			def void setTcpIpTcpKeepAliveProbesMax(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpKeepAliveProbesMax"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpKeepAliveProbesMax"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getTcpIpTcpKeepAliveTime(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpKeepAliveTime"].getBigDecimalValue()
			}
			
			def void setTcpIpTcpKeepAliveTime(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpKeepAliveTime"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpKeepAliveTime"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getTcpIpTcpMaxRtx(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpMaxRtx"].getBigIntegerValue()
			}
			
			def void setTcpIpTcpMaxRtx(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpMaxRtx"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpMaxRtx"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getTcpIpTcpMsl(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpMsl"].getBigDecimalValue()
			}
			
			def void setTcpIpTcpMsl(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpMsl"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpMsl"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getTcpIpTcpNagleEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpNagleEnabled"].getBooleanValue()
			}
			
			def void setTcpIpTcpNagleEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpNagleEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpNagleEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getTcpIpTcpReceiveWindowMax(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpReceiveWindowMax"].getBigIntegerValue()
			}
			
			def void setTcpIpTcpReceiveWindowMax(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpReceiveWindowMax"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpReceiveWindowMax"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getTcpIpTcpRetransmissionTimeout(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpRetransmissionTimeout"].getBigDecimalValue()
			}
			
			def void setTcpIpTcpRetransmissionTimeout(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpRetransmissionTimeout"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpRetransmissionTimeout"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getTcpIpTcpSlowStartEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpSlowStartEnabled"].getBooleanValue()
			}
			
			def void setTcpIpTcpSlowStartEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpSlowStartEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpSlowStartEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getTcpIpTcpSynMaxRtx(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpSynMaxRtx"].getBigIntegerValue()
			}
			
			def void setTcpIpTcpSynMaxRtx(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpSynMaxRtx"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpSynMaxRtx"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getTcpIpTcpSynReceivedTimeout(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpSynReceivedTimeout"].getBigDecimalValue()
			}
			
			def void setTcpIpTcpSynReceivedTimeout(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpSynReceivedTimeout"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpSynReceivedTimeout"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getTcpIpTcpTtl(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpTtl"].getBigIntegerValue()
			}
			
			def void setTcpIpTcpTtl(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpTtl"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpTtl"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			def List<TcpIpTcpConfigOptionFilter> getTcpIpTcpConfigOptionFilters(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "TcpIpTcpConfigOptionFilter")
					}
				}
				return new BasicWrappingEList<TcpIpTcpConfigOptionFilter, GContainer>(filteredContainers, typeof(TcpIpTcpConfigOptionFilter), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpTcpConfig.TcpIpTcpConfigOptionFilter tcpIpTcpConfigOptionFilter) {
						tcpIpTcpConfigOptionFilter.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpTcpConfigOptionFilter"))
						super.delegateAdd(tcpIpTcpConfigOptionFilter)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.TcpIp.TcpIpConfig.TcpIpTcpConfig.TcpIpTcpConfigOptionFilter tcpIpTcpConfigOptionFilter) {
						tcpIpTcpConfigOptionFilter.target?.gSetDefinition(containerValue.getContainerDefinition("TcpIpTcpConfigOptionFilter"))
						super.delegateAdd(index, tcpIpTcpConfigOptionFilter)
					}
				}
			}
			
			
			static class TcpIpTcpConfigOptionFilter implements IWrapper<GContainer> {
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
			        if (!(object instanceof TcpIpTcpConfigOptionFilter)){
						return false
					}
					this.target == (object as TcpIpTcpConfigOptionFilter).target
				}
			
				def List<BigInteger> getTcpIpTcpConfigOptionFilterEntries(){
					val List<EcucNumericalParamValue> filteredParameterValues = new AbstractFilteringEList<EcucNumericalParamValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {
						override protected accept(EcucNumericalParamValue item) {
							return accept(item, typeof(GConfigParameter), "TcpIpTcpConfigOptionFilterEntry")
						}
					}
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpConfigOptionFilterEntry"]
						return new BigIntegerValueUnwrappingEList(filteredParameterValues, typeof(EcucNumericalParamValue), typeof(BigInteger), parameterDef)
					}
				}
				
				def BigInteger getTcpIpTcpConfigOptionFilterId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpConfigOptionFilterId"].getBigIntegerValue()
				}
				
				def void setTcpIpTcpConfigOptionFilterId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpConfigOptionFilterId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpConfigOptionFilterId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof TcpIpUdpConfig)){
					return false
				}
				this.target == (object as TcpIpUdpConfig).target
			}
		
			def BigInteger getTcpIpUdpTtl(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpUdpTtl"].getBigIntegerValue()
			}
			
			def void setTcpIpUdpTtl(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpUdpTtl"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpUdpTtl"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof TcpIpGeneral)){
				return false
			}
			this.target == (object as TcpIpGeneral).target
		}
	
		def BigInteger getTcpIpBufferMemory(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpBufferMemory"].getBigIntegerValue()
		}
		
		def void setTcpIpBufferMemory(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpBufferMemory"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpBufferMemory"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getTcpIpDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDevErrorDetect"].getBooleanValue()
		}
		
		def void setTcpIpDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getTcpIpDhcpServerEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpServerEnabled"].getBooleanValue()
		}
		
		def void setTcpIpDhcpServerEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpServerEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpDhcpServerEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getTcpIpGetAndResetMeasurementDataApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpGetAndResetMeasurementDataApi"].getBooleanValue()
		}
		
		def void setTcpIpGetAndResetMeasurementDataApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpGetAndResetMeasurementDataApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpGetAndResetMeasurementDataApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getTcpIpMainFunctionPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpMainFunctionPeriod"].getBigDecimalValue()
		}
		
		def void setTcpIpMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpMainFunctionPeriod"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpMainFunctionPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getTcpIpResetIpAssignmentApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpResetIpAssignmentApi"].getBooleanValue()
		}
		
		def void setTcpIpResetIpAssignmentApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpResetIpAssignmentApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpResetIpAssignmentApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def TcpIpScalabilityClass getTcpIpScalabilityClass(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpScalabilityClass"].getTcpIpScalabilityClassValue()
		}
		
		def void setTcpIpScalabilityClass(TcpIpScalabilityClass value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpScalabilityClass"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpScalabilityClass"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum TcpIpScalabilityClass {
			SC1, 
			SC2, 
			SC3
		}
		
		def TcpIpScalabilityClass getTcpIpScalabilityClassValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "SC1" : TcpIpScalabilityClass.SC1
				case "SC2" : TcpIpScalabilityClass.SC2
				case "SC3" : TcpIpScalabilityClass.SC3
			}
		}
		
		def void setTcpIpScalabilityClassValue(GParameterValue parameterValue, TcpIpScalabilityClass value){
			parameterValue.setValue(value)
		}
		
		def Boolean getTcpIpTcpEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpEnabled"].getBooleanValue()
		}
		
		def void setTcpIpTcpEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getTcpIpTcpSocketMax(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpSocketMax"].getBigIntegerValue()
		}
		
		def void setTcpIpTcpSocketMax(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpTcpSocketMax"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpTcpSocketMax"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getTcpIpUdpEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpUdpEnabled"].getBooleanValue()
		}
		
		def void setTcpIpUdpEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpUdpEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpUdpEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getTcpIpUdpSocketMax(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpUdpSocketMax"].getBigIntegerValue()
		}
		
		def void setTcpIpUdpSocketMax(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpUdpSocketMax"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpUdpSocketMax"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getTcpIpVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpVersionInfoApi"].getBooleanValue()
		}
		
		def void setTcpIpVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof TcpIpIpV4General)){
					return false
				}
				this.target == (object as TcpIpIpV4General).target
			}
		
			def Boolean getTcpIpArpEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpArpEnabled"].getBooleanValue()
			}
			
			def void setTcpIpArpEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpArpEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpArpEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getTcpIpAutoIpEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpAutoIpEnabled"].getBooleanValue()
			}
			
			def void setTcpIpAutoIpEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpAutoIpEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpAutoIpEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getTcpIpDhcpClientEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpClientEnabled"].getBooleanValue()
			}
			
			def void setTcpIpDhcpClientEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpClientEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpDhcpClientEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getTcpIpIcmpEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpEnabled"].getBooleanValue()
			}
			
			def void setTcpIpIcmpEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIcmpEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIcmpEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getTcpIpIpV4Enabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV4Enabled"].getBooleanValue()
			}
			
			def void setTcpIpIpV4Enabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV4Enabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIpV4Enabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getTcpIpLocalAddrIpv4EntriesMax(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpLocalAddrIpv4EntriesMax"].getBigIntegerValue()
			}
			
			def void setTcpIpLocalAddrIpv4EntriesMax(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpLocalAddrIpv4EntriesMax"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpLocalAddrIpv4EntriesMax"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getTcpIpPathMtuDiscoveryEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpPathMtuDiscoveryEnabled"].getBooleanValue()
			}
			
			def void setTcpIpPathMtuDiscoveryEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpPathMtuDiscoveryEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpPathMtuDiscoveryEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof TcpIpIpV6General)){
					return false
				}
				this.target == (object as TcpIpIpV6General).target
			}
		
			def Boolean getTcpIpDhcpV6ClientEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpV6ClientEnabled"].getBooleanValue()
			}
			
			def void setTcpIpDhcpV6ClientEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpDhcpV6ClientEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpDhcpV6ClientEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getTcpIpIpV6Enabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6Enabled"].getBooleanValue()
			}
			
			def void setTcpIpIpV6Enabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6Enabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIpV6Enabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getTcpIpIpV6PathMtuDiscoveryEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6PathMtuDiscoveryEnabled"].getBooleanValue()
			}
			
			def void setTcpIpIpV6PathMtuDiscoveryEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpIpV6PathMtuDiscoveryEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpIpV6PathMtuDiscoveryEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getTcpIpLocalAddrIpv6EntriesMax(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpLocalAddrIpv6EntriesMax"].getBigIntegerValue()
			}
			
			def void setTcpIpLocalAddrIpv6EntriesMax(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpLocalAddrIpv6EntriesMax"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpLocalAddrIpv6EntriesMax"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getTcpIpNdpAddressResolutionUnrechabilityDetectionEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpAddressResolutionUnrechabilityDetectionEnabled"].getBooleanValue()
			}
			
			def void setTcpIpNdpAddressResolutionUnrechabilityDetectionEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpAddressResolutionUnrechabilityDetectionEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpAddressResolutionUnrechabilityDetectionEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getTcpIpNdpPrefixAndRouterDiscoveryEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpPrefixAndRouterDiscoveryEnabled"].getBooleanValue()
			}
			
			def void setTcpIpNdpPrefixAndRouterDiscoveryEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "TcpIpNdpPrefixAndRouterDiscoveryEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "TcpIpNdpPrefixAndRouterDiscoveryEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			
			
		}
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof TcpIp)){
			return false
		}
		this.target == (object as TcpIp).target
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
