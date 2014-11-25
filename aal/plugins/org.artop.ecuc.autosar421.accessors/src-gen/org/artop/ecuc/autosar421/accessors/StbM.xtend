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

import static extension org.artop.ecuc.autosar4x.accessors.lib.EcucValueAccessor4xUtil.*
import org.artop.ecuc.autosar4x.accessors.lib.EcucValueAccessor4xUtil
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
import static extension org.artop.ecuc.gautosar.accessors.lib.EcucValueAccessorUtil.*
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EStructuralFeature
import org.eclipse.sphinx.emf.util.AbstractUnwrappingEList
import org.eclipse.core.runtime.CoreException

class StbM implements BasicWrappingEList.IWrapper<GModuleConfiguration> {
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
	
	def StbMGeneral getStbMGeneral(){
		moduleConfiguration.getByType(typeof(StbMGeneral))
	}
	
	def void setStbMGeneral(StbMGeneral stbMGeneral){
		val GContainer container = stbMGeneral.getTarget() 
	    moduleConfiguration.setContainer(container, "StbMGeneral")
	}
	def List<StbMSynchronizedTimeBase> getStbMSynchronizedTimeBases(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "StbMSynchronizedTimeBase")
			}
		}
		return new BasicWrappingEList<StbMSynchronizedTimeBase, GContainer>(filteredContainers, typeof(StbMSynchronizedTimeBase), typeof(GContainer))
	}
	def List<StbMTriggeredCustomer> getStbMTriggeredCustomers(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "StbMTriggeredCustomer")
			}
		}
		return new BasicWrappingEList<StbMTriggeredCustomer, GContainer>(filteredContainers, typeof(StbMTriggeredCustomer), typeof(GContainer))
	}
	
	static class StbMGeneral implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		def Boolean getStbMAbsoluteTimeApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMAbsoluteTimeApi"])
		}
		
		def void setStbMAbsoluteTimeApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMAbsoluteTimeApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "StbMAbsoluteTimeApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getStbMDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMDevErrorDetect"])
		}
		
		def void setStbMDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "StbMDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getStbMGetCurrentTimeExtendedAvailable(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMGetCurrentTimeExtendedAvailable"])
		}
		
		def void setStbMGetCurrentTimeExtendedAvailable(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMGetCurrentTimeExtendedAvailable"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "StbMGetCurrentTimeExtendedAvailable"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Float getStbMMainFunctionPeriod(){
			EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMMainFunctionPeriod"])
		}
		
		def void setStbMMainFunctionPeriod(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMMainFunctionPeriod"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "StbMMainFunctionPeriod"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getStbMTickTypeRange(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMTickTypeRange"])
		}
		
		def void setStbMTickTypeRange(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMTickTypeRange"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "StbMTickTypeRange"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getStbMVersionInfo(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMVersionInfo"])
		}
		
		def void setStbMVersionInfo(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMVersionInfo"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "StbMVersionInfo"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		
		
		
	}
	static class StbMSynchronizedTimeBase implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		def Integer getStbMGlobalTimeDomainId(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMGlobalTimeDomainId"])
		}
		
		def void setStbMGlobalTimeDomainId(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMGlobalTimeDomainId"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "StbMGlobalTimeDomainId"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def String getStbMGlobalTimeProviderCallout(){
			EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMGlobalTimeProviderCallout"])
		}
		
		def void setStbMGlobalTimeProviderCallout(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMGlobalTimeProviderCallout"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "StbMGlobalTimeProviderCallout"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def StbMStoreTimebaseNonVolatile getStbMStoreTimebaseNonVolatile(){
			getStbMStoreTimebaseNonVolatileValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMStoreTimebaseNonVolatile"])
		}
		
		def void setStbMStoreTimebaseNonVolatile(StbMStoreTimebaseNonVolatile value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMStoreTimebaseNonVolatile"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "StbMStoreTimebaseNonVolatile"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum StbMStoreTimebaseNonVolatile {
			NO_STORAGE, 
			STORAGE_AT_SHUTDOWN
		}
			
		def StbMStoreTimebaseNonVolatile getStbMStoreTimebaseNonVolatileValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "NO_STORAGE" : StbMStoreTimebaseNonVolatile.NO_STORAGE
				case "STORAGE_AT_SHUTDOWN" : StbMStoreTimebaseNonVolatile.STORAGE_AT_SHUTDOWN
			}
		}
		
		def void setStbMStoreTimebaseNonVolatileValue(GParameterValue paramValue, StbMStoreTimebaseNonVolatile value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def Float getStbMSyncLossThreshold(){
			EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMSyncLossThreshold"])
		}
		
		def void setStbMSyncLossThreshold(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMSyncLossThreshold"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "StbMSyncLossThreshold"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Float getStbMSyncLossTimeout(){
			EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMSyncLossTimeout"])
		}
		
		def void setStbMSyncLossTimeout(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMSyncLossTimeout"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "StbMSyncLossTimeout"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def String getStbMSyncStateProviderCallout(){
			EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMSyncStateProviderCallout"])
		}
		
		def void setStbMSyncStateProviderCallout(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMSyncStateProviderCallout"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "StbMSyncStateProviderCallout"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getStbMSynchronizedTimeBaseIdentifier(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMSynchronizedTimeBaseIdentifier"])
		}
		
		def void setStbMSynchronizedTimeBaseIdentifier(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMSynchronizedTimeBaseIdentifier"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "StbMSynchronizedTimeBaseIdentifier"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def String getStbMTickDurationProviderCallout(){
			EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMTickDurationProviderCallout"])
		}
		
		def void setStbMTickDurationProviderCallout(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMTickDurationProviderCallout"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "StbMTickDurationProviderCallout"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		
		def org.artop.ecuc.autosar421.accessors.EthTSyn.EthTSynGlobalTimeDomain getStbMEthGlobalTimeDomainRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EthTSyn.EthTSynGlobalTimeDomain), "StbMEthGlobalTimeDomainRef")
		}
				
		def void setStbMEthGlobalTimeDomainRef(org.artop.ecuc.autosar421.accessors.EthTSyn.EthTSynGlobalTimeDomain object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "StbMEthGlobalTimeDomainRef"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.Os.OsCounter getStbMLocalTimeRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsCounter), "StbMLocalTimeRef")
		}
				
		def void setStbMLocalTimeRef(org.artop.ecuc.autosar421.accessors.Os.OsCounter object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "StbMLocalTimeRef"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.StbM.StbMSynchronizedTimeBase getStbMOffsetTimeBase(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.StbM.StbMSynchronizedTimeBase), "StbMOffsetTimeBase")
		}
				
		def void setStbMOffsetTimeBase(org.artop.ecuc.autosar421.accessors.StbM.StbMSynchronizedTimeBase object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "StbMOffsetTimeBase"], object.getTarget())
			}
		}
		
		
		
	}
	static class StbMTriggeredCustomer implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		def String getStbMGlobalTimeCustomerCallback(){
			EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMGlobalTimeCustomerCallback"])
		}
		
		def void setStbMGlobalTimeCustomerCallback(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMGlobalTimeCustomerCallback"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "StbMGlobalTimeCustomerCallback"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def String getStbMSyncStateCustomerCallback(){
			EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMSyncStateCustomerCallback"])
		}
		
		def void setStbMSyncStateCustomerCallback(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMSyncStateCustomerCallback"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "StbMSyncStateCustomerCallback"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getStbMTriggerInSyncState(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMTriggerInSyncState"])
		}
		
		def void setStbMTriggerInSyncState(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMTriggerInSyncState"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "StbMTriggerInSyncState"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getStbMTriggeredCustomerPeriod(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMTriggeredCustomerPeriod"])
		}
		
		def void setStbMTriggeredCustomerPeriod(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMTriggeredCustomerPeriod"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "StbMTriggeredCustomerPeriod"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		
		def org.artop.ecuc.autosar421.accessors.Os.OsScheduleTable getStbMOSScheduleTableRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsScheduleTable), "StbMOSScheduleTableRef")
		}
				
		def void setStbMOSScheduleTableRef(org.artop.ecuc.autosar421.accessors.Os.OsScheduleTable object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "StbMOSScheduleTableRef"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.StbM.StbMSynchronizedTimeBase getStbMSynchronizedTimeBaseRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.StbM.StbMSynchronizedTimeBase), "StbMSynchronizedTimeBaseRef")
		}
				
		def void setStbMSynchronizedTimeBaseRef(org.artop.ecuc.autosar421.accessors.StbM.StbMSynchronizedTimeBase object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "StbMSynchronizedTimeBaseRef"], object.getTarget())
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