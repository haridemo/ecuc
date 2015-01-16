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

class StbM implements IWrapper<GModuleConfiguration> {
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
		return new BasicWrappingEList<StbMSynchronizedTimeBase, GContainer>(filteredContainers, typeof(StbMSynchronizedTimeBase), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar421.accessors.StbM$StbMSynchronizedTimeBase stbMSynchronizedTimeBase) {
				stbMSynchronizedTimeBase.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("StbMSynchronizedTimeBase"))
				super.delegateAdd(stbMSynchronizedTimeBase)
			}
		
			override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.StbM$StbMSynchronizedTimeBase stbMSynchronizedTimeBase) {
				stbMSynchronizedTimeBase.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("StbMSynchronizedTimeBase"))
				super.delegateAdd(index, stbMSynchronizedTimeBase)
			}
		}
	}
	def List<StbMTriggeredCustomer> getStbMTriggeredCustomers(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "StbMTriggeredCustomer")
			}
		}
		return new BasicWrappingEList<StbMTriggeredCustomer, GContainer>(filteredContainers, typeof(StbMTriggeredCustomer), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar421.accessors.StbM$StbMTriggeredCustomer stbMTriggeredCustomer) {
				stbMTriggeredCustomer.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("StbMTriggeredCustomer"))
				super.delegateAdd(stbMTriggeredCustomer)
			}
		
			override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.StbM$StbMTriggeredCustomer stbMTriggeredCustomer) {
				stbMTriggeredCustomer.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("StbMTriggeredCustomer"))
				super.delegateAdd(index, stbMTriggeredCustomer)
			}
		}
	}
	
	static class StbMGeneral implements IWrapper<GContainer> {
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
		
		def Boolean getStbMDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMDevErrorDetect"])
		}
		
		def void setStbMDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "StbMDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getStbMGetCurrentTimeExtendedAvailable(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMGetCurrentTimeExtendedAvailable"])
		}
		
		def void setStbMGetCurrentTimeExtendedAvailable(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMGetCurrentTimeExtendedAvailable"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "StbMGetCurrentTimeExtendedAvailable"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Float getStbMMainFunctionPeriod(){
			EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMMainFunctionPeriod"])
		}
		
		def void setStbMMainFunctionPeriod(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMMainFunctionPeriod"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "StbMMainFunctionPeriod"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getStbMVersionInfo(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMVersionInfo"])
		}
		
		def void setStbMVersionInfo(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMVersionInfo"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "StbMVersionInfo"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		
	}
	static class StbMSynchronizedTimeBase implements IWrapper<GContainer> {
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
		
		def Boolean getStbMIsSystemWideGlobalTimeMaster(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMIsSystemWideGlobalTimeMaster"])
		}
		
		def void setStbMIsSystemWideGlobalTimeMaster(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMIsSystemWideGlobalTimeMaster"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "StbMIsSystemWideGlobalTimeMaster"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def StbMStoreTimebaseNonVolatile getStbMStoreTimebaseNonVolatile(){
			getStbMStoreTimebaseNonVolatileValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMStoreTimebaseNonVolatile"])
		}
		
		def void setStbMStoreTimebaseNonVolatile(StbMStoreTimebaseNonVolatile value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMStoreTimebaseNonVolatile"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "StbMStoreTimebaseNonVolatile"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		def Float getStbMSyncLossThreshold(){
			EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMSyncLossThreshold"])
		}
		
		def void setStbMSyncLossThreshold(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMSyncLossThreshold"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "StbMSyncLossThreshold"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Float getStbMSyncLossTimeout(){
			EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMSyncLossTimeout"])
		}
		
		def void setStbMSyncLossTimeout(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMSyncLossTimeout"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "StbMSyncLossTimeout"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getStbMSynchronizedTimeBaseIdentifier(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMSynchronizedTimeBaseIdentifier"])
		}
		
		def void setStbMSynchronizedTimeBaseIdentifier(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMSynchronizedTimeBaseIdentifier"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "StbMSynchronizedTimeBaseIdentifier"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
	static class StbMTriggeredCustomer implements IWrapper<GContainer> {
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
		
		def Integer getStbMTriggeredCustomerPeriod(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMTriggeredCustomerPeriod"])
		}
		
		def void setStbMTriggeredCustomerPeriod(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMTriggeredCustomerPeriod"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "StbMTriggeredCustomerPeriod"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
