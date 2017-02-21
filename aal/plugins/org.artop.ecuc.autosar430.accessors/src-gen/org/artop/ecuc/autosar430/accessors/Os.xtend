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
package org.artop.ecuc.autosar430.accessors

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
			override protected delegateAdd(org.artop.ecuc.autosar430.accessors.Os.OsAlarm osAlarm) {
				osAlarm.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("OsAlarm"))
				super.delegateAdd(osAlarm)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.Os.OsAlarm osAlarm) {
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
			override protected delegateAdd(org.artop.ecuc.autosar430.accessors.Os.OsAppMode osAppMode) {
				osAppMode.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("OsAppMode"))
				super.delegateAdd(osAppMode)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.Os.OsAppMode osAppMode) {
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
			override protected delegateAdd(org.artop.ecuc.autosar430.accessors.Os.OsApplication osApplication) {
				osApplication.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("OsApplication"))
				super.delegateAdd(osApplication)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.Os.OsApplication osApplication) {
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
			override protected delegateAdd(org.artop.ecuc.autosar430.accessors.Os.OsCounter osCounter) {
				osCounter.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("OsCounter"))
				super.delegateAdd(osCounter)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.Os.OsCounter osCounter) {
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
			override protected delegateAdd(org.artop.ecuc.autosar430.accessors.Os.OsEvent osEvent) {
				osEvent.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("OsEvent"))
				super.delegateAdd(osEvent)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.Os.OsEvent osEvent) {
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
			override protected delegateAdd(org.artop.ecuc.autosar430.accessors.Os.OsIsr osIsr) {
				osIsr.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("OsIsr"))
				super.delegateAdd(osIsr)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.Os.OsIsr osIsr) {
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
	def List<OsPeripheralArea> getOsPeripheralAreas(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "OsPeripheralArea")
			}
		}
		return new BasicWrappingEList<OsPeripheralArea, GContainer>(filteredContainers, typeof(OsPeripheralArea), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar430.accessors.Os.OsPeripheralArea osPeripheralArea) {
				osPeripheralArea.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("OsPeripheralArea"))
				super.delegateAdd(osPeripheralArea)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.Os.OsPeripheralArea osPeripheralArea) {
				osPeripheralArea.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("OsPeripheralArea"))
				super.delegateAdd(index, osPeripheralArea)
			}
		}
	}
	def List<OsResource> getOsResources(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "OsResource")
			}
		}
		return new BasicWrappingEList<OsResource, GContainer>(filteredContainers, typeof(OsResource), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar430.accessors.Os.OsResource osResource) {
				osResource.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("OsResource"))
				super.delegateAdd(osResource)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.Os.OsResource osResource) {
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
			override protected delegateAdd(org.artop.ecuc.autosar430.accessors.Os.OsScheduleTable osScheduleTable) {
				osScheduleTable.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("OsScheduleTable"))
				super.delegateAdd(osScheduleTable)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.Os.OsScheduleTable osScheduleTable) {
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
			override protected delegateAdd(org.artop.ecuc.autosar430.accessors.Os.OsSpinlock osSpinlock) {
				osSpinlock.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("OsSpinlock"))
				super.delegateAdd(osSpinlock)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.Os.OsSpinlock osSpinlock) {
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
			override protected delegateAdd(org.artop.ecuc.autosar430.accessors.Os.OsTask osTask) {
				osTask.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("OsTask"))
				super.delegateAdd(osTask)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.Os.OsTask osTask) {
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof OsAlarm)){
				return false
			}
			this.target == (object as OsAlarm).target
		}
	
		
		def List<org.artop.ecuc.autosar430.accessors.Os.OsApplication> getOsAlarmAccessingApplications(){
			val containerDef = containerValue.gGetDefinition
			val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
				containerDef.gGetReferences.findFirst[gGetShortName == "OsAlarmAccessingApplication"] else null
		
			val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
				override protected accept(GReferenceValue item) {
					return accept(item, typeof(GConfigReference), "OsAlarmAccessingApplication")
				}
			}
		
			return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar430.accessors.Os.OsApplication>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar430.accessors.Os.OsApplication)) {
				override protected wrap(org.artop.ecuc.autosar430.accessors.Os.OsApplication object) throws CoreException {
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
							return new org.artop.ecuc.autosar430.accessors.Os.OsApplication(referenceValueValue as GContainer)
						}
					}
				}
			}
		}
		
		def org.artop.ecuc.autosar430.accessors.Os.OsCounter getOsAlarmCounterRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Os.OsCounter), "OsAlarmCounterRef")
		}
		
		def void setOsAlarmCounterRef(org.artop.ecuc.autosar430.accessors.Os.OsCounter object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "OsAlarmCounterRef"], object.getTarget())
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof OsAlarmAction)){
					return false
				}
				this.target == (object as OsAlarmAction).target
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof OsAlarmActivateTask)){
						return false
					}
					this.target == (object as OsAlarmActivateTask).target
				}
			
				
				def org.artop.ecuc.autosar430.accessors.Os.OsTask getOsAlarmActivateTaskRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Os.OsTask), "OsAlarmActivateTaskRef")
				}
				
				def void setOsAlarmActivateTaskRef(org.artop.ecuc.autosar430.accessors.Os.OsTask object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "OsAlarmActivateTaskRef"], object.getTarget())
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof OsAlarmCallback)){
						return false
					}
					this.target == (object as OsAlarmCallback).target
				}
			
				def String getOsAlarmCallbackName(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAlarmCallbackName"].getStringValue()
				}
				
				def void setOsAlarmCallbackName(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAlarmCallbackName"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsAlarmCallbackName"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof OsAlarmIncrementCounter)){
						return false
					}
					this.target == (object as OsAlarmIncrementCounter).target
				}
			
				
				def org.artop.ecuc.autosar430.accessors.Os.OsCounter getOsAlarmIncrementCounterRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Os.OsCounter), "OsAlarmIncrementCounterRef")
				}
				
				def void setOsAlarmIncrementCounterRef(org.artop.ecuc.autosar430.accessors.Os.OsCounter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "OsAlarmIncrementCounterRef"], object.getTarget())
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof OsAlarmSetEvent)){
						return false
					}
					this.target == (object as OsAlarmSetEvent).target
				}
			
				
				def org.artop.ecuc.autosar430.accessors.Os.OsEvent getOsAlarmSetEventRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Os.OsEvent), "OsAlarmSetEventRef")
				}
				
				def void setOsAlarmSetEventRef(org.artop.ecuc.autosar430.accessors.Os.OsEvent object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "OsAlarmSetEventRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar430.accessors.Os.OsTask getOsAlarmSetEventTaskRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Os.OsTask), "OsAlarmSetEventTaskRef")
				}
				
				def void setOsAlarmSetEventTaskRef(org.artop.ecuc.autosar430.accessors.Os.OsTask object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "OsAlarmSetEventTaskRef"], object.getTarget())
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof OsAlarmAutostart)){
					return false
				}
				this.target == (object as OsAlarmAutostart).target
			}
		
			def BigInteger getOsAlarmAlarmTime(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAlarmAlarmTime"].getBigIntegerValue()
			}
			
			def void setOsAlarmAlarmTime(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAlarmAlarmTime"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsAlarmAlarmTime"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def OsAlarmAutostartType getOsAlarmAutostartType(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAlarmAutostartType"].getOsAlarmAutostartTypeValue()
			}
			
			def void setOsAlarmAutostartType(OsAlarmAutostartType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAlarmAutostartType"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsAlarmAutostartType"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum OsAlarmAutostartType {
				ABSOLUTE, 
				RELATIVE
			}
			
			def OsAlarmAutostartType getOsAlarmAutostartTypeValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "ABSOLUTE" : OsAlarmAutostartType.ABSOLUTE
					case "RELATIVE" : OsAlarmAutostartType.RELATIVE
				}
			}
			
			def void setOsAlarmAutostartTypeValue(GParameterValue parameterValue, OsAlarmAutostartType value){
				parameterValue.setValue(value)
			}
			
			def BigInteger getOsAlarmCycleTime(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAlarmCycleTime"].getBigIntegerValue()
			}
			
			def void setOsAlarmCycleTime(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAlarmCycleTime"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsAlarmCycleTime"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def List<org.artop.ecuc.autosar430.accessors.Os.OsAppMode> getOsAlarmAppModeRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "OsAlarmAppModeRef"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "OsAlarmAppModeRef")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar430.accessors.Os.OsAppMode>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar430.accessors.Os.OsAppMode)) {
					override protected wrap(org.artop.ecuc.autosar430.accessors.Os.OsAppMode object) throws CoreException {
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
								return new org.artop.ecuc.autosar430.accessors.Os.OsAppMode(referenceValueValue as GContainer)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof OsAppMode)){
				return false
			}
			this.target == (object as OsAppMode).target
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof OsApplication)){
				return false
			}
			this.target == (object as OsApplication).target
		}
	
		def Boolean getOsTrusted(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTrusted"].getBooleanValue()
		}
		
		def void setOsTrusted(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTrusted"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsTrusted"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getOsTrustedApplicationDelayTimingViolationCall(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTrustedApplicationDelayTimingViolationCall"].getBooleanValue()
		}
		
		def void setOsTrustedApplicationDelayTimingViolationCall(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTrustedApplicationDelayTimingViolationCall"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsTrustedApplicationDelayTimingViolationCall"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getOsTrustedApplicationWithProtection(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTrustedApplicationWithProtection"].getBooleanValue()
		}
		
		def void setOsTrustedApplicationWithProtection(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTrustedApplicationWithProtection"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsTrustedApplicationWithProtection"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		def List<org.artop.ecuc.autosar430.accessors.Os.OsAlarm> getOsAppAlarmRefs(){
			val containerDef = containerValue.gGetDefinition
			val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
				containerDef.gGetReferences.findFirst[gGetShortName == "OsAppAlarmRef"] else null
		
			val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
				override protected accept(GReferenceValue item) {
					return accept(item, typeof(GConfigReference), "OsAppAlarmRef")
				}
			}
		
			return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar430.accessors.Os.OsAlarm>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar430.accessors.Os.OsAlarm)) {
				override protected wrap(org.artop.ecuc.autosar430.accessors.Os.OsAlarm object) throws CoreException {
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
							return new org.artop.ecuc.autosar430.accessors.Os.OsAlarm(referenceValueValue as GContainer)
						}
					}
				}
			}
		}
		
		def List<org.artop.ecuc.autosar430.accessors.Os.OsCounter> getOsAppCounterRefs(){
			val containerDef = containerValue.gGetDefinition
			val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
				containerDef.gGetReferences.findFirst[gGetShortName == "OsAppCounterRef"] else null
		
			val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
				override protected accept(GReferenceValue item) {
					return accept(item, typeof(GConfigReference), "OsAppCounterRef")
				}
			}
		
			return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar430.accessors.Os.OsCounter>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar430.accessors.Os.OsCounter)) {
				override protected wrap(org.artop.ecuc.autosar430.accessors.Os.OsCounter object) throws CoreException {
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
							return new org.artop.ecuc.autosar430.accessors.Os.OsCounter(referenceValueValue as GContainer)
						}
					}
				}
			}
		}
		
		def org.artop.ecuc.autosar430.accessors.EcuC.EcucPartitionCollection.EcucPartition getOsAppEcucPartitionRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EcuC.EcucPartitionCollection.EcucPartition), "OsAppEcucPartitionRef")
		}
		
		def void setOsAppEcucPartitionRef(org.artop.ecuc.autosar430.accessors.EcuC.EcucPartitionCollection.EcucPartition object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "OsAppEcucPartitionRef"], object.getTarget())
			}
		}
		
		def List<org.artop.ecuc.autosar430.accessors.Os.OsIsr> getOsAppIsrRefs(){
			val containerDef = containerValue.gGetDefinition
			val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
				containerDef.gGetReferences.findFirst[gGetShortName == "OsAppIsrRef"] else null
		
			val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
				override protected accept(GReferenceValue item) {
					return accept(item, typeof(GConfigReference), "OsAppIsrRef")
				}
			}
		
			return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar430.accessors.Os.OsIsr>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar430.accessors.Os.OsIsr)) {
				override protected wrap(org.artop.ecuc.autosar430.accessors.Os.OsIsr object) throws CoreException {
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
							return new org.artop.ecuc.autosar430.accessors.Os.OsIsr(referenceValueValue as GContainer)
						}
					}
				}
			}
		}
		
		def org.artop.ecuc.autosar430.accessors.EcuC.EcucHardware.EcucCoreDefinition getOsApplicationCoreRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EcuC.EcucHardware.EcucCoreDefinition), "OsApplicationCoreRef")
		}
		
		def void setOsApplicationCoreRef(org.artop.ecuc.autosar430.accessors.EcuC.EcucHardware.EcucCoreDefinition object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "OsApplicationCoreRef"], object.getTarget())
			}
		}
		
		def List<org.artop.ecuc.autosar430.accessors.Os.OsScheduleTable> getOsAppScheduleTableRefs(){
			val containerDef = containerValue.gGetDefinition
			val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
				containerDef.gGetReferences.findFirst[gGetShortName == "OsAppScheduleTableRef"] else null
		
			val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
				override protected accept(GReferenceValue item) {
					return accept(item, typeof(GConfigReference), "OsAppScheduleTableRef")
				}
			}
		
			return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar430.accessors.Os.OsScheduleTable>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar430.accessors.Os.OsScheduleTable)) {
				override protected wrap(org.artop.ecuc.autosar430.accessors.Os.OsScheduleTable object) throws CoreException {
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
							return new org.artop.ecuc.autosar430.accessors.Os.OsScheduleTable(referenceValueValue as GContainer)
						}
					}
				}
			}
		}
		
		def List<org.artop.ecuc.autosar430.accessors.Os.OsTask> getOsAppTaskRefs(){
			val containerDef = containerValue.gGetDefinition
			val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
				containerDef.gGetReferences.findFirst[gGetShortName == "OsAppTaskRef"] else null
		
			val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
				override protected accept(GReferenceValue item) {
					return accept(item, typeof(GConfigReference), "OsAppTaskRef")
				}
			}
		
			return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar430.accessors.Os.OsTask>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar430.accessors.Os.OsTask)) {
				override protected wrap(org.artop.ecuc.autosar430.accessors.Os.OsTask object) throws CoreException {
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
							return new org.artop.ecuc.autosar430.accessors.Os.OsTask(referenceValueValue as GContainer)
						}
					}
				}
			}
		}
		
		def org.artop.ecuc.autosar430.accessors.Os.OsTask getOsRestartTask(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Os.OsTask), "OsRestartTask")
		}
		
		def void setOsRestartTask(org.artop.ecuc.autosar430.accessors.Os.OsTask object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "OsRestartTask"], object.getTarget())
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
				override protected delegateAdd(org.artop.ecuc.autosar430.accessors.Os.OsApplication.OsApplicationTrustedFunction osApplicationTrustedFunction) {
					osApplicationTrustedFunction.target?.gSetDefinition(containerValue.getContainerDefinition("OsApplicationTrustedFunction"))
					super.delegateAdd(osApplicationTrustedFunction)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.Os.OsApplication.OsApplicationTrustedFunction osApplicationTrustedFunction) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof OsApplicationHooks)){
					return false
				}
				this.target == (object as OsApplicationHooks).target
			}
		
			def Boolean getOsAppErrorHook(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAppErrorHook"].getBooleanValue()
			}
			
			def void setOsAppErrorHook(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAppErrorHook"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsAppErrorHook"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getOsAppShutdownHook(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAppShutdownHook"].getBooleanValue()
			}
			
			def void setOsAppShutdownHook(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAppShutdownHook"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsAppShutdownHook"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getOsAppStartupHook(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAppStartupHook"].getBooleanValue()
			}
			
			def void setOsAppStartupHook(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsAppStartupHook"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsAppStartupHook"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof OsApplicationTrustedFunction)){
					return false
				}
				this.target == (object as OsApplicationTrustedFunction).target
			}
		
			def String getOsTrustedFunctionName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTrustedFunctionName"].getStringValue()
			}
			
			def void setOsTrustedFunctionName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTrustedFunctionName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsTrustedFunctionName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof OsCounter)){
				return false
			}
			this.target == (object as OsCounter).target
		}
	
		def BigInteger getOsCounterMaxAllowedValue(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsCounterMaxAllowedValue"].getBigIntegerValue()
		}
		
		def void setOsCounterMaxAllowedValue(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsCounterMaxAllowedValue"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsCounterMaxAllowedValue"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getOsCounterMinCycle(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsCounterMinCycle"].getBigIntegerValue()
		}
		
		def void setOsCounterMinCycle(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsCounterMinCycle"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsCounterMinCycle"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getOsCounterTicksPerBase(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsCounterTicksPerBase"].getBigIntegerValue()
		}
		
		def void setOsCounterTicksPerBase(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsCounterTicksPerBase"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsCounterTicksPerBase"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def OsCounterType getOsCounterType(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsCounterType"].getOsCounterTypeValue()
		}
		
		def void setOsCounterType(OsCounterType value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsCounterType"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsCounterType"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum OsCounterType {
			HARDWARE, 
			SOFTWARE
		}
		
		def OsCounterType getOsCounterTypeValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "HARDWARE" : OsCounterType.HARDWARE
				case "SOFTWARE" : OsCounterType.SOFTWARE
			}
		}
		
		def void setOsCounterTypeValue(GParameterValue parameterValue, OsCounterType value){
			parameterValue.setValue(value)
		}
		
		def BigDecimal getOsSecondsPerTick(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsSecondsPerTick"].getBigDecimalValue()
		}
		
		def void setOsSecondsPerTick(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsSecondsPerTick"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsSecondsPerTick"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		def List<org.artop.ecuc.autosar430.accessors.Os.OsApplication> getOsCounterAccessingApplications(){
			val containerDef = containerValue.gGetDefinition
			val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
				containerDef.gGetReferences.findFirst[gGetShortName == "OsCounterAccessingApplication"] else null
		
			val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
				override protected accept(GReferenceValue item) {
					return accept(item, typeof(GConfigReference), "OsCounterAccessingApplication")
				}
			}
		
			return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar430.accessors.Os.OsApplication>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar430.accessors.Os.OsApplication)) {
				override protected wrap(org.artop.ecuc.autosar430.accessors.Os.OsApplication object) throws CoreException {
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
							return new org.artop.ecuc.autosar430.accessors.Os.OsApplication(referenceValueValue as GContainer)
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
				override protected delegateAdd(org.artop.ecuc.autosar430.accessors.Os.OsCounter.OsTimeConstant osTimeConstant) {
					osTimeConstant.target?.gSetDefinition(containerValue.getContainerDefinition("OsTimeConstant"))
					super.delegateAdd(osTimeConstant)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.Os.OsCounter.OsTimeConstant osTimeConstant) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof OsDriver)){
					return false
				}
				this.target == (object as OsDriver).target
			}
		
			
			def org.artop.ecuc.autosar430.accessors.Gpt.GptChannelConfigSet.GptChannelConfiguration getOsGptChannelRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Gpt.GptChannelConfigSet.GptChannelConfiguration), "OsGptChannelRef")
			}
			
			def void setOsGptChannelRef(org.artop.ecuc.autosar430.accessors.Gpt.GptChannelConfigSet.GptChannelConfiguration object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "OsGptChannelRef"], object.getTarget())
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof OsTimeConstant)){
					return false
				}
				this.target == (object as OsTimeConstant).target
			}
		
			def BigDecimal getOsTimeValue(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTimeValue"].getBigDecimalValue()
			}
			
			def void setOsTimeValue(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTimeValue"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsTimeValue"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof OsEvent)){
				return false
			}
			this.target == (object as OsEvent).target
		}
	
		def BigInteger getOsEventMask(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsEventMask"].getBigIntegerValue()
		}
		
		def void setOsEventMask(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsEventMask"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsEventMask"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof OsIoc)){
				return false
			}
			this.target == (object as OsIoc).target
		}
	
		
		
		def List<OsIocCommunication> getOsIocCommunications(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "OsIocCommunication")
				}
			}
			return new BasicWrappingEList<OsIocCommunication, GContainer>(filteredContainers, typeof(OsIocCommunication), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar430.accessors.Os.OsIoc.OsIocCommunication osIocCommunication) {
					osIocCommunication.target?.gSetDefinition(containerValue.getContainerDefinition("OsIocCommunication"))
					super.delegateAdd(osIocCommunication)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.Os.OsIoc.OsIocCommunication osIocCommunication) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof OsIocCommunication)){
					return false
				}
				this.target == (object as OsIocCommunication).target
			}
		
			def BigInteger getOsIocBufferLength(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocBufferLength"].getBigIntegerValue()
			}
			
			def void setOsIocBufferLength(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocBufferLength"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsIocBufferLength"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			def List<OsIocDataProperties> getOsIocDataProperties(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "OsIocDataProperties")
					}
				}
				return new BasicWrappingEList<OsIocDataProperties, GContainer>(filteredContainers, typeof(OsIocDataProperties), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar430.accessors.Os.OsIoc.OsIocCommunication.OsIocDataProperties osIocDataProperties) {
						osIocDataProperties.target?.gSetDefinition(containerValue.getContainerDefinition("OsIocDataProperties"))
						super.delegateAdd(osIocDataProperties)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.Os.OsIoc.OsIocCommunication.OsIocDataProperties osIocDataProperties) {
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
					override protected delegateAdd(org.artop.ecuc.autosar430.accessors.Os.OsIoc.OsIocCommunication.OsIocReceiverProperties osIocReceiverProperties) {
						osIocReceiverProperties.target?.gSetDefinition(containerValue.getContainerDefinition("OsIocReceiverProperties"))
						super.delegateAdd(osIocReceiverProperties)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.Os.OsIoc.OsIocCommunication.OsIocReceiverProperties osIocReceiverProperties) {
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
					override protected delegateAdd(org.artop.ecuc.autosar430.accessors.Os.OsIoc.OsIocCommunication.OsIocSenderProperties osIocSenderProperties) {
						osIocSenderProperties.target?.gSetDefinition(containerValue.getContainerDefinition("OsIocSenderProperties"))
						super.delegateAdd(osIocSenderProperties)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.Os.OsIoc.OsIocCommunication.OsIocSenderProperties osIocSenderProperties) {
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof OsIocDataProperties)){
						return false
					}
					this.target == (object as OsIocDataProperties).target
				}
			
				def BigInteger getOsIocDataPropertyIndex(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocDataPropertyIndex"].getBigIntegerValue()
				}
				
				def void setOsIocDataPropertyIndex(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocDataPropertyIndex"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsIocDataPropertyIndex"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def String getOsIocInitValue(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocInitValue"].getStringValue()
				}
				
				def void setOsIocInitValue(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocInitValue"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsIocInitValue"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof OsIocReceiverProperties)){
						return false
					}
					this.target == (object as OsIocReceiverProperties).target
				}
			
				def OsIocFunctionImplementationKind getOsIocFunctionImplementationKind(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocFunctionImplementationKind"].getOsIocFunctionImplementationKindValue()
				}
				
				def void setOsIocFunctionImplementationKind(OsIocFunctionImplementationKind value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocFunctionImplementationKind"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsIocFunctionImplementationKind"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum OsIocFunctionImplementationKind {
					DO_NOT_CARE, 
					FUNCTION, 
					MACRO
				}
				
				def OsIocFunctionImplementationKind getOsIocFunctionImplementationKindValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "DO_NOT_CARE" : OsIocFunctionImplementationKind.DO_NOT_CARE
						case "FUNCTION" : OsIocFunctionImplementationKind.FUNCTION
						case "MACRO" : OsIocFunctionImplementationKind.MACRO
					}
				}
				
				def void setOsIocFunctionImplementationKindValue(GParameterValue parameterValue, OsIocFunctionImplementationKind value){
					parameterValue.setValue(value)
				}
				
				def String getOsIocReceiverPullCB(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocReceiverPullCB"].getStringValue()
				}
				
				def void setOsIocReceiverPullCB(String value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocReceiverPullCB"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsIocReceiverPullCB"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar430.accessors.Os.OsApplication getOsIocReceivingOsApplicationRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Os.OsApplication), "OsIocReceivingOsApplicationRef")
				}
				
				def void setOsIocReceivingOsApplicationRef(org.artop.ecuc.autosar430.accessors.Os.OsApplication object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "OsIocReceivingOsApplicationRef"], object.getTarget())
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof OsIocSenderProperties)){
						return false
					}
					this.target == (object as OsIocSenderProperties).target
				}
			
				def OsIocFunctionImplementationKind getOsIocFunctionImplementationKind(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocFunctionImplementationKind"].getOsIocFunctionImplementationKindValue()
				}
				
				def void setOsIocFunctionImplementationKind(OsIocFunctionImplementationKind value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocFunctionImplementationKind"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsIocFunctionImplementationKind"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum OsIocFunctionImplementationKind {
					DO_NOT_CARE, 
					FUNCTION, 
					MACRO
				}
				
				def OsIocFunctionImplementationKind getOsIocFunctionImplementationKindValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "DO_NOT_CARE" : OsIocFunctionImplementationKind.DO_NOT_CARE
						case "FUNCTION" : OsIocFunctionImplementationKind.FUNCTION
						case "MACRO" : OsIocFunctionImplementationKind.MACRO
					}
				}
				
				def void setOsIocFunctionImplementationKindValue(GParameterValue parameterValue, OsIocFunctionImplementationKind value){
					parameterValue.setValue(value)
				}
				
				def BigInteger getOsIocSenderId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocSenderId"].getBigIntegerValue()
				}
				
				def void setOsIocSenderId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIocSenderId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsIocSenderId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar430.accessors.Os.OsApplication getOsIocSendingOsApplicationRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Os.OsApplication), "OsIocSendingOsApplicationRef")
				}
				
				def void setOsIocSendingOsApplicationRef(org.artop.ecuc.autosar430.accessors.Os.OsApplication object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "OsIocSendingOsApplicationRef"], object.getTarget())
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof OsIsr)){
				return false
			}
			this.target == (object as OsIsr).target
		}
	
		def OsIsrCategory getOsIsrCategory(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIsrCategory"].getOsIsrCategoryValue()
		}
		
		def void setOsIsrCategory(OsIsrCategory value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIsrCategory"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsIsrCategory"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum OsIsrCategory {
			CATEGORY_1, 
			CATEGORY_2
		}
		
		def OsIsrCategory getOsIsrCategoryValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "CATEGORY_1" : OsIsrCategory.CATEGORY_1
				case "CATEGORY_2" : OsIsrCategory.CATEGORY_2
			}
		}
		
		def void setOsIsrCategoryValue(GParameterValue parameterValue, OsIsrCategory value){
			parameterValue.setValue(value)
		}
		
		
		def List<org.artop.ecuc.autosar430.accessors.Os.OsResource> getOsIsrResourceRefs(){
			val containerDef = containerValue.gGetDefinition
			val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
				containerDef.gGetReferences.findFirst[gGetShortName == "OsIsrResourceRef"] else null
		
			val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
				override protected accept(GReferenceValue item) {
					return accept(item, typeof(GConfigReference), "OsIsrResourceRef")
				}
			}
		
			return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar430.accessors.Os.OsResource>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar430.accessors.Os.OsResource)) {
				override protected wrap(org.artop.ecuc.autosar430.accessors.Os.OsResource object) throws CoreException {
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
							return new org.artop.ecuc.autosar430.accessors.Os.OsResource(referenceValueValue as GContainer)
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof OsIsrTimingProtection)){
					return false
				}
				this.target == (object as OsIsrTimingProtection).target
			}
		
			def BigDecimal getOsIsrAllInterruptLockBudget(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIsrAllInterruptLockBudget"].getBigDecimalValue()
			}
			
			def void setOsIsrAllInterruptLockBudget(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIsrAllInterruptLockBudget"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsIsrAllInterruptLockBudget"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getOsIsrExecutionBudget(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIsrExecutionBudget"].getBigDecimalValue()
			}
			
			def void setOsIsrExecutionBudget(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIsrExecutionBudget"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsIsrExecutionBudget"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getOsIsrOsInterruptLockBudget(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIsrOsInterruptLockBudget"].getBigDecimalValue()
			}
			
			def void setOsIsrOsInterruptLockBudget(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIsrOsInterruptLockBudget"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsIsrOsInterruptLockBudget"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getOsIsrTimeFrame(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIsrTimeFrame"].getBigDecimalValue()
			}
			
			def void setOsIsrTimeFrame(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIsrTimeFrame"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsIsrTimeFrame"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			def List<OsIsrResourceLock> getOsIsrResourceLocks(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "OsIsrResourceLock")
					}
				}
				return new BasicWrappingEList<OsIsrResourceLock, GContainer>(filteredContainers, typeof(OsIsrResourceLock), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar430.accessors.Os.OsIsr.OsIsrTimingProtection.OsIsrResourceLock osIsrResourceLock) {
						osIsrResourceLock.target?.gSetDefinition(containerValue.getContainerDefinition("OsIsrResourceLock"))
						super.delegateAdd(osIsrResourceLock)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.Os.OsIsr.OsIsrTimingProtection.OsIsrResourceLock osIsrResourceLock) {
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof OsIsrResourceLock)){
						return false
					}
					this.target == (object as OsIsrResourceLock).target
				}
			
				def BigDecimal getOsIsrResourceLockBudget(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIsrResourceLockBudget"].getBigDecimalValue()
				}
				
				def void setOsIsrResourceLockBudget(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsIsrResourceLockBudget"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsIsrResourceLockBudget"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar430.accessors.Os.OsResource getOsIsrResourceLockResourceRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Os.OsResource), "OsIsrResourceLockResourceRef")
				}
				
				def void setOsIsrResourceLockResourceRef(org.artop.ecuc.autosar430.accessors.Os.OsResource object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "OsIsrResourceLockResourceRef"], object.getTarget())
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof OsOS)){
				return false
			}
			this.target == (object as OsOS).target
		}
	
		def BigInteger getOsNumberOfCores(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsNumberOfCores"].getBigIntegerValue()
		}
		
		def void setOsNumberOfCores(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsNumberOfCores"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsNumberOfCores"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def OsScalabilityClass getOsScalabilityClass(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScalabilityClass"].getOsScalabilityClassValue()
		}
		
		def void setOsScalabilityClass(OsScalabilityClass value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScalabilityClass"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsScalabilityClass"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum OsScalabilityClass {
			SC1, 
			SC2, 
			SC3, 
			SC4
		}
		
		def OsScalabilityClass getOsScalabilityClassValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "SC1" : OsScalabilityClass.SC1
				case "SC2" : OsScalabilityClass.SC2
				case "SC3" : OsScalabilityClass.SC3
				case "SC4" : OsScalabilityClass.SC4
			}
		}
		
		def void setOsScalabilityClassValue(GParameterValue parameterValue, OsScalabilityClass value){
			parameterValue.setValue(value)
		}
		
		def Boolean getOsStackMonitoring(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsStackMonitoring"].getBooleanValue()
		}
		
		def void setOsStackMonitoring(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsStackMonitoring"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsStackMonitoring"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def OsStatus getOsStatus(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsStatus"].getOsStatusValue()
		}
		
		def void setOsStatus(OsStatus value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsStatus"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsStatus"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum OsStatus {
			EXTENDED, 
			STANDARD
		}
		
		def OsStatus getOsStatusValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "EXTENDED" : OsStatus.EXTENDED
				case "STANDARD" : OsStatus.STANDARD
			}
		}
		
		def void setOsStatusValue(GParameterValue parameterValue, OsStatus value){
			parameterValue.setValue(value)
		}
		
		def Boolean getOsUseGetServiceId(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsUseGetServiceId"].getBooleanValue()
		}
		
		def void setOsUseGetServiceId(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsUseGetServiceId"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsUseGetServiceId"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getOsUseParameterAccess(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsUseParameterAccess"].getBooleanValue()
		}
		
		def void setOsUseParameterAccess(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsUseParameterAccess"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsUseParameterAccess"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getOsUseResScheduler(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsUseResScheduler"].getBooleanValue()
		}
		
		def void setOsUseResScheduler(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsUseResScheduler"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsUseResScheduler"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof OsHooks)){
					return false
				}
				this.target == (object as OsHooks).target
			}
		
			def Boolean getOsErrorHook(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsErrorHook"].getBooleanValue()
			}
			
			def void setOsErrorHook(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsErrorHook"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsErrorHook"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getOsPostTaskHook(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsPostTaskHook"].getBooleanValue()
			}
			
			def void setOsPostTaskHook(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsPostTaskHook"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsPostTaskHook"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getOsPreTaskHook(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsPreTaskHook"].getBooleanValue()
			}
			
			def void setOsPreTaskHook(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsPreTaskHook"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsPreTaskHook"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getOsProtectionHook(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsProtectionHook"].getBooleanValue()
			}
			
			def void setOsProtectionHook(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsProtectionHook"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsProtectionHook"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getOsShutdownHook(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsShutdownHook"].getBooleanValue()
			}
			
			def void setOsShutdownHook(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsShutdownHook"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsShutdownHook"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getOsStartupHook(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsStartupHook"].getBooleanValue()
			}
			
			def void setOsStartupHook(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsStartupHook"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsStartupHook"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			
			
		}
		
	}
	static class OsPeripheralArea implements IWrapper<GContainer> {
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
	        if (!(object instanceof OsPeripheralArea)){
				return false
			}
			this.target == (object as OsPeripheralArea).target
		}
	
		def BigInteger getOsPeripheralAreaEndAddress(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsPeripheralAreaEndAddress"].getBigIntegerValue()
		}
		
		def void setOsPeripheralAreaEndAddress(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsPeripheralAreaEndAddress"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsPeripheralAreaEndAddress"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getOsPeripheralAreaId(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsPeripheralAreaId"].getBigIntegerValue()
		}
		
		def void setOsPeripheralAreaId(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsPeripheralAreaId"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsPeripheralAreaId"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getOsPeripheralAreaStartAddress(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsPeripheralAreaStartAddress"].getBigIntegerValue()
		}
		
		def void setOsPeripheralAreaStartAddress(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsPeripheralAreaStartAddress"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsPeripheralAreaStartAddress"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		def List<org.artop.ecuc.autosar430.accessors.Os.OsApplication> getOsPeripheralAreaAccessingApplications(){
			val containerDef = containerValue.gGetDefinition
			val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
				containerDef.gGetReferences.findFirst[gGetShortName == "OsPeripheralAreaAccessingApplication"] else null
		
			val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
				override protected accept(GReferenceValue item) {
					return accept(item, typeof(GConfigReference), "OsPeripheralAreaAccessingApplication")
				}
			}
		
			return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar430.accessors.Os.OsApplication>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar430.accessors.Os.OsApplication)) {
				override protected wrap(org.artop.ecuc.autosar430.accessors.Os.OsApplication object) throws CoreException {
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
							return new org.artop.ecuc.autosar430.accessors.Os.OsApplication(referenceValueValue as GContainer)
						}
					}
				}
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof OsResource)){
				return false
			}
			this.target == (object as OsResource).target
		}
	
		def OsResourceProperty getOsResourceProperty(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsResourceProperty"].getOsResourcePropertyValue()
		}
		
		def void setOsResourceProperty(OsResourceProperty value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsResourceProperty"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsResourceProperty"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum OsResourceProperty {
			INTERNAL, 
			LINKED, 
			STANDARD
		}
		
		def OsResourceProperty getOsResourcePropertyValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "INTERNAL" : OsResourceProperty.INTERNAL
				case "LINKED" : OsResourceProperty.LINKED
				case "STANDARD" : OsResourceProperty.STANDARD
			}
		}
		
		def void setOsResourcePropertyValue(GParameterValue parameterValue, OsResourceProperty value){
			parameterValue.setValue(value)
		}
		
		
		def List<org.artop.ecuc.autosar430.accessors.Os.OsApplication> getOsResourceAccessingApplications(){
			val containerDef = containerValue.gGetDefinition
			val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
				containerDef.gGetReferences.findFirst[gGetShortName == "OsResourceAccessingApplication"] else null
		
			val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
				override protected accept(GReferenceValue item) {
					return accept(item, typeof(GConfigReference), "OsResourceAccessingApplication")
				}
			}
		
			return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar430.accessors.Os.OsApplication>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar430.accessors.Os.OsApplication)) {
				override protected wrap(org.artop.ecuc.autosar430.accessors.Os.OsApplication object) throws CoreException {
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
							return new org.artop.ecuc.autosar430.accessors.Os.OsApplication(referenceValueValue as GContainer)
						}
					}
				}
			}
		}
		
		def org.artop.ecuc.autosar430.accessors.Os.OsResource getOsResourceLinkedResourceRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Os.OsResource), "OsResourceLinkedResourceRef")
		}
		
		def void setOsResourceLinkedResourceRef(org.artop.ecuc.autosar430.accessors.Os.OsResource object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "OsResourceLinkedResourceRef"], object.getTarget())
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof OsScheduleTable)){
				return false
			}
			this.target == (object as OsScheduleTable).target
		}
	
		def BigInteger getOsScheduleTableDuration(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTableDuration"].getBigIntegerValue()
		}
		
		def void setOsScheduleTableDuration(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTableDuration"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsScheduleTableDuration"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getOsScheduleTableRepeating(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTableRepeating"].getBooleanValue()
		}
		
		def void setOsScheduleTableRepeating(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTableRepeating"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsScheduleTableRepeating"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		def org.artop.ecuc.autosar430.accessors.Os.OsCounter getOsScheduleTableCounterRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Os.OsCounter), "OsScheduleTableCounterRef")
		}
		
		def void setOsScheduleTableCounterRef(org.artop.ecuc.autosar430.accessors.Os.OsCounter object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "OsScheduleTableCounterRef"], object.getTarget())
			}
		}
		
		def List<org.artop.ecuc.autosar430.accessors.Os.OsApplication> getOsSchTblAccessingApplications(){
			val containerDef = containerValue.gGetDefinition
			val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
				containerDef.gGetReferences.findFirst[gGetShortName == "OsSchTblAccessingApplication"] else null
		
			val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
				override protected accept(GReferenceValue item) {
					return accept(item, typeof(GConfigReference), "OsSchTblAccessingApplication")
				}
			}
		
			return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar430.accessors.Os.OsApplication>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar430.accessors.Os.OsApplication)) {
				override protected wrap(org.artop.ecuc.autosar430.accessors.Os.OsApplication object) throws CoreException {
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
							return new org.artop.ecuc.autosar430.accessors.Os.OsApplication(referenceValueValue as GContainer)
						}
					}
				}
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
				override protected delegateAdd(org.artop.ecuc.autosar430.accessors.Os.OsScheduleTable.OsScheduleTableExpiryPoint osScheduleTableExpiryPoint) {
					osScheduleTableExpiryPoint.target?.gSetDefinition(containerValue.getContainerDefinition("OsScheduleTableExpiryPoint"))
					super.delegateAdd(osScheduleTableExpiryPoint)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.Os.OsScheduleTable.OsScheduleTableExpiryPoint osScheduleTableExpiryPoint) {
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof OsScheduleTableAutostart)){
					return false
				}
				this.target == (object as OsScheduleTableAutostart).target
			}
		
			def OsScheduleTableAutostartType getOsScheduleTableAutostartType(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTableAutostartType"].getOsScheduleTableAutostartTypeValue()
			}
			
			def void setOsScheduleTableAutostartType(OsScheduleTableAutostartType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTableAutostartType"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsScheduleTableAutostartType"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum OsScheduleTableAutostartType {
				ABSOLUTE, 
				RELATIVE, 
				SYNCHRON
			}
			
			def OsScheduleTableAutostartType getOsScheduleTableAutostartTypeValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "ABSOLUTE" : OsScheduleTableAutostartType.ABSOLUTE
					case "RELATIVE" : OsScheduleTableAutostartType.RELATIVE
					case "SYNCHRON" : OsScheduleTableAutostartType.SYNCHRON
				}
			}
			
			def void setOsScheduleTableAutostartTypeValue(GParameterValue parameterValue, OsScheduleTableAutostartType value){
				parameterValue.setValue(value)
			}
			
			def BigInteger getOsScheduleTableStartValue(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTableStartValue"].getBigIntegerValue()
			}
			
			def void setOsScheduleTableStartValue(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTableStartValue"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsScheduleTableStartValue"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def List<org.artop.ecuc.autosar430.accessors.Os.OsAppMode> getOsScheduleTableAppModeRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "OsScheduleTableAppModeRef"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "OsScheduleTableAppModeRef")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar430.accessors.Os.OsAppMode>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar430.accessors.Os.OsAppMode)) {
					override protected wrap(org.artop.ecuc.autosar430.accessors.Os.OsAppMode object) throws CoreException {
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
								return new org.artop.ecuc.autosar430.accessors.Os.OsAppMode(referenceValueValue as GContainer)
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof OsScheduleTableExpiryPoint)){
					return false
				}
				this.target == (object as OsScheduleTableExpiryPoint).target
			}
		
			def BigInteger getOsScheduleTblExpPointOffset(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTblExpPointOffset"].getBigIntegerValue()
			}
			
			def void setOsScheduleTblExpPointOffset(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTblExpPointOffset"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsScheduleTblExpPointOffset"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			def List<OsScheduleTableEventSetting> getOsScheduleTableEventSettings(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "OsScheduleTableEventSetting")
					}
				}
				return new BasicWrappingEList<OsScheduleTableEventSetting, GContainer>(filteredContainers, typeof(OsScheduleTableEventSetting), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar430.accessors.Os.OsScheduleTable.OsScheduleTableExpiryPoint.OsScheduleTableEventSetting osScheduleTableEventSetting) {
						osScheduleTableEventSetting.target?.gSetDefinition(containerValue.getContainerDefinition("OsScheduleTableEventSetting"))
						super.delegateAdd(osScheduleTableEventSetting)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.Os.OsScheduleTable.OsScheduleTableExpiryPoint.OsScheduleTableEventSetting osScheduleTableEventSetting) {
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
					override protected delegateAdd(org.artop.ecuc.autosar430.accessors.Os.OsScheduleTable.OsScheduleTableExpiryPoint.OsScheduleTableTaskActivation osScheduleTableTaskActivation) {
						osScheduleTableTaskActivation.target?.gSetDefinition(containerValue.getContainerDefinition("OsScheduleTableTaskActivation"))
						super.delegateAdd(osScheduleTableTaskActivation)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.Os.OsScheduleTable.OsScheduleTableExpiryPoint.OsScheduleTableTaskActivation osScheduleTableTaskActivation) {
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof OsScheduleTableEventSetting)){
						return false
					}
					this.target == (object as OsScheduleTableEventSetting).target
				}
			
				
				def org.artop.ecuc.autosar430.accessors.Os.OsEvent getOsScheduleTableSetEventRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Os.OsEvent), "OsScheduleTableSetEventRef")
				}
				
				def void setOsScheduleTableSetEventRef(org.artop.ecuc.autosar430.accessors.Os.OsEvent object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "OsScheduleTableSetEventRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar430.accessors.Os.OsTask getOsScheduleTableSetEventTaskRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Os.OsTask), "OsScheduleTableSetEventTaskRef")
				}
				
				def void setOsScheduleTableSetEventTaskRef(org.artop.ecuc.autosar430.accessors.Os.OsTask object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "OsScheduleTableSetEventTaskRef"], object.getTarget())
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof OsScheduleTableTaskActivation)){
						return false
					}
					this.target == (object as OsScheduleTableTaskActivation).target
				}
			
				
				def org.artop.ecuc.autosar430.accessors.Os.OsTask getOsScheduleTableActivateTaskRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Os.OsTask), "OsScheduleTableActivateTaskRef")
				}
				
				def void setOsScheduleTableActivateTaskRef(org.artop.ecuc.autosar430.accessors.Os.OsTask object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "OsScheduleTableActivateTaskRef"], object.getTarget())
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof OsScheduleTblAdjustableExpPoint)){
						return false
					}
					this.target == (object as OsScheduleTblAdjustableExpPoint).target
				}
			
				def BigInteger getOsScheduleTableMaxLengthen(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTableMaxLengthen"].getBigIntegerValue()
				}
				
				def void setOsScheduleTableMaxLengthen(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTableMaxLengthen"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsScheduleTableMaxLengthen"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getOsScheduleTableMaxShorten(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTableMaxShorten"].getBigIntegerValue()
				}
				
				def void setOsScheduleTableMaxShorten(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTableMaxShorten"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsScheduleTableMaxShorten"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof OsScheduleTableSync)){
					return false
				}
				this.target == (object as OsScheduleTableSync).target
			}
		
			def BigInteger getOsScheduleTblExplicitPrecision(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTblExplicitPrecision"].getBigIntegerValue()
			}
			
			def void setOsScheduleTblExplicitPrecision(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTblExplicitPrecision"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsScheduleTblExplicitPrecision"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def OsScheduleTblSyncStrategy getOsScheduleTblSyncStrategy(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTblSyncStrategy"].getOsScheduleTblSyncStrategyValue()
			}
			
			def void setOsScheduleTblSyncStrategy(OsScheduleTblSyncStrategy value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsScheduleTblSyncStrategy"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsScheduleTblSyncStrategy"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum OsScheduleTblSyncStrategy {
				EXPLICIT, 
				IMPLICIT, 
				NONE
			}
			
			def OsScheduleTblSyncStrategy getOsScheduleTblSyncStrategyValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "EXPLICIT" : OsScheduleTblSyncStrategy.EXPLICIT
					case "IMPLICIT" : OsScheduleTblSyncStrategy.IMPLICIT
					case "NONE" : OsScheduleTblSyncStrategy.NONE
				}
			}
			
			def void setOsScheduleTblSyncStrategyValue(GParameterValue parameterValue, OsScheduleTblSyncStrategy value){
				parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof OsSpinlock)){
				return false
			}
			this.target == (object as OsSpinlock).target
		}
	
		def OsSpinlockLockMethod getOsSpinlockLockMethod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsSpinlockLockMethod"].getOsSpinlockLockMethodValue()
		}
		
		def void setOsSpinlockLockMethod(OsSpinlockLockMethod value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsSpinlockLockMethod"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsSpinlockLockMethod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum OsSpinlockLockMethod {
			LOCK_ALL_INTERRUPTS, 
			LOCK_CAT2_INTERRUPTS, 
			LOCK_NOTHING, 
			LOCK_WITH_RES_SCHEDULER
		}
		
		def OsSpinlockLockMethod getOsSpinlockLockMethodValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "LOCK_ALL_INTERRUPTS" : OsSpinlockLockMethod.LOCK_ALL_INTERRUPTS
				case "LOCK_CAT2_INTERRUPTS" : OsSpinlockLockMethod.LOCK_CAT2_INTERRUPTS
				case "LOCK_NOTHING" : OsSpinlockLockMethod.LOCK_NOTHING
				case "LOCK_WITH_RES_SCHEDULER" : OsSpinlockLockMethod.LOCK_WITH_RES_SCHEDULER
			}
		}
		
		def void setOsSpinlockLockMethodValue(GParameterValue parameterValue, OsSpinlockLockMethod value){
			parameterValue.setValue(value)
		}
		
		
		def List<org.artop.ecuc.autosar430.accessors.Os.OsApplication> getOsSpinlockAccessingApplications(){
			val containerDef = containerValue.gGetDefinition
			val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
				containerDef.gGetReferences.findFirst[gGetShortName == "OsSpinlockAccessingApplication"] else null
		
			val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
				override protected accept(GReferenceValue item) {
					return accept(item, typeof(GConfigReference), "OsSpinlockAccessingApplication")
				}
			}
		
			return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar430.accessors.Os.OsApplication>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar430.accessors.Os.OsApplication)) {
				override protected wrap(org.artop.ecuc.autosar430.accessors.Os.OsApplication object) throws CoreException {
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
							return new org.artop.ecuc.autosar430.accessors.Os.OsApplication(referenceValueValue as GContainer)
						}
					}
				}
			}
		}
		
		def org.artop.ecuc.autosar430.accessors.Os.OsSpinlock getOsSpinlockSuccessor(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Os.OsSpinlock), "OsSpinlockSuccessor")
		}
		
		def void setOsSpinlockSuccessor(org.artop.ecuc.autosar430.accessors.Os.OsSpinlock object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "OsSpinlockSuccessor"], object.getTarget())
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof OsTask)){
				return false
			}
			this.target == (object as OsTask).target
		}
	
		def BigInteger getOsTaskActivation(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskActivation"].getBigIntegerValue()
		}
		
		def void setOsTaskActivation(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskActivation"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsTaskActivation"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getOsTaskPriority(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskPriority"].getBigIntegerValue()
		}
		
		def void setOsTaskPriority(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskPriority"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsTaskPriority"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def OsTaskSchedule getOsTaskSchedule(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskSchedule"].getOsTaskScheduleValue()
		}
		
		def void setOsTaskSchedule(OsTaskSchedule value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskSchedule"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsTaskSchedule"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum OsTaskSchedule {
			FULL, 
			NON
		}
		
		def OsTaskSchedule getOsTaskScheduleValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "FULL" : OsTaskSchedule.FULL
				case "NON" : OsTaskSchedule.NON
			}
		}
		
		def void setOsTaskScheduleValue(GParameterValue parameterValue, OsTaskSchedule value){
			parameterValue.setValue(value)
		}
		
		
		def List<org.artop.ecuc.autosar430.accessors.Os.OsApplication> getOsTaskAccessingApplications(){
			val containerDef = containerValue.gGetDefinition
			val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
				containerDef.gGetReferences.findFirst[gGetShortName == "OsTaskAccessingApplication"] else null
		
			val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
				override protected accept(GReferenceValue item) {
					return accept(item, typeof(GConfigReference), "OsTaskAccessingApplication")
				}
			}
		
			return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar430.accessors.Os.OsApplication>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar430.accessors.Os.OsApplication)) {
				override protected wrap(org.artop.ecuc.autosar430.accessors.Os.OsApplication object) throws CoreException {
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
							return new org.artop.ecuc.autosar430.accessors.Os.OsApplication(referenceValueValue as GContainer)
						}
					}
				}
			}
		}
		
		def List<org.artop.ecuc.autosar430.accessors.Os.OsEvent> getOsTaskEventRefs(){
			val containerDef = containerValue.gGetDefinition
			val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
				containerDef.gGetReferences.findFirst[gGetShortName == "OsTaskEventRef"] else null
		
			val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
				override protected accept(GReferenceValue item) {
					return accept(item, typeof(GConfigReference), "OsTaskEventRef")
				}
			}
		
			return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar430.accessors.Os.OsEvent>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar430.accessors.Os.OsEvent)) {
				override protected wrap(org.artop.ecuc.autosar430.accessors.Os.OsEvent object) throws CoreException {
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
							return new org.artop.ecuc.autosar430.accessors.Os.OsEvent(referenceValueValue as GContainer)
						}
					}
				}
			}
		}
		
		def List<org.artop.ecuc.autosar430.accessors.Os.OsResource> getOsTaskResourceRefs(){
			val containerDef = containerValue.gGetDefinition
			val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
				containerDef.gGetReferences.findFirst[gGetShortName == "OsTaskResourceRef"] else null
		
			val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
				override protected accept(GReferenceValue item) {
					return accept(item, typeof(GConfigReference), "OsTaskResourceRef")
				}
			}
		
			return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar430.accessors.Os.OsResource>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar430.accessors.Os.OsResource)) {
				override protected wrap(org.artop.ecuc.autosar430.accessors.Os.OsResource object) throws CoreException {
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
							return new org.artop.ecuc.autosar430.accessors.Os.OsResource(referenceValueValue as GContainer)
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof OsTaskAutostart)){
					return false
				}
				this.target == (object as OsTaskAutostart).target
			}
		
			
			def List<org.artop.ecuc.autosar430.accessors.Os.OsAppMode> getOsTaskAppModeRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "OsTaskAppModeRef"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "OsTaskAppModeRef")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar430.accessors.Os.OsAppMode>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar430.accessors.Os.OsAppMode)) {
					override protected wrap(org.artop.ecuc.autosar430.accessors.Os.OsAppMode object) throws CoreException {
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
								return new org.artop.ecuc.autosar430.accessors.Os.OsAppMode(referenceValueValue as GContainer)
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof OsTaskTimingProtection)){
					return false
				}
				this.target == (object as OsTaskTimingProtection).target
			}
		
			def BigDecimal getOsTaskAllInterruptLockBudget(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskAllInterruptLockBudget"].getBigDecimalValue()
			}
			
			def void setOsTaskAllInterruptLockBudget(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskAllInterruptLockBudget"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsTaskAllInterruptLockBudget"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getOsTaskExecutionBudget(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskExecutionBudget"].getBigDecimalValue()
			}
			
			def void setOsTaskExecutionBudget(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskExecutionBudget"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsTaskExecutionBudget"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getOsTaskOsInterruptLockBudget(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskOsInterruptLockBudget"].getBigDecimalValue()
			}
			
			def void setOsTaskOsInterruptLockBudget(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskOsInterruptLockBudget"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsTaskOsInterruptLockBudget"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getOsTaskTimeFrame(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskTimeFrame"].getBigDecimalValue()
			}
			
			def void setOsTaskTimeFrame(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskTimeFrame"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsTaskTimeFrame"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			def List<OsTaskResourceLock> getOsTaskResourceLocks(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "OsTaskResourceLock")
					}
				}
				return new BasicWrappingEList<OsTaskResourceLock, GContainer>(filteredContainers, typeof(OsTaskResourceLock), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar430.accessors.Os.OsTask.OsTaskTimingProtection.OsTaskResourceLock osTaskResourceLock) {
						osTaskResourceLock.target?.gSetDefinition(containerValue.getContainerDefinition("OsTaskResourceLock"))
						super.delegateAdd(osTaskResourceLock)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.Os.OsTask.OsTaskTimingProtection.OsTaskResourceLock osTaskResourceLock) {
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof OsTaskResourceLock)){
						return false
					}
					this.target == (object as OsTaskResourceLock).target
				}
			
				def BigDecimal getOsTaskResourceLockBudget(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskResourceLockBudget"].getBigDecimalValue()
				}
				
				def void setOsTaskResourceLockBudget(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "OsTaskResourceLockBudget"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "OsTaskResourceLockBudget"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar430.accessors.Os.OsResource getOsTaskResourceLockResourceRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Os.OsResource), "OsTaskResourceLockResourceRef")
				}
				
				def void setOsTaskResourceLockResourceRef(org.artop.ecuc.autosar430.accessors.Os.OsResource object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "OsTaskResourceLockResourceRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof Os)){
			return false
		}
		this.target == (object as Os).target
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
