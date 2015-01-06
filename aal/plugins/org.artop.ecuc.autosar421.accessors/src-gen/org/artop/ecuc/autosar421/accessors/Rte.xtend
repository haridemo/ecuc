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
		return new BasicWrappingEList<RteBswModuleInstance, GContainer>(filteredContainers, typeof(RteBswModuleInstance), typeof(GContainer))
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
		return new BasicWrappingEList<RteImplicitCommunication, GContainer>(filteredContainers, typeof(RteImplicitCommunication), typeof(GContainer))
	}
	def List<RteInitializationBehavior> getRteInitializationBehaviors(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "RteInitializationBehavior")
			}
		}
		return new BasicWrappingEList<RteInitializationBehavior, GContainer>(filteredContainers, typeof(RteInitializationBehavior), typeof(GContainer))
	}
	def List<RteInitializationRunnableBatch> getRteInitializationRunnableBatchs(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "RteInitializationRunnableBatch")
			}
		}
		return new BasicWrappingEList<RteInitializationRunnableBatch, GContainer>(filteredContainers, typeof(RteInitializationRunnableBatch), typeof(GContainer))
	}
	def List<RteOsInteraction> getRteOsInteractions(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "RteOsInteraction")
			}
		}
		return new BasicWrappingEList<RteOsInteraction, GContainer>(filteredContainers, typeof(RteOsInteraction), typeof(GContainer))
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
		return new BasicWrappingEList<RteSwComponentInstance, GContainer>(filteredContainers, typeof(RteSwComponentInstance), typeof(GContainer))
	}
	def List<RteSwComponentType> getRteSwComponentTypes(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "RteSwComponentType")
			}
		}
		return new BasicWrappingEList<RteSwComponentType, GContainer>(filteredContainers, typeof(RteSwComponentType), typeof(GContainer))
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
		
		def Boolean getRteSchMVersionInfoApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteSchMVersionInfoApi"])
		}
		
		def void setRteSchMVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteSchMVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RteSchMVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getRteUseComShadowSignalApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteUseComShadowSignalApi"])
		}
		
		def void setRteUseComShadowSignalApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteUseComShadowSignalApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RteUseComShadowSignalApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		
		
		
		
		
		def List<RteBswEventToTaskMapping> getRteBswEventToTaskMappings(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "RteBswEventToTaskMapping")
				}
			}
			return new BasicWrappingEList<RteBswEventToTaskMapping, GContainer>(filteredContainers, typeof(RteBswEventToTaskMapping), typeof(GContainer))
		}
		
		def List<RteBswExclusiveAreaImpl> getRteBswExclusiveAreaImpls(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "RteBswExclusiveAreaImpl")
				}
			}
			return new BasicWrappingEList<RteBswExclusiveAreaImpl, GContainer>(filteredContainers, typeof(RteBswExclusiveAreaImpl), typeof(GContainer))
		}
		
		def List<RteBswExternalTriggerConfig> getRteBswExternalTriggerConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "RteBswExternalTriggerConfig")
				}
			}
			return new BasicWrappingEList<RteBswExternalTriggerConfig, GContainer>(filteredContainers, typeof(RteBswExternalTriggerConfig), typeof(GContainer))
		}
		
		def List<RteBswInternalTriggerConfig> getRteBswInternalTriggerConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "RteBswInternalTriggerConfig")
				}
			}
			return new BasicWrappingEList<RteBswInternalTriggerConfig, GContainer>(filteredContainers, typeof(RteBswInternalTriggerConfig), typeof(GContainer))
		}
		
		def List<RteBswRequiredClientServerConnection> getRteBswRequiredClientServerConnections(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "RteBswRequiredClientServerConnection")
				}
			}
			return new BasicWrappingEList<RteBswRequiredClientServerConnection, GContainer>(filteredContainers, typeof(RteBswRequiredClientServerConnection), typeof(GContainer))
		}
		
		def List<RteBswRequiredModeGroupConnection> getRteBswRequiredModeGroupConnections(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "RteBswRequiredModeGroupConnection")
				}
			}
			return new BasicWrappingEList<RteBswRequiredModeGroupConnection, GContainer>(filteredContainers, typeof(RteBswRequiredModeGroupConnection), typeof(GContainer))
		}
		
		def List<RteBswRequiredSenderReceiverConnection> getRteBswRequiredSenderReceiverConnections(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "RteBswRequiredSenderReceiverConnection")
				}
			}
			return new BasicWrappingEList<RteBswRequiredSenderReceiverConnection, GContainer>(filteredContainers, typeof(RteBswRequiredSenderReceiverConnection), typeof(GContainer))
		}
		
		def List<RteBswRequiredTriggerConnection> getRteBswRequiredTriggerConnections(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "RteBswRequiredTriggerConnection")
				}
			}
			return new BasicWrappingEList<RteBswRequiredTriggerConnection, GContainer>(filteredContainers, typeof(RteBswRequiredTriggerConnection), typeof(GContainer))
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
			
			def Float getRteBswActivationOffset(){
				EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteBswActivationOffset"])
			}
			
			def void setRteBswActivationOffset(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteBswActivationOffset"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RteBswActivationOffset"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getRteBswImmediateRestart(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteBswImmediateRestart"])
			}
			
			def void setRteBswImmediateRestart(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteBswImmediateRestart"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RteBswImmediateRestart"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Integer getRteBswPositionInTask(){
				EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteBswPositionInTask"])
			}
			
			def void setRteBswPositionInTask(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteBswPositionInTask"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RteBswPositionInTask"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def RteOsSchedulePoint getRteOsSchedulePoint(){
				getRteOsSchedulePointValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteOsSchedulePoint"])
			}
			
			def void setRteOsSchedulePoint(RteOsSchedulePoint value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteOsSchedulePoint"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RteOsSchedulePoint"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum RteOsSchedulePoint {
				CONDITIONAL, 
				NONE, 
				UNCONDITIONAL
			}
				
			def RteOsSchedulePoint getRteOsSchedulePointValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "CONDITIONAL" : RteOsSchedulePoint.CONDITIONAL
					case "NONE" : RteOsSchedulePoint.NONE
					case "UNCONDITIONAL" : RteOsSchedulePoint.UNCONDITIONAL
				}
			}
			
			def void setRteOsSchedulePointValue(GParameterValue paramValue, RteOsSchedulePoint value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			
			
			def org.artop.ecuc.autosar421.accessors.Rte.RteOsInteraction.RteSyncPoint getRteBswEventPredecessorSyncPointRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Rte.RteOsInteraction.RteSyncPoint), "RteBswEventPredecessorSyncPointRef")
			}
					
			def void setRteBswEventPredecessorSyncPointRef(org.artop.ecuc.autosar421.accessors.Rte.RteOsInteraction.RteSyncPoint object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "RteBswEventPredecessorSyncPointRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Rte.RteOsInteraction.RteSyncPoint getRteBswEventSuccessorSyncPointRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Rte.RteOsInteraction.RteSyncPoint), "RteBswEventSuccessorSyncPointRef")
			}
					
			def void setRteBswEventSuccessorSyncPointRef(org.artop.ecuc.autosar421.accessors.Rte.RteOsInteraction.RteSyncPoint object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "RteBswEventSuccessorSyncPointRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Os.OsTask getRteBswMappedToTaskRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsTask), "RteBswMappedToTaskRef")
			}
					
			def void setRteBswMappedToTaskRef(org.artop.ecuc.autosar421.accessors.Os.OsTask object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "RteBswMappedToTaskRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Os.OsAlarm getRteBswUsedOsAlarmRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsAlarm), "RteBswUsedOsAlarmRef")
			}
					
			def void setRteBswUsedOsAlarmRef(org.artop.ecuc.autosar421.accessors.Os.OsAlarm object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "RteBswUsedOsAlarmRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Os.OsEvent getRteBswUsedOsEventRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsEvent), "RteBswUsedOsEventRef")
			}
					
			def void setRteBswUsedOsEventRef(org.artop.ecuc.autosar421.accessors.Os.OsEvent object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "RteBswUsedOsEventRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Os.OsScheduleTable.OsScheduleTableExpiryPoint getRteBswUsedOsSchTblExpiryPointRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsScheduleTable.OsScheduleTableExpiryPoint), "RteBswUsedOsSchTblExpiryPointRef")
			}
					
			def void setRteBswUsedOsSchTblExpiryPointRef(org.artop.ecuc.autosar421.accessors.Os.OsScheduleTable.OsScheduleTableExpiryPoint object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "RteBswUsedOsSchTblExpiryPointRef"], object.getTarget())
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
			
			def RteExclusiveAreaImplMechanism getRteExclusiveAreaImplMechanism(){
				getRteExclusiveAreaImplMechanismValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteExclusiveAreaImplMechanism"])
			}
			
			def void setRteExclusiveAreaImplMechanism(RteExclusiveAreaImplMechanism value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteExclusiveAreaImplMechanism"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RteExclusiveAreaImplMechanism"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum RteExclusiveAreaImplMechanism {
				ALL_INTERRUPT_BLOCKING, 
				COOPERATIVE_RUNNABLE_PLACEMENT, 
				OS_INTERRUPT_BLOCKING, 
				OS_RESOURCE, 
				OS_SPINLOCK
			}
				
			def RteExclusiveAreaImplMechanism getRteExclusiveAreaImplMechanismValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "ALL_INTERRUPT_BLOCKING" : RteExclusiveAreaImplMechanism.ALL_INTERRUPT_BLOCKING
					case "COOPERATIVE_RUNNABLE_PLACEMENT" : RteExclusiveAreaImplMechanism.COOPERATIVE_RUNNABLE_PLACEMENT
					case "OS_INTERRUPT_BLOCKING" : RteExclusiveAreaImplMechanism.OS_INTERRUPT_BLOCKING
					case "OS_RESOURCE" : RteExclusiveAreaImplMechanism.OS_RESOURCE
					case "OS_SPINLOCK" : RteExclusiveAreaImplMechanism.OS_SPINLOCK
				}
			}
			
			def void setRteExclusiveAreaImplMechanismValue(GParameterValue paramValue, RteExclusiveAreaImplMechanism value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			
			
			def org.artop.ecuc.autosar421.accessors.Os.OsResource getRteBswExclusiveAreaOsResourceRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsResource), "RteBswExclusiveAreaOsResourceRef")
			}
					
			def void setRteBswExclusiveAreaOsResourceRef(org.artop.ecuc.autosar421.accessors.Os.OsResource object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "RteBswExclusiveAreaOsResourceRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Os.OsSpinlock getRteBswExclusiveAreaOsSpinlockRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsSpinlock), "RteBswExclusiveAreaOsSpinlockRef")
			}
					
			def void setRteBswExclusiveAreaOsSpinlockRef(org.artop.ecuc.autosar421.accessors.Os.OsSpinlock object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "RteBswExclusiveAreaOsSpinlockRef"], object.getTarget())
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
			
			def Integer getRteBswTriggerSourceQueueLength(){
				EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteBswTriggerSourceQueueLength"])
			}
			
			def void setRteBswTriggerSourceQueueLength(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteBswTriggerSourceQueueLength"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RteBswTriggerSourceQueueLength"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
			
			def Integer getRteBswTriggerSourceQueueLength(){
				EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteBswTriggerSourceQueueLength"])
			}
			
			def void setRteBswTriggerSourceQueueLength(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteBswTriggerSourceQueueLength"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RteBswTriggerSourceQueueLength"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
			
			
			
			
			def org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance getRteBswProvidedClientServerEntryModInstRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance), "RteBswProvidedClientServerEntryModInstRef")
			}
					
			def void setRteBswProvidedClientServerEntryModInstRef(org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "RteBswProvidedClientServerEntryModInstRef"], object.getTarget())
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
			
			
			
			
			
			def org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance getRteBswProvidedModeGrpModInstRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance), "RteBswProvidedModeGrpModInstRef")
			}
					
			def void setRteBswProvidedModeGrpModInstRef(org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "RteBswProvidedModeGrpModInstRef"], object.getTarget())
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
			
			
			
			
			def org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance getRteBswProvidedDataModInstRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance), "RteBswProvidedDataModInstRef")
			}
					
			def void setRteBswProvidedDataModInstRef(org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "RteBswProvidedDataModInstRef"], object.getTarget())
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
			
			
			
			
			def org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance getRteBswReleasedTriggerModInstRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance), "RteBswReleasedTriggerModInstRef")
			}
					
			def void setRteBswReleasedTriggerModInstRef(org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "RteBswReleasedTriggerModInstRef"], object.getTarget())
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
		
		def RteBypassSupport getRteBypassSupport(){
			getRteBypassSupportValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteBypassSupport"])
		}
		
		def void setRteBypassSupport(RteBypassSupport value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteBypassSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RteBypassSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		enum RteBypassSupport {
			COMPONENT_WRAPPER, 
			NONE
		}
			
		def RteBypassSupport getRteBypassSupportValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "COMPONENT_WRAPPER" : RteBypassSupport.COMPONENT_WRAPPER
				case "NONE" : RteBypassSupport.NONE
			}
		}
		
		def void setRteBypassSupportValue(GParameterValue paramValue, RteBypassSupport value){
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		def RteCalibrationSupport getRteCalibrationSupport(){
			getRteCalibrationSupportValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteCalibrationSupport"])
		}
		
		def void setRteCalibrationSupport(RteCalibrationSupport value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteCalibrationSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RteCalibrationSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		enum RteCalibrationSupport {
			DOUBLE_POINTERED, 
			INITIALIZED_RAM, 
			NONE, 
			SINGLE_POINTERED
		}
			
		def RteCalibrationSupport getRteCalibrationSupportValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "DOUBLE_POINTERED" : RteCalibrationSupport.DOUBLE_POINTERED
				case "INITIALIZED_RAM" : RteCalibrationSupport.INITIALIZED_RAM
				case "NONE" : RteCalibrationSupport.NONE
				case "SINGLE_POINTERED" : RteCalibrationSupport.SINGLE_POINTERED
			}
		}
		
		def void setRteCalibrationSupportValue(GParameterValue paramValue, RteCalibrationSupport value){
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		def Integer getRteCodeVendorId(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteCodeVendorId"])
		}
		
		def void setRteCodeVendorId(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteCodeVendorId"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RteCodeVendorId"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getRteDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteDevErrorDetect"])
		}
		
		def void setRteDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RteDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getRteDevErrorDetectUninit(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteDevErrorDetectUninit"])
		}
		
		def void setRteDevErrorDetectUninit(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteDevErrorDetectUninit"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RteDevErrorDetectUninit"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def RteGenerationMode getRteGenerationMode(){
			getRteGenerationModeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteGenerationMode"])
		}
		
		def void setRteGenerationMode(RteGenerationMode value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteGenerationMode"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RteGenerationMode"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		enum RteGenerationMode {
			COMPATIBILITY_MODE, 
			VENDOR_MODE
		}
			
		def RteGenerationMode getRteGenerationModeValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "COMPATIBILITY_MODE" : RteGenerationMode.COMPATIBILITY_MODE
				case "VENDOR_MODE" : RteGenerationMode.VENDOR_MODE
			}
		}
		
		def void setRteGenerationModeValue(GParameterValue paramValue, RteGenerationMode value){
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		def Boolean getRteInExclusiveAreaCheckEnabled(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteInExclusiveAreaCheckEnabled"])
		}
		
		def void setRteInExclusiveAreaCheckEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteInExclusiveAreaCheckEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RteInExclusiveAreaCheckEnabled"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def RteIocInteractionReturnValue getRteIocInteractionReturnValue(){
			getRteIocInteractionReturnValueValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteIocInteractionReturnValue"])
		}
		
		def void setRteIocInteractionReturnValue(RteIocInteractionReturnValue value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteIocInteractionReturnValue"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RteIocInteractionReturnValue"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		enum RteIocInteractionReturnValue {
			RTE_COM, 
			RTE_IOC
		}
			
		def RteIocInteractionReturnValue getRteIocInteractionReturnValueValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "RTE_COM" : RteIocInteractionReturnValue.RTE_COM
				case "RTE_IOC" : RteIocInteractionReturnValue.RTE_IOC
			}
		}
		
		def void setRteIocInteractionReturnValueValue(GParameterValue paramValue, RteIocInteractionReturnValue value){
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		def Boolean getRteMeasurementSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteMeasurementSupport"])
		}
		
		def void setRteMeasurementSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteMeasurementSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RteMeasurementSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def RteOptimizationMode getRteOptimizationMode(){
			getRteOptimizationModeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteOptimizationMode"])
		}
		
		def void setRteOptimizationMode(RteOptimizationMode value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteOptimizationMode"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RteOptimizationMode"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		enum RteOptimizationMode {
			MEMORY, 
			RUNTIME
		}
			
		def RteOptimizationMode getRteOptimizationModeValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "MEMORY" : RteOptimizationMode.MEMORY
				case "RUNTIME" : RteOptimizationMode.RUNTIME
			}
		}
		
		def void setRteOptimizationModeValue(GParameterValue paramValue, RteOptimizationMode value){
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		def Integer getRteToolChainSignificantCharacters(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteToolChainSignificantCharacters"])
		}
		
		def void setRteToolChainSignificantCharacters(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteToolChainSignificantCharacters"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RteToolChainSignificantCharacters"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getRteValueRangeCheckEnabled(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteValueRangeCheckEnabled"])
		}
		
		def void setRteValueRangeCheckEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteValueRangeCheckEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RteValueRangeCheckEnabled"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteVfbTraceEnabled"])
		}
		
		def void setRteVfbTraceEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteVfbTraceEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RteVfbTraceEnabled"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		
		def Boolean getRteCoherentAccess(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteCoherentAccess"])
		}
		
		def void setRteCoherentAccess(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteCoherentAccess"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RteCoherentAccess"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getRteImmediateBufferUpdate(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteImmediateBufferUpdate"])
		}
		
		def void setRteImmediateBufferUpdate(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteImmediateBufferUpdate"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RteImmediateBufferUpdate"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		
		def RteInitializationStrategy getRteInitializationStrategy(){
			getRteInitializationStrategyValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteInitializationStrategy"])
		}
		
		def void setRteInitializationStrategy(RteInitializationStrategy value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteInitializationStrategy"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RteInitializationStrategy"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		enum RteInitializationStrategy {
			RTE_INITIALIZATION_STRATEGY_AT_DATA_DECLARATION, 
			RTE_INITIALIZATION_STRATEGY_AT_DATA_DECLARATION_AND_PARTITION_RESTART, 
			RTE_INITIALIZATION_STRATEGY_AT_RTE_START_AND_PARTITION_RESTART, 
			RTE_INITIALIZATION_STRATEGY_NONE
		}
			
		def RteInitializationStrategy getRteInitializationStrategyValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "RTE_INITIALIZATION_STRATEGY_AT_DATA_DECLARATION" : RteInitializationStrategy.RTE_INITIALIZATION_STRATEGY_AT_DATA_DECLARATION
				case "RTE_INITIALIZATION_STRATEGY_AT_DATA_DECLARATION_AND_PARTITION_RESTART" : RteInitializationStrategy.RTE_INITIALIZATION_STRATEGY_AT_DATA_DECLARATION_AND_PARTITION_RESTART
				case "RTE_INITIALIZATION_STRATEGY_AT_RTE_START_AND_PARTITION_RESTART" : RteInitializationStrategy.RTE_INITIALIZATION_STRATEGY_AT_RTE_START_AND_PARTITION_RESTART
				case "RTE_INITIALIZATION_STRATEGY_NONE" : RteInitializationStrategy.RTE_INITIALIZATION_STRATEGY_NONE
			}
		}
		
		def void setRteInitializationStrategyValue(GParameterValue paramValue, RteInitializationStrategy value){
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
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
		
		
		
		def List<RteModeToScheduleTableMapping> getRteModeToScheduleTableMappings(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "RteModeToScheduleTableMapping")
				}
			}
			return new BasicWrappingEList<RteModeToScheduleTableMapping, GContainer>(filteredContainers, typeof(RteModeToScheduleTableMapping), typeof(GContainer))
		}
		
		def List<RteSyncPoint> getRteSyncPoints(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "RteSyncPoint")
				}
			}
			return new BasicWrappingEList<RteSyncPoint, GContainer>(filteredContainers, typeof(RteSyncPoint), typeof(GContainer))
		}
		
		def List<RteUsedOsActivation> getRteUsedOsActivations(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "RteUsedOsActivation")
				}
			}
			return new BasicWrappingEList<RteUsedOsActivation, GContainer>(filteredContainers, typeof(RteUsedOsActivation), typeof(GContainer))
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
			
			
			
			def org.artop.ecuc.autosar421.accessors.Os.OsScheduleTable getRteModeScheduleTableRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsScheduleTable), "RteModeScheduleTableRef")
			}
					
			def void setRteModeScheduleTableRef(org.artop.ecuc.autosar421.accessors.Os.OsScheduleTable object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "RteModeScheduleTableRef"], object.getTarget())
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
				
				
				
				def org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance getRteModeSchtblMapBswInstanceRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance), "RteModeSchtblMapBswInstanceRef")
				}
						
				def void setRteModeSchtblMapBswInstanceRef(org.artop.ecuc.autosar421.accessors.Rte.RteBswModuleInstance object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "RteModeSchtblMapBswInstanceRef"], object.getTarget())
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
				
				
				
				def org.artop.ecuc.autosar421.accessors.Rte.RteSwComponentInstance getRteModeSchtblMapSwcInstanceRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Rte.RteSwComponentInstance), "RteModeSchtblMapSwcInstanceRef")
				}
						
				def void setRteModeSchtblMapSwcInstanceRef(org.artop.ecuc.autosar421.accessors.Rte.RteSwComponentInstance object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "RteModeSchtblMapSwcInstanceRef"], object.getTarget())
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
			
			def Float getRteExpectedActivationOffset(){
				EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteExpectedActivationOffset"])
			}
			
			def void setRteExpectedActivationOffset(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteExpectedActivationOffset"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RteExpectedActivationOffset"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Float getRteExpectedTickDuration(){
				EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteExpectedTickDuration"])
			}
			
			def void setRteExpectedTickDuration(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteExpectedTickDuration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RteExpectedTickDuration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.Os.OsAlarm getRteActivationOsAlarmRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsAlarm), "RteActivationOsAlarmRef")
			}
					
			def void setRteActivationOsAlarmRef(org.artop.ecuc.autosar421.accessors.Os.OsAlarm object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "RteActivationOsAlarmRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Os.OsScheduleTable getRteActivationOsSchTblRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsScheduleTable), "RteActivationOsSchTblRef")
			}
					
			def void setRteActivationOsSchTblRef(org.artop.ecuc.autosar421.accessors.Os.OsScheduleTable object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "RteActivationOsSchTblRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Os.OsTask getRteActivationOsTaskRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsTask), "RteActivationOsTaskRef")
			}
					
			def void setRteActivationOsTaskRef(org.artop.ecuc.autosar421.accessors.Os.OsTask object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "RteActivationOsTaskRef"], object.getTarget())
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
		
		
		
		
		def List<RteEventToTaskMapping> getRteEventToTaskMappings(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "RteEventToTaskMapping")
				}
			}
			return new BasicWrappingEList<RteEventToTaskMapping, GContainer>(filteredContainers, typeof(RteEventToTaskMapping), typeof(GContainer))
		}
		
		def List<RteExclusiveAreaImplementation> getRteExclusiveAreaImplementations(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "RteExclusiveAreaImplementation")
				}
			}
			return new BasicWrappingEList<RteExclusiveAreaImplementation, GContainer>(filteredContainers, typeof(RteExclusiveAreaImplementation), typeof(GContainer))
		}
		
		def List<RteExternalTriggerConfig> getRteExternalTriggerConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "RteExternalTriggerConfig")
				}
			}
			return new BasicWrappingEList<RteExternalTriggerConfig, GContainer>(filteredContainers, typeof(RteExternalTriggerConfig), typeof(GContainer))
		}
		
		def List<RteInternalTriggerConfig> getRteInternalTriggerConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "RteInternalTriggerConfig")
				}
			}
			return new BasicWrappingEList<RteInternalTriggerConfig, GContainer>(filteredContainers, typeof(RteInternalTriggerConfig), typeof(GContainer))
		}
		
		def List<RteNvRamAllocation> getRteNvRamAllocations(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "RteNvRamAllocation")
				}
			}
			return new BasicWrappingEList<RteNvRamAllocation, GContainer>(filteredContainers, typeof(RteNvRamAllocation), typeof(GContainer))
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
			
			def Float getRteActivationOffset(){
				EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteActivationOffset"])
			}
			
			def void setRteActivationOffset(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteActivationOffset"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RteActivationOffset"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getRteImmediateRestart(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteImmediateRestart"])
			}
			
			def void setRteImmediateRestart(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteImmediateRestart"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RteImmediateRestart"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def RteOsSchedulePoint getRteOsSchedulePoint(){
				getRteOsSchedulePointValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteOsSchedulePoint"])
			}
			
			def void setRteOsSchedulePoint(RteOsSchedulePoint value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteOsSchedulePoint"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RteOsSchedulePoint"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum RteOsSchedulePoint {
				CONDITIONAL, 
				NONE, 
				UNCONDITIONAL
			}
				
			def RteOsSchedulePoint getRteOsSchedulePointValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "CONDITIONAL" : RteOsSchedulePoint.CONDITIONAL
					case "NONE" : RteOsSchedulePoint.NONE
					case "UNCONDITIONAL" : RteOsSchedulePoint.UNCONDITIONAL
				}
			}
			
			def void setRteOsSchedulePointValue(GParameterValue paramValue, RteOsSchedulePoint value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			def Integer getRtePositionInTask(){
				EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RtePositionInTask"])
			}
			
			def void setRtePositionInTask(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RtePositionInTask"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RtePositionInTask"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			def org.artop.ecuc.autosar421.accessors.Rte.RteOsInteraction.RteSyncPoint getRteEventPredecessorSyncPointRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Rte.RteOsInteraction.RteSyncPoint), "RteEventPredecessorSyncPointRef")
			}
					
			def void setRteEventPredecessorSyncPointRef(org.artop.ecuc.autosar421.accessors.Rte.RteOsInteraction.RteSyncPoint object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "RteEventPredecessorSyncPointRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Rte.RteOsInteraction.RteSyncPoint getRteEventSuccessorSyncPointRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Rte.RteOsInteraction.RteSyncPoint), "RteEventSuccessorSyncPointRef")
			}
					
			def void setRteEventSuccessorSyncPointRef(org.artop.ecuc.autosar421.accessors.Rte.RteOsInteraction.RteSyncPoint object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "RteEventSuccessorSyncPointRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Os.OsTask getRteMappedToTaskRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsTask), "RteMappedToTaskRef")
			}
					
			def void setRteMappedToTaskRef(org.artop.ecuc.autosar421.accessors.Os.OsTask object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "RteMappedToTaskRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Rte.RteInitializationRunnableBatch getRteUsedInitFnc(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Rte.RteInitializationRunnableBatch), "RteUsedInitFnc")
			}
					
			def void setRteUsedInitFnc(org.artop.ecuc.autosar421.accessors.Rte.RteInitializationRunnableBatch object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "RteUsedInitFnc"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Os.OsAlarm getRteUsedOsAlarmRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsAlarm), "RteUsedOsAlarmRef")
			}
					
			def void setRteUsedOsAlarmRef(org.artop.ecuc.autosar421.accessors.Os.OsAlarm object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "RteUsedOsAlarmRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Os.OsEvent getRteUsedOsEventRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsEvent), "RteUsedOsEventRef")
			}
					
			def void setRteUsedOsEventRef(org.artop.ecuc.autosar421.accessors.Os.OsEvent object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "RteUsedOsEventRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Os.OsScheduleTable.OsScheduleTableExpiryPoint getRteUsedOsSchTblExpiryPointRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsScheduleTable.OsScheduleTableExpiryPoint), "RteUsedOsSchTblExpiryPointRef")
			}
					
			def void setRteUsedOsSchTblExpiryPointRef(org.artop.ecuc.autosar421.accessors.Os.OsScheduleTable.OsScheduleTableExpiryPoint object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "RteUsedOsSchTblExpiryPointRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Os.OsTask getRteVirtuallyMappedToTaskRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsTask), "RteVirtuallyMappedToTaskRef")
			}
					
			def void setRteVirtuallyMappedToTaskRef(org.artop.ecuc.autosar421.accessors.Os.OsTask object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "RteVirtuallyMappedToTaskRef"], object.getTarget())
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
			
			def RteExclusiveAreaImplMechanism getRteExclusiveAreaImplMechanism(){
				getRteExclusiveAreaImplMechanismValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteExclusiveAreaImplMechanism"])
			}
			
			def void setRteExclusiveAreaImplMechanism(RteExclusiveAreaImplMechanism value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteExclusiveAreaImplMechanism"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RteExclusiveAreaImplMechanism"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum RteExclusiveAreaImplMechanism {
				ALL_INTERRUPT_BLOCKING, 
				COOPERATIVE_RUNNABLE_PLACEMENT, 
				OS_INTERRUPT_BLOCKING, 
				OS_RESOURCE, 
				OS_SPINLOCK
			}
				
			def RteExclusiveAreaImplMechanism getRteExclusiveAreaImplMechanismValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "ALL_INTERRUPT_BLOCKING" : RteExclusiveAreaImplMechanism.ALL_INTERRUPT_BLOCKING
					case "COOPERATIVE_RUNNABLE_PLACEMENT" : RteExclusiveAreaImplMechanism.COOPERATIVE_RUNNABLE_PLACEMENT
					case "OS_INTERRUPT_BLOCKING" : RteExclusiveAreaImplMechanism.OS_INTERRUPT_BLOCKING
					case "OS_RESOURCE" : RteExclusiveAreaImplMechanism.OS_RESOURCE
					case "OS_SPINLOCK" : RteExclusiveAreaImplMechanism.OS_SPINLOCK
				}
			}
			
			def void setRteExclusiveAreaImplMechanismValue(GParameterValue paramValue, RteExclusiveAreaImplMechanism value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			
			
			def org.artop.ecuc.autosar421.accessors.Os.OsResource getRteExclusiveAreaOsResourceRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsResource), "RteExclusiveAreaOsResourceRef")
			}
					
			def void setRteExclusiveAreaOsResourceRef(org.artop.ecuc.autosar421.accessors.Os.OsResource object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "RteExclusiveAreaOsResourceRef"], object.getTarget())
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
			
			def Integer getRteTriggerSourceQueueLength(){
				EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteTriggerSourceQueueLength"])
			}
			
			def void setRteTriggerSourceQueueLength(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteTriggerSourceQueueLength"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RteTriggerSourceQueueLength"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
			
			def Integer getRteTriggerSourceQueueLength(){
				EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteTriggerSourceQueueLength"])
			}
			
			def void setRteTriggerSourceQueueLength(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteTriggerSourceQueueLength"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RteTriggerSourceQueueLength"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
			
			def String getRteNvmRamBlockLocationSymbol(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteNvmRamBlockLocationSymbol"])
			}
			
			def void setRteNvmRamBlockLocationSymbol(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteNvmRamBlockLocationSymbol"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RteNvmRamBlockLocationSymbol"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getRteNvmRomBlockLocationSymbol(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteNvmRomBlockLocationSymbol"])
			}
			
			def void setRteNvmRomBlockLocationSymbol(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteNvmRomBlockLocationSymbol"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RteNvmRomBlockLocationSymbol"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
			def org.artop.ecuc.autosar421.accessors.NvM.NvMBlockDescriptor getRteNvmBlockRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.NvM.NvMBlockDescriptor), "RteNvmBlockRef")
			}
					
			def void setRteNvmBlockRef(org.artop.ecuc.autosar421.accessors.NvM.NvMBlockDescriptor object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "RteNvmBlockRef"], object.getTarget())
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
		
		def Boolean getRteBypassSupportEnabled(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteBypassSupportEnabled"])
		}
		
		def void setRteBypassSupportEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteBypassSupportEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RteBypassSupportEnabled"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
			
			def Boolean getRteCalibrationSupportEnabled(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteCalibrationSupportEnabled"])
			}
			
			def void setRteCalibrationSupportEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RteCalibrationSupportEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "RteCalibrationSupportEnabled"])
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
