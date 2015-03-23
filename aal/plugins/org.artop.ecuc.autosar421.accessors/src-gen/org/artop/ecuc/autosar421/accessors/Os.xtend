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
import org.artop.ecuc.autosar421.accessors.lib.BigIntegerValueUnwrappingEList
import org.artop.ecuc.autosar421.accessors.lib.BigDecimalValueUnwrappingEList
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
import java.math.BigInteger
import java.math.BigDecimal

class Os implements IWrapper<GModuleConfiguration> {
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
		return new BasicWrappingEList<OsAlarm, GContainer>(filteredContainers, typeof(OsAlarm), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Os$OsAlarm osAlarm) {
				osAlarm.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("OsAlarm"))
				super.delegateAdd(osAlarm)
			}
		
			override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Os$OsAlarm osAlarm) {
				osAlarm.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("OsAlarm"))
				super.delegateAdd(index, osAlarm)
			}
		}
	}
	def List<OsAppMode> getOsAppModes(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "OsAppMode")
			}
		}
		return new BasicWrappingEList<OsAppMode, GContainer>(filteredContainers, typeof(OsAppMode), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Os$OsAppMode osAppMode) {
				osAppMode.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("OsAppMode"))
				super.delegateAdd(osAppMode)
			}
		
			override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Os$OsAppMode osAppMode) {
				osAppMode.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("OsAppMode"))
				super.delegateAdd(index, osAppMode)
			}
		}
	}
	def List<OsApplication> getOsApplications(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "OsApplication")
			}
		}
		return new BasicWrappingEList<OsApplication, GContainer>(filteredContainers, typeof(OsApplication), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Os$OsApplication osApplication) {
				osApplication.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("OsApplication"))
				super.delegateAdd(osApplication)
			}
		
			override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Os$OsApplication osApplication) {
				osApplication.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("OsApplication"))
				super.delegateAdd(index, osApplication)
			}
		}
	}
	def List<OsCounter> getOsCounters(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "OsCounter")
			}
		}
		return new BasicWrappingEList<OsCounter, GContainer>(filteredContainers, typeof(OsCounter), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Os$OsCounter osCounter) {
				osCounter.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("OsCounter"))
				super.delegateAdd(osCounter)
			}
		
			override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Os$OsCounter osCounter) {
				osCounter.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("OsCounter"))
				super.delegateAdd(index, osCounter)
			}
		}
	}
	def List<OsEvent> getOsEvents(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "OsEvent")
			}
		}
		return new BasicWrappingEList<OsEvent, GContainer>(filteredContainers, typeof(OsEvent), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Os$OsEvent osEvent) {
				osEvent.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("OsEvent"))
				super.delegateAdd(osEvent)
			}
		
			override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Os$OsEvent osEvent) {
				osEvent.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("OsEvent"))
				super.delegateAdd(index, osEvent)
			}
		}
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
		return new BasicWrappingEList<OsIsr, GContainer>(filteredContainers, typeof(OsIsr), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Os$OsIsr osIsr) {
				osIsr.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("OsIsr"))
				super.delegateAdd(osIsr)
			}
		
			override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Os$OsIsr osIsr) {
				osIsr.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("OsIsr"))
				super.delegateAdd(index, osIsr)
			}
		}
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
		return new BasicWrappingEList<OsResource, GContainer>(filteredContainers, typeof(OsResource), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Os$OsResource osResource) {
				osResource.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("OsResource"))
				super.delegateAdd(osResource)
			}
		
			override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Os$OsResource osResource) {
				osResource.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("OsResource"))
				super.delegateAdd(index, osResource)
			}
		}
	}
	def List<OsScheduleTable> getOsScheduleTables(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "OsScheduleTable")
			}
		}
		return new BasicWrappingEList<OsScheduleTable, GContainer>(filteredContainers, typeof(OsScheduleTable), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Os$OsScheduleTable osScheduleTable) {
				osScheduleTable.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("OsScheduleTable"))
				super.delegateAdd(osScheduleTable)
			}
		
			override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Os$OsScheduleTable osScheduleTable) {
				osScheduleTable.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("OsScheduleTable"))
				super.delegateAdd(index, osScheduleTable)
			}
		}
	}
	def List<OsSpinlock> getOsSpinlocks(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "OsSpinlock")
			}
		}
		return new BasicWrappingEList<OsSpinlock, GContainer>(filteredContainers, typeof(OsSpinlock), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Os$OsSpinlock osSpinlock) {
				osSpinlock.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("OsSpinlock"))
				super.delegateAdd(osSpinlock)
			}
		
			override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Os$OsSpinlock osSpinlock) {
				osSpinlock.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("OsSpinlock"))
				super.delegateAdd(index, osSpinlock)
			}
		}
	}
	def List<OsTask> getOsTasks(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "OsTask")
			}
		}
		return new BasicWrappingEList<OsTask, GContainer>(filteredContainers, typeof(OsTask), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Os$OsTask osTask) {
				osTask.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("OsTask"))
				super.delegateAdd(osTask)
			}
		
			override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Os$OsTask osTask) {
				osTask.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("OsTask"))
				super.delegateAdd(index, osTask)
			}
		}
	}
	
	static class OsAlarm implements IWrapper<GContainer> {
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
		
		
		def List<org.artop.ecuc.autosar421.accessors.Os.OsApplication> getOsAlarmAccessingApplications(){
			val containerDef = containerValue.gGetDefinition
			val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
				containerDef.gGetReferences.findFirst[gGetShortName == "OsAlarmAccessingApplication"] else null
							
			val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
				override protected accept(GReferenceValue item) {
					return accept(item, typeof(GConfigReference), "OsAlarmAccessingApplication")
				}
			}
			
			return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Os.OsApplication>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Os.OsApplication)) {
				override protected wrap(org.artop.ecuc.autosar421.accessors.Os.OsApplication object) throws CoreException {
					if (object != null) {
						val container = object.getTarget()
						val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
						referenceValue.gSetDefinition(referenceValueDef)
						referenceValue.gSetValue(container)
						return referenceValue
					}
				}
				
				override protected unwrap(GReferenceValue referenceValue) {
					if (referenceValue != null) {
						val referenceValueValue = referenceValue.gGetValue
						if (referenceValueValue instanceof GContainer) {
							return new org.artop.ecuc.autosar421.accessors.Os.OsApplication(referenceValueValue as GContainer)
						}
					}
				}
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
		
		def void setOsAlarmAction(OsAlarmAction osAlarmAction){
			val GContainer subContainer = osAlarmAction.getTarget()
			containerValue.setContainer(subContainer, "OsAlarmAction")
		}
		
		def OsAlarmAutostart getOsAlarmAutostart(){
			containerValue.getByType(typeof(OsAlarmAutostart))
		}
		
		def void setOsAlarmAutostart(OsAlarmAutostart osAlarmAutostart){
			val GContainer subContainer = osAlarmAutostart.getTarget()
			containerValue.setContainer(subContainer, "OsAlarmAutostart")
		}
		
		
		static class OsAlarmAction implements IWrapper<GContainer> {
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
			
			def void setOsAlarmActivateTask(OsAlarmActivateTask osAlarmActivateTask){
				val GContainer subContainer = osAlarmActivateTask.getTarget()
				containerValue.setContainer(subContainer, "OsAlarmActivateTask")
			}
			def OsAlarmCallback getOsAlarmCallback(){
				containerValue.getByType(typeof(OsAlarmCallback))
			}
			
			def void setOsAlarmCallback(OsAlarmCallback osAlarmCallback){
				val GContainer subContainer = osAlarmCallback.getTarget()
				containerValue.setContainer(subContainer, "OsAlarmCallback")
			}
			def OsAlarmIncrementCounter getOsAlarmIncrementCounter(){
				containerValue.getByType(typeof(OsAlarmIncrementCounter))
			}
			
			def void setOsAlarmIncrementCounter(OsAlarmIncrementCounter osAlarmIncrementCounter){
				val GContainer subContainer = osAlarmIncrementCounter.getTarget()
				containerValue.setContainer(subContainer, "OsAlarmIncrementCounter")
			}
			def OsAlarmSetEvent getOsAlarmSetEvent(){
				containerValue.getByType(typeof(OsAlarmSetEvent))
			}
			
			def void setOsAlarmSetEvent(OsAlarmSetEvent osAlarmSetEvent){
				val GContainer subContainer = osAlarmSetEvent.getTarget()
				containerValue.setContainer(subContainer, "OsAlarmSetEvent")
			}
			
			static class OsAlarmActivateTask implements IWrapper<GContainer> {
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
			
			static class OsAlarmCallback implements IWrapper<GContainer> {
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
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAlarmCallbackName"])
				}
				
				def void setOsAlarmCallbackName(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAlarmCallbackName"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsAlarmCallbackName"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				
				
			}
			
			static class OsAlarmIncrementCounter implements IWrapper<GContainer> {
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
			
			static class OsAlarmSetEvent implements IWrapper<GContainer> {
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
		
		static class OsAlarmAutostart implements IWrapper<GContainer> {
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
			
			def BigInteger getOsAlarmAlarmTime(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAlarmAlarmTime"])
			}
			
			def void setOsAlarmAlarmTime(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAlarmAlarmTime"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsAlarmAlarmTime"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def OsAlarmAutostartType getOsAlarmAutostartType(){
				getOsAlarmAutostartTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAlarmAutostartType"])
			}
			
			def void setOsAlarmAutostartType(OsAlarmAutostartType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAlarmAutostartType"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsAlarmAutostartType"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			def BigInteger getOsAlarmCycleTime(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAlarmCycleTime"])
			}
			
			def void setOsAlarmCycleTime(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAlarmCycleTime"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsAlarmCycleTime"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			def List<org.artop.ecuc.autosar421.accessors.Os.OsAppMode> getOsAlarmAppModeRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
					containerDef.gGetReferences.findFirst[gGetShortName == "OsAlarmAppModeRef"] else null
								
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "OsAlarmAppModeRef")
					}
				}
				
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Os.OsAppMode>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Os.OsAppMode)) {
					override protected wrap(org.artop.ecuc.autosar421.accessors.Os.OsAppMode object) throws CoreException {
						if (object != null) {
							val container = object.getTarget()
							val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
							referenceValue.gSetDefinition(referenceValueDef)
							referenceValue.gSetValue(container)
							return referenceValue
						}
					}
					
					override protected unwrap(GReferenceValue referenceValue) {
						if (referenceValue != null) {
							val referenceValueValue = referenceValue.gGetValue
							if (referenceValueValue instanceof GContainer) {
								return new org.artop.ecuc.autosar421.accessors.Os.OsAppMode(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			
		}
		
	}
	static class OsAppMode implements IWrapper<GContainer> {
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
	static class OsApplication implements IWrapper<GContainer> {
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
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsTrusted"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getOsTrustedApplicationDelayTimingViolationCall(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTrustedApplicationDelayTimingViolationCall"])
		}
		
		def void setOsTrustedApplicationDelayTimingViolationCall(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTrustedApplicationDelayTimingViolationCall"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsTrustedApplicationDelayTimingViolationCall"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getOsTrustedApplicationWithProtection(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTrustedApplicationWithProtection"])
		}
		
		def void setOsTrustedApplicationWithProtection(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTrustedApplicationWithProtection"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsTrustedApplicationWithProtection"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		def List<org.artop.ecuc.autosar421.accessors.Os.OsAlarm> getOsAppAlarmRefs(){
			val containerDef = containerValue.gGetDefinition
			val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
				containerDef.gGetReferences.findFirst[gGetShortName == "OsAppAlarmRef"] else null
							
			val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
				override protected accept(GReferenceValue item) {
					return accept(item, typeof(GConfigReference), "OsAppAlarmRef")
				}
			}
			
			return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Os.OsAlarm>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Os.OsAlarm)) {
				override protected wrap(org.artop.ecuc.autosar421.accessors.Os.OsAlarm object) throws CoreException {
					if (object != null) {
						val container = object.getTarget()
						val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
						referenceValue.gSetDefinition(referenceValueDef)
						referenceValue.gSetValue(container)
						return referenceValue
					}
				}
				
				override protected unwrap(GReferenceValue referenceValue) {
					if (referenceValue != null) {
						val referenceValueValue = referenceValue.gGetValue
						if (referenceValueValue instanceof GContainer) {
							return new org.artop.ecuc.autosar421.accessors.Os.OsAlarm(referenceValueValue as GContainer)
						}
					}
				}
			}
		}
		
		def List<org.artop.ecuc.autosar421.accessors.Os.OsCounter> getOsAppCounterRefs(){
			val containerDef = containerValue.gGetDefinition
			val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
				containerDef.gGetReferences.findFirst[gGetShortName == "OsAppCounterRef"] else null
							
			val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
				override protected accept(GReferenceValue item) {
					return accept(item, typeof(GConfigReference), "OsAppCounterRef")
				}
			}
			
			return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Os.OsCounter>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Os.OsCounter)) {
				override protected wrap(org.artop.ecuc.autosar421.accessors.Os.OsCounter object) throws CoreException {
					if (object != null) {
						val container = object.getTarget()
						val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
						referenceValue.gSetDefinition(referenceValueDef)
						referenceValue.gSetValue(container)
						return referenceValue
					}
				}
				
				override protected unwrap(GReferenceValue referenceValue) {
					if (referenceValue != null) {
						val referenceValueValue = referenceValue.gGetValue
						if (referenceValueValue instanceof GContainer) {
							return new org.artop.ecuc.autosar421.accessors.Os.OsCounter(referenceValueValue as GContainer)
						}
					}
				}
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
		
		def List<org.artop.ecuc.autosar421.accessors.Os.OsIsr> getOsAppIsrRefs(){
			val containerDef = containerValue.gGetDefinition
			val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
				containerDef.gGetReferences.findFirst[gGetShortName == "OsAppIsrRef"] else null
							
			val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
				override protected accept(GReferenceValue item) {
					return accept(item, typeof(GConfigReference), "OsAppIsrRef")
				}
			}
			
			return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Os.OsIsr>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Os.OsIsr)) {
				override protected wrap(org.artop.ecuc.autosar421.accessors.Os.OsIsr object) throws CoreException {
					if (object != null) {
						val container = object.getTarget()
						val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
						referenceValue.gSetDefinition(referenceValueDef)
						referenceValue.gSetValue(container)
						return referenceValue
					}
				}
				
				override protected unwrap(GReferenceValue referenceValue) {
					if (referenceValue != null) {
						val referenceValueValue = referenceValue.gGetValue
						if (referenceValueValue instanceof GContainer) {
							return new org.artop.ecuc.autosar421.accessors.Os.OsIsr(referenceValueValue as GContainer)
						}
					}
				}
			}
		}
		
		def List<org.artop.ecuc.autosar421.accessors.Os.OsScheduleTable> getOsAppScheduleTableRefs(){
			val containerDef = containerValue.gGetDefinition
			val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
				containerDef.gGetReferences.findFirst[gGetShortName == "OsAppScheduleTableRef"] else null
							
			val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
				override protected accept(GReferenceValue item) {
					return accept(item, typeof(GConfigReference), "OsAppScheduleTableRef")
				}
			}
			
			return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Os.OsScheduleTable>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Os.OsScheduleTable)) {
				override protected wrap(org.artop.ecuc.autosar421.accessors.Os.OsScheduleTable object) throws CoreException {
					if (object != null) {
						val container = object.getTarget()
						val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
						referenceValue.gSetDefinition(referenceValueDef)
						referenceValue.gSetValue(container)
						return referenceValue
					}
				}
				
				override protected unwrap(GReferenceValue referenceValue) {
					if (referenceValue != null) {
						val referenceValueValue = referenceValue.gGetValue
						if (referenceValueValue instanceof GContainer) {
							return new org.artop.ecuc.autosar421.accessors.Os.OsScheduleTable(referenceValueValue as GContainer)
						}
					}
				}
			}
		}
		
		def List<org.artop.ecuc.autosar421.accessors.Os.OsTask> getOsAppTaskRefs(){
			val containerDef = containerValue.gGetDefinition
			val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
				containerDef.gGetReferences.findFirst[gGetShortName == "OsAppTaskRef"] else null
							
			val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
				override protected accept(GReferenceValue item) {
					return accept(item, typeof(GConfigReference), "OsAppTaskRef")
				}
			}
			
			return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Os.OsTask>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Os.OsTask)) {
				override protected wrap(org.artop.ecuc.autosar421.accessors.Os.OsTask object) throws CoreException {
					if (object != null) {
						val container = object.getTarget()
						val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
						referenceValue.gSetDefinition(referenceValueDef)
						referenceValue.gSetValue(container)
						return referenceValue
					}
				}
				
				override protected unwrap(GReferenceValue referenceValue) {
					if (referenceValue != null) {
						val referenceValueValue = referenceValue.gGetValue
						if (referenceValueValue instanceof GContainer) {
							return new org.artop.ecuc.autosar421.accessors.Os.OsTask(referenceValueValue as GContainer)
						}
					}
				}
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
		
		def void setOsApplicationHooks(OsApplicationHooks osApplicationHooks){
			val GContainer subContainer = osApplicationHooks.getTarget()
			containerValue.setContainer(subContainer, "OsApplicationHooks")
		}
		
		def List<OsApplicationTrustedFunction> getOsApplicationTrustedFunctions(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "OsApplicationTrustedFunction")
				}
			}
			return new BasicWrappingEList<OsApplicationTrustedFunction, GContainer>(filteredContainers, typeof(OsApplicationTrustedFunction), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Os$OsApplication$OsApplicationTrustedFunction osApplicationTrustedFunction) {
					osApplicationTrustedFunction.target?.gSetDefinition(containerValue.getContainerDefinition("OsApplicationTrustedFunction"))
					super.delegateAdd(osApplicationTrustedFunction)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Os$OsApplication$OsApplicationTrustedFunction osApplicationTrustedFunction) {
					osApplicationTrustedFunction.target?.gSetDefinition(containerValue.getContainerDefinition("OsApplicationTrustedFunction"))
					super.delegateAdd(index, osApplicationTrustedFunction)
				}	
			}
		}
		
		
		static class OsApplicationHooks implements IWrapper<GContainer> {
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
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsAppErrorHook"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getOsAppShutdownHook(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAppShutdownHook"])
			}
			
			def void setOsAppShutdownHook(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAppShutdownHook"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsAppShutdownHook"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getOsAppStartupHook(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAppStartupHook"])
			}
			
			def void setOsAppStartupHook(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAppStartupHook"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsAppStartupHook"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
		static class OsApplicationTrustedFunction implements IWrapper<GContainer> {
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
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTrustedFunctionName"])
			}
			
			def void setOsTrustedFunctionName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTrustedFunctionName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsTrustedFunctionName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class OsCounter implements IWrapper<GContainer> {
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
		
		def BigInteger getOsCounterMaxAllowedValue(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsCounterMaxAllowedValue"])
		}
		
		def void setOsCounterMaxAllowedValue(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsCounterMaxAllowedValue"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsCounterMaxAllowedValue"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getOsCounterMinCycle(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsCounterMinCycle"])
		}
		
		def void setOsCounterMinCycle(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsCounterMinCycle"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsCounterMinCycle"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getOsCounterTicksPerBase(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsCounterTicksPerBase"])
		}
		
		def void setOsCounterTicksPerBase(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsCounterTicksPerBase"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsCounterTicksPerBase"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def OsCounterType getOsCounterType(){
			getOsCounterTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsCounterType"])
		}
		
		def void setOsCounterType(OsCounterType value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsCounterType"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsCounterType"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		def BigDecimal getOsSecondsPerTick(){
			EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsSecondsPerTick"])
		}
		
		def void setOsSecondsPerTick(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsSecondsPerTick"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsSecondsPerTick"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		def List<org.artop.ecuc.autosar421.accessors.Os.OsApplication> getOsCounterAccessingApplications(){
			val containerDef = containerValue.gGetDefinition
			val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
				containerDef.gGetReferences.findFirst[gGetShortName == "OsCounterAccessingApplication"] else null
							
			val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
				override protected accept(GReferenceValue item) {
					return accept(item, typeof(GConfigReference), "OsCounterAccessingApplication")
				}
			}
			
			return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Os.OsApplication>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Os.OsApplication)) {
				override protected wrap(org.artop.ecuc.autosar421.accessors.Os.OsApplication object) throws CoreException {
					if (object != null) {
						val container = object.getTarget()
						val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
						referenceValue.gSetDefinition(referenceValueDef)
						referenceValue.gSetValue(container)
						return referenceValue
					}
				}
				
				override protected unwrap(GReferenceValue referenceValue) {
					if (referenceValue != null) {
						val referenceValueValue = referenceValue.gGetValue
						if (referenceValueValue instanceof GContainer) {
							return new org.artop.ecuc.autosar421.accessors.Os.OsApplication(referenceValueValue as GContainer)
						}
					}
				}
			}
		}
		
		
		def OsDriver getOsDriver(){
			containerValue.getByType(typeof(OsDriver))
		}
		
		def void setOsDriver(OsDriver osDriver){
			val GContainer subContainer = osDriver.getTarget()
			containerValue.setContainer(subContainer, "OsDriver")
		}
		
		def List<OsTimeConstant> getOsTimeConstants(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "OsTimeConstant")
				}
			}
			return new BasicWrappingEList<OsTimeConstant, GContainer>(filteredContainers, typeof(OsTimeConstant), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Os$OsCounter$OsTimeConstant osTimeConstant) {
					osTimeConstant.target?.gSetDefinition(containerValue.getContainerDefinition("OsTimeConstant"))
					super.delegateAdd(osTimeConstant)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Os$OsCounter$OsTimeConstant osTimeConstant) {
					osTimeConstant.target?.gSetDefinition(containerValue.getContainerDefinition("OsTimeConstant"))
					super.delegateAdd(index, osTimeConstant)
				}	
			}
		}
		
		
		static class OsDriver implements IWrapper<GContainer> {
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
		
		static class OsTimeConstant implements IWrapper<GContainer> {
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
			
			def BigDecimal getOsTimeValue(){
				EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTimeValue"])
			}
			
			def void setOsTimeValue(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTimeValue"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsTimeValue"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class OsEvent implements IWrapper<GContainer> {
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
		
		def BigInteger getOsEventMask(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsEventMask"])
		}
		
		def void setOsEventMask(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsEventMask"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsEventMask"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		
	}
	static class OsIoc implements IWrapper<GContainer> {
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
			return new BasicWrappingEList<OsIocCommunication, GContainer>(filteredContainers, typeof(OsIocCommunication), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Os$OsIoc$OsIocCommunication osIocCommunication) {
					osIocCommunication.target?.gSetDefinition(containerValue.getContainerDefinition("OsIocCommunication"))
					super.delegateAdd(osIocCommunication)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Os$OsIoc$OsIocCommunication osIocCommunication) {
					osIocCommunication.target?.gSetDefinition(containerValue.getContainerDefinition("OsIocCommunication"))
					super.delegateAdd(index, osIocCommunication)
				}	
			}
		}
		
		
		static class OsIocCommunication implements IWrapper<GContainer> {
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
			
			def BigInteger getOsIocBufferLength(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocBufferLength"])
			}
			
			def void setOsIocBufferLength(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocBufferLength"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsIocBufferLength"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			def List<OsIocDataProperties> getOsIocDataProperties(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "OsIocDataProperties")
					}
				}
				return new BasicWrappingEList<OsIocDataProperties, GContainer>(filteredContainers, typeof(OsIocDataProperties), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Os$OsIoc$OsIocCommunication$OsIocDataProperties osIocDataProperties) {
						osIocDataProperties.target?.gSetDefinition(containerValue.getContainerDefinition("OsIocDataProperties"))
						super.delegateAdd(osIocDataProperties)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Os$OsIoc$OsIocCommunication$OsIocDataProperties osIocDataProperties) {
						osIocDataProperties.target?.gSetDefinition(containerValue.getContainerDefinition("OsIocDataProperties"))
						super.delegateAdd(index, osIocDataProperties)
					}	
				}
			}
			
			def List<OsIocReceiverProperties> getOsIocReceiverProperties(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "OsIocReceiverProperties")
					}
				}
				return new BasicWrappingEList<OsIocReceiverProperties, GContainer>(filteredContainers, typeof(OsIocReceiverProperties), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Os$OsIoc$OsIocCommunication$OsIocReceiverProperties osIocReceiverProperties) {
						osIocReceiverProperties.target?.gSetDefinition(containerValue.getContainerDefinition("OsIocReceiverProperties"))
						super.delegateAdd(osIocReceiverProperties)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Os$OsIoc$OsIocCommunication$OsIocReceiverProperties osIocReceiverProperties) {
						osIocReceiverProperties.target?.gSetDefinition(containerValue.getContainerDefinition("OsIocReceiverProperties"))
						super.delegateAdd(index, osIocReceiverProperties)
					}	
				}
			}
			
			def List<OsIocSenderProperties> getOsIocSenderProperties(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "OsIocSenderProperties")
					}
				}
				return new BasicWrappingEList<OsIocSenderProperties, GContainer>(filteredContainers, typeof(OsIocSenderProperties), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Os$OsIoc$OsIocCommunication$OsIocSenderProperties osIocSenderProperties) {
						osIocSenderProperties.target?.gSetDefinition(containerValue.getContainerDefinition("OsIocSenderProperties"))
						super.delegateAdd(osIocSenderProperties)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Os$OsIoc$OsIocCommunication$OsIocSenderProperties osIocSenderProperties) {
						osIocSenderProperties.target?.gSetDefinition(containerValue.getContainerDefinition("OsIocSenderProperties"))
						super.delegateAdd(index, osIocSenderProperties)
					}	
				}
			}
			
			
			static class OsIocDataProperties implements IWrapper<GContainer> {
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
				
				def BigInteger getOsIocDataPropertyIndex(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocDataPropertyIndex"])
				}
				
				def void setOsIocDataPropertyIndex(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocDataPropertyIndex"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsIocDataPropertyIndex"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def String getOsIocInitValue(){
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocInitValue"])
				}
				
				def void setOsIocInitValue(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocInitValue"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsIocInitValue"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				
				
				
			}
			
			static class OsIocReceiverProperties implements IWrapper<GContainer> {
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
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsIocFunctionImplementationKind"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				def String getOsIocReceiverPullCB(){
					EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocReceiverPullCB"])
				}
				
				def void setOsIocReceiverPullCB(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocReceiverPullCB"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsIocReceiverPullCB"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
			
			static class OsIocSenderProperties implements IWrapper<GContainer> {
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
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsIocFunctionImplementationKind"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				def BigInteger getOsIocSenderId(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocSenderId"])
				}
				
				def void setOsIocSenderId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocSenderId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsIocSenderId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
	static class OsIsr implements IWrapper<GContainer> {
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
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsIsrCategory"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		
		def List<org.artop.ecuc.autosar421.accessors.Os.OsResource> getOsIsrResourceRefs(){
			val containerDef = containerValue.gGetDefinition
			val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
				containerDef.gGetReferences.findFirst[gGetShortName == "OsIsrResourceRef"] else null
							
			val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
				override protected accept(GReferenceValue item) {
					return accept(item, typeof(GConfigReference), "OsIsrResourceRef")
				}
			}
			
			return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Os.OsResource>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Os.OsResource)) {
				override protected wrap(org.artop.ecuc.autosar421.accessors.Os.OsResource object) throws CoreException {
					if (object != null) {
						val container = object.getTarget()
						val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
						referenceValue.gSetDefinition(referenceValueDef)
						referenceValue.gSetValue(container)
						return referenceValue
					}
				}
				
				override protected unwrap(GReferenceValue referenceValue) {
					if (referenceValue != null) {
						val referenceValueValue = referenceValue.gGetValue
						if (referenceValueValue instanceof GContainer) {
							return new org.artop.ecuc.autosar421.accessors.Os.OsResource(referenceValueValue as GContainer)
						}
					}
				}
			}
		}
		
		
		def OsIsrTimingProtection getOsIsrTimingProtection(){
			containerValue.getByType(typeof(OsIsrTimingProtection))
		}
		
		def void setOsIsrTimingProtection(OsIsrTimingProtection osIsrTimingProtection){
			val GContainer subContainer = osIsrTimingProtection.getTarget()
			containerValue.setContainer(subContainer, "OsIsrTimingProtection")
		}
		
		
		static class OsIsrTimingProtection implements IWrapper<GContainer> {
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
			
			def BigDecimal getOsIsrAllInterruptLockBudget(){
				EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIsrAllInterruptLockBudget"])
			}
			
			def void setOsIsrAllInterruptLockBudget(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIsrAllInterruptLockBudget"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsIsrAllInterruptLockBudget"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigDecimal getOsIsrExecutionBudget(){
				EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIsrExecutionBudget"])
			}
			
			def void setOsIsrExecutionBudget(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIsrExecutionBudget"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsIsrExecutionBudget"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigDecimal getOsIsrOsInterruptLockBudget(){
				EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIsrOsInterruptLockBudget"])
			}
			
			def void setOsIsrOsInterruptLockBudget(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIsrOsInterruptLockBudget"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsIsrOsInterruptLockBudget"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigDecimal getOsIsrTimeFrame(){
				EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIsrTimeFrame"])
			}
			
			def void setOsIsrTimeFrame(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIsrTimeFrame"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsIsrTimeFrame"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			def List<OsIsrResourceLock> getOsIsrResourceLocks(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "OsIsrResourceLock")
					}
				}
				return new BasicWrappingEList<OsIsrResourceLock, GContainer>(filteredContainers, typeof(OsIsrResourceLock), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Os$OsIsr$OsIsrTimingProtection$OsIsrResourceLock osIsrResourceLock) {
						osIsrResourceLock.target?.gSetDefinition(containerValue.getContainerDefinition("OsIsrResourceLock"))
						super.delegateAdd(osIsrResourceLock)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Os$OsIsr$OsIsrTimingProtection$OsIsrResourceLock osIsrResourceLock) {
						osIsrResourceLock.target?.gSetDefinition(containerValue.getContainerDefinition("OsIsrResourceLock"))
						super.delegateAdd(index, osIsrResourceLock)
					}	
				}
			}
			
			
			static class OsIsrResourceLock implements IWrapper<GContainer> {
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
				
				def BigDecimal getOsIsrResourceLockBudget(){
					EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIsrResourceLockBudget"])
				}
				
				def void setOsIsrResourceLockBudget(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIsrResourceLockBudget"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsIsrResourceLockBudget"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
	static class OsOS implements IWrapper<GContainer> {
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
		
		def BigInteger getOsNumberOfCores(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsNumberOfCores"])
		}
		
		def void setOsNumberOfCores(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsNumberOfCores"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsNumberOfCores"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def OsScalabilityClass getOsScalabilityClass(){
			getOsScalabilityClassValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScalabilityClass"])
		}
		
		def void setOsScalabilityClass(OsScalabilityClass value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScalabilityClass"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsScalabilityClass"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		def Boolean getOsStackMonitoring(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsStackMonitoring"])
		}
		
		def void setOsStackMonitoring(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsStackMonitoring"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsStackMonitoring"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def OsStatus getOsStatus(){
			getOsStatusValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsStatus"])
		}
		
		def void setOsStatus(OsStatus value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsStatus"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsStatus"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		def Boolean getOsUseGetServiceId(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsUseGetServiceId"])
		}
		
		def void setOsUseGetServiceId(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsUseGetServiceId"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsUseGetServiceId"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getOsUseParameterAccess(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsUseParameterAccess"])
		}
		
		def void setOsUseParameterAccess(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsUseParameterAccess"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsUseParameterAccess"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getOsUseResScheduler(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsUseResScheduler"])
		}
		
		def void setOsUseResScheduler(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsUseResScheduler"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsUseResScheduler"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def OsHooks getOsHooks(){
			containerValue.getByType(typeof(OsHooks))
		}
		
		def void setOsHooks(OsHooks osHooks){
			val GContainer subContainer = osHooks.getTarget()
			containerValue.setContainer(subContainer, "OsHooks")
		}
		
		
		static class OsHooks implements IWrapper<GContainer> {
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
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsErrorHook"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getOsPostTaskHook(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsPostTaskHook"])
			}
			
			def void setOsPostTaskHook(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsPostTaskHook"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsPostTaskHook"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getOsPreTaskHook(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsPreTaskHook"])
			}
			
			def void setOsPreTaskHook(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsPreTaskHook"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsPreTaskHook"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getOsProtectionHook(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsProtectionHook"])
			}
			
			def void setOsProtectionHook(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsProtectionHook"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsProtectionHook"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getOsShutdownHook(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsShutdownHook"])
			}
			
			def void setOsShutdownHook(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsShutdownHook"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsShutdownHook"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getOsStartupHook(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsStartupHook"])
			}
			
			def void setOsStartupHook(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsStartupHook"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsStartupHook"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class OsResource implements IWrapper<GContainer> {
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
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsResourceProperty"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		
		def List<org.artop.ecuc.autosar421.accessors.Os.OsApplication> getOsResourceAccessingApplications(){
			val containerDef = containerValue.gGetDefinition
			val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
				containerDef.gGetReferences.findFirst[gGetShortName == "OsResourceAccessingApplication"] else null
							
			val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
				override protected accept(GReferenceValue item) {
					return accept(item, typeof(GConfigReference), "OsResourceAccessingApplication")
				}
			}
			
			return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Os.OsApplication>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Os.OsApplication)) {
				override protected wrap(org.artop.ecuc.autosar421.accessors.Os.OsApplication object) throws CoreException {
					if (object != null) {
						val container = object.getTarget()
						val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
						referenceValue.gSetDefinition(referenceValueDef)
						referenceValue.gSetValue(container)
						return referenceValue
					}
				}
				
				override protected unwrap(GReferenceValue referenceValue) {
					if (referenceValue != null) {
						val referenceValueValue = referenceValue.gGetValue
						if (referenceValueValue instanceof GContainer) {
							return new org.artop.ecuc.autosar421.accessors.Os.OsApplication(referenceValueValue as GContainer)
						}
					}
				}
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
	static class OsScheduleTable implements IWrapper<GContainer> {
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
		
		def BigInteger getOsScheduleTableDuration(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTableDuration"])
		}
		
		def void setOsScheduleTableDuration(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTableDuration"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsScheduleTableDuration"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getOsScheduleTableRepeating(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTableRepeating"])
		}
		
		def void setOsScheduleTableRepeating(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTableRepeating"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsScheduleTableRepeating"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		def List<org.artop.ecuc.autosar421.accessors.Os.OsApplication> getOsSchTblAccessingApplications(){
			val containerDef = containerValue.gGetDefinition
			val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
				containerDef.gGetReferences.findFirst[gGetShortName == "OsSchTblAccessingApplication"] else null
							
			val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
				override protected accept(GReferenceValue item) {
					return accept(item, typeof(GConfigReference), "OsSchTblAccessingApplication")
				}
			}
			
			return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Os.OsApplication>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Os.OsApplication)) {
				override protected wrap(org.artop.ecuc.autosar421.accessors.Os.OsApplication object) throws CoreException {
					if (object != null) {
						val container = object.getTarget()
						val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
						referenceValue.gSetDefinition(referenceValueDef)
						referenceValue.gSetValue(container)
						return referenceValue
					}
				}
				
				override protected unwrap(GReferenceValue referenceValue) {
					if (referenceValue != null) {
						val referenceValueValue = referenceValue.gGetValue
						if (referenceValueValue instanceof GContainer) {
							return new org.artop.ecuc.autosar421.accessors.Os.OsApplication(referenceValueValue as GContainer)
						}
					}
				}
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
		
		def void setOsScheduleTableAutostart(OsScheduleTableAutostart osScheduleTableAutostart){
			val GContainer subContainer = osScheduleTableAutostart.getTarget()
			containerValue.setContainer(subContainer, "OsScheduleTableAutostart")
		}
		
		def List<OsScheduleTableExpiryPoint> getOsScheduleTableExpiryPoints(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "OsScheduleTableExpiryPoint")
				}
			}
			return new BasicWrappingEList<OsScheduleTableExpiryPoint, GContainer>(filteredContainers, typeof(OsScheduleTableExpiryPoint), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Os$OsScheduleTable$OsScheduleTableExpiryPoint osScheduleTableExpiryPoint) {
					osScheduleTableExpiryPoint.target?.gSetDefinition(containerValue.getContainerDefinition("OsScheduleTableExpiryPoint"))
					super.delegateAdd(osScheduleTableExpiryPoint)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Os$OsScheduleTable$OsScheduleTableExpiryPoint osScheduleTableExpiryPoint) {
					osScheduleTableExpiryPoint.target?.gSetDefinition(containerValue.getContainerDefinition("OsScheduleTableExpiryPoint"))
					super.delegateAdd(index, osScheduleTableExpiryPoint)
				}	
			}
		}
		
		def OsScheduleTableSync getOsScheduleTableSync(){
			containerValue.getByType(typeof(OsScheduleTableSync))
		}
		
		def void setOsScheduleTableSync(OsScheduleTableSync osScheduleTableSync){
			val GContainer subContainer = osScheduleTableSync.getTarget()
			containerValue.setContainer(subContainer, "OsScheduleTableSync")
		}
		
		
		static class OsScheduleTableAutostart implements IWrapper<GContainer> {
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
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsScheduleTableAutostartType"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			def BigInteger getOsScheduleTableStartValue(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTableStartValue"])
			}
			
			def void setOsScheduleTableStartValue(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTableStartValue"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsScheduleTableStartValue"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			def List<org.artop.ecuc.autosar421.accessors.Os.OsAppMode> getOsScheduleTableAppModeRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
					containerDef.gGetReferences.findFirst[gGetShortName == "OsScheduleTableAppModeRef"] else null
								
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "OsScheduleTableAppModeRef")
					}
				}
				
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Os.OsAppMode>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Os.OsAppMode)) {
					override protected wrap(org.artop.ecuc.autosar421.accessors.Os.OsAppMode object) throws CoreException {
						if (object != null) {
							val container = object.getTarget()
							val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
							referenceValue.gSetDefinition(referenceValueDef)
							referenceValue.gSetValue(container)
							return referenceValue
						}
					}
					
					override protected unwrap(GReferenceValue referenceValue) {
						if (referenceValue != null) {
							val referenceValueValue = referenceValue.gGetValue
							if (referenceValueValue instanceof GContainer) {
								return new org.artop.ecuc.autosar421.accessors.Os.OsAppMode(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			
		}
		
		static class OsScheduleTableExpiryPoint implements IWrapper<GContainer> {
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
			
			def BigInteger getOsScheduleTblExpPointOffset(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTblExpPointOffset"])
			}
			
			def void setOsScheduleTblExpPointOffset(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTblExpPointOffset"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsScheduleTblExpPointOffset"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			def List<OsScheduleTableEventSetting> getOsScheduleTableEventSettings(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "OsScheduleTableEventSetting")
					}
				}
				return new BasicWrappingEList<OsScheduleTableEventSetting, GContainer>(filteredContainers, typeof(OsScheduleTableEventSetting), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Os$OsScheduleTable$OsScheduleTableExpiryPoint$OsScheduleTableEventSetting osScheduleTableEventSetting) {
						osScheduleTableEventSetting.target?.gSetDefinition(containerValue.getContainerDefinition("OsScheduleTableEventSetting"))
						super.delegateAdd(osScheduleTableEventSetting)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Os$OsScheduleTable$OsScheduleTableExpiryPoint$OsScheduleTableEventSetting osScheduleTableEventSetting) {
						osScheduleTableEventSetting.target?.gSetDefinition(containerValue.getContainerDefinition("OsScheduleTableEventSetting"))
						super.delegateAdd(index, osScheduleTableEventSetting)
					}	
				}
			}
			
			def List<OsScheduleTableTaskActivation> getOsScheduleTableTaskActivations(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "OsScheduleTableTaskActivation")
					}
				}
				return new BasicWrappingEList<OsScheduleTableTaskActivation, GContainer>(filteredContainers, typeof(OsScheduleTableTaskActivation), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Os$OsScheduleTable$OsScheduleTableExpiryPoint$OsScheduleTableTaskActivation osScheduleTableTaskActivation) {
						osScheduleTableTaskActivation.target?.gSetDefinition(containerValue.getContainerDefinition("OsScheduleTableTaskActivation"))
						super.delegateAdd(osScheduleTableTaskActivation)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Os$OsScheduleTable$OsScheduleTableExpiryPoint$OsScheduleTableTaskActivation osScheduleTableTaskActivation) {
						osScheduleTableTaskActivation.target?.gSetDefinition(containerValue.getContainerDefinition("OsScheduleTableTaskActivation"))
						super.delegateAdd(index, osScheduleTableTaskActivation)
					}	
				}
			}
			
			def OsScheduleTblAdjustableExpPoint getOsScheduleTblAdjustableExpPoint(){
				containerValue.getByType(typeof(OsScheduleTblAdjustableExpPoint))
			}
			
			def void setOsScheduleTblAdjustableExpPoint(OsScheduleTblAdjustableExpPoint osScheduleTblAdjustableExpPoint){
				val GContainer subContainer = osScheduleTblAdjustableExpPoint.getTarget()
				containerValue.setContainer(subContainer, "OsScheduleTblAdjustableExpPoint")
			}
			
			
			static class OsScheduleTableEventSetting implements IWrapper<GContainer> {
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
			
			static class OsScheduleTableTaskActivation implements IWrapper<GContainer> {
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
			
			static class OsScheduleTblAdjustableExpPoint implements IWrapper<GContainer> {
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
				
				def BigInteger getOsScheduleTableMaxLengthen(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTableMaxLengthen"])
				}
				
				def void setOsScheduleTableMaxLengthen(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTableMaxLengthen"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsScheduleTableMaxLengthen"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigInteger getOsScheduleTableMaxShorten(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTableMaxShorten"])
				}
				
				def void setOsScheduleTableMaxShorten(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTableMaxShorten"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsScheduleTableMaxShorten"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				
				
			}
			
		}
		
		static class OsScheduleTableSync implements IWrapper<GContainer> {
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
			
			def BigInteger getOsScheduleTblExplicitPrecision(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTblExplicitPrecision"])
			}
			
			def void setOsScheduleTblExplicitPrecision(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTblExplicitPrecision"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsScheduleTblExplicitPrecision"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def OsScheduleTblSyncStrategy getOsScheduleTblSyncStrategy(){
				getOsScheduleTblSyncStrategyValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTblSyncStrategy"])
			}
			
			def void setOsScheduleTblSyncStrategy(OsScheduleTblSyncStrategy value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTblSyncStrategy"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsScheduleTblSyncStrategy"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			
			
			
		}
		
	}
	static class OsSpinlock implements IWrapper<GContainer> {
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
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsSpinlockLockMethod"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		
		def List<org.artop.ecuc.autosar421.accessors.Os.OsApplication> getOsSpinlockAccessingApplications(){
			val containerDef = containerValue.gGetDefinition
			val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
				containerDef.gGetReferences.findFirst[gGetShortName == "OsSpinlockAccessingApplication"] else null
							
			val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
				override protected accept(GReferenceValue item) {
					return accept(item, typeof(GConfigReference), "OsSpinlockAccessingApplication")
				}
			}
			
			return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Os.OsApplication>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Os.OsApplication)) {
				override protected wrap(org.artop.ecuc.autosar421.accessors.Os.OsApplication object) throws CoreException {
					if (object != null) {
						val container = object.getTarget()
						val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
						referenceValue.gSetDefinition(referenceValueDef)
						referenceValue.gSetValue(container)
						return referenceValue
					}
				}
				
				override protected unwrap(GReferenceValue referenceValue) {
					if (referenceValue != null) {
						val referenceValueValue = referenceValue.gGetValue
						if (referenceValueValue instanceof GContainer) {
							return new org.artop.ecuc.autosar421.accessors.Os.OsApplication(referenceValueValue as GContainer)
						}
					}
				}
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
	static class OsTask implements IWrapper<GContainer> {
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
		
		def BigInteger getOsTaskActivation(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskActivation"])
		}
		
		def void setOsTaskActivation(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskActivation"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsTaskActivation"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getOsTaskPriority(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskPriority"])
		}
		
		def void setOsTaskPriority(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskPriority"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsTaskPriority"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def OsTaskSchedule getOsTaskSchedule(){
			getOsTaskScheduleValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskSchedule"])
		}
		
		def void setOsTaskSchedule(OsTaskSchedule value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskSchedule"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsTaskSchedule"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		
		def List<org.artop.ecuc.autosar421.accessors.Os.OsApplication> getOsTaskAccessingApplications(){
			val containerDef = containerValue.gGetDefinition
			val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
				containerDef.gGetReferences.findFirst[gGetShortName == "OsTaskAccessingApplication"] else null
							
			val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
				override protected accept(GReferenceValue item) {
					return accept(item, typeof(GConfigReference), "OsTaskAccessingApplication")
				}
			}
			
			return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Os.OsApplication>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Os.OsApplication)) {
				override protected wrap(org.artop.ecuc.autosar421.accessors.Os.OsApplication object) throws CoreException {
					if (object != null) {
						val container = object.getTarget()
						val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
						referenceValue.gSetDefinition(referenceValueDef)
						referenceValue.gSetValue(container)
						return referenceValue
					}
				}
				
				override protected unwrap(GReferenceValue referenceValue) {
					if (referenceValue != null) {
						val referenceValueValue = referenceValue.gGetValue
						if (referenceValueValue instanceof GContainer) {
							return new org.artop.ecuc.autosar421.accessors.Os.OsApplication(referenceValueValue as GContainer)
						}
					}
				}
			}
		}
		
		def List<org.artop.ecuc.autosar421.accessors.Os.OsEvent> getOsTaskEventRefs(){
			val containerDef = containerValue.gGetDefinition
			val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
				containerDef.gGetReferences.findFirst[gGetShortName == "OsTaskEventRef"] else null
							
			val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
				override protected accept(GReferenceValue item) {
					return accept(item, typeof(GConfigReference), "OsTaskEventRef")
				}
			}
			
			return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Os.OsEvent>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Os.OsEvent)) {
				override protected wrap(org.artop.ecuc.autosar421.accessors.Os.OsEvent object) throws CoreException {
					if (object != null) {
						val container = object.getTarget()
						val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
						referenceValue.gSetDefinition(referenceValueDef)
						referenceValue.gSetValue(container)
						return referenceValue
					}
				}
				
				override protected unwrap(GReferenceValue referenceValue) {
					if (referenceValue != null) {
						val referenceValueValue = referenceValue.gGetValue
						if (referenceValueValue instanceof GContainer) {
							return new org.artop.ecuc.autosar421.accessors.Os.OsEvent(referenceValueValue as GContainer)
						}
					}
				}
			}
		}
		
		def List<org.artop.ecuc.autosar421.accessors.Os.OsResource> getOsTaskResourceRefs(){
			val containerDef = containerValue.gGetDefinition
			val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
				containerDef.gGetReferences.findFirst[gGetShortName == "OsTaskResourceRef"] else null
							
			val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
				override protected accept(GReferenceValue item) {
					return accept(item, typeof(GConfigReference), "OsTaskResourceRef")
				}
			}
			
			return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Os.OsResource>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Os.OsResource)) {
				override protected wrap(org.artop.ecuc.autosar421.accessors.Os.OsResource object) throws CoreException {
					if (object != null) {
						val container = object.getTarget()
						val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
						referenceValue.gSetDefinition(referenceValueDef)
						referenceValue.gSetValue(container)
						return referenceValue
					}
				}
				
				override protected unwrap(GReferenceValue referenceValue) {
					if (referenceValue != null) {
						val referenceValueValue = referenceValue.gGetValue
						if (referenceValueValue instanceof GContainer) {
							return new org.artop.ecuc.autosar421.accessors.Os.OsResource(referenceValueValue as GContainer)
						}
					}
				}
			}
		}
		
		
		def OsTaskAutostart getOsTaskAutostart(){
			containerValue.getByType(typeof(OsTaskAutostart))
		}
		
		def void setOsTaskAutostart(OsTaskAutostart osTaskAutostart){
			val GContainer subContainer = osTaskAutostart.getTarget()
			containerValue.setContainer(subContainer, "OsTaskAutostart")
		}
		
		def OsTaskTimingProtection getOsTaskTimingProtection(){
			containerValue.getByType(typeof(OsTaskTimingProtection))
		}
		
		def void setOsTaskTimingProtection(OsTaskTimingProtection osTaskTimingProtection){
			val GContainer subContainer = osTaskTimingProtection.getTarget()
			containerValue.setContainer(subContainer, "OsTaskTimingProtection")
		}
		
		
		static class OsTaskAutostart implements IWrapper<GContainer> {
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
			
			
			def List<org.artop.ecuc.autosar421.accessors.Os.OsAppMode> getOsTaskAppModeRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
					containerDef.gGetReferences.findFirst[gGetShortName == "OsTaskAppModeRef"] else null
								
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "OsTaskAppModeRef")
					}
				}
				
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Os.OsAppMode>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Os.OsAppMode)) {
					override protected wrap(org.artop.ecuc.autosar421.accessors.Os.OsAppMode object) throws CoreException {
						if (object != null) {
							val container = object.getTarget()
							val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
							referenceValue.gSetDefinition(referenceValueDef)
							referenceValue.gSetValue(container)
							return referenceValue
						}
					}
					
					override protected unwrap(GReferenceValue referenceValue) {
						if (referenceValue != null) {
							val referenceValueValue = referenceValue.gGetValue
							if (referenceValueValue instanceof GContainer) {
								return new org.artop.ecuc.autosar421.accessors.Os.OsAppMode(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			
		}
		
		static class OsTaskTimingProtection implements IWrapper<GContainer> {
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
			
			def BigDecimal getOsTaskAllInterruptLockBudget(){
				EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskAllInterruptLockBudget"])
			}
			
			def void setOsTaskAllInterruptLockBudget(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskAllInterruptLockBudget"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsTaskAllInterruptLockBudget"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigDecimal getOsTaskExecutionBudget(){
				EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskExecutionBudget"])
			}
			
			def void setOsTaskExecutionBudget(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskExecutionBudget"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsTaskExecutionBudget"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigDecimal getOsTaskOsInterruptLockBudget(){
				EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskOsInterruptLockBudget"])
			}
			
			def void setOsTaskOsInterruptLockBudget(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskOsInterruptLockBudget"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsTaskOsInterruptLockBudget"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigDecimal getOsTaskTimeFrame(){
				EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskTimeFrame"])
			}
			
			def void setOsTaskTimeFrame(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskTimeFrame"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsTaskTimeFrame"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			def List<OsTaskResourceLock> getOsTaskResourceLocks(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "OsTaskResourceLock")
					}
				}
				return new BasicWrappingEList<OsTaskResourceLock, GContainer>(filteredContainers, typeof(OsTaskResourceLock), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Os$OsTask$OsTaskTimingProtection$OsTaskResourceLock osTaskResourceLock) {
						osTaskResourceLock.target?.gSetDefinition(containerValue.getContainerDefinition("OsTaskResourceLock"))
						super.delegateAdd(osTaskResourceLock)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Os$OsTask$OsTaskTimingProtection$OsTaskResourceLock osTaskResourceLock) {
						osTaskResourceLock.target?.gSetDefinition(containerValue.getContainerDefinition("OsTaskResourceLock"))
						super.delegateAdd(index, osTaskResourceLock)
					}	
				}
			}
			
			
			static class OsTaskResourceLock implements IWrapper<GContainer> {
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
				
				def BigDecimal getOsTaskResourceLockBudget(){
					EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskResourceLockBudget"])
				}
				
				def void setOsTaskResourceLockBudget(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskResourceLockBudget"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "OsTaskResourceLockBudget"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
