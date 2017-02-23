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

class Eth implements IWrapper<GModuleConfiguration> {
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

	def EthConfigSet getEthConfigSet(){
		moduleConfiguration.getByType(typeof(EthConfigSet))
	}

	def void setEthConfigSet(EthConfigSet ethConfigSet){
		val GContainer container = ethConfigSet.getTarget()
	    moduleConfiguration.setContainer(container, "EthConfigSet")
	}
	def EthGeneral getEthGeneral(){
		moduleConfiguration.getByType(typeof(EthGeneral))
	}

	def void setEthGeneral(EthGeneral ethGeneral){
		val GContainer container = ethGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "EthGeneral")
	}

	static class EthConfigSet implements IWrapper<GContainer> {
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
	        if (!(object instanceof EthConfigSet)){
				return false
			}
			this.target == (object as EthConfigSet).target
		}
	
		
		
		def List<EthCtrlConfig> getEthCtrlConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "EthCtrlConfig")
				}
			}
			return new BasicWrappingEList<EthCtrlConfig, GContainer>(filteredContainers, typeof(EthCtrlConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar430.accessors.Eth.EthConfigSet.EthCtrlConfig ethCtrlConfig) {
					ethCtrlConfig.target?.gSetDefinition(containerValue.getContainerDefinition("EthCtrlConfig"))
					super.delegateAdd(ethCtrlConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.Eth.EthConfigSet.EthCtrlConfig ethCtrlConfig) {
					ethCtrlConfig.target?.gSetDefinition(containerValue.getContainerDefinition("EthCtrlConfig"))
					super.delegateAdd(index, ethCtrlConfig)
				}
			}
		}
		
		
		static class EthCtrlConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof EthCtrlConfig)){
					return false
				}
				this.target == (object as EthCtrlConfig).target
			}
		
			def Boolean getEthCtrlEnableMii(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthCtrlEnableMii"].getBooleanValue()
			}
			
			def void setEthCtrlEnableMii(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthCtrlEnableMii"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthCtrlEnableMii"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getEthCtrlEnableRxInterrupt(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthCtrlEnableRxInterrupt"].getBooleanValue()
			}
			
			def void setEthCtrlEnableRxInterrupt(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthCtrlEnableRxInterrupt"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthCtrlEnableRxInterrupt"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getEthCtrlEnableTxInterrupt(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthCtrlEnableTxInterrupt"].getBooleanValue()
			}
			
			def void setEthCtrlEnableTxInterrupt(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthCtrlEnableTxInterrupt"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthCtrlEnableTxInterrupt"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getEthCtrlIdx(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthCtrlIdx"].getBigIntegerValue()
			}
			
			def void setEthCtrlIdx(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthCtrlIdx"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthCtrlIdx"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def EthCtrlMacLayerType getEthCtrlMacLayerType(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthCtrlMacLayerType"].getEthCtrlMacLayerTypeValue()
			}
			
			def void setEthCtrlMacLayerType(EthCtrlMacLayerType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthCtrlMacLayerType"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthCtrlMacLayerType"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum EthCtrlMacLayerType {
				ETH_MAC_LAYER_TYPE_XGMII, 
				ETH_MAC_LAYER_TYPE_XMII, 
				ETH_MAC_LAYER_TYPE_XXGMII
			}
			
			def EthCtrlMacLayerType getEthCtrlMacLayerTypeValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "ETH_MAC_LAYER_TYPE_XGMII" : EthCtrlMacLayerType.ETH_MAC_LAYER_TYPE_XGMII
					case "ETH_MAC_LAYER_TYPE_XMII" : EthCtrlMacLayerType.ETH_MAC_LAYER_TYPE_XMII
					case "ETH_MAC_LAYER_TYPE_XXGMII" : EthCtrlMacLayerType.ETH_MAC_LAYER_TYPE_XXGMII
				}
			}
			
			def void setEthCtrlMacLayerTypeValue(GParameterValue parameterValue, EthCtrlMacLayerType value){
				parameterValue.setValue(value)
			}
			
			def String getEthCtrlPhyAddress(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthCtrlPhyAddress"].getStringValue()
			}
			
			def void setEthCtrlPhyAddress(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthCtrlPhyAddress"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthCtrlPhyAddress"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			def EthCtrlConfigEgress getEthCtrlConfigEgress(){
				containerValue.getByType(typeof(EthCtrlConfigEgress))
			}
			
			def void setEthCtrlConfigEgress(EthCtrlConfigEgress ethCtrlConfigEgress){
				val GContainer subContainer = ethCtrlConfigEgress.getTarget()
				containerValue.setContainer(subContainer, "EthCtrlConfigEgress")
			}
			
			def EthCtrlConfigIngress getEthCtrlConfigIngress(){
				containerValue.getByType(typeof(EthCtrlConfigIngress))
			}
			
			def void setEthCtrlConfigIngress(EthCtrlConfigIngress ethCtrlConfigIngress){
				val GContainer subContainer = ethCtrlConfigIngress.getTarget()
				containerValue.setContainer(subContainer, "EthCtrlConfigIngress")
			}
			
			def EthDemEventParameterRefs getEthDemEventParameterRefs(){
				containerValue.getByType(typeof(EthDemEventParameterRefs))
			}
			
			def void setEthDemEventParameterRefs(EthDemEventParameterRefs ethDemEventParameterRefs){
				val GContainer subContainer = ethDemEventParameterRefs.getTarget()
				containerValue.setContainer(subContainer, "EthDemEventParameterRefs")
			}
			
			
			static class EthCtrlConfigEgress implements IWrapper<GContainer> {
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
			        if (!(object instanceof EthCtrlConfigEgress)){
						return false
					}
					this.target == (object as EthCtrlConfigEgress).target
				}
			
				
				def org.artop.ecuc.autosar430.accessors.Eth.EthConfigSet.EthCtrlConfig.EthCtrlConfigEgress.EthCtrlConfigScheduler getEthCtrlConfigEgressLastSchedulerRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Eth.EthConfigSet.EthCtrlConfig.EthCtrlConfigEgress.EthCtrlConfigScheduler), "EthCtrlConfigEgressLastSchedulerRef")
				}
				
				def void setEthCtrlConfigEgressLastSchedulerRef(org.artop.ecuc.autosar430.accessors.Eth.EthConfigSet.EthCtrlConfig.EthCtrlConfigEgress.EthCtrlConfigScheduler object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EthCtrlConfigEgressLastSchedulerRef"], object.getTarget())
					}
				}
				
				
				def List<EthCtrlConfigEgressFifo> getEthCtrlConfigEgressFifos(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "EthCtrlConfigEgressFifo")
						}
					}
					return new BasicWrappingEList<EthCtrlConfigEgressFifo, GContainer>(filteredContainers, typeof(EthCtrlConfigEgressFifo), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar430.accessors.Eth.EthConfigSet.EthCtrlConfig.EthCtrlConfigEgress.EthCtrlConfigEgressFifo ethCtrlConfigEgressFifo) {
							ethCtrlConfigEgressFifo.target?.gSetDefinition(containerValue.getContainerDefinition("EthCtrlConfigEgressFifo"))
							super.delegateAdd(ethCtrlConfigEgressFifo)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.Eth.EthConfigSet.EthCtrlConfig.EthCtrlConfigEgress.EthCtrlConfigEgressFifo ethCtrlConfigEgressFifo) {
							ethCtrlConfigEgressFifo.target?.gSetDefinition(containerValue.getContainerDefinition("EthCtrlConfigEgressFifo"))
							super.delegateAdd(index, ethCtrlConfigEgressFifo)
						}
					}
				}
				
				def List<EthCtrlConfigScheduler> getEthCtrlConfigSchedulers(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "EthCtrlConfigScheduler")
						}
					}
					return new BasicWrappingEList<EthCtrlConfigScheduler, GContainer>(filteredContainers, typeof(EthCtrlConfigScheduler), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar430.accessors.Eth.EthConfigSet.EthCtrlConfig.EthCtrlConfigEgress.EthCtrlConfigScheduler ethCtrlConfigScheduler) {
							ethCtrlConfigScheduler.target?.gSetDefinition(containerValue.getContainerDefinition("EthCtrlConfigScheduler"))
							super.delegateAdd(ethCtrlConfigScheduler)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.Eth.EthConfigSet.EthCtrlConfig.EthCtrlConfigEgress.EthCtrlConfigScheduler ethCtrlConfigScheduler) {
							ethCtrlConfigScheduler.target?.gSetDefinition(containerValue.getContainerDefinition("EthCtrlConfigScheduler"))
							super.delegateAdd(index, ethCtrlConfigScheduler)
						}
					}
				}
				
				def List<EthCtrlConfigShaper> getEthCtrlConfigShapers(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "EthCtrlConfigShaper")
						}
					}
					return new BasicWrappingEList<EthCtrlConfigShaper, GContainer>(filteredContainers, typeof(EthCtrlConfigShaper), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar430.accessors.Eth.EthConfigSet.EthCtrlConfig.EthCtrlConfigEgress.EthCtrlConfigShaper ethCtrlConfigShaper) {
							ethCtrlConfigShaper.target?.gSetDefinition(containerValue.getContainerDefinition("EthCtrlConfigShaper"))
							super.delegateAdd(ethCtrlConfigShaper)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.Eth.EthConfigSet.EthCtrlConfig.EthCtrlConfigEgress.EthCtrlConfigShaper ethCtrlConfigShaper) {
							ethCtrlConfigShaper.target?.gSetDefinition(containerValue.getContainerDefinition("EthCtrlConfigShaper"))
							super.delegateAdd(index, ethCtrlConfigShaper)
						}
					}
				}
				
				
				static class EthCtrlConfigEgressFifo implements IWrapper<GContainer> {
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
				        if (!(object instanceof EthCtrlConfigEgressFifo)){
							return false
						}
						this.target == (object as EthCtrlConfigEgressFifo).target
					}
				
					def BigInteger getEthCtrlConfigEgressFifoBufLenByte(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthCtrlConfigEgressFifoBufLenByte"].getBigIntegerValue()
					}
					
					def void setEthCtrlConfigEgressFifoBufLenByte(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthCtrlConfigEgressFifoBufLenByte"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthCtrlConfigEgressFifoBufLenByte"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getEthCtrlConfigEgressFifoBufTotal(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthCtrlConfigEgressFifoBufTotal"].getBigIntegerValue()
					}
					
					def void setEthCtrlConfigEgressFifoBufTotal(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthCtrlConfigEgressFifoBufTotal"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthCtrlConfigEgressFifoBufTotal"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getEthCtrlConfigEgressFifoIdx(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthCtrlConfigEgressFifoIdx"].getBigIntegerValue()
					}
					
					def void setEthCtrlConfigEgressFifoIdx(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthCtrlConfigEgressFifoIdx"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthCtrlConfigEgressFifoIdx"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def List<BigInteger> getEthCtrlConfigEgressFifoPriorityAssignments(){
						val List<EcucNumericalParamValue> filteredParameterValues = new AbstractFilteringEList<EcucNumericalParamValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {
							override protected accept(EcucNumericalParamValue item) {
								return accept(item, typeof(GConfigParameter), "EthCtrlConfigEgressFifoPriorityAssignment")
							}
						}
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == "EthCtrlConfigEgressFifoPriorityAssignment"]
							return new BigIntegerValueUnwrappingEList(filteredParameterValues, typeof(EcucNumericalParamValue), typeof(BigInteger), parameterDef)
						}
					}
					
					
					
					
				}
				
				static class EthCtrlConfigScheduler implements IWrapper<GContainer> {
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
				        if (!(object instanceof EthCtrlConfigScheduler)){
							return false
						}
						this.target == (object as EthCtrlConfigScheduler).target
					}
				
					
					
					def List<EthCtrlConfigSchedulerPredecessor> getEthCtrlConfigSchedulerPredecessors(){
						val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
							override protected accept(GContainer item) {
								return accept(item, typeof(GContainerDef), "EthCtrlConfigSchedulerPredecessor")
							}
						}
						return new BasicWrappingEList<EthCtrlConfigSchedulerPredecessor, GContainer>(filteredContainers, typeof(EthCtrlConfigSchedulerPredecessor), typeof(GContainer)) {
							override protected delegateAdd(org.artop.ecuc.autosar430.accessors.Eth.EthConfigSet.EthCtrlConfig.EthCtrlConfigEgress.EthCtrlConfigScheduler.EthCtrlConfigSchedulerPredecessor ethCtrlConfigSchedulerPredecessor) {
								ethCtrlConfigSchedulerPredecessor.target?.gSetDefinition(containerValue.getContainerDefinition("EthCtrlConfigSchedulerPredecessor"))
								super.delegateAdd(ethCtrlConfigSchedulerPredecessor)
							}
					
							override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.Eth.EthConfigSet.EthCtrlConfig.EthCtrlConfigEgress.EthCtrlConfigScheduler.EthCtrlConfigSchedulerPredecessor ethCtrlConfigSchedulerPredecessor) {
								ethCtrlConfigSchedulerPredecessor.target?.gSetDefinition(containerValue.getContainerDefinition("EthCtrlConfigSchedulerPredecessor"))
								super.delegateAdd(index, ethCtrlConfigSchedulerPredecessor)
							}
						}
					}
					
					
					static class EthCtrlConfigSchedulerPredecessor implements IWrapper<GContainer> {
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
					        if (!(object instanceof EthCtrlConfigSchedulerPredecessor)){
								return false
							}
							this.target == (object as EthCtrlConfigSchedulerPredecessor).target
						}
					
						def BigInteger getEthCtrlConfigSchedulerPredecessorOrder(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthCtrlConfigSchedulerPredecessorOrder"].getBigIntegerValue()
						}
						
						def void setEthCtrlConfigSchedulerPredecessorOrder(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthCtrlConfigSchedulerPredecessorOrder"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthCtrlConfigSchedulerPredecessorOrder"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						
						
						
						
					}
					
				}
				
				static class EthCtrlConfigShaper implements IWrapper<GContainer> {
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
				        if (!(object instanceof EthCtrlConfigShaper)){
							return false
						}
						this.target == (object as EthCtrlConfigShaper).target
					}
				
					def BigInteger getEthCtrlConfigShaperIdleSlope(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthCtrlConfigShaperIdleSlope"].getBigIntegerValue()
					}
					
					def void setEthCtrlConfigShaperIdleSlope(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthCtrlConfigShaperIdleSlope"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthCtrlConfigShaperIdleSlope"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar430.accessors.Eth.EthConfigSet.EthCtrlConfig.EthCtrlConfigEgress.EthCtrlConfigEgressFifo getEthCtrlConfigShaperPredecessorFifoRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Eth.EthConfigSet.EthCtrlConfig.EthCtrlConfigEgress.EthCtrlConfigEgressFifo), "EthCtrlConfigShaperPredecessorFifoRef")
					}
					
					def void setEthCtrlConfigShaperPredecessorFifoRef(org.artop.ecuc.autosar430.accessors.Eth.EthConfigSet.EthCtrlConfig.EthCtrlConfigEgress.EthCtrlConfigEgressFifo object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EthCtrlConfigShaperPredecessorFifoRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
			static class EthCtrlConfigIngress implements IWrapper<GContainer> {
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
			        if (!(object instanceof EthCtrlConfigIngress)){
						return false
					}
					this.target == (object as EthCtrlConfigIngress).target
				}
			
				
				
				def List<EthCtrlConfigIngressFifo> getEthCtrlConfigIngressFifos(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "EthCtrlConfigIngressFifo")
						}
					}
					return new BasicWrappingEList<EthCtrlConfigIngressFifo, GContainer>(filteredContainers, typeof(EthCtrlConfigIngressFifo), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar430.accessors.Eth.EthConfigSet.EthCtrlConfig.EthCtrlConfigIngress.EthCtrlConfigIngressFifo ethCtrlConfigIngressFifo) {
							ethCtrlConfigIngressFifo.target?.gSetDefinition(containerValue.getContainerDefinition("EthCtrlConfigIngressFifo"))
							super.delegateAdd(ethCtrlConfigIngressFifo)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.Eth.EthConfigSet.EthCtrlConfig.EthCtrlConfigIngress.EthCtrlConfigIngressFifo ethCtrlConfigIngressFifo) {
							ethCtrlConfigIngressFifo.target?.gSetDefinition(containerValue.getContainerDefinition("EthCtrlConfigIngressFifo"))
							super.delegateAdd(index, ethCtrlConfigIngressFifo)
						}
					}
				}
				
				
				static class EthCtrlConfigIngressFifo implements IWrapper<GContainer> {
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
				        if (!(object instanceof EthCtrlConfigIngressFifo)){
							return false
						}
						this.target == (object as EthCtrlConfigIngressFifo).target
					}
				
					def BigInteger getEthCtrlConfigIngressFifoBufLenByte(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthCtrlConfigIngressFifoBufLenByte"].getBigIntegerValue()
					}
					
					def void setEthCtrlConfigIngressFifoBufLenByte(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthCtrlConfigIngressFifoBufLenByte"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthCtrlConfigIngressFifoBufLenByte"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getEthCtrlConfigIngressFifoBufTotal(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthCtrlConfigIngressFifoBufTotal"].getBigIntegerValue()
					}
					
					def void setEthCtrlConfigIngressFifoBufTotal(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthCtrlConfigIngressFifoBufTotal"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthCtrlConfigIngressFifoBufTotal"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getEthCtrlConfigIngressFifoIdx(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthCtrlConfigIngressFifoIdx"].getBigIntegerValue()
					}
					
					def void setEthCtrlConfigIngressFifoIdx(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthCtrlConfigIngressFifoIdx"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthCtrlConfigIngressFifoIdx"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def List<BigInteger> getEthCtrlConfigIngressFifoPriorityAssignments(){
						val List<EcucNumericalParamValue> filteredParameterValues = new AbstractFilteringEList<EcucNumericalParamValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {
							override protected accept(EcucNumericalParamValue item) {
								return accept(item, typeof(GConfigParameter), "EthCtrlConfigIngressFifoPriorityAssignment")
							}
						}
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == "EthCtrlConfigIngressFifoPriorityAssignment"]
							return new BigIntegerValueUnwrappingEList(filteredParameterValues, typeof(EcucNumericalParamValue), typeof(BigInteger), parameterDef)
						}
					}
					
					
					
					
				}
				
			}
			
			static class EthDemEventParameterRefs implements IWrapper<GContainer> {
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
			        if (!(object instanceof EthDemEventParameterRefs)){
						return false
					}
					this.target == (object as EthDemEventParameterRefs).target
				}
			
				
				def org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter getETH_E_ACCESS(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter), "ETH_E_ACCESS")
				}
				
				def void setETH_E_ACCESS(org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "ETH_E_ACCESS"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter getETH_E_ALIGNMENT(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter), "ETH_E_ALIGNMENT")
				}
				
				def void setETH_E_ALIGNMENT(org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "ETH_E_ALIGNMENT"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter getETH_E_CRC(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter), "ETH_E_CRC")
				}
				
				def void setETH_E_CRC(org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "ETH_E_CRC"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter getETH_E_LATECOLLISION(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter), "ETH_E_LATECOLLISION")
				}
				
				def void setETH_E_LATECOLLISION(org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "ETH_E_LATECOLLISION"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter getETH_E_MULTIPLECOLLISION(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter), "ETH_E_MULTIPLECOLLISION")
				}
				
				def void setETH_E_MULTIPLECOLLISION(org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "ETH_E_MULTIPLECOLLISION"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter getETH_E_OVERSIZEFRAME(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter), "ETH_E_OVERSIZEFRAME")
				}
				
				def void setETH_E_OVERSIZEFRAME(org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "ETH_E_OVERSIZEFRAME"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter getETH_E_RX_FRAMES_LOST(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter), "ETH_E_RX_FRAMES_LOST")
				}
				
				def void setETH_E_RX_FRAMES_LOST(org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "ETH_E_RX_FRAMES_LOST"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter getETH_E_SINGLECOLLISION(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter), "ETH_E_SINGLECOLLISION")
				}
				
				def void setETH_E_SINGLECOLLISION(org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "ETH_E_SINGLECOLLISION"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter getETH_E_UNDERSIZEFRAME(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter), "ETH_E_UNDERSIZEFRAME")
				}
				
				def void setETH_E_UNDERSIZEFRAME(org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "ETH_E_UNDERSIZEFRAME"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
	}
	static class EthGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof EthGeneral)){
				return false
			}
			this.target == (object as EthGeneral).target
		}
	
		def Boolean getEthDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthDevErrorDetect"].getBooleanValue()
		}
		
		def void setEthDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthGetDropCountApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthGetDropCountApi"].getBooleanValue()
		}
		
		def void setEthGetDropCountApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthGetDropCountApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthGetDropCountApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthGetEtherStatsApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthGetEtherStatsApi"].getBooleanValue()
		}
		
		def void setEthGetEtherStatsApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthGetEtherStatsApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthGetEtherStatsApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthGetTxErrorCounterValuesApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthGetTxErrorCounterValuesApi"].getBooleanValue()
		}
		
		def void setEthGetTxErrorCounterValuesApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthGetTxErrorCounterValuesApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthGetTxErrorCounterValuesApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthGetTxStatsApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthGetTxStatsApi"].getBooleanValue()
		}
		
		def void setEthGetTxStatsApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthGetTxStatsApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthGetTxStatsApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthGlobalTimeSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthGlobalTimeSupport"].getBooleanValue()
		}
		
		def void setEthGlobalTimeSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthGlobalTimeSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthGlobalTimeSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getEthIndex(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIndex"].getBigIntegerValue()
		}
		
		def void setEthIndex(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIndex"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthIndex"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getEthMainFunctionPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthMainFunctionPeriod"].getBigDecimalValue()
		}
		
		def void setEthMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthMainFunctionPeriod"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthMainFunctionPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getEthMaxCtrlsSupported(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthMaxCtrlsSupported"].getBigIntegerValue()
		}
		
		def void setEthMaxCtrlsSupported(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthMaxCtrlsSupported"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthMaxCtrlsSupported"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getEthUpdatePhysAddrFilter(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthUpdatePhysAddrFilter"].getBooleanValue()
		}
		
		def void setEthUpdatePhysAddrFilter(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthUpdatePhysAddrFilter"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthUpdatePhysAddrFilter"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthVersionInfoApi"].getBooleanValue()
		}
		
		def void setEthVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		def EthCtrlOffloading getEthCtrlOffloading(){
			containerValue.getByType(typeof(EthCtrlOffloading))
		}
		
		def void setEthCtrlOffloading(EthCtrlOffloading ethCtrlOffloading){
			val GContainer subContainer = ethCtrlOffloading.getTarget()
			containerValue.setContainer(subContainer, "EthCtrlOffloading")
		}
		
		
		static class EthCtrlOffloading implements IWrapper<GContainer> {
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
		        if (!(object instanceof EthCtrlOffloading)){
					return false
				}
				this.target == (object as EthCtrlOffloading).target
			}
		
			def Boolean getEthCtrlEnableOffloadChecksumICMP(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthCtrlEnableOffloadChecksumICMP"].getBooleanValue()
			}
			
			def void setEthCtrlEnableOffloadChecksumICMP(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthCtrlEnableOffloadChecksumICMP"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthCtrlEnableOffloadChecksumICMP"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getEthCtrlEnableOffloadChecksumIPv4(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthCtrlEnableOffloadChecksumIPv4"].getBooleanValue()
			}
			
			def void setEthCtrlEnableOffloadChecksumIPv4(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthCtrlEnableOffloadChecksumIPv4"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthCtrlEnableOffloadChecksumIPv4"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getEthCtrlEnableOffloadChecksumTCP(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthCtrlEnableOffloadChecksumTCP"].getBooleanValue()
			}
			
			def void setEthCtrlEnableOffloadChecksumTCP(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthCtrlEnableOffloadChecksumTCP"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthCtrlEnableOffloadChecksumTCP"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getEthCtrlEnableOffloadChecksumUDP(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthCtrlEnableOffloadChecksumUDP"].getBooleanValue()
			}
			
			def void setEthCtrlEnableOffloadChecksumUDP(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthCtrlEnableOffloadChecksumUDP"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthCtrlEnableOffloadChecksumUDP"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			
			
		}
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof Eth)){
			return false
		}
		this.target == (object as Eth).target
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
