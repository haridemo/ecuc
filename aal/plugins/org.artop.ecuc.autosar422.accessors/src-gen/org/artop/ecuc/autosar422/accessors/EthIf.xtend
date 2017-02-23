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
package org.artop.ecuc.autosar422.accessors

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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof EthIfConfigSet)){
				return false
			}
			this.target == (object as EthIfConfigSet).target
		}
	
		
		
		def List<EthIfController> getEthIfControllers(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "EthIfController")
				}
			}
			return new BasicWrappingEList<EthIfController, GContainer>(filteredContainers, typeof(EthIfController), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.EthIf.EthIfConfigSet.EthIfController ethIfController) {
					ethIfController.target?.gSetDefinition(containerValue.getContainerDefinition("EthIfController"))
					super.delegateAdd(ethIfController)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.EthIf.EthIfConfigSet.EthIfController ethIfController) {
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
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.EthIf.EthIfConfigSet.EthIfFrameOwnerConfig ethIfFrameOwnerConfig) {
					ethIfFrameOwnerConfig.target?.gSetDefinition(containerValue.getContainerDefinition("EthIfFrameOwnerConfig"))
					super.delegateAdd(ethIfFrameOwnerConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.EthIf.EthIfConfigSet.EthIfFrameOwnerConfig ethIfFrameOwnerConfig) {
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
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.EthIf.EthIfConfigSet.EthIfRxIndicationConfig ethIfRxIndicationConfig) {
					ethIfRxIndicationConfig.target?.gSetDefinition(containerValue.getContainerDefinition("EthIfRxIndicationConfig"))
					super.delegateAdd(ethIfRxIndicationConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.EthIf.EthIfConfigSet.EthIfRxIndicationConfig ethIfRxIndicationConfig) {
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
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.EthIf.EthIfConfigSet.EthIfSwitch ethIfSwitch) {
					ethIfSwitch.target?.gSetDefinition(containerValue.getContainerDefinition("EthIfSwitch"))
					super.delegateAdd(ethIfSwitch)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.EthIf.EthIfConfigSet.EthIfSwitch ethIfSwitch) {
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
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.EthIf.EthIfConfigSet.EthIfTrcvLinkStateChgConfig ethIfTrcvLinkStateChgConfig) {
					ethIfTrcvLinkStateChgConfig.target?.gSetDefinition(containerValue.getContainerDefinition("EthIfTrcvLinkStateChgConfig"))
					super.delegateAdd(ethIfTrcvLinkStateChgConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.EthIf.EthIfConfigSet.EthIfTrcvLinkStateChgConfig ethIfTrcvLinkStateChgConfig) {
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
				override protected delegateAdd(org.artop.ecuc.autosar422.accessors.EthIf.EthIfConfigSet.EthIfTxConfirmationConfig ethIfTxConfirmationConfig) {
					ethIfTxConfirmationConfig.target?.gSetDefinition(containerValue.getContainerDefinition("EthIfTxConfirmationConfig"))
					super.delegateAdd(ethIfTxConfirmationConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.EthIf.EthIfConfigSet.EthIfTxConfirmationConfig ethIfTxConfirmationConfig) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof EthIfController)){
					return false
				}
				this.target == (object as EthIfController).target
			}
		
			def BigInteger getEthIfCtrlIdx(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfCtrlIdx"].getBigIntegerValue()
			}
			
			def void setEthIfCtrlIdx(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfCtrlIdx"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthIfCtrlIdx"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getEthIfCtrlMtu(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfCtrlMtu"].getBigIntegerValue()
			}
			
			def void setEthIfCtrlMtu(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfCtrlMtu"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthIfCtrlMtu"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getEthIfMaxTxBufsTotal(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfMaxTxBufsTotal"].getBigIntegerValue()
			}
			
			def void setEthIfMaxTxBufsTotal(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfMaxTxBufsTotal"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthIfMaxTxBufsTotal"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getEthIfVlanId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfVlanId"].getBigIntegerValue()
			}
			
			def void setEthIfVlanId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfVlanId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthIfVlanId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar422.accessors.Eth.EthConfigSet.EthCtrlConfig getEthIfEthCtrlRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar422.accessors.Eth.EthConfigSet.EthCtrlConfig), "EthIfEthCtrlRef")
			}
			
			def void setEthIfEthCtrlRef(org.artop.ecuc.autosar422.accessors.Eth.EthConfigSet.EthCtrlConfig object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EthIfEthCtrlRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar422.accessors.EthTrcv.EthTrcvConfigSet.EthTrcvConfig getEthIfEthTrcvRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar422.accessors.EthTrcv.EthTrcvConfigSet.EthTrcvConfig), "EthIfEthTrcvRef")
			}
			
			def void setEthIfEthTrcvRef(org.artop.ecuc.autosar422.accessors.EthTrcv.EthTrcvConfigSet.EthTrcvConfig object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EthIfEthTrcvRef"], object.getTarget())
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof EthIfFrameOwnerConfig)){
					return false
				}
				this.target == (object as EthIfFrameOwnerConfig).target
			}
		
			def BigInteger getEthIfFrameType(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfFrameType"].getBigIntegerValue()
			}
			
			def void setEthIfFrameType(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfFrameType"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthIfFrameType"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getEthIfOwner(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfOwner"].getBigIntegerValue()
			}
			
			def void setEthIfOwner(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfOwner"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthIfOwner"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof EthIfRxIndicationConfig)){
					return false
				}
				this.target == (object as EthIfRxIndicationConfig).target
			}
		
			def String getEthIfRxIndicationFunction(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfRxIndicationFunction"].getStringValue()
			}
			
			def void setEthIfRxIndicationFunction(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfRxIndicationFunction"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthIfRxIndicationFunction"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof EthIfSwitch)){
					return false
				}
				this.target == (object as EthIfSwitch).target
			}
		
			def BigInteger getEthIfSwitchIdx(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfSwitchIdx"].getBigIntegerValue()
			}
			
			def void setEthIfSwitchIdx(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfSwitchIdx"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthIfSwitchIdx"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar422.accessors.EthSwt.EthSwtConfig getEthIfSwitchRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar422.accessors.EthSwt.EthSwtConfig), "EthIfSwitchRef")
			}
			
			def void setEthIfSwitchRef(org.artop.ecuc.autosar422.accessors.EthSwt.EthSwtConfig object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EthIfSwitchRef"], object.getTarget())
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof EthIfTrcvLinkStateChgConfig)){
					return false
				}
				this.target == (object as EthIfTrcvLinkStateChgConfig).target
			}
		
			def String getEthIfTrcvLinkStateChgFunction(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfTrcvLinkStateChgFunction"].getStringValue()
			}
			
			def void setEthIfTrcvLinkStateChgFunction(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfTrcvLinkStateChgFunction"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthIfTrcvLinkStateChgFunction"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof EthIfTxConfirmationConfig)){
					return false
				}
				this.target == (object as EthIfTxConfirmationConfig).target
			}
		
			def String getEthIfTxConfirmationFunction(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfTxConfirmationFunction"].getStringValue()
			}
			
			def void setEthIfTxConfirmationFunction(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfTxConfirmationFunction"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthIfTxConfirmationFunction"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof EthIfGeneral)){
				return false
			}
			this.target == (object as EthIfGeneral).target
		}
	
		def Boolean getEthIfDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfDevErrorDetect"].getBooleanValue()
		}
		
		def void setEthIfDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthIfDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthIfEnableRxInterrupt(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfEnableRxInterrupt"].getBooleanValue()
		}
		
		def void setEthIfEnableRxInterrupt(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfEnableRxInterrupt"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthIfEnableRxInterrupt"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthIfEnableTxInterrupt(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfEnableTxInterrupt"].getBooleanValue()
		}
		
		def void setEthIfEnableTxInterrupt(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfEnableTxInterrupt"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthIfEnableTxInterrupt"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthIfGetBaudRate(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfGetBaudRate"].getBooleanValue()
		}
		
		def void setEthIfGetBaudRate(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfGetBaudRate"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthIfGetBaudRate"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthIfGetCounterState(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfGetCounterState"].getBooleanValue()
		}
		
		def void setEthIfGetCounterState(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfGetCounterState"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthIfGetCounterState"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthIfGetTransceiverWakeupModeApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfGetTransceiverWakeupModeApi"].getBooleanValue()
		}
		
		def void setEthIfGetTransceiverWakeupModeApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfGetTransceiverWakeupModeApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthIfGetTransceiverWakeupModeApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthIfGlobalTimeSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfGlobalTimeSupport"].getBooleanValue()
		}
		
		def void setEthIfGlobalTimeSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfGlobalTimeSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthIfGlobalTimeSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getEthIfMainFunctionPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfMainFunctionPeriod"].getBigDecimalValue()
		}
		
		def void setEthIfMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfMainFunctionPeriod"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthIfMainFunctionPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getEthIfMainFunctionRxTimeout(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfMainFunctionRxTimeout"].getBigDecimalValue()
		}
		
		def void setEthIfMainFunctionRxTimeout(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfMainFunctionRxTimeout"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthIfMainFunctionRxTimeout"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getEthIfMaxTrcvsTotal(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfMaxTrcvsTotal"].getBigIntegerValue()
		}
		
		def void setEthIfMaxTrcvsTotal(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfMaxTrcvsTotal"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthIfMaxTrcvsTotal"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
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
		
		def BigInteger getEthIfRxIndicationIterations(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfRxIndicationIterations"].getBigIntegerValue()
		}
		
		def void setEthIfRxIndicationIterations(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfRxIndicationIterations"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthIfRxIndicationIterations"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getEthIfStartAutoNegotiation(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfStartAutoNegotiation"].getBooleanValue()
		}
		
		def void setEthIfStartAutoNegotiation(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfStartAutoNegotiation"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthIfStartAutoNegotiation"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getEthIfTrcvLinkStateChgMainReload(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfTrcvLinkStateChgMainReload"].getBigIntegerValue()
		}
		
		def void setEthIfTrcvLinkStateChgMainReload(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfTrcvLinkStateChgMainReload"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthIfTrcvLinkStateChgMainReload"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getEthIfVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfVersionInfoApi"].getBooleanValue()
		}
		
		def void setEthIfVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthIfVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthIfVersionInfoApiMacro(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfVersionInfoApiMacro"].getBooleanValue()
		}
		
		def void setEthIfVersionInfoApiMacro(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfVersionInfoApiMacro"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthIfVersionInfoApiMacro"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEthIfWakeUpSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfWakeUpSupport"].getBooleanValue()
		}
		
		def void setEthIfWakeUpSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EthIfWakeUpSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EthIfWakeUpSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof EthIf)){
			return false
		}
		this.target == (object as EthIf).target
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
