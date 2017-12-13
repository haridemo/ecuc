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
package org.artop.ecuc.autosar444.accessors

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
			override protected delegateAdd(org.artop.ecuc.autosar444.accessors.StbM.StbMSynchronizedTimeBase stbMSynchronizedTimeBase) {
				stbMSynchronizedTimeBase.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("StbMSynchronizedTimeBase"))
				super.delegateAdd(stbMSynchronizedTimeBase)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.StbM.StbMSynchronizedTimeBase stbMSynchronizedTimeBase) {
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
			override protected delegateAdd(org.artop.ecuc.autosar444.accessors.StbM.StbMTriggeredCustomer stbMTriggeredCustomer) {
				stbMTriggeredCustomer.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("StbMTriggeredCustomer"))
				super.delegateAdd(stbMTriggeredCustomer)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.StbM.StbMTriggeredCustomer stbMTriggeredCustomer) {
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
	
		def String getStbMCustomerHeaderInclude(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMCustomerHeaderInclude"].getStringValue()
		}
		
		def void setStbMCustomerHeaderInclude(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMCustomerHeaderInclude"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "StbMCustomerHeaderInclude"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
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
		
		def Boolean getStbMTimeRecordingSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMTimeRecordingSupport"].getBooleanValue()
		}
		
		def void setStbMTimeRecordingSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMTimeRecordingSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "StbMTimeRecordingSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getStbMVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMVersionInfoApi"].getBooleanValue()
		}
		
		def void setStbMVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "StbMVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		def org.artop.ecuc.autosar444.accessors.Gpt.GptChannelConfigSet.GptChannelConfiguration getStbMGptTimerRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Gpt.GptChannelConfigSet.GptChannelConfiguration), "StbMGptTimerRef")
		}
		
		def void setStbMGptTimerRef(org.artop.ecuc.autosar444.accessors.Gpt.GptChannelConfigSet.GptChannelConfiguration object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "StbMGptTimerRef"], object.getTarget())
			}
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
	
		def Boolean getStbMAllowMasterRateCorrection(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMAllowMasterRateCorrection"].getBooleanValue()
		}
		
		def void setStbMAllowMasterRateCorrection(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMAllowMasterRateCorrection"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "StbMAllowMasterRateCorrection"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getStbMAllowSystemWideGlobalTimeMaster(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMAllowSystemWideGlobalTimeMaster"].getBooleanValue()
		}
		
		def void setStbMAllowSystemWideGlobalTimeMaster(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMAllowSystemWideGlobalTimeMaster"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "StbMAllowSystemWideGlobalTimeMaster"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getStbMClearTimeleapCount(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMClearTimeleapCount"].getBigIntegerValue()
		}
		
		def void setStbMClearTimeleapCount(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMClearTimeleapCount"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "StbMClearTimeleapCount"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
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
		
		def BigInteger getStbMMasterRateDeviationMax(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMMasterRateDeviationMax"].getBigIntegerValue()
		}
		
		def void setStbMMasterRateDeviationMax(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMMasterRateDeviationMax"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "StbMMasterRateDeviationMax"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def String getStbMStatusNotificationCallback(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMStatusNotificationCallback"].getStringValue()
		}
		
		def void setStbMStatusNotificationCallback(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMStatusNotificationCallback"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "StbMStatusNotificationCallback"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getStbMStatusNotificationMask(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMStatusNotificationMask"].getBigIntegerValue()
		}
		
		def void setStbMStatusNotificationMask(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMStatusNotificationMask"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "StbMStatusNotificationMask"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
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
		
		def BigDecimal getStbMTimeLeapFutureThreshold(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMTimeLeapFutureThreshold"].getBigDecimalValue()
		}
		
		def void setStbMTimeLeapFutureThreshold(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMTimeLeapFutureThreshold"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "StbMTimeLeapFutureThreshold"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getStbMTimeLeapPastThreshold(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMTimeLeapPastThreshold"].getBigDecimalValue()
		}
		
		def void setStbMTimeLeapPastThreshold(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMTimeLeapPastThreshold"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "StbMTimeLeapPastThreshold"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		def org.artop.ecuc.autosar444.accessors.StbM.StbMSynchronizedTimeBase getStbMOffsetTimeBase(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.StbM.StbMSynchronizedTimeBase), "StbMOffsetTimeBase")
		}
		
		def void setStbMOffsetTimeBase(org.artop.ecuc.autosar444.accessors.StbM.StbMSynchronizedTimeBase object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "StbMOffsetTimeBase"], object.getTarget())
			}
		}
		
		
		def StbMLocalTimeClock getStbMLocalTimeClock(){
			containerValue.getByType(typeof(StbMLocalTimeClock))
		}
		
		def void setStbMLocalTimeClock(StbMLocalTimeClock stbMLocalTimeClock){
			val GContainer subContainer = stbMLocalTimeClock.getTarget()
			containerValue.setContainer(subContainer, "StbMLocalTimeClock")
		}
		
		def List<StbMNotificationCustomer> getStbMNotificationCustomers(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "StbMNotificationCustomer")
				}
			}
			return new BasicWrappingEList<StbMNotificationCustomer, GContainer>(filteredContainers, typeof(StbMNotificationCustomer), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.StbM.StbMSynchronizedTimeBase.StbMNotificationCustomer stbMNotificationCustomer) {
					stbMNotificationCustomer.target?.gSetDefinition(containerValue.getContainerDefinition("StbMNotificationCustomer"))
					super.delegateAdd(stbMNotificationCustomer)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.StbM.StbMSynchronizedTimeBase.StbMNotificationCustomer stbMNotificationCustomer) {
					stbMNotificationCustomer.target?.gSetDefinition(containerValue.getContainerDefinition("StbMNotificationCustomer"))
					super.delegateAdd(index, stbMNotificationCustomer)
				}
			}
		}
		
		def StbMTimeCorrection getStbMTimeCorrection(){
			containerValue.getByType(typeof(StbMTimeCorrection))
		}
		
		def void setStbMTimeCorrection(StbMTimeCorrection stbMTimeCorrection){
			val GContainer subContainer = stbMTimeCorrection.getTarget()
			containerValue.setContainer(subContainer, "StbMTimeCorrection")
		}
		
		def StbMTimeRecording getStbMTimeRecording(){
			containerValue.getByType(typeof(StbMTimeRecording))
		}
		
		def void setStbMTimeRecording(StbMTimeRecording stbMTimeRecording){
			val GContainer subContainer = stbMTimeRecording.getTarget()
			containerValue.setContainer(subContainer, "StbMTimeRecording")
		}
		
		
		static class StbMLocalTimeClock implements IWrapper<GContainer> {
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
		        if (!(object instanceof StbMLocalTimeClock)){
					return false
				}
				this.target == (object as StbMLocalTimeClock).target
			}
		
			def BigInteger getStbMClockFrequency(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMClockFrequency"].getBigIntegerValue()
			}
			
			def void setStbMClockFrequency(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMClockFrequency"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "StbMClockFrequency"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getStbMClockPrescaler(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMClockPrescaler"].getBigIntegerValue()
			}
			
			def void setStbMClockPrescaler(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMClockPrescaler"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "StbMClockPrescaler"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
			
		}
		
		static class StbMNotificationCustomer implements IWrapper<GContainer> {
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
		        if (!(object instanceof StbMNotificationCustomer)){
					return false
				}
				this.target == (object as StbMNotificationCustomer).target
			}
		
			def BigInteger getStbMNotificationCustomerId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMNotificationCustomerId"].getBigIntegerValue()
			}
			
			def void setStbMNotificationCustomerId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMNotificationCustomerId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "StbMNotificationCustomerId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getStbMTimeNotificationCallback(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMTimeNotificationCallback"].getStringValue()
			}
			
			def void setStbMTimeNotificationCallback(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMTimeNotificationCallback"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "StbMTimeNotificationCallback"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getStbMTimerStartThreshold(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMTimerStartThreshold"].getBigDecimalValue()
			}
			
			def void setStbMTimerStartThreshold(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMTimerStartThreshold"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "StbMTimerStartThreshold"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
		static class StbMTimeCorrection implements IWrapper<GContainer> {
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
		        if (!(object instanceof StbMTimeCorrection)){
					return false
				}
				this.target == (object as StbMTimeCorrection).target
			}
		
			def BigDecimal getStbMOffsetCorrectionAdaptionInterval(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMOffsetCorrectionAdaptionInterval"].getBigDecimalValue()
			}
			
			def void setStbMOffsetCorrectionAdaptionInterval(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMOffsetCorrectionAdaptionInterval"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "StbMOffsetCorrectionAdaptionInterval"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getStbMOffsetCorrectionJumpThreshold(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMOffsetCorrectionJumpThreshold"].getBigDecimalValue()
			}
			
			def void setStbMOffsetCorrectionJumpThreshold(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMOffsetCorrectionJumpThreshold"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "StbMOffsetCorrectionJumpThreshold"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getStbMRateCorrectionMeasurementDuration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMRateCorrectionMeasurementDuration"].getBigDecimalValue()
			}
			
			def void setStbMRateCorrectionMeasurementDuration(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMRateCorrectionMeasurementDuration"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "StbMRateCorrectionMeasurementDuration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getStbMRateCorrectionsPerMeasurementDuration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMRateCorrectionsPerMeasurementDuration"].getBigIntegerValue()
			}
			
			def void setStbMRateCorrectionsPerMeasurementDuration(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMRateCorrectionsPerMeasurementDuration"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "StbMRateCorrectionsPerMeasurementDuration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
		static class StbMTimeRecording implements IWrapper<GContainer> {
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
		        if (!(object instanceof StbMTimeRecording)){
					return false
				}
				this.target == (object as StbMTimeRecording).target
			}
		
			def String getStbMOffsetTimeRecordBlockCallback(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMOffsetTimeRecordBlockCallback"].getStringValue()
			}
			
			def void setStbMOffsetTimeRecordBlockCallback(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMOffsetTimeRecordBlockCallback"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "StbMOffsetTimeRecordBlockCallback"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getStbMOffsetTimeRecordTableBlockCount(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMOffsetTimeRecordTableBlockCount"].getBigIntegerValue()
			}
			
			def void setStbMOffsetTimeRecordTableBlockCount(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMOffsetTimeRecordTableBlockCount"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "StbMOffsetTimeRecordTableBlockCount"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getStbMSyncTimeRecordBlockCallback(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMSyncTimeRecordBlockCallback"].getStringValue()
			}
			
			def void setStbMSyncTimeRecordBlockCallback(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMSyncTimeRecordBlockCallback"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "StbMSyncTimeRecordBlockCallback"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getStbMSyncTimeRecordTableBlockCount(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMSyncTimeRecordTableBlockCount"].getBigIntegerValue()
			}
			
			def void setStbMSyncTimeRecordTableBlockCount(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "StbMSyncTimeRecordTableBlockCount"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "StbMSyncTimeRecordTableBlockCount"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
		
		
		def org.artop.ecuc.autosar444.accessors.Os.OsScheduleTable getStbMOSScheduleTableRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Os.OsScheduleTable), "StbMOSScheduleTableRef")
		}
		
		def void setStbMOSScheduleTableRef(org.artop.ecuc.autosar444.accessors.Os.OsScheduleTable object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "StbMOSScheduleTableRef"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar444.accessors.StbM.StbMSynchronizedTimeBase getStbMSynchronizedTimeBaseRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.StbM.StbMSynchronizedTimeBase), "StbMSynchronizedTimeBaseRef")
		}
		
		def void setStbMSynchronizedTimeBaseRef(org.artop.ecuc.autosar444.accessors.StbM.StbMSynchronizedTimeBase object){
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
