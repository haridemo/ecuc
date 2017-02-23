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
			override protected delegateAdd(org.artop.ecuc.autosar422.accessors.StbM.StbMSynchronizedTimeBase stbMSynchronizedTimeBase) {
				stbMSynchronizedTimeBase.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("StbMSynchronizedTimeBase"))
				super.delegateAdd(stbMSynchronizedTimeBase)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.StbM.StbMSynchronizedTimeBase stbMSynchronizedTimeBase) {
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
			override protected delegateAdd(org.artop.ecuc.autosar422.accessors.StbM.StbMTriggeredCustomer stbMTriggeredCustomer) {
				stbMTriggeredCustomer.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("StbMTriggeredCustomer"))
				super.delegateAdd(stbMTriggeredCustomer)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.StbM.StbMTriggeredCustomer stbMTriggeredCustomer) {
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof StbMGeneral)){
				return false
			}
			this.target == (object as StbMGeneral).target
		}
	
		def Boolean getStbMDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMDevErrorDetect"].getBooleanValue()
		}
		
		def void setStbMDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "StbMDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getStbMGetCurrentTimeExtendedAvailable(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMGetCurrentTimeExtendedAvailable"].getBooleanValue()
		}
		
		def void setStbMGetCurrentTimeExtendedAvailable(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMGetCurrentTimeExtendedAvailable"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "StbMGetCurrentTimeExtendedAvailable"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getStbMMainFunctionPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMMainFunctionPeriod"].getBigDecimalValue()
		}
		
		def void setStbMMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMMainFunctionPeriod"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "StbMMainFunctionPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getStbMVersionInfo(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMVersionInfo"].getBooleanValue()
		}
		
		def void setStbMVersionInfo(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMVersionInfo"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "StbMVersionInfo"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof StbMSynchronizedTimeBase)){
				return false
			}
			this.target == (object as StbMSynchronizedTimeBase).target
		}
	
		def Boolean getStbMIsSystemWideGlobalTimeMaster(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMIsSystemWideGlobalTimeMaster"].getBooleanValue()
		}
		
		def void setStbMIsSystemWideGlobalTimeMaster(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMIsSystemWideGlobalTimeMaster"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "StbMIsSystemWideGlobalTimeMaster"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def StbMStoreTimebaseNonVolatile getStbMStoreTimebaseNonVolatile(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMStoreTimebaseNonVolatile"].getStbMStoreTimebaseNonVolatileValue()
		}
		
		def void setStbMStoreTimebaseNonVolatile(StbMStoreTimebaseNonVolatile value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMStoreTimebaseNonVolatile"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "StbMStoreTimebaseNonVolatile"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum StbMStoreTimebaseNonVolatile {
			NO_STORAGE, 
			STORAGE_AT_SHUTDOWN
		}
		
		def StbMStoreTimebaseNonVolatile getStbMStoreTimebaseNonVolatileValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "NO_STORAGE" : StbMStoreTimebaseNonVolatile.NO_STORAGE
				case "STORAGE_AT_SHUTDOWN" : StbMStoreTimebaseNonVolatile.STORAGE_AT_SHUTDOWN
			}
		}
		
		def void setStbMStoreTimebaseNonVolatileValue(GParameterValue parameterValue, StbMStoreTimebaseNonVolatile value){
			parameterValue.setValue(value)
		}
		
		def BigDecimal getStbMSyncLossThreshold(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMSyncLossThreshold"].getBigDecimalValue()
		}
		
		def void setStbMSyncLossThreshold(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMSyncLossThreshold"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "StbMSyncLossThreshold"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getStbMSyncLossTimeout(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMSyncLossTimeout"].getBigDecimalValue()
		}
		
		def void setStbMSyncLossTimeout(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMSyncLossTimeout"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "StbMSyncLossTimeout"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getStbMSynchronizedTimeBaseIdentifier(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMSynchronizedTimeBaseIdentifier"].getBigIntegerValue()
		}
		
		def void setStbMSynchronizedTimeBaseIdentifier(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMSynchronizedTimeBaseIdentifier"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "StbMSynchronizedTimeBaseIdentifier"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		def org.artop.ecuc.autosar422.accessors.EthTSyn.EthTSynGlobalTimeDomain getStbMEthGlobalTimeDomainRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar422.accessors.EthTSyn.EthTSynGlobalTimeDomain), "StbMEthGlobalTimeDomainRef")
		}
		
		def void setStbMEthGlobalTimeDomainRef(org.artop.ecuc.autosar422.accessors.EthTSyn.EthTSynGlobalTimeDomain object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "StbMEthGlobalTimeDomainRef"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar422.accessors.Os.OsCounter getStbMLocalTimeRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar422.accessors.Os.OsCounter), "StbMLocalTimeRef")
		}
		
		def void setStbMLocalTimeRef(org.artop.ecuc.autosar422.accessors.Os.OsCounter object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "StbMLocalTimeRef"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar422.accessors.StbM.StbMSynchronizedTimeBase getStbMOffsetTimeBase(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar422.accessors.StbM.StbMSynchronizedTimeBase), "StbMOffsetTimeBase")
		}
		
		def void setStbMOffsetTimeBase(org.artop.ecuc.autosar422.accessors.StbM.StbMSynchronizedTimeBase object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "StbMOffsetTimeBase"], object.getTarget())
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof StbMTriggeredCustomer)){
				return false
			}
			this.target == (object as StbMTriggeredCustomer).target
		}
	
		def BigInteger getStbMTriggeredCustomerPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMTriggeredCustomerPeriod"].getBigIntegerValue()
		}
		
		def void setStbMTriggeredCustomerPeriod(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMTriggeredCustomerPeriod"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "StbMTriggeredCustomerPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		def org.artop.ecuc.autosar422.accessors.Os.OsScheduleTable getStbMOSScheduleTableRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar422.accessors.Os.OsScheduleTable), "StbMOSScheduleTableRef")
		}
		
		def void setStbMOSScheduleTableRef(org.artop.ecuc.autosar422.accessors.Os.OsScheduleTable object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "StbMOSScheduleTableRef"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar422.accessors.StbM.StbMSynchronizedTimeBase getStbMSynchronizedTimeBaseRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar422.accessors.StbM.StbMSynchronizedTimeBase), "StbMSynchronizedTimeBaseRef")
		}
		
		def void setStbMSynchronizedTimeBaseRef(org.artop.ecuc.autosar422.accessors.StbM.StbMSynchronizedTimeBase object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "StbMSynchronizedTimeBaseRef"], object.getTarget())
			}
		}
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof StbM)){
			return false
		}
		this.target == (object as StbM).target
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
