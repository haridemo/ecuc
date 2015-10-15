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

class Rte implements IWrapper<GModuleConfiguration> {
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

	def RteBswGeneral getRteBswGeneral(){
		moduleConfiguration.getByType(typeof(RteBswGeneral))
	}

	def void setRteBswGeneral(RteBswGeneral rteBswGeneral){
		val GContainer container = rteBswGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "RteBswGeneral")
	}
	def List<RteBswModuleInstance> getRteBswModuleInstances(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "RteBswModuleInstance")
			}
		}
		return new BasicWrappingEList<RteBswModuleInstance, GContainer>(filteredContainers, typeof(RteBswModuleInstance), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance rteBswModuleInstance) {
				rteBswModuleInstance.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("RteBswModuleInstance"))
				super.delegateAdd(rteBswModuleInstance)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance rteBswModuleInstance) {
				rteBswModuleInstance.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("RteBswModuleInstance"))
				super.delegateAdd(index, rteBswModuleInstance)
			}
		}
	}
	def RteGeneration getRteGeneration(){
		moduleConfiguration.getByType(typeof(RteGeneration))
	}

	def void setRteGeneration(RteGeneration rteGeneration){
		val GContainer container = rteGeneration.getTarget()
	    moduleConfiguration.setContainer(container, "RteGeneration")
	}
	def List<RteImplicitCommunication> getRteImplicitCommunications(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "RteImplicitCommunication")
			}
		}
		return new BasicWrappingEList<RteImplicitCommunication, GContainer>(filteredContainers, typeof(RteImplicitCommunication), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Rte.RteImplicitCommunication rteImplicitCommunication) {
				rteImplicitCommunication.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("RteImplicitCommunication"))
				super.delegateAdd(rteImplicitCommunication)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Rte.RteImplicitCommunication rteImplicitCommunication) {
				rteImplicitCommunication.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("RteImplicitCommunication"))
				super.delegateAdd(index, rteImplicitCommunication)
			}
		}
	}
	def List<RteInitializationBehavior> getRteInitializationBehaviors(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "RteInitializationBehavior")
			}
		}
		return new BasicWrappingEList<RteInitializationBehavior, GContainer>(filteredContainers, typeof(RteInitializationBehavior), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Rte.RteInitializationBehavior rteInitializationBehavior) {
				rteInitializationBehavior.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("RteInitializationBehavior"))
				super.delegateAdd(rteInitializationBehavior)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Rte.RteInitializationBehavior rteInitializationBehavior) {
				rteInitializationBehavior.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("RteInitializationBehavior"))
				super.delegateAdd(index, rteInitializationBehavior)
			}
		}
	}
	def List<RteInitializationRunnableBatch> getRteInitializationRunnableBatchs(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "RteInitializationRunnableBatch")
			}
		}
		return new BasicWrappingEList<RteInitializationRunnableBatch, GContainer>(filteredContainers, typeof(RteInitializationRunnableBatch), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Rte.RteInitializationRunnableBatch rteInitializationRunnableBatch) {
				rteInitializationRunnableBatch.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("RteInitializationRunnableBatch"))
				super.delegateAdd(rteInitializationRunnableBatch)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Rte.RteInitializationRunnableBatch rteInitializationRunnableBatch) {
				rteInitializationRunnableBatch.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("RteInitializationRunnableBatch"))
				super.delegateAdd(index, rteInitializationRunnableBatch)
			}
		}
	}
	def List<RteOsInteraction> getRteOsInteractions(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "RteOsInteraction")
			}
		}
		return new BasicWrappingEList<RteOsInteraction, GContainer>(filteredContainers, typeof(RteOsInteraction), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Rte.RteOsInteraction rteOsInteraction) {
				rteOsInteraction.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("RteOsInteraction"))
				super.delegateAdd(rteOsInteraction)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Rte.RteOsInteraction rteOsInteraction) {
				rteOsInteraction.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("RteOsInteraction"))
				super.delegateAdd(index, rteOsInteraction)
			}
		}
	}
	def RtePostBuildVariantConfiguration getRtePostBuildVariantConfiguration(){
		moduleConfiguration.getByType(typeof(RtePostBuildVariantConfiguration))
	}

	def void setRtePostBuildVariantConfiguration(RtePostBuildVariantConfiguration rtePostBuildVariantConfiguration){
		val GContainer container = rtePostBuildVariantConfiguration.getTarget()
	    moduleConfiguration.setContainer(container, "RtePostBuildVariantConfiguration")
	}
	def List<RteSwComponentInstance> getRteSwComponentInstances(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "RteSwComponentInstance")
			}
		}
		return new BasicWrappingEList<RteSwComponentInstance, GContainer>(filteredContainers, typeof(RteSwComponentInstance), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Rte.RteSwComponentInstance rteSwComponentInstance) {
				rteSwComponentInstance.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("RteSwComponentInstance"))
				super.delegateAdd(rteSwComponentInstance)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Rte.RteSwComponentInstance rteSwComponentInstance) {
				rteSwComponentInstance.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("RteSwComponentInstance"))
				super.delegateAdd(index, rteSwComponentInstance)
			}
		}
	}
	def List<RteSwComponentType> getRteSwComponentTypes(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "RteSwComponentType")
			}
		}
		return new BasicWrappingEList<RteSwComponentType, GContainer>(filteredContainers, typeof(RteSwComponentType), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Rte.RteSwComponentType rteSwComponentType) {
				rteSwComponentType.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("RteSwComponentType"))
				super.delegateAdd(rteSwComponentType)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Rte.RteSwComponentType rteSwComponentType) {
				rteSwComponentType.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("RteSwComponentType"))
				super.delegateAdd(index, rteSwComponentType)
			}
		}
	}

	static class RteBswGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof RteBswGeneral)){
				return false
			}
			this.target == (object as RteBswGeneral).target
		}
	
		def Boolean getRteSchMVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteSchMVersionInfoApi"].getBooleanValue()
		}
		
		def void setRteSchMVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteSchMVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RteSchMVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getRteUseComShadowSignalApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteUseComShadowSignalApi"].getBooleanValue()
		}
		
		def void setRteUseComShadowSignalApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteUseComShadowSignalApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RteUseComShadowSignalApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}
	static class RteBswModuleInstance implements IWrapper<GContainer> {
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
	        if (!(object instanceof RteBswModuleInstance)){
				return false
			}
			this.target == (object as RteBswModuleInstance).target
		}
	
		
		
		
		
		def List<RteBswEventToTaskMapping> getRteBswEventToTaskMappings(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "RteBswEventToTaskMapping")
				}
			}
			return new BasicWrappingEList<RteBswEventToTaskMapping, GContainer>(filteredContainers, typeof(RteBswEventToTaskMapping), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance.RteBswEventToTaskMapping rteBswEventToTaskMapping) {
					rteBswEventToTaskMapping.target?.gSetDefinition(containerValue.getContainerDefinition("RteBswEventToTaskMapping"))
					super.delegateAdd(rteBswEventToTaskMapping)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance.RteBswEventToTaskMapping rteBswEventToTaskMapping) {
					rteBswEventToTaskMapping.target?.gSetDefinition(containerValue.getContainerDefinition("RteBswEventToTaskMapping"))
					super.delegateAdd(index, rteBswEventToTaskMapping)
				}
			}
		}
		
		def List<RteBswExclusiveAreaImpl> getRteBswExclusiveAreaImpls(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "RteBswExclusiveAreaImpl")
				}
			}
			return new BasicWrappingEList<RteBswExclusiveAreaImpl, GContainer>(filteredContainers, typeof(RteBswExclusiveAreaImpl), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance.RteBswExclusiveAreaImpl rteBswExclusiveAreaImpl) {
					rteBswExclusiveAreaImpl.target?.gSetDefinition(containerValue.getContainerDefinition("RteBswExclusiveAreaImpl"))
					super.delegateAdd(rteBswExclusiveAreaImpl)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance.RteBswExclusiveAreaImpl rteBswExclusiveAreaImpl) {
					rteBswExclusiveAreaImpl.target?.gSetDefinition(containerValue.getContainerDefinition("RteBswExclusiveAreaImpl"))
					super.delegateAdd(index, rteBswExclusiveAreaImpl)
				}
			}
		}
		
		def List<RteBswExternalTriggerConfig> getRteBswExternalTriggerConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "RteBswExternalTriggerConfig")
				}
			}
			return new BasicWrappingEList<RteBswExternalTriggerConfig, GContainer>(filteredContainers, typeof(RteBswExternalTriggerConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance.RteBswExternalTriggerConfig rteBswExternalTriggerConfig) {
					rteBswExternalTriggerConfig.target?.gSetDefinition(containerValue.getContainerDefinition("RteBswExternalTriggerConfig"))
					super.delegateAdd(rteBswExternalTriggerConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance.RteBswExternalTriggerConfig rteBswExternalTriggerConfig) {
					rteBswExternalTriggerConfig.target?.gSetDefinition(containerValue.getContainerDefinition("RteBswExternalTriggerConfig"))
					super.delegateAdd(index, rteBswExternalTriggerConfig)
				}
			}
		}
		
		def List<RteBswInternalTriggerConfig> getRteBswInternalTriggerConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "RteBswInternalTriggerConfig")
				}
			}
			return new BasicWrappingEList<RteBswInternalTriggerConfig, GContainer>(filteredContainers, typeof(RteBswInternalTriggerConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance.RteBswInternalTriggerConfig rteBswInternalTriggerConfig) {
					rteBswInternalTriggerConfig.target?.gSetDefinition(containerValue.getContainerDefinition("RteBswInternalTriggerConfig"))
					super.delegateAdd(rteBswInternalTriggerConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance.RteBswInternalTriggerConfig rteBswInternalTriggerConfig) {
					rteBswInternalTriggerConfig.target?.gSetDefinition(containerValue.getContainerDefinition("RteBswInternalTriggerConfig"))
					super.delegateAdd(index, rteBswInternalTriggerConfig)
				}
			}
		}
		
		def List<RteBswRequiredClientServerConnection> getRteBswRequiredClientServerConnections(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "RteBswRequiredClientServerConnection")
				}
			}
			return new BasicWrappingEList<RteBswRequiredClientServerConnection, GContainer>(filteredContainers, typeof(RteBswRequiredClientServerConnection), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance.RteBswRequiredClientServerConnection rteBswRequiredClientServerConnection) {
					rteBswRequiredClientServerConnection.target?.gSetDefinition(containerValue.getContainerDefinition("RteBswRequiredClientServerConnection"))
					super.delegateAdd(rteBswRequiredClientServerConnection)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance.RteBswRequiredClientServerConnection rteBswRequiredClientServerConnection) {
					rteBswRequiredClientServerConnection.target?.gSetDefinition(containerValue.getContainerDefinition("RteBswRequiredClientServerConnection"))
					super.delegateAdd(index, rteBswRequiredClientServerConnection)
				}
			}
		}
		
		def List<RteBswRequiredModeGroupConnection> getRteBswRequiredModeGroupConnections(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "RteBswRequiredModeGroupConnection")
				}
			}
			return new BasicWrappingEList<RteBswRequiredModeGroupConnection, GContainer>(filteredContainers, typeof(RteBswRequiredModeGroupConnection), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance.RteBswRequiredModeGroupConnection rteBswRequiredModeGroupConnection) {
					rteBswRequiredModeGroupConnection.target?.gSetDefinition(containerValue.getContainerDefinition("RteBswRequiredModeGroupConnection"))
					super.delegateAdd(rteBswRequiredModeGroupConnection)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance.RteBswRequiredModeGroupConnection rteBswRequiredModeGroupConnection) {
					rteBswRequiredModeGroupConnection.target?.gSetDefinition(containerValue.getContainerDefinition("RteBswRequiredModeGroupConnection"))
					super.delegateAdd(index, rteBswRequiredModeGroupConnection)
				}
			}
		}
		
		def List<RteBswRequiredSenderReceiverConnection> getRteBswRequiredSenderReceiverConnections(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "RteBswRequiredSenderReceiverConnection")
				}
			}
			return new BasicWrappingEList<RteBswRequiredSenderReceiverConnection, GContainer>(filteredContainers, typeof(RteBswRequiredSenderReceiverConnection), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance.RteBswRequiredSenderReceiverConnection rteBswRequiredSenderReceiverConnection) {
					rteBswRequiredSenderReceiverConnection.target?.gSetDefinition(containerValue.getContainerDefinition("RteBswRequiredSenderReceiverConnection"))
					super.delegateAdd(rteBswRequiredSenderReceiverConnection)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance.RteBswRequiredSenderReceiverConnection rteBswRequiredSenderReceiverConnection) {
					rteBswRequiredSenderReceiverConnection.target?.gSetDefinition(containerValue.getContainerDefinition("RteBswRequiredSenderReceiverConnection"))
					super.delegateAdd(index, rteBswRequiredSenderReceiverConnection)
				}
			}
		}
		
		def List<RteBswRequiredTriggerConnection> getRteBswRequiredTriggerConnections(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "RteBswRequiredTriggerConnection")
				}
			}
			return new BasicWrappingEList<RteBswRequiredTriggerConnection, GContainer>(filteredContainers, typeof(RteBswRequiredTriggerConnection), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance.RteBswRequiredTriggerConnection rteBswRequiredTriggerConnection) {
					rteBswRequiredTriggerConnection.target?.gSetDefinition(containerValue.getContainerDefinition("RteBswRequiredTriggerConnection"))
					super.delegateAdd(rteBswRequiredTriggerConnection)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance.RteBswRequiredTriggerConnection rteBswRequiredTriggerConnection) {
					rteBswRequiredTriggerConnection.target?.gSetDefinition(containerValue.getContainerDefinition("RteBswRequiredTriggerConnection"))
					super.delegateAdd(index, rteBswRequiredTriggerConnection)
				}
			}
		}
		
		
		static class RteBswEventToTaskMapping implements IWrapper<GContainer> {
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
		        if (!(object instanceof RteBswEventToTaskMapping)){
					return false
				}
				this.target == (object as RteBswEventToTaskMapping).target
			}
		
			def BigDecimal getRteBswActivationOffset(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteBswActivationOffset"].getBigDecimalValue()
			}
			
			def void setRteBswActivationOffset(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteBswActivationOffset"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RteBswActivationOffset"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getRteBswImmediateRestart(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteBswImmediateRestart"].getBooleanValue()
			}
			
			def void setRteBswImmediateRestart(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteBswImmediateRestart"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RteBswImmediateRestart"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getRteBswPositionInTask(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteBswPositionInTask"].getBigIntegerValue()
			}
			
			def void setRteBswPositionInTask(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteBswPositionInTask"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RteBswPositionInTask"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def RteOsSchedulePoint getRteOsSchedulePoint(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteOsSchedulePoint"].getRteOsSchedulePointValue()
			}
			
			def void setRteOsSchedulePoint(RteOsSchedulePoint value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteOsSchedulePoint"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RteOsSchedulePoint"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum RteOsSchedulePoint {
				CONDITIONAL, 
				NONE, 
				UNCONDITIONAL
			}
			
			def RteOsSchedulePoint getRteOsSchedulePointValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "CONDITIONAL" : RteOsSchedulePoint.CONDITIONAL
					case "NONE" : RteOsSchedulePoint.NONE
					case "UNCONDITIONAL" : RteOsSchedulePoint.UNCONDITIONAL
				}
			}
			
			def void setRteOsSchedulePointValue(GParameterValue parameterValue, RteOsSchedulePoint value){
				parameterValue.setValue(value)
			}
			
			
			
			def org.artop.ecuc.autosar421.accessors.Rte.RteOsInteraction.RteSyncPoint getRteBswEventPredecessorSyncPointRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Rte.RteOsInteraction.RteSyncPoint), "RteBswEventPredecessorSyncPointRef")
			}
			
			def void setRteBswEventPredecessorSyncPointRef(org.artop.ecuc.autosar421.accessors.Rte.RteOsInteraction.RteSyncPoint object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "RteBswEventPredecessorSyncPointRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Rte.RteOsInteraction.RteSyncPoint getRteBswEventSuccessorSyncPointRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Rte.RteOsInteraction.RteSyncPoint), "RteBswEventSuccessorSyncPointRef")
			}
			
			def void setRteBswEventSuccessorSyncPointRef(org.artop.ecuc.autosar421.accessors.Rte.RteOsInteraction.RteSyncPoint object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "RteBswEventSuccessorSyncPointRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Os.OsTask getRteBswMappedToTaskRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsTask), "RteBswMappedToTaskRef")
			}
			
			def void setRteBswMappedToTaskRef(org.artop.ecuc.autosar421.accessors.Os.OsTask object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "RteBswMappedToTaskRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Os.OsAlarm getRteBswUsedOsAlarmRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsAlarm), "RteBswUsedOsAlarmRef")
			}
			
			def void setRteBswUsedOsAlarmRef(org.artop.ecuc.autosar421.accessors.Os.OsAlarm object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "RteBswUsedOsAlarmRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Os.OsEvent getRteBswUsedOsEventRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsEvent), "RteBswUsedOsEventRef")
			}
			
			def void setRteBswUsedOsEventRef(org.artop.ecuc.autosar421.accessors.Os.OsEvent object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "RteBswUsedOsEventRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Os.OsScheduleTable.OsScheduleTableExpiryPoint getRteBswUsedOsSchTblExpiryPointRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsScheduleTable.OsScheduleTableExpiryPoint), "RteBswUsedOsSchTblExpiryPointRef")
			}
			
			def void setRteBswUsedOsSchTblExpiryPointRef(org.artop.ecuc.autosar421.accessors.Os.OsScheduleTable.OsScheduleTableExpiryPoint object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "RteBswUsedOsSchTblExpiryPointRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class RteBswExclusiveAreaImpl implements IWrapper<GContainer> {
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
		        if (!(object instanceof RteBswExclusiveAreaImpl)){
					return false
				}
				this.target == (object as RteBswExclusiveAreaImpl).target
			}
		
			def RteExclusiveAreaImplMechanism getRteExclusiveAreaImplMechanism(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteExclusiveAreaImplMechanism"].getRteExclusiveAreaImplMechanismValue()
			}
			
			def void setRteExclusiveAreaImplMechanism(RteExclusiveAreaImplMechanism value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteExclusiveAreaImplMechanism"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RteExclusiveAreaImplMechanism"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum RteExclusiveAreaImplMechanism {
				ALL_INTERRUPT_BLOCKING, 
				COOPERATIVE_RUNNABLE_PLACEMENT, 
				OS_INTERRUPT_BLOCKING, 
				OS_RESOURCE, 
				OS_SPINLOCK
			}
			
			def RteExclusiveAreaImplMechanism getRteExclusiveAreaImplMechanismValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "ALL_INTERRUPT_BLOCKING" : RteExclusiveAreaImplMechanism.ALL_INTERRUPT_BLOCKING
					case "COOPERATIVE_RUNNABLE_PLACEMENT" : RteExclusiveAreaImplMechanism.COOPERATIVE_RUNNABLE_PLACEMENT
					case "OS_INTERRUPT_BLOCKING" : RteExclusiveAreaImplMechanism.OS_INTERRUPT_BLOCKING
					case "OS_RESOURCE" : RteExclusiveAreaImplMechanism.OS_RESOURCE
					case "OS_SPINLOCK" : RteExclusiveAreaImplMechanism.OS_SPINLOCK
				}
			}
			
			def void setRteExclusiveAreaImplMechanismValue(GParameterValue parameterValue, RteExclusiveAreaImplMechanism value){
				parameterValue.setValue(value)
			}
			
			
			
			def org.artop.ecuc.autosar421.accessors.Os.OsResource getRteBswExclusiveAreaOsResourceRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsResource), "RteBswExclusiveAreaOsResourceRef")
			}
			
			def void setRteBswExclusiveAreaOsResourceRef(org.artop.ecuc.autosar421.accessors.Os.OsResource object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "RteBswExclusiveAreaOsResourceRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Os.OsSpinlock getRteBswExclusiveAreaOsSpinlockRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsSpinlock), "RteBswExclusiveAreaOsSpinlockRef")
			}
			
			def void setRteBswExclusiveAreaOsSpinlockRef(org.artop.ecuc.autosar421.accessors.Os.OsSpinlock object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "RteBswExclusiveAreaOsSpinlockRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class RteBswExternalTriggerConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof RteBswExternalTriggerConfig)){
					return false
				}
				this.target == (object as RteBswExternalTriggerConfig).target
			}
		
			def BigInteger getRteBswTriggerSourceQueueLength(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteBswTriggerSourceQueueLength"].getBigIntegerValue()
			}
			
			def void setRteBswTriggerSourceQueueLength(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteBswTriggerSourceQueueLength"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RteBswTriggerSourceQueueLength"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
			
		}
		
		static class RteBswInternalTriggerConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof RteBswInternalTriggerConfig)){
					return false
				}
				this.target == (object as RteBswInternalTriggerConfig).target
			}
		
			def BigInteger getRteBswTriggerSourceQueueLength(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteBswTriggerSourceQueueLength"].getBigIntegerValue()
			}
			
			def void setRteBswTriggerSourceQueueLength(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteBswTriggerSourceQueueLength"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RteBswTriggerSourceQueueLength"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
			
		}
		
		static class RteBswRequiredClientServerConnection implements IWrapper<GContainer> {
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
		        if (!(object instanceof RteBswRequiredClientServerConnection)){
					return false
				}
				this.target == (object as RteBswRequiredClientServerConnection).target
			}
		
			
			
			
			def org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance getRteBswProvidedClientServerEntryModInstRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance), "RteBswProvidedClientServerEntryModInstRef")
			}
			
			def void setRteBswProvidedClientServerEntryModInstRef(org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "RteBswProvidedClientServerEntryModInstRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class RteBswRequiredModeGroupConnection implements IWrapper<GContainer> {
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
		        if (!(object instanceof RteBswRequiredModeGroupConnection)){
					return false
				}
				this.target == (object as RteBswRequiredModeGroupConnection).target
			}
		
			
			
			
			
			def org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance getRteBswProvidedModeGrpModInstRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance), "RteBswProvidedModeGrpModInstRef")
			}
			
			def void setRteBswProvidedModeGrpModInstRef(org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "RteBswProvidedModeGrpModInstRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class RteBswRequiredSenderReceiverConnection implements IWrapper<GContainer> {
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
		        if (!(object instanceof RteBswRequiredSenderReceiverConnection)){
					return false
				}
				this.target == (object as RteBswRequiredSenderReceiverConnection).target
			}
		
			
			
			
			def org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance getRteBswProvidedDataModInstRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance), "RteBswProvidedDataModInstRef")
			}
			
			def void setRteBswProvidedDataModInstRef(org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "RteBswProvidedDataModInstRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class RteBswRequiredTriggerConnection implements IWrapper<GContainer> {
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
		        if (!(object instanceof RteBswRequiredTriggerConnection)){
					return false
				}
				this.target == (object as RteBswRequiredTriggerConnection).target
			}
		
			
			
			
			def org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance getRteBswReleasedTriggerModInstRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance), "RteBswReleasedTriggerModInstRef")
			}
			
			def void setRteBswReleasedTriggerModInstRef(org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "RteBswReleasedTriggerModInstRef"], object.getTarget())
				}
			}
			
			
			
		}
		
	}
	static class RteGeneration implements IWrapper<GContainer> {
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
	        if (!(object instanceof RteGeneration)){
				return false
			}
			this.target == (object as RteGeneration).target
		}
	
		def RteBypassSupport getRteBypassSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteBypassSupport"].getRteBypassSupportValue()
		}
		
		def void setRteBypassSupport(RteBypassSupport value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteBypassSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RteBypassSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum RteBypassSupport {
			COMPONENT_WRAPPER, 
			NONE
		}
		
		def RteBypassSupport getRteBypassSupportValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "COMPONENT_WRAPPER" : RteBypassSupport.COMPONENT_WRAPPER
				case "NONE" : RteBypassSupport.NONE
			}
		}
		
		def void setRteBypassSupportValue(GParameterValue parameterValue, RteBypassSupport value){
			parameterValue.setValue(value)
		}
		
		def RteCalibrationSupport getRteCalibrationSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteCalibrationSupport"].getRteCalibrationSupportValue()
		}
		
		def void setRteCalibrationSupport(RteCalibrationSupport value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteCalibrationSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RteCalibrationSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum RteCalibrationSupport {
			DOUBLE_POINTERED, 
			INITIALIZED_RAM, 
			NONE, 
			SINGLE_POINTERED
		}
		
		def RteCalibrationSupport getRteCalibrationSupportValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "DOUBLE_POINTERED" : RteCalibrationSupport.DOUBLE_POINTERED
				case "INITIALIZED_RAM" : RteCalibrationSupport.INITIALIZED_RAM
				case "NONE" : RteCalibrationSupport.NONE
				case "SINGLE_POINTERED" : RteCalibrationSupport.SINGLE_POINTERED
			}
		}
		
		def void setRteCalibrationSupportValue(GParameterValue parameterValue, RteCalibrationSupport value){
			parameterValue.setValue(value)
		}
		
		def BigInteger getRteCodeVendorId(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteCodeVendorId"].getBigIntegerValue()
		}
		
		def void setRteCodeVendorId(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteCodeVendorId"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RteCodeVendorId"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getRteDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteDevErrorDetect"].getBooleanValue()
		}
		
		def void setRteDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RteDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getRteDevErrorDetectUninit(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteDevErrorDetectUninit"].getBooleanValue()
		}
		
		def void setRteDevErrorDetectUninit(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteDevErrorDetectUninit"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RteDevErrorDetectUninit"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def RteGenerationMode getRteGenerationMode(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteGenerationMode"].getRteGenerationModeValue()
		}
		
		def void setRteGenerationMode(RteGenerationMode value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteGenerationMode"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RteGenerationMode"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum RteGenerationMode {
			COMPATIBILITY_MODE, 
			VENDOR_MODE
		}
		
		def RteGenerationMode getRteGenerationModeValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "COMPATIBILITY_MODE" : RteGenerationMode.COMPATIBILITY_MODE
				case "VENDOR_MODE" : RteGenerationMode.VENDOR_MODE
			}
		}
		
		def void setRteGenerationModeValue(GParameterValue parameterValue, RteGenerationMode value){
			parameterValue.setValue(value)
		}
		
		def Boolean getRteInExclusiveAreaCheckEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteInExclusiveAreaCheckEnabled"].getBooleanValue()
		}
		
		def void setRteInExclusiveAreaCheckEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteInExclusiveAreaCheckEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RteInExclusiveAreaCheckEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def RteIocInteractionReturnValue getRteIocInteractionReturnValue(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteIocInteractionReturnValue"].getRteIocInteractionReturnValueValue()
		}
		
		def void setRteIocInteractionReturnValue(RteIocInteractionReturnValue value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteIocInteractionReturnValue"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RteIocInteractionReturnValue"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum RteIocInteractionReturnValue {
			RTE_COM, 
			RTE_IOC
		}
		
		def RteIocInteractionReturnValue getRteIocInteractionReturnValueValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "RTE_COM" : RteIocInteractionReturnValue.RTE_COM
				case "RTE_IOC" : RteIocInteractionReturnValue.RTE_IOC
			}
		}
		
		def void setRteIocInteractionReturnValueValue(GParameterValue parameterValue, RteIocInteractionReturnValue value){
			parameterValue.setValue(value)
		}
		
		def Boolean getRteMeasurementSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteMeasurementSupport"].getBooleanValue()
		}
		
		def void setRteMeasurementSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteMeasurementSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RteMeasurementSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def RteOptimizationMode getRteOptimizationMode(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteOptimizationMode"].getRteOptimizationModeValue()
		}
		
		def void setRteOptimizationMode(RteOptimizationMode value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteOptimizationMode"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RteOptimizationMode"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum RteOptimizationMode {
			MEMORY, 
			RUNTIME
		}
		
		def RteOptimizationMode getRteOptimizationModeValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "MEMORY" : RteOptimizationMode.MEMORY
				case "RUNTIME" : RteOptimizationMode.RUNTIME
			}
		}
		
		def void setRteOptimizationModeValue(GParameterValue parameterValue, RteOptimizationMode value){
			parameterValue.setValue(value)
		}
		
		def BigInteger getRteToolChainSignificantCharacters(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteToolChainSignificantCharacters"].getBigIntegerValue()
		}
		
		def void setRteToolChainSignificantCharacters(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteToolChainSignificantCharacters"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RteToolChainSignificantCharacters"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getRteValueRangeCheckEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteValueRangeCheckEnabled"].getBooleanValue()
		}
		
		def void setRteValueRangeCheckEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteValueRangeCheckEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RteValueRangeCheckEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def List<String> getRteVfbTraceClientPrefixs(){
			val List<EcucTextualParamValue> filteredParameterValues = new AbstractFilteringEList<EcucTextualParamValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {
				override protected accept(EcucTextualParamValue item) {
					return accept(item, typeof(GConfigParameter), "RteVfbTraceClientPrefix")
				}
			}
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == "RteVfbTraceClientPrefix"]
				return new StringValueUnwrappingEList(filteredParameterValues, typeof(EcucTextualParamValue), typeof(String), parameterDef)
			}
		}
		
		def Boolean getRteVfbTraceEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteVfbTraceEnabled"].getBooleanValue()
		}
		
		def void setRteVfbTraceEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteVfbTraceEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RteVfbTraceEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def List<String> getRteVfbTraceFunctions(){
			val List<EcucTextualParamValue> filteredParameterValues = new AbstractFilteringEList<EcucTextualParamValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {
				override protected accept(EcucTextualParamValue item) {
					return accept(item, typeof(GConfigParameter), "RteVfbTraceFunction")
				}
			}
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == "RteVfbTraceFunction"]
				return new StringValueUnwrappingEList(filteredParameterValues, typeof(EcucTextualParamValue), typeof(String), parameterDef)
			}
		}
		
		
		
		
	}
	static class RteImplicitCommunication implements IWrapper<GContainer> {
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
	        if (!(object instanceof RteImplicitCommunication)){
				return false
			}
			this.target == (object as RteImplicitCommunication).target
		}
	
		def Boolean getRteCoherentAccess(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteCoherentAccess"].getBooleanValue()
		}
		
		def void setRteCoherentAccess(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteCoherentAccess"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RteCoherentAccess"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getRteImmediateBufferUpdate(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteImmediateBufferUpdate"].getBooleanValue()
		}
		
		def void setRteImmediateBufferUpdate(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteImmediateBufferUpdate"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RteImmediateBufferUpdate"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
		
		
		
	}
	static class RteInitializationBehavior implements IWrapper<GContainer> {
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
	        if (!(object instanceof RteInitializationBehavior)){
				return false
			}
			this.target == (object as RteInitializationBehavior).target
		}
	
		def RteInitializationStrategy getRteInitializationStrategy(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteInitializationStrategy"].getRteInitializationStrategyValue()
		}
		
		def void setRteInitializationStrategy(RteInitializationStrategy value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteInitializationStrategy"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RteInitializationStrategy"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum RteInitializationStrategy {
			RTE_INITIALIZATION_STRATEGY_AT_DATA_DECLARATION, 
			RTE_INITIALIZATION_STRATEGY_AT_DATA_DECLARATION_AND_PARTITION_RESTART, 
			RTE_INITIALIZATION_STRATEGY_AT_RTE_START_AND_PARTITION_RESTART, 
			RTE_INITIALIZATION_STRATEGY_NONE
		}
		
		def RteInitializationStrategy getRteInitializationStrategyValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "RTE_INITIALIZATION_STRATEGY_AT_DATA_DECLARATION" : RteInitializationStrategy.RTE_INITIALIZATION_STRATEGY_AT_DATA_DECLARATION
				case "RTE_INITIALIZATION_STRATEGY_AT_DATA_DECLARATION_AND_PARTITION_RESTART" : RteInitializationStrategy.RTE_INITIALIZATION_STRATEGY_AT_DATA_DECLARATION_AND_PARTITION_RESTART
				case "RTE_INITIALIZATION_STRATEGY_AT_RTE_START_AND_PARTITION_RESTART" : RteInitializationStrategy.RTE_INITIALIZATION_STRATEGY_AT_RTE_START_AND_PARTITION_RESTART
				case "RTE_INITIALIZATION_STRATEGY_NONE" : RteInitializationStrategy.RTE_INITIALIZATION_STRATEGY_NONE
			}
		}
		
		def void setRteInitializationStrategyValue(GParameterValue parameterValue, RteInitializationStrategy value){
			parameterValue.setValue(value)
		}
		
		def List<String> getRteSectionInitializationPolicies(){
			val List<EcucTextualParamValue> filteredParameterValues = new AbstractFilteringEList<EcucTextualParamValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {
				override protected accept(EcucTextualParamValue item) {
					return accept(item, typeof(GConfigParameter), "RteSectionInitializationPolicy")
				}
			}
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == "RteSectionInitializationPolicy"]
				return new StringValueUnwrappingEList(filteredParameterValues, typeof(EcucTextualParamValue), typeof(String), parameterDef)
			}
		}
		
		
		
		
	}
	static class RteInitializationRunnableBatch implements IWrapper<GContainer> {
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
	        if (!(object instanceof RteInitializationRunnableBatch)){
				return false
			}
			this.target == (object as RteInitializationRunnableBatch).target
		}
	
		
		
		
	}
	static class RteOsInteraction implements IWrapper<GContainer> {
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
	        if (!(object instanceof RteOsInteraction)){
				return false
			}
			this.target == (object as RteOsInteraction).target
		}
	
		
		
		def List<RteModeToScheduleTableMapping> getRteModeToScheduleTableMappings(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "RteModeToScheduleTableMapping")
				}
			}
			return new BasicWrappingEList<RteModeToScheduleTableMapping, GContainer>(filteredContainers, typeof(RteModeToScheduleTableMapping), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Rte.RteOsInteraction.RteModeToScheduleTableMapping rteModeToScheduleTableMapping) {
					rteModeToScheduleTableMapping.target?.gSetDefinition(containerValue.getContainerDefinition("RteModeToScheduleTableMapping"))
					super.delegateAdd(rteModeToScheduleTableMapping)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Rte.RteOsInteraction.RteModeToScheduleTableMapping rteModeToScheduleTableMapping) {
					rteModeToScheduleTableMapping.target?.gSetDefinition(containerValue.getContainerDefinition("RteModeToScheduleTableMapping"))
					super.delegateAdd(index, rteModeToScheduleTableMapping)
				}
			}
		}
		
		def List<RteSyncPoint> getRteSyncPoints(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "RteSyncPoint")
				}
			}
			return new BasicWrappingEList<RteSyncPoint, GContainer>(filteredContainers, typeof(RteSyncPoint), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Rte.RteOsInteraction.RteSyncPoint rteSyncPoint) {
					rteSyncPoint.target?.gSetDefinition(containerValue.getContainerDefinition("RteSyncPoint"))
					super.delegateAdd(rteSyncPoint)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Rte.RteOsInteraction.RteSyncPoint rteSyncPoint) {
					rteSyncPoint.target?.gSetDefinition(containerValue.getContainerDefinition("RteSyncPoint"))
					super.delegateAdd(index, rteSyncPoint)
				}
			}
		}
		
		def List<RteUsedOsActivation> getRteUsedOsActivations(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "RteUsedOsActivation")
				}
			}
			return new BasicWrappingEList<RteUsedOsActivation, GContainer>(filteredContainers, typeof(RteUsedOsActivation), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Rte.RteOsInteraction.RteUsedOsActivation rteUsedOsActivation) {
					rteUsedOsActivation.target?.gSetDefinition(containerValue.getContainerDefinition("RteUsedOsActivation"))
					super.delegateAdd(rteUsedOsActivation)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Rte.RteOsInteraction.RteUsedOsActivation rteUsedOsActivation) {
					rteUsedOsActivation.target?.gSetDefinition(containerValue.getContainerDefinition("RteUsedOsActivation"))
					super.delegateAdd(index, rteUsedOsActivation)
				}
			}
		}
		
		
		static class RteModeToScheduleTableMapping implements IWrapper<GContainer> {
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
		        if (!(object instanceof RteModeToScheduleTableMapping)){
					return false
				}
				this.target == (object as RteModeToScheduleTableMapping).target
			}
		
			
			
			def org.artop.ecuc.autosar421.accessors.Os.OsScheduleTable getRteModeScheduleTableRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsScheduleTable), "RteModeScheduleTableRef")
			}
			
			def void setRteModeScheduleTableRef(org.artop.ecuc.autosar421.accessors.Os.OsScheduleTable object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "RteModeScheduleTableRef"], object.getTarget())
				}
			}
			
			
			def RteModeSchtblMapBsw getRteModeSchtblMapBsw(){
				containerValue.getByType(typeof(RteModeSchtblMapBsw))
			}
			
			def void setRteModeSchtblMapBsw(RteModeSchtblMapBsw rteModeSchtblMapBsw){
				val GContainer subContainer = rteModeSchtblMapBsw.getTarget()
				containerValue.setContainer(subContainer, "RteModeSchtblMapBsw")
			}
			
			def RteModeSchtblMapSwc getRteModeSchtblMapSwc(){
				containerValue.getByType(typeof(RteModeSchtblMapSwc))
			}
			
			def void setRteModeSchtblMapSwc(RteModeSchtblMapSwc rteModeSchtblMapSwc){
				val GContainer subContainer = rteModeSchtblMapSwc.getTarget()
				containerValue.setContainer(subContainer, "RteModeSchtblMapSwc")
			}
			
			
			static class RteModeSchtblMapBsw implements IWrapper<GContainer> {
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
			        if (!(object instanceof RteModeSchtblMapBsw)){
						return false
					}
					this.target == (object as RteModeSchtblMapBsw).target
				}
			
				
				
				def org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance getRteModeSchtblMapBswInstanceRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance), "RteModeSchtblMapBswInstanceRef")
				}
				
				def void setRteModeSchtblMapBswInstanceRef(org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "RteModeSchtblMapBswInstanceRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class RteModeSchtblMapSwc implements IWrapper<GContainer> {
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
			        if (!(object instanceof RteModeSchtblMapSwc)){
						return false
					}
					this.target == (object as RteModeSchtblMapSwc).target
				}
			
				
				
				def org.artop.ecuc.autosar421.accessors.Rte.RteSwComponentInstance getRteModeSchtblMapSwcInstanceRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Rte.RteSwComponentInstance), "RteModeSchtblMapSwcInstanceRef")
				}
				
				def void setRteModeSchtblMapSwcInstanceRef(org.artop.ecuc.autosar421.accessors.Rte.RteSwComponentInstance object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "RteModeSchtblMapSwcInstanceRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class RteSyncPoint implements IWrapper<GContainer> {
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
		        if (!(object instanceof RteSyncPoint)){
					return false
				}
				this.target == (object as RteSyncPoint).target
			}
		
			
			
			
		}
		
		static class RteUsedOsActivation implements IWrapper<GContainer> {
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
		        if (!(object instanceof RteUsedOsActivation)){
					return false
				}
				this.target == (object as RteUsedOsActivation).target
			}
		
			def BigDecimal getRteExpectedActivationOffset(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteExpectedActivationOffset"].getBigDecimalValue()
			}
			
			def void setRteExpectedActivationOffset(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteExpectedActivationOffset"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RteExpectedActivationOffset"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getRteExpectedTickDuration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteExpectedTickDuration"].getBigDecimalValue()
			}
			
			def void setRteExpectedTickDuration(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteExpectedTickDuration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RteExpectedTickDuration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.Os.OsAlarm getRteActivationOsAlarmRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsAlarm), "RteActivationOsAlarmRef")
			}
			
			def void setRteActivationOsAlarmRef(org.artop.ecuc.autosar421.accessors.Os.OsAlarm object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "RteActivationOsAlarmRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Os.OsScheduleTable getRteActivationOsSchTblRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsScheduleTable), "RteActivationOsSchTblRef")
			}
			
			def void setRteActivationOsSchTblRef(org.artop.ecuc.autosar421.accessors.Os.OsScheduleTable object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "RteActivationOsSchTblRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Os.OsTask getRteActivationOsTaskRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsTask), "RteActivationOsTaskRef")
			}
			
			def void setRteActivationOsTaskRef(org.artop.ecuc.autosar421.accessors.Os.OsTask object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "RteActivationOsTaskRef"], object.getTarget())
				}
			}
			
			
			
		}
		
	}
	static class RtePostBuildVariantConfiguration implements IWrapper<GContainer> {
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
	        if (!(object instanceof RtePostBuildVariantConfiguration)){
				return false
			}
			this.target == (object as RtePostBuildVariantConfiguration).target
		}
	
		
		
		
		
	}
	static class RteSwComponentInstance implements IWrapper<GContainer> {
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
	        if (!(object instanceof RteSwComponentInstance)){
				return false
			}
			this.target == (object as RteSwComponentInstance).target
		}
	
		
		
		
		def List<RteEventToTaskMapping> getRteEventToTaskMappings(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "RteEventToTaskMapping")
				}
			}
			return new BasicWrappingEList<RteEventToTaskMapping, GContainer>(filteredContainers, typeof(RteEventToTaskMapping), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Rte.RteSwComponentInstance.RteEventToTaskMapping rteEventToTaskMapping) {
					rteEventToTaskMapping.target?.gSetDefinition(containerValue.getContainerDefinition("RteEventToTaskMapping"))
					super.delegateAdd(rteEventToTaskMapping)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Rte.RteSwComponentInstance.RteEventToTaskMapping rteEventToTaskMapping) {
					rteEventToTaskMapping.target?.gSetDefinition(containerValue.getContainerDefinition("RteEventToTaskMapping"))
					super.delegateAdd(index, rteEventToTaskMapping)
				}
			}
		}
		
		def List<RteExclusiveAreaImplementation> getRteExclusiveAreaImplementations(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "RteExclusiveAreaImplementation")
				}
			}
			return new BasicWrappingEList<RteExclusiveAreaImplementation, GContainer>(filteredContainers, typeof(RteExclusiveAreaImplementation), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Rte.RteSwComponentInstance.RteExclusiveAreaImplementation rteExclusiveAreaImplementation) {
					rteExclusiveAreaImplementation.target?.gSetDefinition(containerValue.getContainerDefinition("RteExclusiveAreaImplementation"))
					super.delegateAdd(rteExclusiveAreaImplementation)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Rte.RteSwComponentInstance.RteExclusiveAreaImplementation rteExclusiveAreaImplementation) {
					rteExclusiveAreaImplementation.target?.gSetDefinition(containerValue.getContainerDefinition("RteExclusiveAreaImplementation"))
					super.delegateAdd(index, rteExclusiveAreaImplementation)
				}
			}
		}
		
		def List<RteExternalTriggerConfig> getRteExternalTriggerConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "RteExternalTriggerConfig")
				}
			}
			return new BasicWrappingEList<RteExternalTriggerConfig, GContainer>(filteredContainers, typeof(RteExternalTriggerConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Rte.RteSwComponentInstance.RteExternalTriggerConfig rteExternalTriggerConfig) {
					rteExternalTriggerConfig.target?.gSetDefinition(containerValue.getContainerDefinition("RteExternalTriggerConfig"))
					super.delegateAdd(rteExternalTriggerConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Rte.RteSwComponentInstance.RteExternalTriggerConfig rteExternalTriggerConfig) {
					rteExternalTriggerConfig.target?.gSetDefinition(containerValue.getContainerDefinition("RteExternalTriggerConfig"))
					super.delegateAdd(index, rteExternalTriggerConfig)
				}
			}
		}
		
		def List<RteInternalTriggerConfig> getRteInternalTriggerConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "RteInternalTriggerConfig")
				}
			}
			return new BasicWrappingEList<RteInternalTriggerConfig, GContainer>(filteredContainers, typeof(RteInternalTriggerConfig), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Rte.RteSwComponentInstance.RteInternalTriggerConfig rteInternalTriggerConfig) {
					rteInternalTriggerConfig.target?.gSetDefinition(containerValue.getContainerDefinition("RteInternalTriggerConfig"))
					super.delegateAdd(rteInternalTriggerConfig)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Rte.RteSwComponentInstance.RteInternalTriggerConfig rteInternalTriggerConfig) {
					rteInternalTriggerConfig.target?.gSetDefinition(containerValue.getContainerDefinition("RteInternalTriggerConfig"))
					super.delegateAdd(index, rteInternalTriggerConfig)
				}
			}
		}
		
		def List<RteNvRamAllocation> getRteNvRamAllocations(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "RteNvRamAllocation")
				}
			}
			return new BasicWrappingEList<RteNvRamAllocation, GContainer>(filteredContainers, typeof(RteNvRamAllocation), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Rte.RteSwComponentInstance.RteNvRamAllocation rteNvRamAllocation) {
					rteNvRamAllocation.target?.gSetDefinition(containerValue.getContainerDefinition("RteNvRamAllocation"))
					super.delegateAdd(rteNvRamAllocation)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Rte.RteSwComponentInstance.RteNvRamAllocation rteNvRamAllocation) {
					rteNvRamAllocation.target?.gSetDefinition(containerValue.getContainerDefinition("RteNvRamAllocation"))
					super.delegateAdd(index, rteNvRamAllocation)
				}
			}
		}
		
		
		static class RteEventToTaskMapping implements IWrapper<GContainer> {
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
		        if (!(object instanceof RteEventToTaskMapping)){
					return false
				}
				this.target == (object as RteEventToTaskMapping).target
			}
		
			def BigDecimal getRteActivationOffset(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteActivationOffset"].getBigDecimalValue()
			}
			
			def void setRteActivationOffset(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteActivationOffset"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RteActivationOffset"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getRteImmediateRestart(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteImmediateRestart"].getBooleanValue()
			}
			
			def void setRteImmediateRestart(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteImmediateRestart"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RteImmediateRestart"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def RteOsSchedulePoint getRteOsSchedulePoint(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteOsSchedulePoint"].getRteOsSchedulePointValue()
			}
			
			def void setRteOsSchedulePoint(RteOsSchedulePoint value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteOsSchedulePoint"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RteOsSchedulePoint"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum RteOsSchedulePoint {
				CONDITIONAL, 
				NONE, 
				UNCONDITIONAL
			}
			
			def RteOsSchedulePoint getRteOsSchedulePointValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "CONDITIONAL" : RteOsSchedulePoint.CONDITIONAL
					case "NONE" : RteOsSchedulePoint.NONE
					case "UNCONDITIONAL" : RteOsSchedulePoint.UNCONDITIONAL
				}
			}
			
			def void setRteOsSchedulePointValue(GParameterValue parameterValue, RteOsSchedulePoint value){
				parameterValue.setValue(value)
			}
			
			def BigInteger getRtePositionInTask(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RtePositionInTask"].getBigIntegerValue()
			}
			
			def void setRtePositionInTask(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RtePositionInTask"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RtePositionInTask"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			def org.artop.ecuc.autosar421.accessors.Rte.RteOsInteraction.RteSyncPoint getRteEventPredecessorSyncPointRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Rte.RteOsInteraction.RteSyncPoint), "RteEventPredecessorSyncPointRef")
			}
			
			def void setRteEventPredecessorSyncPointRef(org.artop.ecuc.autosar421.accessors.Rte.RteOsInteraction.RteSyncPoint object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "RteEventPredecessorSyncPointRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Rte.RteOsInteraction.RteSyncPoint getRteEventSuccessorSyncPointRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Rte.RteOsInteraction.RteSyncPoint), "RteEventSuccessorSyncPointRef")
			}
			
			def void setRteEventSuccessorSyncPointRef(org.artop.ecuc.autosar421.accessors.Rte.RteOsInteraction.RteSyncPoint object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "RteEventSuccessorSyncPointRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Os.OsTask getRteMappedToTaskRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsTask), "RteMappedToTaskRef")
			}
			
			def void setRteMappedToTaskRef(org.artop.ecuc.autosar421.accessors.Os.OsTask object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "RteMappedToTaskRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Rte.RteInitializationRunnableBatch getRteUsedInitFnc(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Rte.RteInitializationRunnableBatch), "RteUsedInitFnc")
			}
			
			def void setRteUsedInitFnc(org.artop.ecuc.autosar421.accessors.Rte.RteInitializationRunnableBatch object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "RteUsedInitFnc"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Os.OsAlarm getRteUsedOsAlarmRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsAlarm), "RteUsedOsAlarmRef")
			}
			
			def void setRteUsedOsAlarmRef(org.artop.ecuc.autosar421.accessors.Os.OsAlarm object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "RteUsedOsAlarmRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Os.OsEvent getRteUsedOsEventRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsEvent), "RteUsedOsEventRef")
			}
			
			def void setRteUsedOsEventRef(org.artop.ecuc.autosar421.accessors.Os.OsEvent object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "RteUsedOsEventRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Os.OsScheduleTable.OsScheduleTableExpiryPoint getRteUsedOsSchTblExpiryPointRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsScheduleTable.OsScheduleTableExpiryPoint), "RteUsedOsSchTblExpiryPointRef")
			}
			
			def void setRteUsedOsSchTblExpiryPointRef(org.artop.ecuc.autosar421.accessors.Os.OsScheduleTable.OsScheduleTableExpiryPoint object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "RteUsedOsSchTblExpiryPointRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Os.OsTask getRteVirtuallyMappedToTaskRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsTask), "RteVirtuallyMappedToTaskRef")
			}
			
			def void setRteVirtuallyMappedToTaskRef(org.artop.ecuc.autosar421.accessors.Os.OsTask object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "RteVirtuallyMappedToTaskRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class RteExclusiveAreaImplementation implements IWrapper<GContainer> {
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
		        if (!(object instanceof RteExclusiveAreaImplementation)){
					return false
				}
				this.target == (object as RteExclusiveAreaImplementation).target
			}
		
			def RteExclusiveAreaImplMechanism getRteExclusiveAreaImplMechanism(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteExclusiveAreaImplMechanism"].getRteExclusiveAreaImplMechanismValue()
			}
			
			def void setRteExclusiveAreaImplMechanism(RteExclusiveAreaImplMechanism value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteExclusiveAreaImplMechanism"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RteExclusiveAreaImplMechanism"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum RteExclusiveAreaImplMechanism {
				ALL_INTERRUPT_BLOCKING, 
				COOPERATIVE_RUNNABLE_PLACEMENT, 
				OS_INTERRUPT_BLOCKING, 
				OS_RESOURCE, 
				OS_SPINLOCK
			}
			
			def RteExclusiveAreaImplMechanism getRteExclusiveAreaImplMechanismValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "ALL_INTERRUPT_BLOCKING" : RteExclusiveAreaImplMechanism.ALL_INTERRUPT_BLOCKING
					case "COOPERATIVE_RUNNABLE_PLACEMENT" : RteExclusiveAreaImplMechanism.COOPERATIVE_RUNNABLE_PLACEMENT
					case "OS_INTERRUPT_BLOCKING" : RteExclusiveAreaImplMechanism.OS_INTERRUPT_BLOCKING
					case "OS_RESOURCE" : RteExclusiveAreaImplMechanism.OS_RESOURCE
					case "OS_SPINLOCK" : RteExclusiveAreaImplMechanism.OS_SPINLOCK
				}
			}
			
			def void setRteExclusiveAreaImplMechanismValue(GParameterValue parameterValue, RteExclusiveAreaImplMechanism value){
				parameterValue.setValue(value)
			}
			
			
			
			def org.artop.ecuc.autosar421.accessors.Os.OsResource getRteExclusiveAreaOsResourceRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsResource), "RteExclusiveAreaOsResourceRef")
			}
			
			def void setRteExclusiveAreaOsResourceRef(org.artop.ecuc.autosar421.accessors.Os.OsResource object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "RteExclusiveAreaOsResourceRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class RteExternalTriggerConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof RteExternalTriggerConfig)){
					return false
				}
				this.target == (object as RteExternalTriggerConfig).target
			}
		
			def BigInteger getRteTriggerSourceQueueLength(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteTriggerSourceQueueLength"].getBigIntegerValue()
			}
			
			def void setRteTriggerSourceQueueLength(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteTriggerSourceQueueLength"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RteTriggerSourceQueueLength"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
			
		}
		
		static class RteInternalTriggerConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof RteInternalTriggerConfig)){
					return false
				}
				this.target == (object as RteInternalTriggerConfig).target
			}
		
			def BigInteger getRteTriggerSourceQueueLength(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteTriggerSourceQueueLength"].getBigIntegerValue()
			}
			
			def void setRteTriggerSourceQueueLength(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteTriggerSourceQueueLength"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RteTriggerSourceQueueLength"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
			
		}
		
		static class RteNvRamAllocation implements IWrapper<GContainer> {
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
		        if (!(object instanceof RteNvRamAllocation)){
					return false
				}
				this.target == (object as RteNvRamAllocation).target
			}
		
			def String getRteNvmRamBlockLocationSymbol(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteNvmRamBlockLocationSymbol"].getStringValue()
			}
			
			def void setRteNvmRamBlockLocationSymbol(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteNvmRamBlockLocationSymbol"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RteNvmRamBlockLocationSymbol"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getRteNvmRomBlockLocationSymbol(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteNvmRomBlockLocationSymbol"].getStringValue()
			}
			
			def void setRteNvmRomBlockLocationSymbol(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteNvmRomBlockLocationSymbol"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RteNvmRomBlockLocationSymbol"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
			def org.artop.ecuc.autosar421.accessors.NvM.NvMBlockDescriptor getRteNvmBlockRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.NvM.NvMBlockDescriptor), "RteNvmBlockRef")
			}
			
			def void setRteNvmBlockRef(org.artop.ecuc.autosar421.accessors.NvM.NvMBlockDescriptor object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "RteNvmBlockRef"], object.getTarget())
				}
			}
			
			
			
		}
		
	}
	static class RteSwComponentType implements IWrapper<GContainer> {
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
	        if (!(object instanceof RteSwComponentType)){
				return false
			}
			this.target == (object as RteSwComponentType).target
		}
	
		def Boolean getRteBypassSupportEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteBypassSupportEnabled"].getBooleanValue()
		}
		
		def void setRteBypassSupportEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteBypassSupportEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RteBypassSupportEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
		
		def RteComponentTypeCalibration getRteComponentTypeCalibration(){
			containerValue.getByType(typeof(RteComponentTypeCalibration))
		}
		
		def void setRteComponentTypeCalibration(RteComponentTypeCalibration rteComponentTypeCalibration){
			val GContainer subContainer = rteComponentTypeCalibration.getTarget()
			containerValue.setContainer(subContainer, "RteComponentTypeCalibration")
		}
		
		
		static class RteComponentTypeCalibration implements IWrapper<GContainer> {
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
		        if (!(object instanceof RteComponentTypeCalibration)){
					return false
				}
				this.target == (object as RteComponentTypeCalibration).target
			}
		
			def Boolean getRteCalibrationSupportEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteCalibrationSupportEnabled"].getBooleanValue()
			}
			
			def void setRteCalibrationSupportEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteCalibrationSupportEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RteCalibrationSupportEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			
			
			
		}
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof Rte)){
			return false
		}
		this.target == (object as Rte).target
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
