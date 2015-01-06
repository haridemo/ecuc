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

class EthIf implements IWrapper<GModuleConfiguration> {
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
	
	def EthIfConfigSet getEthIfConfigSet(){
		moduleConfiguration.getByType(typeof(EthIfConfigSet))
	}
	
	def void setEthIfConfigSet(EthIfConfigSet ethIfConfigSet){
		val GContainer container = ethIfConfigSet.getTarget() 
	    moduleConfiguration.setContainer(container, "EthIfConfigSet")
	}
	def EthIfGeneral getEthIfGeneral(){
		moduleConfiguration.getByType(typeof(EthIfGeneral))
	}
	
	def void setEthIfGeneral(EthIfGeneral ethIfGeneral){
		val GContainer container = ethIfGeneral.getTarget() 
	    moduleConfiguration.setContainer(container, "EthIfGeneral")
	}
	
	static class EthIfConfigSet implements IWrapper<GContainer> {
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
		
		
		
		def List<EthIfController> getEthIfControllers(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "EthIfController")
				}
			}
			return new BasicWrappingEList<EthIfController, GContainer>(filteredContainers, typeof(EthIfController), typeof(GContainer)) {
				override protected delegateAdd(EthIfController ethIfController) {
					ethIfController.target?.gSetDefinition(containerValue.getContainerDefinition("EthIfController"))
					super.delegateAdd(ethIfController)
				}
				
				override protected delegateAdd(int index, EthIfController ethIfController) {
					ethIfController.target?.gSetDefinition(containerValue.getContainerDefinition("EthIfController"))
					super.delegateAdd(index, ethIfController)
				}	
			}
		}
		
		def List<EthIfFrameOwnerConfig> getEthIfFrameOwnerConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "EthIfFrameOwnerConfig")
				}
			}
			return new BasicWrappingEList<EthIfFrameOwnerConfig, GContainer>(filteredContainers, typeof(EthIfFrameOwnerConfig), typeof(GContainer)) {
				override protected delegateAdd(EthIfFrameOwnerConfig ethIfFrameOwnerConfig) {
					ethIfFrameOwnerConfig.target?.gSetDefinition(containerValue.getContainerDefinition("EthIfFrameOwnerConfig"))
					super.delegateAdd(ethIfFrameOwnerConfig)
				}
				
				override protected delegateAdd(int index, EthIfFrameOwnerConfig ethIfFrameOwnerConfig) {
					ethIfFrameOwnerConfig.target?.gSetDefinition(containerValue.getContainerDefinition("EthIfFrameOwnerConfig"))
					super.delegateAdd(index, ethIfFrameOwnerConfig)
				}	
			}
		}
		
		def List<EthIfRxIndicationConfig> getEthIfRxIndicationConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "EthIfRxIndicationConfig")
				}
			}
			return new BasicWrappingEList<EthIfRxIndicationConfig, GContainer>(filteredContainers, typeof(EthIfRxIndicationConfig), typeof(GContainer)) {
				override protected delegateAdd(EthIfRxIndicationConfig ethIfRxIndicationConfig) {
					ethIfRxIndicationConfig.target?.gSetDefinition(containerValue.getContainerDefinition("EthIfRxIndicationConfig"))
					super.delegateAdd(ethIfRxIndicationConfig)
				}
				
				override protected delegateAdd(int index, EthIfRxIndicationConfig ethIfRxIndicationConfig) {
					ethIfRxIndicationConfig.target?.gSetDefinition(containerValue.getContainerDefinition("EthIfRxIndicationConfig"))
					super.delegateAdd(index, ethIfRxIndicationConfig)
				}	
			}
		}
		
		def List<EthIfSwitch> getEthIfSwitchs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "EthIfSwitch")
				}
			}
			return new BasicWrappingEList<EthIfSwitch, GContainer>(filteredContainers, typeof(EthIfSwitch), typeof(GContainer)) {
				override protected delegateAdd(EthIfSwitch ethIfSwitch) {
					ethIfSwitch.target?.gSetDefinition(containerValue.getContainerDefinition("EthIfSwitch"))
					super.delegateAdd(ethIfSwitch)
				}
				
				override protected delegateAdd(int index, EthIfSwitch ethIfSwitch) {
					ethIfSwitch.target?.gSetDefinition(containerValue.getContainerDefinition("EthIfSwitch"))
					super.delegateAdd(index, ethIfSwitch)
				}	
			}
		}
		
		def List<EthIfTrcvLinkStateChgConfig> getEthIfTrcvLinkStateChgConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "EthIfTrcvLinkStateChgConfig")
				}
			}
			return new BasicWrappingEList<EthIfTrcvLinkStateChgConfig, GContainer>(filteredContainers, typeof(EthIfTrcvLinkStateChgConfig), typeof(GContainer)) {
				override protected delegateAdd(EthIfTrcvLinkStateChgConfig ethIfTrcvLinkStateChgConfig) {
					ethIfTrcvLinkStateChgConfig.target?.gSetDefinition(containerValue.getContainerDefinition("EthIfTrcvLinkStateChgConfig"))
					super.delegateAdd(ethIfTrcvLinkStateChgConfig)
				}
				
				override protected delegateAdd(int index, EthIfTrcvLinkStateChgConfig ethIfTrcvLinkStateChgConfig) {
					ethIfTrcvLinkStateChgConfig.target?.gSetDefinition(containerValue.getContainerDefinition("EthIfTrcvLinkStateChgConfig"))
					super.delegateAdd(index, ethIfTrcvLinkStateChgConfig)
				}	
			}
		}
		
		def List<EthIfTxConfirmationConfig> getEthIfTxConfirmationConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "EthIfTxConfirmationConfig")
				}
			}
			return new BasicWrappingEList<EthIfTxConfirmationConfig, GContainer>(filteredContainers, typeof(EthIfTxConfirmationConfig), typeof(GContainer)) {
				override protected delegateAdd(EthIfTxConfirmationConfig ethIfTxConfirmationConfig) {
					ethIfTxConfirmationConfig.target?.gSetDefinition(containerValue.getContainerDefinition("EthIfTxConfirmationConfig"))
					super.delegateAdd(ethIfTxConfirmationConfig)
				}
				
				override protected delegateAdd(int index, EthIfTxConfirmationConfig ethIfTxConfirmationConfig) {
					ethIfTxConfirmationConfig.target?.gSetDefinition(containerValue.getContainerDefinition("EthIfTxConfirmationConfig"))
					super.delegateAdd(index, ethIfTxConfirmationConfig)
				}	
			}
		}
		
		
		static class EthIfController implements IWrapper<GContainer> {
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
			
			def Integer getEthIfCtrlIdx(){
				EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfCtrlIdx"])
			}
			
			def void setEthIfCtrlIdx(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfCtrlIdx"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthIfCtrlIdx"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Integer getEthIfCtrlMtu(){
				EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfCtrlMtu"])
			}
			
			def void setEthIfCtrlMtu(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfCtrlMtu"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthIfCtrlMtu"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Integer getEthIfMaxTxBufsTotal(){
				EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfMaxTxBufsTotal"])
			}
			
			def void setEthIfMaxTxBufsTotal(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfMaxTxBufsTotal"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthIfMaxTxBufsTotal"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Integer getEthIfVlanId(){
				EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfVlanId"])
			}
			
			def void setEthIfVlanId(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfVlanId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthIfVlanId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.Eth.EthConfigSet.EthCtrlConfig getEthIfEthCtrlRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Eth.EthConfigSet.EthCtrlConfig), "EthIfEthCtrlRef")
			}
					
			def void setEthIfEthCtrlRef(org.artop.ecuc.autosar421.accessors.Eth.EthConfigSet.EthCtrlConfig object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "EthIfEthCtrlRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.EthTrcv.EthTrcvConfigSet.EthTrcvConfig getEthIfEthTrcvRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EthTrcv.EthTrcvConfigSet.EthTrcvConfig), "EthIfEthTrcvRef")
			}
					
			def void setEthIfEthTrcvRef(org.artop.ecuc.autosar421.accessors.EthTrcv.EthTrcvConfigSet.EthTrcvConfig object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "EthIfEthTrcvRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class EthIfFrameOwnerConfig implements IWrapper<GContainer> {
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
			
			def Integer getEthIfFrameType(){
				EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfFrameType"])
			}
			
			def void setEthIfFrameType(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfFrameType"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthIfFrameType"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Integer getEthIfOwner(){
				EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfOwner"])
			}
			
			def void setEthIfOwner(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfOwner"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthIfOwner"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
		static class EthIfRxIndicationConfig implements IWrapper<GContainer> {
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
			
			def String getEthIfRxIndicationFunction(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfRxIndicationFunction"])
			}
			
			def void setEthIfRxIndicationFunction(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfRxIndicationFunction"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthIfRxIndicationFunction"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
		static class EthIfSwitch implements IWrapper<GContainer> {
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
			
			def Integer getEthIfSwitchIdx(){
				EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfSwitchIdx"])
			}
			
			def void setEthIfSwitchIdx(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfSwitchIdx"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthIfSwitchIdx"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.EthSwt.EthSwtConfig getEthIfSwitchRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EthSwt.EthSwtConfig), "EthIfSwitchRef")
			}
					
			def void setEthIfSwitchRef(org.artop.ecuc.autosar421.accessors.EthSwt.EthSwtConfig object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "EthIfSwitchRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class EthIfTrcvLinkStateChgConfig implements IWrapper<GContainer> {
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
			
			def String getEthIfTrcvLinkStateChgFunction(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfTrcvLinkStateChgFunction"])
			}
			
			def void setEthIfTrcvLinkStateChgFunction(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfTrcvLinkStateChgFunction"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthIfTrcvLinkStateChgFunction"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
		static class EthIfTxConfirmationConfig implements IWrapper<GContainer> {
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
			
			def String getEthIfTxConfirmationFunction(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfTxConfirmationFunction"])
			}
			
			def void setEthIfTxConfirmationFunction(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfTxConfirmationFunction"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthIfTxConfirmationFunction"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class EthIfGeneral implements IWrapper<GContainer> {
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
		
		def Boolean getEthIfDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfDevErrorDetect"])
		}
		
		def void setEthIfDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthIfDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEthIfEnableRxInterrupt(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfEnableRxInterrupt"])
		}
		
		def void setEthIfEnableRxInterrupt(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfEnableRxInterrupt"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthIfEnableRxInterrupt"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEthIfEnableTxInterrupt(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfEnableTxInterrupt"])
		}
		
		def void setEthIfEnableTxInterrupt(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfEnableTxInterrupt"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthIfEnableTxInterrupt"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEthIfGetBaudRate(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfGetBaudRate"])
		}
		
		def void setEthIfGetBaudRate(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfGetBaudRate"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthIfGetBaudRate"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEthIfGetCounterState(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfGetCounterState"])
		}
		
		def void setEthIfGetCounterState(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfGetCounterState"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthIfGetCounterState"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEthIfGetTransceiverWakeupModeApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfGetTransceiverWakeupModeApi"])
		}
		
		def void setEthIfGetTransceiverWakeupModeApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfGetTransceiverWakeupModeApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthIfGetTransceiverWakeupModeApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEthIfGlobalTimeSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfGlobalTimeSupport"])
		}
		
		def void setEthIfGlobalTimeSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfGlobalTimeSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthIfGlobalTimeSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Float getEthIfMainFunctionPeriod(){
			EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfMainFunctionPeriod"])
		}
		
		def void setEthIfMainFunctionPeriod(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfMainFunctionPeriod"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthIfMainFunctionPeriod"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Float getEthIfMainFunctionRxTimeout(){
			EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfMainFunctionRxTimeout"])
		}
		
		def void setEthIfMainFunctionRxTimeout(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfMainFunctionRxTimeout"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthIfMainFunctionRxTimeout"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getEthIfMaxTrcvsTotal(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfMaxTrcvsTotal"])
		}
		
		def void setEthIfMaxTrcvsTotal(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfMaxTrcvsTotal"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthIfMaxTrcvsTotal"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def List<String> getEthIfPublicCddHeaderFiles(){
			val List<EcucTextualParamValue> filteredParameterValues = new AbstractFilteringEList<EcucTextualParamValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {
				override protected accept(EcucTextualParamValue item) {
					return accept(item, typeof(GConfigParameter), "EthIfPublicCddHeaderFile")
				}
			}
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == "EthIfPublicCddHeaderFile"]
				return new StringValueUnwrappingEList(filteredParameterValues, typeof(EcucTextualParamValue), typeof(String), parameterDef)
			}
		}
		
		def Integer getEthIfRxIndicationIterations(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfRxIndicationIterations"])
		}
		
		def void setEthIfRxIndicationIterations(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfRxIndicationIterations"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthIfRxIndicationIterations"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEthIfStartAutoNegotiation(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfStartAutoNegotiation"])
		}
		
		def void setEthIfStartAutoNegotiation(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfStartAutoNegotiation"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthIfStartAutoNegotiation"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getEthIfTrcvLinkStateChgMainReload(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfTrcvLinkStateChgMainReload"])
		}
		
		def void setEthIfTrcvLinkStateChgMainReload(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfTrcvLinkStateChgMainReload"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthIfTrcvLinkStateChgMainReload"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEthIfVersionInfoApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfVersionInfoApi"])
		}
		
		def void setEthIfVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthIfVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEthIfVersionInfoApiMacro(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfVersionInfoApiMacro"])
		}
		
		def void setEthIfVersionInfoApiMacro(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfVersionInfoApiMacro"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthIfVersionInfoApiMacro"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEthIfWakeUpSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfWakeUpSupport"])
		}
		
		def void setEthIfWakeUpSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfWakeUpSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EthIfWakeUpSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
