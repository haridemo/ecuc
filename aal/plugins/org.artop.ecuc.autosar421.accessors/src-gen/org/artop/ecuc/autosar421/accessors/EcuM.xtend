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

class EcuM implements IWrapper<GModuleConfiguration> {
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
	
	def EcuMConfiguration getEcuMConfiguration(){
		moduleConfiguration.getByType(typeof(EcuMConfiguration))
	}
	
	def void setEcuMConfiguration(EcuMConfiguration ecuMConfiguration){
		val GContainer container = ecuMConfiguration.getTarget() 
	    moduleConfiguration.setContainer(container, "EcuMConfiguration")
	}
	def EcuMFixedGeneral getEcuMFixedGeneral(){
		moduleConfiguration.getByType(typeof(EcuMFixedGeneral))
	}
	
	def void setEcuMFixedGeneral(EcuMFixedGeneral ecuMFixedGeneral){
		val GContainer container = ecuMFixedGeneral.getTarget() 
	    moduleConfiguration.setContainer(container, "EcuMFixedGeneral")
	}
	def EcuMFlexGeneral getEcuMFlexGeneral(){
		moduleConfiguration.getByType(typeof(EcuMFlexGeneral))
	}
	
	def void setEcuMFlexGeneral(EcuMFlexGeneral ecuMFlexGeneral){
		val GContainer container = ecuMFlexGeneral.getTarget() 
	    moduleConfiguration.setContainer(container, "EcuMFlexGeneral")
	}
	def EcuMGeneral getEcuMGeneral(){
		moduleConfiguration.getByType(typeof(EcuMGeneral))
	}
	
	def void setEcuMGeneral(EcuMGeneral ecuMGeneral){
		val GContainer container = ecuMGeneral.getTarget() 
	    moduleConfiguration.setContainer(container, "EcuMGeneral")
	}
	
	static class EcuMConfiguration implements IWrapper<GContainer> {
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
		
		
		
		def EcuMCommonConfiguration getEcuMCommonConfiguration(){
			containerValue.getByType(typeof(EcuMCommonConfiguration))
		}
		
		def void setEcuMCommonConfiguration(EcuMCommonConfiguration ecuMCommonConfiguration){
			val GContainer subContainer = ecuMCommonConfiguration.getTarget()
			containerValue.setContainer(subContainer, "EcuMCommonConfiguration")
		}
		
		def EcuMFixedConfiguration getEcuMFixedConfiguration(){
			containerValue.getByType(typeof(EcuMFixedConfiguration))
		}
		
		def void setEcuMFixedConfiguration(EcuMFixedConfiguration ecuMFixedConfiguration){
			val GContainer subContainer = ecuMFixedConfiguration.getTarget()
			containerValue.setContainer(subContainer, "EcuMFixedConfiguration")
		}
		
		def EcuMFlexConfiguration getEcuMFlexConfiguration(){
			containerValue.getByType(typeof(EcuMFlexConfiguration))
		}
		
		def void setEcuMFlexConfiguration(EcuMFlexConfiguration ecuMFlexConfiguration){
			val GContainer subContainer = ecuMFlexConfiguration.getTarget()
			containerValue.setContainer(subContainer, "EcuMFlexConfiguration")
		}
		
		
		static class EcuMCommonConfiguration implements IWrapper<GContainer> {
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
			
			def Integer getEcuMConfigConsistencyHash(){
				EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMConfigConsistencyHash"])
			}
			
			def void setEcuMConfigConsistencyHash(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMConfigConsistencyHash"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMConfigConsistencyHash"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.Os.OsAppMode getEcuMDefaultAppMode(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsAppMode), "EcuMDefaultAppMode")
			}
					
			def void setEcuMDefaultAppMode(org.artop.ecuc.autosar421.accessors.Os.OsAppMode object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "EcuMDefaultAppMode"], object.getTarget())
				}
			}
			
			def List<org.artop.ecuc.autosar421.accessors.Os.OsResource> getEcuMOSResources(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
					containerDef.gGetReferences.findFirst[gGetShortName == "EcuMOSResource"] else null
								
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "EcuMOSResource")
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
			
			
			def EcuMDefaultShutdownTarget getEcuMDefaultShutdownTarget(){
				containerValue.getByType(typeof(EcuMDefaultShutdownTarget))
			}
			
			def void setEcuMDefaultShutdownTarget(EcuMDefaultShutdownTarget ecuMDefaultShutdownTarget){
				val GContainer subContainer = ecuMDefaultShutdownTarget.getTarget()
				containerValue.setContainer(subContainer, "EcuMDefaultShutdownTarget")
			}
			
			def EcuMDriverInitListOne getEcuMDriverInitListOne(){
				containerValue.getByType(typeof(EcuMDriverInitListOne))
			}
			
			def void setEcuMDriverInitListOne(EcuMDriverInitListOne ecuMDriverInitListOne){
				val GContainer subContainer = ecuMDriverInitListOne.getTarget()
				containerValue.setContainer(subContainer, "EcuMDriverInitListOne")
			}
			
			def EcuMDriverInitListZero getEcuMDriverInitListZero(){
				containerValue.getByType(typeof(EcuMDriverInitListZero))
			}
			
			def void setEcuMDriverInitListZero(EcuMDriverInitListZero ecuMDriverInitListZero){
				val GContainer subContainer = ecuMDriverInitListZero.getTarget()
				containerValue.setContainer(subContainer, "EcuMDriverInitListZero")
			}
			
			def EcuMDriverRestartList getEcuMDriverRestartList(){
				containerValue.getByType(typeof(EcuMDriverRestartList))
			}
			
			def void setEcuMDriverRestartList(EcuMDriverRestartList ecuMDriverRestartList){
				val GContainer subContainer = ecuMDriverRestartList.getTarget()
				containerValue.setContainer(subContainer, "EcuMDriverRestartList")
			}
			
			def List<EcuMSleepMode> getEcuMSleepModes(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "EcuMSleepMode")
					}
				}
				return new BasicWrappingEList<EcuMSleepMode, GContainer>(filteredContainers, typeof(EcuMSleepMode), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.EcuM$EcuMConfiguration$EcuMCommonConfiguration$EcuMSleepMode ecuMSleepMode) {
						ecuMSleepMode.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMSleepMode"))
						super.delegateAdd(ecuMSleepMode)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.EcuM$EcuMConfiguration$EcuMCommonConfiguration$EcuMSleepMode ecuMSleepMode) {
						ecuMSleepMode.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMSleepMode"))
						super.delegateAdd(index, ecuMSleepMode)
					}	
				}
			}
			
			def List<EcuMWakeupSource> getEcuMWakeupSources(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "EcuMWakeupSource")
					}
				}
				return new BasicWrappingEList<EcuMWakeupSource, GContainer>(filteredContainers, typeof(EcuMWakeupSource), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.EcuM$EcuMConfiguration$EcuMCommonConfiguration$EcuMWakeupSource ecuMWakeupSource) {
						ecuMWakeupSource.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMWakeupSource"))
						super.delegateAdd(ecuMWakeupSource)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.EcuM$EcuMConfiguration$EcuMCommonConfiguration$EcuMWakeupSource ecuMWakeupSource) {
						ecuMWakeupSource.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMWakeupSource"))
						super.delegateAdd(index, ecuMWakeupSource)
					}	
				}
			}
			
			
			static class EcuMDefaultShutdownTarget implements IWrapper<GContainer> {
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
				
				def EcuMDefaultState getEcuMDefaultState(){
					getEcuMDefaultStateValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMDefaultState"])
				}
				
				def void setEcuMDefaultState(EcuMDefaultState value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMDefaultState"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMDefaultState"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum EcuMDefaultState {
					EcuMStateOff, 
					EcuMStateReset, 
					EcuMStateSleep
				}
					
				def EcuMDefaultState getEcuMDefaultStateValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "EcuMStateOff" : EcuMDefaultState.EcuMStateOff
						case "EcuMStateReset" : EcuMDefaultState.EcuMStateReset
						case "EcuMStateSleep" : EcuMDefaultState.EcuMStateSleep
					}
				}
				
				def void setEcuMDefaultStateValue(GParameterValue paramValue, EcuMDefaultState value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMResetMode getEcuMDefaultResetModeRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMResetMode), "EcuMDefaultResetModeRef")
				}
						
				def void setEcuMDefaultResetModeRef(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMResetMode object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "EcuMDefaultResetModeRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMSleepMode getEcuMDefaultSleepModeRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMSleepMode), "EcuMDefaultSleepModeRef")
				}
						
				def void setEcuMDefaultSleepModeRef(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMSleepMode object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "EcuMDefaultSleepModeRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class EcuMDriverInitListOne implements IWrapper<GContainer> {
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
				
				
				
				def List<EcuMDriverInitItem> getEcuMDriverInitItems(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "EcuMDriverInitItem")
						}
					}
					return new BasicWrappingEList<EcuMDriverInitItem, GContainer>(filteredContainers, typeof(EcuMDriverInitItem), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.EcuM$EcuMConfiguration$EcuMCommonConfiguration$EcuMDriverInitListOne$EcuMDriverInitItem ecuMDriverInitItem) {
							ecuMDriverInitItem.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMDriverInitItem"))
							super.delegateAdd(ecuMDriverInitItem)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.EcuM$EcuMConfiguration$EcuMCommonConfiguration$EcuMDriverInitListOne$EcuMDriverInitItem ecuMDriverInitItem) {
							ecuMDriverInitItem.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMDriverInitItem"))
							super.delegateAdd(index, ecuMDriverInitItem)
						}	
					}
				}
				
				
				static class EcuMDriverInitItem implements IWrapper<GContainer> {
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
					
					def String getEcuMModuleID(){
						EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleID"])
					}
					
					def void setEcuMModuleID(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleID"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMModuleID"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def EcuMModuleParameter getEcuMModuleParameter(){
						getEcuMModuleParameterValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleParameter"])
					}
					
					def void setEcuMModuleParameter(EcuMModuleParameter value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleParameter"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMModuleParameter"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					enum EcuMModuleParameter {
						NULL_PTR, 
						POSTBUILD_PTR, 
						VOID
					}
						
					def EcuMModuleParameter getEcuMModuleParameterValue(GParameterValue paramValue){
						val castedParamValue = paramValue as EcucTextualParamValue
						switch (castedParamValue.value){
							case "NULL_PTR" : EcuMModuleParameter.NULL_PTR
							case "POSTBUILD_PTR" : EcuMModuleParameter.POSTBUILD_PTR
							case "VOID" : EcuMModuleParameter.VOID
						}
					}
					
					def void setEcuMModuleParameterValue(GParameterValue paramValue, EcuMModuleParameter value){
						EcucValueAccessor421Util.setParameterValue(paramValue, value)
					}
					
					def String getEcuMModuleService(){
						EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleService"])
					}
					
					def void setEcuMModuleService(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleService"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMModuleService"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					
					
					
				}
				
			}
			
			static class EcuMDriverInitListZero implements IWrapper<GContainer> {
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
				
				
				
				def List<EcuMDriverInitItem> getEcuMDriverInitItems(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "EcuMDriverInitItem")
						}
					}
					return new BasicWrappingEList<EcuMDriverInitItem, GContainer>(filteredContainers, typeof(EcuMDriverInitItem), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.EcuM$EcuMConfiguration$EcuMCommonConfiguration$EcuMDriverInitListZero$EcuMDriverInitItem ecuMDriverInitItem) {
							ecuMDriverInitItem.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMDriverInitItem"))
							super.delegateAdd(ecuMDriverInitItem)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.EcuM$EcuMConfiguration$EcuMCommonConfiguration$EcuMDriverInitListZero$EcuMDriverInitItem ecuMDriverInitItem) {
							ecuMDriverInitItem.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMDriverInitItem"))
							super.delegateAdd(index, ecuMDriverInitItem)
						}	
					}
				}
				
				
				static class EcuMDriverInitItem implements IWrapper<GContainer> {
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
					
					def String getEcuMModuleID(){
						EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleID"])
					}
					
					def void setEcuMModuleID(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleID"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMModuleID"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def EcuMModuleParameter getEcuMModuleParameter(){
						getEcuMModuleParameterValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleParameter"])
					}
					
					def void setEcuMModuleParameter(EcuMModuleParameter value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleParameter"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMModuleParameter"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					enum EcuMModuleParameter {
						NULL_PTR, 
						POSTBUILD_PTR, 
						VOID
					}
						
					def EcuMModuleParameter getEcuMModuleParameterValue(GParameterValue paramValue){
						val castedParamValue = paramValue as EcucTextualParamValue
						switch (castedParamValue.value){
							case "NULL_PTR" : EcuMModuleParameter.NULL_PTR
							case "POSTBUILD_PTR" : EcuMModuleParameter.POSTBUILD_PTR
							case "VOID" : EcuMModuleParameter.VOID
						}
					}
					
					def void setEcuMModuleParameterValue(GParameterValue paramValue, EcuMModuleParameter value){
						EcucValueAccessor421Util.setParameterValue(paramValue, value)
					}
					
					def String getEcuMModuleService(){
						EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleService"])
					}
					
					def void setEcuMModuleService(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleService"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMModuleService"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					
					
					
				}
				
			}
			
			static class EcuMDriverRestartList implements IWrapper<GContainer> {
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
				
				
				
				def List<EcuMDriverInitItem> getEcuMDriverInitItems(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "EcuMDriverInitItem")
						}
					}
					return new BasicWrappingEList<EcuMDriverInitItem, GContainer>(filteredContainers, typeof(EcuMDriverInitItem), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.EcuM$EcuMConfiguration$EcuMCommonConfiguration$EcuMDriverRestartList$EcuMDriverInitItem ecuMDriverInitItem) {
							ecuMDriverInitItem.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMDriverInitItem"))
							super.delegateAdd(ecuMDriverInitItem)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.EcuM$EcuMConfiguration$EcuMCommonConfiguration$EcuMDriverRestartList$EcuMDriverInitItem ecuMDriverInitItem) {
							ecuMDriverInitItem.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMDriverInitItem"))
							super.delegateAdd(index, ecuMDriverInitItem)
						}	
					}
				}
				
				
				static class EcuMDriverInitItem implements IWrapper<GContainer> {
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
					
					def String getEcuMModuleID(){
						EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleID"])
					}
					
					def void setEcuMModuleID(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleID"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMModuleID"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def EcuMModuleParameter getEcuMModuleParameter(){
						getEcuMModuleParameterValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleParameter"])
					}
					
					def void setEcuMModuleParameter(EcuMModuleParameter value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleParameter"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMModuleParameter"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					enum EcuMModuleParameter {
						NULL_PTR, 
						POSTBUILD_PTR, 
						VOID
					}
						
					def EcuMModuleParameter getEcuMModuleParameterValue(GParameterValue paramValue){
						val castedParamValue = paramValue as EcucTextualParamValue
						switch (castedParamValue.value){
							case "NULL_PTR" : EcuMModuleParameter.NULL_PTR
							case "POSTBUILD_PTR" : EcuMModuleParameter.POSTBUILD_PTR
							case "VOID" : EcuMModuleParameter.VOID
						}
					}
					
					def void setEcuMModuleParameterValue(GParameterValue paramValue, EcuMModuleParameter value){
						EcucValueAccessor421Util.setParameterValue(paramValue, value)
					}
					
					def String getEcuMModuleService(){
						EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleService"])
					}
					
					def void setEcuMModuleService(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleService"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMModuleService"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					
					
					
				}
				
			}
			
			static class EcuMSleepMode implements IWrapper<GContainer> {
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
				
				def Integer getEcuMSleepModeId(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMSleepModeId"])
				}
				
				def void setEcuMSleepModeId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMSleepModeId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMSleepModeId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def Boolean getEcuMSleepModeSuspend(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMSleepModeSuspend"])
				}
				
				def void setEcuMSleepModeSuspend(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMSleepModeSuspend"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMSleepModeSuspend"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.Mcu.McuModuleConfiguration.McuModeSettingConf getEcuMSleepModeMcuModeRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Mcu.McuModuleConfiguration.McuModeSettingConf), "EcuMSleepModeMcuModeRef")
				}
						
				def void setEcuMSleepModeMcuModeRef(org.artop.ecuc.autosar421.accessors.Mcu.McuModuleConfiguration.McuModeSettingConf object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "EcuMSleepModeMcuModeRef"], object.getTarget())
					}
				}
				
				def List<org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource> getEcuMWakeupSourceMasks(){
					val containerDef = containerValue.gGetDefinition
					val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
						containerDef.gGetReferences.findFirst[gGetShortName == "EcuMWakeupSourceMask"] else null
									
					val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
						override protected accept(GReferenceValue item) {
							return accept(item, typeof(GConfigReference), "EcuMWakeupSourceMask")
						}
					}
					
					return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource)) {
						override protected wrap(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource object) throws CoreException {
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
									return new org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource(referenceValueValue as GContainer)
								}
							}
						}
					}
				}
				
				
				
			}
			
			static class EcuMWakeupSource implements IWrapper<GContainer> {
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
				
				def Float getEcuMCheckWakeupTimeout(){
					EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMCheckWakeupTimeout"])
				}
				
				def void setEcuMCheckWakeupTimeout(Float value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMCheckWakeupTimeout"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMCheckWakeupTimeout"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def Float getEcuMValidationTimeout(){
					EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMValidationTimeout"])
				}
				
				def void setEcuMValidationTimeout(Float value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMValidationTimeout"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMValidationTimeout"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def Integer getEcuMWakeupSourceId(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMWakeupSourceId"])
				}
				
				def void setEcuMWakeupSourceId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMWakeupSourceId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMWakeupSourceId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def Boolean getEcuMWakeupSourcePolling(){
					getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMWakeupSourcePolling"])
				}
				
				def void setEcuMWakeupSourcePolling(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMWakeupSourcePolling"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMWakeupSourcePolling"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel getEcuMComMChannelRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel), "EcuMComMChannelRef")
				}
						
				def void setEcuMComMChannelRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "EcuMComMChannelRef"], object.getTarget())
					}
				}
				
				def List<org.artop.ecuc.autosar421.accessors.Mcu.McuPublishedInformation.McuResetReasonConf> getEcuMResetReasonRefs(){
					val containerDef = containerValue.gGetDefinition
					val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
						containerDef.gGetReferences.findFirst[gGetShortName == "EcuMResetReasonRef"] else null
									
					val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
						override protected accept(GReferenceValue item) {
							return accept(item, typeof(GConfigReference), "EcuMResetReasonRef")
						}
					}
					
					return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Mcu.McuPublishedInformation.McuResetReasonConf>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Mcu.McuPublishedInformation.McuResetReasonConf)) {
						override protected wrap(org.artop.ecuc.autosar421.accessors.Mcu.McuPublishedInformation.McuResetReasonConf object) throws CoreException {
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
									return new org.artop.ecuc.autosar421.accessors.Mcu.McuPublishedInformation.McuResetReasonConf(referenceValueValue as GContainer)
								}
							}
						}
					}
				}
				
				
				
			}
			
		}
		
		static class EcuMFixedConfiguration implements IWrapper<GContainer> {
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
			
			def Float getEcuMNvramReadallTimeout(){
				EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMNvramReadallTimeout"])
			}
			
			def void setEcuMNvramReadallTimeout(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMNvramReadallTimeout"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMNvramReadallTimeout"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Float getEcuMNvramWriteallTimeout(){
				EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMNvramWriteallTimeout"])
			}
			
			def void setEcuMNvramWriteallTimeout(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMNvramWriteallTimeout"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMNvramWriteallTimeout"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Float getEcuMRunMinimumDuration(){
				EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMRunMinimumDuration"])
			}
			
			def void setEcuMRunMinimumDuration(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMRunMinimumDuration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMRunMinimumDuration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			def List<org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel> getEcuMComMCommunicationAllowedLists(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
					containerDef.gGetReferences.findFirst[gGetShortName == "EcuMComMCommunicationAllowedList"] else null
								
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "EcuMComMCommunicationAllowedList")
					}
				}
				
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel)) {
					override protected wrap(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object) throws CoreException {
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
								return new org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Mcu.McuModuleConfiguration.McuModeSettingConf getEcuMNormalMcuModeRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Mcu.McuModuleConfiguration.McuModeSettingConf), "EcuMNormalMcuModeRef")
			}
					
			def void setEcuMNormalMcuModeRef(org.artop.ecuc.autosar421.accessors.Mcu.McuModuleConfiguration.McuModeSettingConf object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "EcuMNormalMcuModeRef"], object.getTarget())
				}
			}
			
			
			def EcuMDriverInitListThree getEcuMDriverInitListThree(){
				containerValue.getByType(typeof(EcuMDriverInitListThree))
			}
			
			def void setEcuMDriverInitListThree(EcuMDriverInitListThree ecuMDriverInitListThree){
				val GContainer subContainer = ecuMDriverInitListThree.getTarget()
				containerValue.setContainer(subContainer, "EcuMDriverInitListThree")
			}
			
			def EcuMDriverInitListTwo getEcuMDriverInitListTwo(){
				containerValue.getByType(typeof(EcuMDriverInitListTwo))
			}
			
			def void setEcuMDriverInitListTwo(EcuMDriverInitListTwo ecuMDriverInitListTwo){
				val GContainer subContainer = ecuMDriverInitListTwo.getTarget()
				containerValue.setContainer(subContainer, "EcuMDriverInitListTwo")
			}
			
			def List<EcuMFixedUserConfig> getEcuMFixedUserConfigs(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "EcuMFixedUserConfig")
					}
				}
				return new BasicWrappingEList<EcuMFixedUserConfig, GContainer>(filteredContainers, typeof(EcuMFixedUserConfig), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.EcuM$EcuMConfiguration$EcuMFixedConfiguration$EcuMFixedUserConfig ecuMFixedUserConfig) {
						ecuMFixedUserConfig.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMFixedUserConfig"))
						super.delegateAdd(ecuMFixedUserConfig)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.EcuM$EcuMConfiguration$EcuMFixedConfiguration$EcuMFixedUserConfig ecuMFixedUserConfig) {
						ecuMFixedUserConfig.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMFixedUserConfig"))
						super.delegateAdd(index, ecuMFixedUserConfig)
					}	
				}
			}
			
			def List<EcuMTTII> getEcuMTTIIs(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "EcuMTTII")
					}
				}
				return new BasicWrappingEList<EcuMTTII, GContainer>(filteredContainers, typeof(EcuMTTII), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.EcuM$EcuMConfiguration$EcuMFixedConfiguration$EcuMTTII ecuMTTII) {
						ecuMTTII.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMTTII"))
						super.delegateAdd(ecuMTTII)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.EcuM$EcuMConfiguration$EcuMFixedConfiguration$EcuMTTII ecuMTTII) {
						ecuMTTII.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMTTII"))
						super.delegateAdd(index, ecuMTTII)
					}	
				}
			}
			
			
			static class EcuMDriverInitListThree implements IWrapper<GContainer> {
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
				
				
				
				def List<EcuMDriverInitItem> getEcuMDriverInitItems(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "EcuMDriverInitItem")
						}
					}
					return new BasicWrappingEList<EcuMDriverInitItem, GContainer>(filteredContainers, typeof(EcuMDriverInitItem), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.EcuM$EcuMConfiguration$EcuMFixedConfiguration$EcuMDriverInitListThree$EcuMDriverInitItem ecuMDriverInitItem) {
							ecuMDriverInitItem.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMDriverInitItem"))
							super.delegateAdd(ecuMDriverInitItem)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.EcuM$EcuMConfiguration$EcuMFixedConfiguration$EcuMDriverInitListThree$EcuMDriverInitItem ecuMDriverInitItem) {
							ecuMDriverInitItem.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMDriverInitItem"))
							super.delegateAdd(index, ecuMDriverInitItem)
						}	
					}
				}
				
				
				static class EcuMDriverInitItem implements IWrapper<GContainer> {
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
					
					def String getEcuMModuleID(){
						EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleID"])
					}
					
					def void setEcuMModuleID(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleID"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMModuleID"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def EcuMModuleParameter getEcuMModuleParameter(){
						getEcuMModuleParameterValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleParameter"])
					}
					
					def void setEcuMModuleParameter(EcuMModuleParameter value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleParameter"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMModuleParameter"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					enum EcuMModuleParameter {
						NULL_PTR, 
						POSTBUILD_PTR, 
						VOID
					}
						
					def EcuMModuleParameter getEcuMModuleParameterValue(GParameterValue paramValue){
						val castedParamValue = paramValue as EcucTextualParamValue
						switch (castedParamValue.value){
							case "NULL_PTR" : EcuMModuleParameter.NULL_PTR
							case "POSTBUILD_PTR" : EcuMModuleParameter.POSTBUILD_PTR
							case "VOID" : EcuMModuleParameter.VOID
						}
					}
					
					def void setEcuMModuleParameterValue(GParameterValue paramValue, EcuMModuleParameter value){
						EcucValueAccessor421Util.setParameterValue(paramValue, value)
					}
					
					def String getEcuMModuleService(){
						EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleService"])
					}
					
					def void setEcuMModuleService(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleService"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMModuleService"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					
					
					
				}
				
			}
			
			static class EcuMDriverInitListTwo implements IWrapper<GContainer> {
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
				
				
				
				def List<EcuMDriverInitItem> getEcuMDriverInitItems(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "EcuMDriverInitItem")
						}
					}
					return new BasicWrappingEList<EcuMDriverInitItem, GContainer>(filteredContainers, typeof(EcuMDriverInitItem), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.EcuM$EcuMConfiguration$EcuMFixedConfiguration$EcuMDriverInitListTwo$EcuMDriverInitItem ecuMDriverInitItem) {
							ecuMDriverInitItem.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMDriverInitItem"))
							super.delegateAdd(ecuMDriverInitItem)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.EcuM$EcuMConfiguration$EcuMFixedConfiguration$EcuMDriverInitListTwo$EcuMDriverInitItem ecuMDriverInitItem) {
							ecuMDriverInitItem.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMDriverInitItem"))
							super.delegateAdd(index, ecuMDriverInitItem)
						}	
					}
				}
				
				
				static class EcuMDriverInitItem implements IWrapper<GContainer> {
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
					
					def String getEcuMModuleID(){
						EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleID"])
					}
					
					def void setEcuMModuleID(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleID"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMModuleID"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def EcuMModuleParameter getEcuMModuleParameter(){
						getEcuMModuleParameterValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleParameter"])
					}
					
					def void setEcuMModuleParameter(EcuMModuleParameter value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleParameter"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMModuleParameter"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					enum EcuMModuleParameter {
						NULL_PTR, 
						POSTBUILD_PTR, 
						VOID
					}
						
					def EcuMModuleParameter getEcuMModuleParameterValue(GParameterValue paramValue){
						val castedParamValue = paramValue as EcucTextualParamValue
						switch (castedParamValue.value){
							case "NULL_PTR" : EcuMModuleParameter.NULL_PTR
							case "POSTBUILD_PTR" : EcuMModuleParameter.POSTBUILD_PTR
							case "VOID" : EcuMModuleParameter.VOID
						}
					}
					
					def void setEcuMModuleParameterValue(GParameterValue paramValue, EcuMModuleParameter value){
						EcucValueAccessor421Util.setParameterValue(paramValue, value)
					}
					
					def String getEcuMModuleService(){
						EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleService"])
					}
					
					def void setEcuMModuleService(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleService"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMModuleService"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					
					
					
				}
				
			}
			
			static class EcuMFixedUserConfig implements IWrapper<GContainer> {
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
				
				def Integer getEcuMFixedUser(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMFixedUser"])
				}
				
				def void setEcuMFixedUser(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMFixedUser"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMFixedUser"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				
				
			}
			
			static class EcuMTTII implements IWrapper<GContainer> {
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
				
				def Integer getEcuMDivisor(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMDivisor"])
				}
				
				def void setEcuMDivisor(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMDivisor"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMDivisor"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMSleepMode getEcuMSleepModeRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMSleepMode), "EcuMSleepModeRef")
				}
						
				def void setEcuMSleepModeRef(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMSleepMode object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "EcuMSleepModeRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMSleepMode getEcuMSuccessorRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMSleepMode), "EcuMSuccessorRef")
				}
						
				def void setEcuMSuccessorRef(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMSleepMode object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "EcuMSuccessorRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class EcuMFlexConfiguration implements IWrapper<GContainer> {
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
			
			
			def List<org.artop.ecuc.autosar421.accessors.EcuC.EcucPartitionCollection.EcucPartition> getEcuMPartitionRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
					containerDef.gGetReferences.findFirst[gGetShortName == "EcuMPartitionRef"] else null
								
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "EcuMPartitionRef")
					}
				}
				
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.EcuC.EcucPartitionCollection.EcucPartition>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucPartitionCollection.EcucPartition)) {
					override protected wrap(org.artop.ecuc.autosar421.accessors.EcuC.EcucPartitionCollection.EcucPartition object) throws CoreException {
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
								return new org.artop.ecuc.autosar421.accessors.EcuC.EcucPartitionCollection.EcucPartition(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Mcu.McuModuleConfiguration.McuModeSettingConf getEcuMNormalMcuModeRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Mcu.McuModuleConfiguration.McuModeSettingConf), "EcuMNormalMcuModeRef")
			}
					
			def void setEcuMNormalMcuModeRef(org.artop.ecuc.autosar421.accessors.Mcu.McuModuleConfiguration.McuModeSettingConf object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "EcuMNormalMcuModeRef"], object.getTarget())
				}
			}
			
			
			def List<EcuMAlarmClock> getEcuMAlarmClocks(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "EcuMAlarmClock")
					}
				}
				return new BasicWrappingEList<EcuMAlarmClock, GContainer>(filteredContainers, typeof(EcuMAlarmClock), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.EcuM$EcuMConfiguration$EcuMFlexConfiguration$EcuMAlarmClock ecuMAlarmClock) {
						ecuMAlarmClock.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMAlarmClock"))
						super.delegateAdd(ecuMAlarmClock)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.EcuM$EcuMConfiguration$EcuMFlexConfiguration$EcuMAlarmClock ecuMAlarmClock) {
						ecuMAlarmClock.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMAlarmClock"))
						super.delegateAdd(index, ecuMAlarmClock)
					}	
				}
			}
			
			def List<EcuMFlexUserConfig> getEcuMFlexUserConfigs(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "EcuMFlexUserConfig")
					}
				}
				return new BasicWrappingEList<EcuMFlexUserConfig, GContainer>(filteredContainers, typeof(EcuMFlexUserConfig), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.EcuM$EcuMConfiguration$EcuMFlexConfiguration$EcuMFlexUserConfig ecuMFlexUserConfig) {
						ecuMFlexUserConfig.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMFlexUserConfig"))
						super.delegateAdd(ecuMFlexUserConfig)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.EcuM$EcuMConfiguration$EcuMFlexConfiguration$EcuMFlexUserConfig ecuMFlexUserConfig) {
						ecuMFlexUserConfig.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMFlexUserConfig"))
						super.delegateAdd(index, ecuMFlexUserConfig)
					}	
				}
			}
			
			def EcuMGoDownAllowedUsers getEcuMGoDownAllowedUsers(){
				containerValue.getByType(typeof(EcuMGoDownAllowedUsers))
			}
			
			def void setEcuMGoDownAllowedUsers(EcuMGoDownAllowedUsers ecuMGoDownAllowedUsers){
				val GContainer subContainer = ecuMGoDownAllowedUsers.getTarget()
				containerValue.setContainer(subContainer, "EcuMGoDownAllowedUsers")
			}
			
			def List<EcuMResetMode> getEcuMResetModes(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "EcuMResetMode")
					}
				}
				return new BasicWrappingEList<EcuMResetMode, GContainer>(filteredContainers, typeof(EcuMResetMode), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.EcuM$EcuMConfiguration$EcuMFlexConfiguration$EcuMResetMode ecuMResetMode) {
						ecuMResetMode.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMResetMode"))
						super.delegateAdd(ecuMResetMode)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.EcuM$EcuMConfiguration$EcuMFlexConfiguration$EcuMResetMode ecuMResetMode) {
						ecuMResetMode.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMResetMode"))
						super.delegateAdd(index, ecuMResetMode)
					}	
				}
			}
			
			def EcuMSetClockAllowedUsers getEcuMSetClockAllowedUsers(){
				containerValue.getByType(typeof(EcuMSetClockAllowedUsers))
			}
			
			def void setEcuMSetClockAllowedUsers(EcuMSetClockAllowedUsers ecuMSetClockAllowedUsers){
				val GContainer subContainer = ecuMSetClockAllowedUsers.getTarget()
				containerValue.setContainer(subContainer, "EcuMSetClockAllowedUsers")
			}
			
			def List<EcuMShutdownCause> getEcuMShutdownCauses(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "EcuMShutdownCause")
					}
				}
				return new BasicWrappingEList<EcuMShutdownCause, GContainer>(filteredContainers, typeof(EcuMShutdownCause), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.EcuM$EcuMConfiguration$EcuMFlexConfiguration$EcuMShutdownCause ecuMShutdownCause) {
						ecuMShutdownCause.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMShutdownCause"))
						super.delegateAdd(ecuMShutdownCause)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.EcuM$EcuMConfiguration$EcuMFlexConfiguration$EcuMShutdownCause ecuMShutdownCause) {
						ecuMShutdownCause.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMShutdownCause"))
						super.delegateAdd(index, ecuMShutdownCause)
					}	
				}
			}
			
			
			static class EcuMAlarmClock implements IWrapper<GContainer> {
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
				
				def Integer getEcuMAlarmClockId(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMAlarmClockId"])
				}
				
				def void setEcuMAlarmClockId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMAlarmClockId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMAlarmClockId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def Float getEcuMAlarmClockTimeOut(){
					EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMAlarmClockTimeOut"])
				}
				
				def void setEcuMAlarmClockTimeOut(Float value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMAlarmClockTimeOut"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMAlarmClockTimeOut"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMFlexUserConfig getEcuMAlarmClockUser(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMFlexUserConfig), "EcuMAlarmClockUser")
				}
						
				def void setEcuMAlarmClockUser(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMFlexUserConfig object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "EcuMAlarmClockUser"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class EcuMFlexUserConfig implements IWrapper<GContainer> {
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
				
				def Integer getEcuMFlexUser(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMFlexUser"])
				}
				
				def void setEcuMFlexUser(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMFlexUser"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMFlexUser"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.EcuC.EcucPartitionCollection.EcucPartition getEcuMFlexEcucPartitionRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucPartitionCollection.EcucPartition), "EcuMFlexEcucPartitionRef")
				}
						
				def void setEcuMFlexEcucPartitionRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucPartitionCollection.EcucPartition object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "EcuMFlexEcucPartitionRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class EcuMGoDownAllowedUsers implements IWrapper<GContainer> {
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
				
				
				def List<org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMFlexUserConfig> getEcuMGoDownAllowedUserRefs(){
					val containerDef = containerValue.gGetDefinition
					val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
						containerDef.gGetReferences.findFirst[gGetShortName == "EcuMGoDownAllowedUserRef"] else null
									
					val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
						override protected accept(GReferenceValue item) {
							return accept(item, typeof(GConfigReference), "EcuMGoDownAllowedUserRef")
						}
					}
					
					return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMFlexUserConfig>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMFlexUserConfig)) {
						override protected wrap(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMFlexUserConfig object) throws CoreException {
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
									return new org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMFlexUserConfig(referenceValueValue as GContainer)
								}
							}
						}
					}
				}
				
				
				
			}
			
			static class EcuMResetMode implements IWrapper<GContainer> {
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
				
				def Integer getEcuMResetModeId(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMResetModeId"])
				}
				
				def void setEcuMResetModeId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMResetModeId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMResetModeId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				
				
			}
			
			static class EcuMSetClockAllowedUsers implements IWrapper<GContainer> {
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
				
				
				def List<org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMFlexUserConfig> getEcuMSetClockAllowedUserRefs(){
					val containerDef = containerValue.gGetDefinition
					val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
						containerDef.gGetReferences.findFirst[gGetShortName == "EcuMSetClockAllowedUserRef"] else null
									
					val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
						override protected accept(GReferenceValue item) {
							return accept(item, typeof(GConfigReference), "EcuMSetClockAllowedUserRef")
						}
					}
					
					return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMFlexUserConfig>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMFlexUserConfig)) {
						override protected wrap(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMFlexUserConfig object) throws CoreException {
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
									return new org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMFlexUserConfig(referenceValueValue as GContainer)
								}
							}
						}
					}
				}
				
				
				
			}
			
			static class EcuMShutdownCause implements IWrapper<GContainer> {
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
				
				def Integer getEcuMShutdownCauseId(){
					EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMShutdownCauseId"])
				}
				
				def void setEcuMShutdownCauseId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMShutdownCauseId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMShutdownCauseId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				
				
			}
			
		}
		
	}
	static class EcuMFixedGeneral implements IWrapper<GContainer> {
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
		
		def Boolean getEcuMIncludeComM(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMIncludeComM"])
		}
		
		def void setEcuMIncludeComM(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMIncludeComM"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMIncludeComM"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEcuMTTIIEnabled(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMTTIIEnabled"])
		}
		
		def void setEcuMTTIIEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMTTIIEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMTTIIEnabled"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		def org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource getEcuMTTIIWakeupSourceRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource), "EcuMTTIIWakeupSourceRef")
		}
				
		def void setEcuMTTIIWakeupSourceRef(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "EcuMTTIIWakeupSourceRef"], object.getTarget())
			}
		}
		
		
		
	}
	static class EcuMFlexGeneral implements IWrapper<GContainer> {
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
		
		def Boolean getEcuMAlarmClockPresent(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMAlarmClockPresent"])
		}
		
		def void setEcuMAlarmClockPresent(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMAlarmClockPresent"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMAlarmClockPresent"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEcuMModeHandling(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModeHandling"])
		}
		
		def void setEcuMModeHandling(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModeHandling"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMModeHandling"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEcuMResetLoopDetection(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMResetLoopDetection"])
		}
		
		def void setEcuMResetLoopDetection(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMResetLoopDetection"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMResetLoopDetection"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEcuMSetProgrammableInterrupts(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMSetProgrammableInterrupts"])
		}
		
		def void setEcuMSetProgrammableInterrupts(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMSetProgrammableInterrupts"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMSetProgrammableInterrupts"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		def org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource getEcuMAlarmWakeupSource(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource), "EcuMAlarmWakeupSource")
		}
				
		def void setEcuMAlarmWakeupSource(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "EcuMAlarmWakeupSource"], object.getTarget())
			}
		}
		
		
		
	}
	static class EcuMGeneral implements IWrapper<GContainer> {
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
		
		def Boolean getEcuMDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMDevErrorDetect"])
		}
		
		def void setEcuMDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEcuMIncludeDet(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMIncludeDet"])
		}
		
		def void setEcuMIncludeDet(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMIncludeDet"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMIncludeDet"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Float getEcuMMainFunctionPeriod(){
			EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMMainFunctionPeriod"])
		}
		
		def void setEcuMMainFunctionPeriod(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMMainFunctionPeriod"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMMainFunctionPeriod"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEcuMVersionInfoApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMVersionInfoApi"])
		}
		
		def void setEcuMVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EcuMVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
