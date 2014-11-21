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

class Os implements BasicWrappingEList.IWrapper<GModuleConfiguration> {
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
	
	def List<OsAlarm> getOsAlarms(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "OsAlarm")
			}
		}
		return new BasicWrappingEList<OsAlarm, GContainer>(filteredContainers, typeof(OsAlarm), typeof(GContainer))
	}
	def List<OsAppMode> getOsAppModes(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "OsAppMode")
			}
		}
		return new BasicWrappingEList<OsAppMode, GContainer>(filteredContainers, typeof(OsAppMode), typeof(GContainer))
	}
	def List<OsApplication> getOsApplications(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "OsApplication")
			}
		}
		return new BasicWrappingEList<OsApplication, GContainer>(filteredContainers, typeof(OsApplication), typeof(GContainer))
	}
	def List<OsCounter> getOsCounters(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "OsCounter")
			}
		}
		return new BasicWrappingEList<OsCounter, GContainer>(filteredContainers, typeof(OsCounter), typeof(GContainer))
	}
	def List<OsEvent> getOsEvents(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "OsEvent")
			}
		}
		return new BasicWrappingEList<OsEvent, GContainer>(filteredContainers, typeof(OsEvent), typeof(GContainer))
	}
	def OsIoc getOsIoc(){
		moduleConfiguration.getByType(typeof(OsIoc))
	}
	
	def void setOsIoc(OsIoc osIoc){
		val GContainer container = osIoc.getTarget() 
	    moduleConfiguration.setContainer(container, "OsIoc")
	}
	def List<OsIsr> getOsIsrs(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "OsIsr")
			}
		}
		return new BasicWrappingEList<OsIsr, GContainer>(filteredContainers, typeof(OsIsr), typeof(GContainer))
	}
	def OsOS getOsOS(){
		moduleConfiguration.getByType(typeof(OsOS))
	}
	
	def void setOsOS(OsOS osOS){
		val GContainer container = osOS.getTarget() 
	    moduleConfiguration.setContainer(container, "OsOS")
	}
	def List<OsResource> getOsResources(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "OsResource")
			}
		}
		return new BasicWrappingEList<OsResource, GContainer>(filteredContainers, typeof(OsResource), typeof(GContainer))
	}
	def List<OsScheduleTable> getOsScheduleTables(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "OsScheduleTable")
			}
		}
		return new BasicWrappingEList<OsScheduleTable, GContainer>(filteredContainers, typeof(OsScheduleTable), typeof(GContainer))
	}
	def List<OsSpinlock> getOsSpinlocks(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "OsSpinlock")
			}
		}
		return new BasicWrappingEList<OsSpinlock, GContainer>(filteredContainers, typeof(OsSpinlock), typeof(GContainer))
	}
	def List<OsTask> getOsTasks(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "OsTask")
			}
		}
		return new BasicWrappingEList<OsTask, GContainer>(filteredContainers, typeof(OsTask), typeof(GContainer))
	}
	
	static class OsAlarm implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		
		def org.artop.ecuc.autosar421.accessors.Os.OsApplication getOsAlarmAccessingApplication(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsApplication), "OsAlarmAccessingApplication")
		}
				
		def void setOsAlarmAccessingApplication(org.artop.ecuc.autosar421.accessors.Os.OsApplication object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "OsAlarmAccessingApplication"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.Os.OsCounter getOsAlarmCounterRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsCounter), "OsAlarmCounterRef")
		}
				
		def void setOsAlarmCounterRef(org.artop.ecuc.autosar421.accessors.Os.OsCounter object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "OsAlarmCounterRef"], object.getTarget())
			}
		}
		
		
		def OsAlarmAction getOsAlarmAction(){
			containerValue.getByType(typeof(OsAlarmAction))
		}
		
		def void setOsAlarmAction(GContainer subContainer){
			containerValue.setContainer(subContainer, "OsAlarmAction")
		}
		
		def OsAlarmAutostart getOsAlarmAutostart(){
			containerValue.getByType(typeof(OsAlarmAutostart))
		}
		
		def void setOsAlarmAutostart(GContainer subContainer){
			containerValue.setContainer(subContainer, "OsAlarmAutostart")
		}
		
		
		static class OsAlarmAction implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def OsAlarmActivateTask getOsAlarmActivateTask(){
				containerValue.getByType(typeof(OsAlarmActivateTask))
			}
			
			def void setOsAlarmActivateTask(GContainer subContainer){
				containerValue.setContainer(subContainer, "OsAlarmActivateTask")
			}
			def OsAlarmCallback getOsAlarmCallback(){
				containerValue.getByType(typeof(OsAlarmCallback))
			}
			
			def void setOsAlarmCallback(GContainer subContainer){
				containerValue.setContainer(subContainer, "OsAlarmCallback")
			}
			def OsAlarmIncrementCounter getOsAlarmIncrementCounter(){
				containerValue.getByType(typeof(OsAlarmIncrementCounter))
			}
			
			def void setOsAlarmIncrementCounter(GContainer subContainer){
				containerValue.setContainer(subContainer, "OsAlarmIncrementCounter")
			}
			def OsAlarmSetEvent getOsAlarmSetEvent(){
				containerValue.getByType(typeof(OsAlarmSetEvent))
			}
			
			def void setOsAlarmSetEvent(GContainer subContainer){
				containerValue.setContainer(subContainer, "OsAlarmSetEvent")
			}
			
			static class OsAlarmActivateTask implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				
				def org.artop.ecuc.autosar421.accessors.Os.OsTask getOsAlarmActivateTaskRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsTask), "OsAlarmActivateTaskRef")
				}
						
				def void setOsAlarmActivateTaskRef(org.artop.ecuc.autosar421.accessors.Os.OsTask object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "OsAlarmActivateTaskRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class OsAlarmCallback implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def String getOsAlarmCallbackName(){
					EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAlarmCallbackName"])
				}
				
				def void setOsAlarmCallbackName(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAlarmCallbackName"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsAlarmCallbackName"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				
				
			}
			
			static class OsAlarmIncrementCounter implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				
				def org.artop.ecuc.autosar421.accessors.Os.OsCounter getOsAlarmIncrementCounterRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsCounter), "OsAlarmIncrementCounterRef")
				}
						
				def void setOsAlarmIncrementCounterRef(org.artop.ecuc.autosar421.accessors.Os.OsCounter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "OsAlarmIncrementCounterRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class OsAlarmSetEvent implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				
				def org.artop.ecuc.autosar421.accessors.Os.OsEvent getOsAlarmSetEventRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsEvent), "OsAlarmSetEventRef")
				}
						
				def void setOsAlarmSetEventRef(org.artop.ecuc.autosar421.accessors.Os.OsEvent object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "OsAlarmSetEventRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar421.accessors.Os.OsTask getOsAlarmSetEventTaskRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsTask), "OsAlarmSetEventTaskRef")
				}
						
				def void setOsAlarmSetEventTaskRef(org.artop.ecuc.autosar421.accessors.Os.OsTask object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "OsAlarmSetEventTaskRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class OsAlarmAutostart implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Integer getOsAlarmAlarmTime(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAlarmAlarmTime"])
			}
			
			def void setOsAlarmAlarmTime(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAlarmAlarmTime"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsAlarmAlarmTime"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def OsAlarmAutostartType getOsAlarmAutostartType(){
				getOsAlarmAutostartTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAlarmAutostartType"])
			}
			
			def void setOsAlarmAutostartType(OsAlarmAutostartType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAlarmAutostartType"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsAlarmAutostartType"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum OsAlarmAutostartType {
				ABSOLUTE, 
				RELATIVE
			}
				
			def OsAlarmAutostartType getOsAlarmAutostartTypeValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "ABSOLUTE" : OsAlarmAutostartType.ABSOLUTE
					case "RELATIVE" : OsAlarmAutostartType.RELATIVE
				}
			}
			
			def void setOsAlarmAutostartTypeValue(GParameterValue paramValue, OsAlarmAutostartType value){
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def Integer getOsAlarmCycleTime(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAlarmCycleTime"])
			}
			
			def void setOsAlarmCycleTime(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAlarmCycleTime"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsAlarmCycleTime"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.Os.OsAppMode getOsAlarmAppModeRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsAppMode), "OsAlarmAppModeRef")
			}
					
			def void setOsAlarmAppModeRef(org.artop.ecuc.autosar421.accessors.Os.OsAppMode object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "OsAlarmAppModeRef"], object.getTarget())
				}
			}
			
			
			
		}
		
	}
	static class OsAppMode implements BasicWrappingEList.IWrapper<GContainer> {
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
	static class OsApplication implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		def Boolean getOsTrusted(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTrusted"])
		}
		
		def void setOsTrusted(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTrusted"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsTrusted"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getOsTrustedApplicationDelayTimingViolationCall(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTrustedApplicationDelayTimingViolationCall"])
		}
		
		def void setOsTrustedApplicationDelayTimingViolationCall(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTrustedApplicationDelayTimingViolationCall"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsTrustedApplicationDelayTimingViolationCall"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getOsTrustedApplicationWithProtection(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTrustedApplicationWithProtection"])
		}
		
		def void setOsTrustedApplicationWithProtection(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTrustedApplicationWithProtection"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsTrustedApplicationWithProtection"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		
		def org.artop.ecuc.autosar421.accessors.Os.OsAlarm getOsAppAlarmRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsAlarm), "OsAppAlarmRef")
		}
				
		def void setOsAppAlarmRef(org.artop.ecuc.autosar421.accessors.Os.OsAlarm object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "OsAppAlarmRef"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.Os.OsCounter getOsAppCounterRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsCounter), "OsAppCounterRef")
		}
				
		def void setOsAppCounterRef(org.artop.ecuc.autosar421.accessors.Os.OsCounter object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "OsAppCounterRef"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.EcuC.EcucPartitionCollection.EcucPartition getOsAppEcucPartitionRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucPartitionCollection.EcucPartition), "OsAppEcucPartitionRef")
		}
				
		def void setOsAppEcucPartitionRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucPartitionCollection.EcucPartition object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "OsAppEcucPartitionRef"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.Os.OsIsr getOsAppIsrRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsIsr), "OsAppIsrRef")
		}
				
		def void setOsAppIsrRef(org.artop.ecuc.autosar421.accessors.Os.OsIsr object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "OsAppIsrRef"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.Os.OsScheduleTable getOsAppScheduleTableRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsScheduleTable), "OsAppScheduleTableRef")
		}
				
		def void setOsAppScheduleTableRef(org.artop.ecuc.autosar421.accessors.Os.OsScheduleTable object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "OsAppScheduleTableRef"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.Os.OsTask getOsAppTaskRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsTask), "OsAppTaskRef")
		}
				
		def void setOsAppTaskRef(org.artop.ecuc.autosar421.accessors.Os.OsTask object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "OsAppTaskRef"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.Os.OsTask getOsRestartTask(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsTask), "OsRestartTask")
		}
				
		def void setOsRestartTask(org.artop.ecuc.autosar421.accessors.Os.OsTask object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "OsRestartTask"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.EcuC.EcucHardware.EcucCoreDefinition getOsApplicationCoreRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucHardware.EcucCoreDefinition), "OsApplicationCoreRef")
		}
				
		def void setOsApplicationCoreRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucHardware.EcucCoreDefinition object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "OsApplicationCoreRef"], object.getTarget())
			}
		}
		
		
		def OsApplicationHooks getOsApplicationHooks(){
			containerValue.getByType(typeof(OsApplicationHooks))
		}
		
		def void setOsApplicationHooks(GContainer subContainer){
			containerValue.setContainer(subContainer, "OsApplicationHooks")
		}
		
		def List<OsApplicationTrustedFunction> getOsApplicationTrustedFunctions(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "OsApplicationTrustedFunction")
				}
			}
			return new BasicWrappingEList<OsApplicationTrustedFunction, GContainer>(filteredContainers, typeof(OsApplicationTrustedFunction), typeof(GContainer))
		}
		
		
		static class OsApplicationHooks implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Boolean getOsAppErrorHook(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAppErrorHook"])
			}
			
			def void setOsAppErrorHook(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAppErrorHook"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsAppErrorHook"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getOsAppShutdownHook(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAppShutdownHook"])
			}
			
			def void setOsAppShutdownHook(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAppShutdownHook"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsAppShutdownHook"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getOsAppStartupHook(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAppStartupHook"])
			}
			
			def void setOsAppStartupHook(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAppStartupHook"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsAppStartupHook"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
		static class OsApplicationTrustedFunction implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def String getOsTrustedFunctionName(){
				EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTrustedFunctionName"])
			}
			
			def void setOsTrustedFunctionName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTrustedFunctionName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsTrustedFunctionName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class OsCounter implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		def Integer getOsCounterMaxAllowedValue(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsCounterMaxAllowedValue"])
		}
		
		def void setOsCounterMaxAllowedValue(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsCounterMaxAllowedValue"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsCounterMaxAllowedValue"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getOsCounterMinCycle(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsCounterMinCycle"])
		}
		
		def void setOsCounterMinCycle(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsCounterMinCycle"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsCounterMinCycle"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getOsCounterTicksPerBase(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsCounterTicksPerBase"])
		}
		
		def void setOsCounterTicksPerBase(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsCounterTicksPerBase"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsCounterTicksPerBase"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def OsCounterType getOsCounterType(){
			getOsCounterTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsCounterType"])
		}
		
		def void setOsCounterType(OsCounterType value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsCounterType"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsCounterType"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum OsCounterType {
			HARDWARE, 
			SOFTWARE
		}
			
		def OsCounterType getOsCounterTypeValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "HARDWARE" : OsCounterType.HARDWARE
				case "SOFTWARE" : OsCounterType.SOFTWARE
			}
		}
		
		def void setOsCounterTypeValue(GParameterValue paramValue, OsCounterType value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def Float getOsSecondsPerTick(){
			EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsSecondsPerTick"])
		}
		
		def void setOsSecondsPerTick(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsSecondsPerTick"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsSecondsPerTick"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		
		def org.artop.ecuc.autosar421.accessors.Os.OsApplication getOsCounterAccessingApplication(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsApplication), "OsCounterAccessingApplication")
		}
				
		def void setOsCounterAccessingApplication(org.artop.ecuc.autosar421.accessors.Os.OsApplication object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "OsCounterAccessingApplication"], object.getTarget())
			}
		}
		
		
		def OsDriver getOsDriver(){
			containerValue.getByType(typeof(OsDriver))
		}
		
		def void setOsDriver(GContainer subContainer){
			containerValue.setContainer(subContainer, "OsDriver")
		}
		
		def List<OsTimeConstant> getOsTimeConstants(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "OsTimeConstant")
				}
			}
			return new BasicWrappingEList<OsTimeConstant, GContainer>(filteredContainers, typeof(OsTimeConstant), typeof(GContainer))
		}
		
		
		static class OsDriver implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			
			def org.artop.ecuc.autosar421.accessors.Gpt.GptChannelConfigSet.GptChannelConfiguration getOsGptChannelRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Gpt.GptChannelConfigSet.GptChannelConfiguration), "OsGptChannelRef")
			}
					
			def void setOsGptChannelRef(org.artop.ecuc.autosar421.accessors.Gpt.GptChannelConfigSet.GptChannelConfiguration object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "OsGptChannelRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class OsTimeConstant implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Float getOsTimeValue(){
				EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTimeValue"])
			}
			
			def void setOsTimeValue(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTimeValue"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsTimeValue"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class OsEvent implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		def Integer getOsEventMask(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsEventMask"])
		}
		
		def void setOsEventMask(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsEventMask"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsEventMask"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		
		
		
	}
	static class OsIoc implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		
		
		def List<OsIocCommunication> getOsIocCommunications(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "OsIocCommunication")
				}
			}
			return new BasicWrappingEList<OsIocCommunication, GContainer>(filteredContainers, typeof(OsIocCommunication), typeof(GContainer))
		}
		
		
		static class OsIocCommunication implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Integer getOsIocBufferLength(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocBufferLength"])
			}
			
			def void setOsIocBufferLength(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocBufferLength"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsIocBufferLength"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			
			def List<OsIocDataProperties> getOsIocDataProperties(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "OsIocDataProperties")
					}
				}
				return new BasicWrappingEList<OsIocDataProperties, GContainer>(filteredContainers, typeof(OsIocDataProperties), typeof(GContainer))
			}
			
			def List<OsIocReceiverProperties> getOsIocReceiverProperties(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "OsIocReceiverProperties")
					}
				}
				return new BasicWrappingEList<OsIocReceiverProperties, GContainer>(filteredContainers, typeof(OsIocReceiverProperties), typeof(GContainer))
			}
			
			def List<OsIocSenderProperties> getOsIocSenderProperties(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "OsIocSenderProperties")
					}
				}
				return new BasicWrappingEList<OsIocSenderProperties, GContainer>(filteredContainers, typeof(OsIocSenderProperties), typeof(GContainer))
			}
			
			
			static class OsIocDataProperties implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def Integer getOsIocDataPropertyIndex(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocDataPropertyIndex"])
				}
				
				def void setOsIocDataPropertyIndex(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocDataPropertyIndex"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsIocDataPropertyIndex"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def String getOsIocInitValue(){
					EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocInitValue"])
				}
				
				def void setOsIocInitValue(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocInitValue"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsIocInitValue"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				
				
				
			}
			
			static class OsIocReceiverProperties implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def OsIocFunctionImplementationKind getOsIocFunctionImplementationKind(){
					getOsIocFunctionImplementationKindValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocFunctionImplementationKind"])
				}
				
				def void setOsIocFunctionImplementationKind(OsIocFunctionImplementationKind value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocFunctionImplementationKind"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsIocFunctionImplementationKind"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				enum OsIocFunctionImplementationKind {
					DO_NOT_CARE, 
					FUNCTION, 
					MACRO
				}
					
				def OsIocFunctionImplementationKind getOsIocFunctionImplementationKindValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "DO_NOT_CARE" : OsIocFunctionImplementationKind.DO_NOT_CARE
						case "FUNCTION" : OsIocFunctionImplementationKind.FUNCTION
						case "MACRO" : OsIocFunctionImplementationKind.MACRO
					}
				}
				
				def void setOsIocFunctionImplementationKindValue(GParameterValue paramValue, OsIocFunctionImplementationKind value){
					EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
				}
				
				def String getOsIocReceiverPullCB(){
					EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocReceiverPullCB"])
				}
				
				def void setOsIocReceiverPullCB(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocReceiverPullCB"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsIocReceiverPullCB"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.Os.OsApplication getOsIocReceivingOsApplicationRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsApplication), "OsIocReceivingOsApplicationRef")
				}
						
				def void setOsIocReceivingOsApplicationRef(org.artop.ecuc.autosar421.accessors.Os.OsApplication object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "OsIocReceivingOsApplicationRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class OsIocSenderProperties implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def OsIocFunctionImplementationKind getOsIocFunctionImplementationKind(){
					getOsIocFunctionImplementationKindValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocFunctionImplementationKind"])
				}
				
				def void setOsIocFunctionImplementationKind(OsIocFunctionImplementationKind value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocFunctionImplementationKind"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsIocFunctionImplementationKind"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				enum OsIocFunctionImplementationKind {
					DO_NOT_CARE, 
					FUNCTION, 
					MACRO
				}
					
				def OsIocFunctionImplementationKind getOsIocFunctionImplementationKindValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "DO_NOT_CARE" : OsIocFunctionImplementationKind.DO_NOT_CARE
						case "FUNCTION" : OsIocFunctionImplementationKind.FUNCTION
						case "MACRO" : OsIocFunctionImplementationKind.MACRO
					}
				}
				
				def void setOsIocFunctionImplementationKindValue(GParameterValue paramValue, OsIocFunctionImplementationKind value){
					EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
				}
				
				def Integer getOsIocSenderId(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocSenderId"])
				}
				
				def void setOsIocSenderId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocSenderId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsIocSenderId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.Os.OsApplication getOsIocSendingOsApplicationRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsApplication), "OsIocSendingOsApplicationRef")
				}
						
				def void setOsIocSendingOsApplicationRef(org.artop.ecuc.autosar421.accessors.Os.OsApplication object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "OsIocSendingOsApplicationRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
	}
	static class OsIsr implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		def OsIsrCategory getOsIsrCategory(){
			getOsIsrCategoryValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIsrCategory"])
		}
		
		def void setOsIsrCategory(OsIsrCategory value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIsrCategory"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsIsrCategory"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum OsIsrCategory {
			CATEGORY_1, 
			CATEGORY_2
		}
			
		def OsIsrCategory getOsIsrCategoryValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "CATEGORY_1" : OsIsrCategory.CATEGORY_1
				case "CATEGORY_2" : OsIsrCategory.CATEGORY_2
			}
		}
		
		def void setOsIsrCategoryValue(GParameterValue paramValue, OsIsrCategory value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		
		def org.artop.ecuc.autosar421.accessors.Os.OsResource getOsIsrResourceRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsResource), "OsIsrResourceRef")
		}
				
		def void setOsIsrResourceRef(org.artop.ecuc.autosar421.accessors.Os.OsResource object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "OsIsrResourceRef"], object.getTarget())
			}
		}
		
		
		def OsIsrTimingProtection getOsIsrTimingProtection(){
			containerValue.getByType(typeof(OsIsrTimingProtection))
		}
		
		def void setOsIsrTimingProtection(GContainer subContainer){
			containerValue.setContainer(subContainer, "OsIsrTimingProtection")
		}
		
		
		static class OsIsrTimingProtection implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Float getOsIsrAllInterruptLockBudget(){
				EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIsrAllInterruptLockBudget"])
			}
			
			def void setOsIsrAllInterruptLockBudget(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIsrAllInterruptLockBudget"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsIsrAllInterruptLockBudget"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Float getOsIsrExecutionBudget(){
				EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIsrExecutionBudget"])
			}
			
			def void setOsIsrExecutionBudget(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIsrExecutionBudget"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsIsrExecutionBudget"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Float getOsIsrOsInterruptLockBudget(){
				EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIsrOsInterruptLockBudget"])
			}
			
			def void setOsIsrOsInterruptLockBudget(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIsrOsInterruptLockBudget"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsIsrOsInterruptLockBudget"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Float getOsIsrTimeFrame(){
				EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIsrTimeFrame"])
			}
			
			def void setOsIsrTimeFrame(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIsrTimeFrame"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsIsrTimeFrame"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			
			def List<OsIsrResourceLock> getOsIsrResourceLocks(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "OsIsrResourceLock")
					}
				}
				return new BasicWrappingEList<OsIsrResourceLock, GContainer>(filteredContainers, typeof(OsIsrResourceLock), typeof(GContainer))
			}
			
			
			static class OsIsrResourceLock implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def Float getOsIsrResourceLockBudget(){
					EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIsrResourceLockBudget"])
				}
				
				def void setOsIsrResourceLockBudget(Float value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIsrResourceLockBudget"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsIsrResourceLockBudget"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.Os.OsResource getOsIsrResourceLockResourceRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsResource), "OsIsrResourceLockResourceRef")
				}
						
				def void setOsIsrResourceLockResourceRef(org.artop.ecuc.autosar421.accessors.Os.OsResource object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "OsIsrResourceLockResourceRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
	}
	static class OsOS implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		def Integer getOsNumberOfCores(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsNumberOfCores"])
		}
		
		def void setOsNumberOfCores(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsNumberOfCores"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsNumberOfCores"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def OsScalabilityClass getOsScalabilityClass(){
			getOsScalabilityClassValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScalabilityClass"])
		}
		
		def void setOsScalabilityClass(OsScalabilityClass value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScalabilityClass"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsScalabilityClass"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum OsScalabilityClass {
			SC1, 
			SC2, 
			SC3, 
			SC4
		}
			
		def OsScalabilityClass getOsScalabilityClassValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "SC1" : OsScalabilityClass.SC1
				case "SC2" : OsScalabilityClass.SC2
				case "SC3" : OsScalabilityClass.SC3
				case "SC4" : OsScalabilityClass.SC4
			}
		}
		
		def void setOsScalabilityClassValue(GParameterValue paramValue, OsScalabilityClass value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def Boolean getOsStackMonitoring(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsStackMonitoring"])
		}
		
		def void setOsStackMonitoring(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsStackMonitoring"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsStackMonitoring"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def OsStatus getOsStatus(){
			getOsStatusValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsStatus"])
		}
		
		def void setOsStatus(OsStatus value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsStatus"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsStatus"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum OsStatus {
			EXTENDED, 
			STANDARD
		}
			
		def OsStatus getOsStatusValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "EXTENDED" : OsStatus.EXTENDED
				case "STANDARD" : OsStatus.STANDARD
			}
		}
		
		def void setOsStatusValue(GParameterValue paramValue, OsStatus value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def Boolean getOsUseGetServiceId(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsUseGetServiceId"])
		}
		
		def void setOsUseGetServiceId(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsUseGetServiceId"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsUseGetServiceId"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getOsUseParameterAccess(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsUseParameterAccess"])
		}
		
		def void setOsUseParameterAccess(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsUseParameterAccess"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsUseParameterAccess"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getOsUseResScheduler(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsUseResScheduler"])
		}
		
		def void setOsUseResScheduler(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsUseResScheduler"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsUseResScheduler"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		
		
		def OsHooks getOsHooks(){
			containerValue.getByType(typeof(OsHooks))
		}
		
		def void setOsHooks(GContainer subContainer){
			containerValue.setContainer(subContainer, "OsHooks")
		}
		
		
		static class OsHooks implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Boolean getOsErrorHook(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsErrorHook"])
			}
			
			def void setOsErrorHook(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsErrorHook"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsErrorHook"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getOsPostTaskHook(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsPostTaskHook"])
			}
			
			def void setOsPostTaskHook(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsPostTaskHook"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsPostTaskHook"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getOsPreTaskHook(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsPreTaskHook"])
			}
			
			def void setOsPreTaskHook(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsPreTaskHook"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsPreTaskHook"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getOsProtectionHook(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsProtectionHook"])
			}
			
			def void setOsProtectionHook(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsProtectionHook"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsProtectionHook"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getOsShutdownHook(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsShutdownHook"])
			}
			
			def void setOsShutdownHook(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsShutdownHook"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsShutdownHook"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Boolean getOsStartupHook(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsStartupHook"])
			}
			
			def void setOsStartupHook(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsStartupHook"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsStartupHook"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class OsResource implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		def OsResourceProperty getOsResourceProperty(){
			getOsResourcePropertyValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsResourceProperty"])
		}
		
		def void setOsResourceProperty(OsResourceProperty value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsResourceProperty"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsResourceProperty"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum OsResourceProperty {
			INTERNAL, 
			LINKED, 
			STANDARD
		}
			
		def OsResourceProperty getOsResourcePropertyValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "INTERNAL" : OsResourceProperty.INTERNAL
				case "LINKED" : OsResourceProperty.LINKED
				case "STANDARD" : OsResourceProperty.STANDARD
			}
		}
		
		def void setOsResourcePropertyValue(GParameterValue paramValue, OsResourceProperty value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		
		def org.artop.ecuc.autosar421.accessors.Os.OsApplication getOsResourceAccessingApplication(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsApplication), "OsResourceAccessingApplication")
		}
				
		def void setOsResourceAccessingApplication(org.artop.ecuc.autosar421.accessors.Os.OsApplication object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "OsResourceAccessingApplication"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.Os.OsResource getOsResourceLinkedResourceRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsResource), "OsResourceLinkedResourceRef")
		}
				
		def void setOsResourceLinkedResourceRef(org.artop.ecuc.autosar421.accessors.Os.OsResource object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "OsResourceLinkedResourceRef"], object.getTarget())
			}
		}
		
		
		
	}
	static class OsScheduleTable implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		def Integer getOsScheduleTableDuration(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTableDuration"])
		}
		
		def void setOsScheduleTableDuration(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTableDuration"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsScheduleTableDuration"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getOsScheduleTableRepeating(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTableRepeating"])
		}
		
		def void setOsScheduleTableRepeating(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTableRepeating"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsScheduleTableRepeating"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		
		def org.artop.ecuc.autosar421.accessors.Os.OsApplication getOsSchTblAccessingApplication(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsApplication), "OsSchTblAccessingApplication")
		}
				
		def void setOsSchTblAccessingApplication(org.artop.ecuc.autosar421.accessors.Os.OsApplication object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "OsSchTblAccessingApplication"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.Os.OsCounter getOsScheduleTableCounterRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsCounter), "OsScheduleTableCounterRef")
		}
				
		def void setOsScheduleTableCounterRef(org.artop.ecuc.autosar421.accessors.Os.OsCounter object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "OsScheduleTableCounterRef"], object.getTarget())
			}
		}
		
		
		def OsScheduleTableAutostart getOsScheduleTableAutostart(){
			containerValue.getByType(typeof(OsScheduleTableAutostart))
		}
		
		def void setOsScheduleTableAutostart(GContainer subContainer){
			containerValue.setContainer(subContainer, "OsScheduleTableAutostart")
		}
		
		def List<OsScheduleTableExpiryPoint> getOsScheduleTableExpiryPoints(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "OsScheduleTableExpiryPoint")
				}
			}
			return new BasicWrappingEList<OsScheduleTableExpiryPoint, GContainer>(filteredContainers, typeof(OsScheduleTableExpiryPoint), typeof(GContainer))
		}
		
		def OsScheduleTableSync getOsScheduleTableSync(){
			containerValue.getByType(typeof(OsScheduleTableSync))
		}
		
		def void setOsScheduleTableSync(GContainer subContainer){
			containerValue.setContainer(subContainer, "OsScheduleTableSync")
		}
		
		
		static class OsScheduleTableAutostart implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def OsScheduleTableAutostartType getOsScheduleTableAutostartType(){
				getOsScheduleTableAutostartTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTableAutostartType"])
			}
			
			def void setOsScheduleTableAutostartType(OsScheduleTableAutostartType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTableAutostartType"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsScheduleTableAutostartType"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum OsScheduleTableAutostartType {
				ABSOLUTE, 
				RELATIVE, 
				SYNCHRON
			}
				
			def OsScheduleTableAutostartType getOsScheduleTableAutostartTypeValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "ABSOLUTE" : OsScheduleTableAutostartType.ABSOLUTE
					case "RELATIVE" : OsScheduleTableAutostartType.RELATIVE
					case "SYNCHRON" : OsScheduleTableAutostartType.SYNCHRON
				}
			}
			
			def void setOsScheduleTableAutostartTypeValue(GParameterValue paramValue, OsScheduleTableAutostartType value){
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			def Integer getOsScheduleTableStartValue(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTableStartValue"])
			}
			
			def void setOsScheduleTableStartValue(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTableStartValue"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsScheduleTableStartValue"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.Os.OsAppMode getOsScheduleTableAppModeRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsAppMode), "OsScheduleTableAppModeRef")
			}
					
			def void setOsScheduleTableAppModeRef(org.artop.ecuc.autosar421.accessors.Os.OsAppMode object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "OsScheduleTableAppModeRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class OsScheduleTableExpiryPoint implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Integer getOsScheduleTblExpPointOffset(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTblExpPointOffset"])
			}
			
			def void setOsScheduleTblExpPointOffset(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTblExpPointOffset"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsScheduleTblExpPointOffset"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			
			def List<OsScheduleTableEventSetting> getOsScheduleTableEventSettings(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "OsScheduleTableEventSetting")
					}
				}
				return new BasicWrappingEList<OsScheduleTableEventSetting, GContainer>(filteredContainers, typeof(OsScheduleTableEventSetting), typeof(GContainer))
			}
			
			def List<OsScheduleTableTaskActivation> getOsScheduleTableTaskActivations(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "OsScheduleTableTaskActivation")
					}
				}
				return new BasicWrappingEList<OsScheduleTableTaskActivation, GContainer>(filteredContainers, typeof(OsScheduleTableTaskActivation), typeof(GContainer))
			}
			
			def OsScheduleTblAdjustableExpPoint getOsScheduleTblAdjustableExpPoint(){
				containerValue.getByType(typeof(OsScheduleTblAdjustableExpPoint))
			}
			
			def void setOsScheduleTblAdjustableExpPoint(GContainer subContainer){
				containerValue.setContainer(subContainer, "OsScheduleTblAdjustableExpPoint")
			}
			
			
			static class OsScheduleTableEventSetting implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				
				def org.artop.ecuc.autosar421.accessors.Os.OsEvent getOsScheduleTableSetEventRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsEvent), "OsScheduleTableSetEventRef")
				}
						
				def void setOsScheduleTableSetEventRef(org.artop.ecuc.autosar421.accessors.Os.OsEvent object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "OsScheduleTableSetEventRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar421.accessors.Os.OsTask getOsScheduleTableSetEventTaskRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsTask), "OsScheduleTableSetEventTaskRef")
				}
						
				def void setOsScheduleTableSetEventTaskRef(org.artop.ecuc.autosar421.accessors.Os.OsTask object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "OsScheduleTableSetEventTaskRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class OsScheduleTableTaskActivation implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				
				def org.artop.ecuc.autosar421.accessors.Os.OsTask getOsScheduleTableActivateTaskRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsTask), "OsScheduleTableActivateTaskRef")
				}
						
				def void setOsScheduleTableActivateTaskRef(org.artop.ecuc.autosar421.accessors.Os.OsTask object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "OsScheduleTableActivateTaskRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class OsScheduleTblAdjustableExpPoint implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def Integer getOsScheduleTableMaxLengthen(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTableMaxLengthen"])
				}
				
				def void setOsScheduleTableMaxLengthen(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTableMaxLengthen"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsScheduleTableMaxLengthen"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getOsScheduleTableMaxShorten(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTableMaxShorten"])
				}
				
				def void setOsScheduleTableMaxShorten(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTableMaxShorten"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsScheduleTableMaxShorten"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				
				
			}
			
		}
		
		static class OsScheduleTableSync implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Integer getOsScheduleTblExplicitPrecision(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTblExplicitPrecision"])
			}
			
			def void setOsScheduleTblExplicitPrecision(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTblExplicitPrecision"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsScheduleTblExplicitPrecision"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def OsScheduleTblSyncStrategy getOsScheduleTblSyncStrategy(){
				getOsScheduleTblSyncStrategyValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTblSyncStrategy"])
			}
			
			def void setOsScheduleTblSyncStrategy(OsScheduleTblSyncStrategy value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTblSyncStrategy"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsScheduleTblSyncStrategy"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			enum OsScheduleTblSyncStrategy {
				EXPLICIT, 
				IMPLICIT, 
				NONE
			}
				
			def OsScheduleTblSyncStrategy getOsScheduleTblSyncStrategyValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "EXPLICIT" : OsScheduleTblSyncStrategy.EXPLICIT
					case "IMPLICIT" : OsScheduleTblSyncStrategy.IMPLICIT
					case "NONE" : OsScheduleTblSyncStrategy.NONE
				}
			}
			
			def void setOsScheduleTblSyncStrategyValue(GParameterValue paramValue, OsScheduleTblSyncStrategy value){
				EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
			}
			
			
			
			
		}
		
	}
	static class OsSpinlock implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		def OsSpinlockLockMethod getOsSpinlockLockMethod(){
			getOsSpinlockLockMethodValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsSpinlockLockMethod"])
		}
		
		def void setOsSpinlockLockMethod(OsSpinlockLockMethod value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsSpinlockLockMethod"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsSpinlockLockMethod"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum OsSpinlockLockMethod {
			LOCK_ALL_INTERRUPTS, 
			LOCK_CAT2_INTERRUPTS, 
			LOCK_NOTHING, 
			LOCK_WITH_RES_SCHEDULER
		}
			
		def OsSpinlockLockMethod getOsSpinlockLockMethodValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "LOCK_ALL_INTERRUPTS" : OsSpinlockLockMethod.LOCK_ALL_INTERRUPTS
				case "LOCK_CAT2_INTERRUPTS" : OsSpinlockLockMethod.LOCK_CAT2_INTERRUPTS
				case "LOCK_NOTHING" : OsSpinlockLockMethod.LOCK_NOTHING
				case "LOCK_WITH_RES_SCHEDULER" : OsSpinlockLockMethod.LOCK_WITH_RES_SCHEDULER
			}
		}
		
		def void setOsSpinlockLockMethodValue(GParameterValue paramValue, OsSpinlockLockMethod value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		
		def org.artop.ecuc.autosar421.accessors.Os.OsApplication getOsSpinlockAccessingApplication(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsApplication), "OsSpinlockAccessingApplication")
		}
				
		def void setOsSpinlockAccessingApplication(org.artop.ecuc.autosar421.accessors.Os.OsApplication object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "OsSpinlockAccessingApplication"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.Os.OsSpinlock getOsSpinlockSuccessor(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsSpinlock), "OsSpinlockSuccessor")
		}
				
		def void setOsSpinlockSuccessor(org.artop.ecuc.autosar421.accessors.Os.OsSpinlock object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "OsSpinlockSuccessor"], object.getTarget())
			}
		}
		
		
		
	}
	static class OsTask implements BasicWrappingEList.IWrapper<GContainer> {
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
		
		def Integer getOsTaskActivation(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskActivation"])
		}
		
		def void setOsTaskActivation(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskActivation"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsTaskActivation"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getOsTaskPriority(){
			EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskPriority"])
		}
		
		def void setOsTaskPriority(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskPriority"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsTaskPriority"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def OsTaskSchedule getOsTaskSchedule(){
			getOsTaskScheduleValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskSchedule"])
		}
		
		def void setOsTaskSchedule(OsTaskSchedule value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskSchedule"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsTaskSchedule"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum OsTaskSchedule {
			FULL, 
			NON
		}
			
		def OsTaskSchedule getOsTaskScheduleValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "FULL" : OsTaskSchedule.FULL
				case "NON" : OsTaskSchedule.NON
			}
		}
		
		def void setOsTaskScheduleValue(GParameterValue paramValue, OsTaskSchedule value){
			EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		
		def org.artop.ecuc.autosar421.accessors.Os.OsApplication getOsTaskAccessingApplication(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsApplication), "OsTaskAccessingApplication")
		}
				
		def void setOsTaskAccessingApplication(org.artop.ecuc.autosar421.accessors.Os.OsApplication object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "OsTaskAccessingApplication"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.Os.OsEvent getOsTaskEventRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsEvent), "OsTaskEventRef")
		}
				
		def void setOsTaskEventRef(org.artop.ecuc.autosar421.accessors.Os.OsEvent object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "OsTaskEventRef"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar421.accessors.Os.OsResource getOsTaskResourceRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsResource), "OsTaskResourceRef")
		}
				
		def void setOsTaskResourceRef(org.artop.ecuc.autosar421.accessors.Os.OsResource object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "OsTaskResourceRef"], object.getTarget())
			}
		}
		
		
		def OsTaskAutostart getOsTaskAutostart(){
			containerValue.getByType(typeof(OsTaskAutostart))
		}
		
		def void setOsTaskAutostart(GContainer subContainer){
			containerValue.setContainer(subContainer, "OsTaskAutostart")
		}
		
		def OsTaskTimingProtection getOsTaskTimingProtection(){
			containerValue.getByType(typeof(OsTaskTimingProtection))
		}
		
		def void setOsTaskTimingProtection(GContainer subContainer){
			containerValue.setContainer(subContainer, "OsTaskTimingProtection")
		}
		
		
		static class OsTaskAutostart implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			
			def org.artop.ecuc.autosar421.accessors.Os.OsAppMode getOsTaskAppModeRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsAppMode), "OsTaskAppModeRef")
			}
					
			def void setOsTaskAppModeRef(org.artop.ecuc.autosar421.accessors.Os.OsAppMode object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "OsTaskAppModeRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class OsTaskTimingProtection implements BasicWrappingEList.IWrapper<GContainer> {
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
			
			def Float getOsTaskAllInterruptLockBudget(){
				EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskAllInterruptLockBudget"])
			}
			
			def void setOsTaskAllInterruptLockBudget(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskAllInterruptLockBudget"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsTaskAllInterruptLockBudget"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Float getOsTaskExecutionBudget(){
				EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskExecutionBudget"])
			}
			
			def void setOsTaskExecutionBudget(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskExecutionBudget"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsTaskExecutionBudget"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Float getOsTaskOsInterruptLockBudget(){
				EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskOsInterruptLockBudget"])
			}
			
			def void setOsTaskOsInterruptLockBudget(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskOsInterruptLockBudget"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsTaskOsInterruptLockBudget"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Float getOsTaskTimeFrame(){
				EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskTimeFrame"])
			}
			
			def void setOsTaskTimeFrame(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskTimeFrame"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsTaskTimeFrame"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			
			def List<OsTaskResourceLock> getOsTaskResourceLocks(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "OsTaskResourceLock")
					}
				}
				return new BasicWrappingEList<OsTaskResourceLock, GContainer>(filteredContainers, typeof(OsTaskResourceLock), typeof(GContainer))
			}
			
			
			static class OsTaskResourceLock implements BasicWrappingEList.IWrapper<GContainer> {
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
				
				def Float getOsTaskResourceLockBudget(){
					EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskResourceLockBudget"])
				}
				
				def void setOsTaskResourceLockBudget(Float value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskResourceLockBudget"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsTaskResourceLockBudget"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.Os.OsResource getOsTaskResourceLockResourceRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsResource), "OsTaskResourceLockResourceRef")
				}
						
				def void setOsTaskResourceLockResourceRef(org.artop.ecuc.autosar421.accessors.Os.OsResource object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "OsTaskResourceLockResourceRef"], object.getTarget())
					}
				}
				
				
				
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
