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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof EcuMConfiguration)){
				return false
			}
			this.target == (object as EcuMConfiguration).target
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof EcuMCommonConfiguration)){
					return false
				}
				this.target == (object as EcuMCommonConfiguration).target
			}
		
			def BigInteger getEcuMConfigConsistencyHash(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMConfigConsistencyHash"].getBigIntegerValue()
			}
			
			def void setEcuMConfigConsistencyHash(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMConfigConsistencyHash"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMConfigConsistencyHash"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar444.accessors.Os.OsAppMode getEcuMDefaultAppMode(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Os.OsAppMode), "EcuMDefaultAppMode")
			}
			
			def void setEcuMDefaultAppMode(org.artop.ecuc.autosar444.accessors.Os.OsAppMode object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EcuMDefaultAppMode"], object.getTarget())
				}
			}
			
			def List<org.artop.ecuc.autosar444.accessors.Os.OsResource> getEcuMOSResources(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "EcuMOSResource"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "EcuMOSResource")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar444.accessors.Os.OsResource>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar444.accessors.Os.OsResource)) {
					override protected wrap(org.artop.ecuc.autosar444.accessors.Os.OsResource object) throws CoreException {
						if (object !== null) {
							val container = object.getTarget()
							val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
							referenceValue.gSetDefinition(referenceValueDef)
							referenceValue.gSetValue(container)
							return referenceValue
						}
					}
			
					override protected unwrap(GReferenceValue referenceValue) {
						if (referenceValue !== null) {
							val referenceValueValue = referenceValue.gGetValue
							if (referenceValueValue instanceof GContainer) {
								return new org.artop.ecuc.autosar444.accessors.Os.OsResource(referenceValueValue as GContainer)
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
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMSleepMode ecuMSleepMode) {
						ecuMSleepMode.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMSleepMode"))
						super.delegateAdd(ecuMSleepMode)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMSleepMode ecuMSleepMode) {
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
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource ecuMWakeupSource) {
						ecuMWakeupSource.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMWakeupSource"))
						super.delegateAdd(ecuMWakeupSource)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource ecuMWakeupSource) {
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof EcuMDefaultShutdownTarget)){
						return false
					}
					this.target == (object as EcuMDefaultShutdownTarget).target
				}
			
				def EcuMDefaultShutdownTargetEnum getEcuMDefaultShutdownTarget(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMDefaultShutdownTarget"].getEcuMDefaultShutdownTargetEnumValue()
				}
				
				def void setEcuMDefaultShutdownTarget(EcuMDefaultShutdownTargetEnum value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMDefaultShutdownTarget"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMDefaultShutdownTarget"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum EcuMDefaultShutdownTargetEnum {
					EcuMShutdownTargetOff, 
					EcuMShutdownTargetReset, 
					EcuMShutdownTargetSleep
				}
				
				def EcuMDefaultShutdownTargetEnum getEcuMDefaultShutdownTargetEnumValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "EcuMShutdownTargetOff" : EcuMDefaultShutdownTargetEnum.EcuMShutdownTargetOff
						case "EcuMShutdownTargetReset" : EcuMDefaultShutdownTargetEnum.EcuMShutdownTargetReset
						case "EcuMShutdownTargetSleep" : EcuMDefaultShutdownTargetEnum.EcuMShutdownTargetSleep
					}
				}
				
				def void setEcuMDefaultShutdownTargetEnumValue(GParameterValue parameterValue, EcuMDefaultShutdownTargetEnum value){
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMResetMode getEcuMDefaultResetModeRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMResetMode), "EcuMDefaultResetModeRef")
				}
				
				def void setEcuMDefaultResetModeRef(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMResetMode object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EcuMDefaultResetModeRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMSleepMode getEcuMDefaultSleepModeRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMSleepMode), "EcuMDefaultSleepModeRef")
				}
				
				def void setEcuMDefaultSleepModeRef(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMSleepMode object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EcuMDefaultSleepModeRef"], object.getTarget())
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof EcuMDriverInitListOne)){
						return false
					}
					this.target == (object as EcuMDriverInitListOne).target
				}
			
				
				
				def List<EcuMDriverInitItem> getEcuMDriverInitItems(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "EcuMDriverInitItem")
						}
					}
					return new BasicWrappingEList<EcuMDriverInitItem, GContainer>(filteredContainers, typeof(EcuMDriverInitItem), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMDriverInitListOne.EcuMDriverInitItem ecuMDriverInitItem) {
							ecuMDriverInitItem.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMDriverInitItem"))
							super.delegateAdd(ecuMDriverInitItem)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMDriverInitListOne.EcuMDriverInitItem ecuMDriverInitItem) {
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
				
					override def boolean equals(Object object) {
				        if (!(object instanceof EcuMDriverInitItem)){
							return false
						}
						this.target == (object as EcuMDriverInitItem).target
					}
				
					def EcuMModuleParameter getEcuMModuleParameter(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleParameter"].getEcuMModuleParameterValue()
					}
					
					def void setEcuMModuleParameter(EcuMModuleParameter value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleParameter"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMModuleParameter"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					enum EcuMModuleParameter {
						NULL_PTR, 
						POSTBUILD_PTR, 
						VOID
					}
					
					def EcuMModuleParameter getEcuMModuleParameterValue(GParameterValue parameterValue){
						val castedParameterValue = parameterValue as EcucTextualParamValue
						switch (castedParameterValue.value){
							case "NULL_PTR" : EcuMModuleParameter.NULL_PTR
							case "POSTBUILD_PTR" : EcuMModuleParameter.POSTBUILD_PTR
							case "VOID" : EcuMModuleParameter.VOID
						}
					}
					
					def void setEcuMModuleParameterValue(GParameterValue parameterValue, EcuMModuleParameter value){
						parameterValue.setValue(value)
					}
					
					def String getEcuMModuleService(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleService"].getStringValue()
					}
					
					def void setEcuMModuleService(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleService"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMModuleService"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof EcuMDriverInitListZero)){
						return false
					}
					this.target == (object as EcuMDriverInitListZero).target
				}
			
				
				
				def List<EcuMDriverInitItem> getEcuMDriverInitItems(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "EcuMDriverInitItem")
						}
					}
					return new BasicWrappingEList<EcuMDriverInitItem, GContainer>(filteredContainers, typeof(EcuMDriverInitItem), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMDriverInitListZero.EcuMDriverInitItem ecuMDriverInitItem) {
							ecuMDriverInitItem.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMDriverInitItem"))
							super.delegateAdd(ecuMDriverInitItem)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMDriverInitListZero.EcuMDriverInitItem ecuMDriverInitItem) {
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
				
					override def boolean equals(Object object) {
				        if (!(object instanceof EcuMDriverInitItem)){
							return false
						}
						this.target == (object as EcuMDriverInitItem).target
					}
				
					def EcuMModuleParameter getEcuMModuleParameter(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleParameter"].getEcuMModuleParameterValue()
					}
					
					def void setEcuMModuleParameter(EcuMModuleParameter value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleParameter"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMModuleParameter"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					enum EcuMModuleParameter {
						NULL_PTR, 
						POSTBUILD_PTR, 
						VOID
					}
					
					def EcuMModuleParameter getEcuMModuleParameterValue(GParameterValue parameterValue){
						val castedParameterValue = parameterValue as EcucTextualParamValue
						switch (castedParameterValue.value){
							case "NULL_PTR" : EcuMModuleParameter.NULL_PTR
							case "POSTBUILD_PTR" : EcuMModuleParameter.POSTBUILD_PTR
							case "VOID" : EcuMModuleParameter.VOID
						}
					}
					
					def void setEcuMModuleParameterValue(GParameterValue parameterValue, EcuMModuleParameter value){
						parameterValue.setValue(value)
					}
					
					def String getEcuMModuleService(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleService"].getStringValue()
					}
					
					def void setEcuMModuleService(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleService"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMModuleService"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof EcuMDriverRestartList)){
						return false
					}
					this.target == (object as EcuMDriverRestartList).target
				}
			
				
				
				def List<EcuMDriverInitItem> getEcuMDriverInitItems(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "EcuMDriverInitItem")
						}
					}
					return new BasicWrappingEList<EcuMDriverInitItem, GContainer>(filteredContainers, typeof(EcuMDriverInitItem), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMDriverRestartList.EcuMDriverInitItem ecuMDriverInitItem) {
							ecuMDriverInitItem.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMDriverInitItem"))
							super.delegateAdd(ecuMDriverInitItem)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMDriverRestartList.EcuMDriverInitItem ecuMDriverInitItem) {
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
				
					override def boolean equals(Object object) {
				        if (!(object instanceof EcuMDriverInitItem)){
							return false
						}
						this.target == (object as EcuMDriverInitItem).target
					}
				
					def EcuMModuleParameter getEcuMModuleParameter(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleParameter"].getEcuMModuleParameterValue()
					}
					
					def void setEcuMModuleParameter(EcuMModuleParameter value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleParameter"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMModuleParameter"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					enum EcuMModuleParameter {
						NULL_PTR, 
						POSTBUILD_PTR, 
						VOID
					}
					
					def EcuMModuleParameter getEcuMModuleParameterValue(GParameterValue parameterValue){
						val castedParameterValue = parameterValue as EcucTextualParamValue
						switch (castedParameterValue.value){
							case "NULL_PTR" : EcuMModuleParameter.NULL_PTR
							case "POSTBUILD_PTR" : EcuMModuleParameter.POSTBUILD_PTR
							case "VOID" : EcuMModuleParameter.VOID
						}
					}
					
					def void setEcuMModuleParameterValue(GParameterValue parameterValue, EcuMModuleParameter value){
						parameterValue.setValue(value)
					}
					
					def String getEcuMModuleService(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleService"].getStringValue()
					}
					
					def void setEcuMModuleService(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleService"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMModuleService"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof EcuMSleepMode)){
						return false
					}
					this.target == (object as EcuMSleepMode).target
				}
			
				def BigInteger getEcuMSleepModeId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMSleepModeId"].getBigIntegerValue()
				}
				
				def void setEcuMSleepModeId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMSleepModeId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMSleepModeId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def Boolean getEcuMSleepModeSuspend(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMSleepModeSuspend"].getBooleanValue()
				}
				
				def void setEcuMSleepModeSuspend(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMSleepModeSuspend"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMSleepModeSuspend"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				
				def org.artop.ecuc.autosar444.accessors.Mcu.McuModuleConfiguration.McuModeSettingConf getEcuMSleepModeMcuModeRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Mcu.McuModuleConfiguration.McuModeSettingConf), "EcuMSleepModeMcuModeRef")
				}
				
				def void setEcuMSleepModeMcuModeRef(org.artop.ecuc.autosar444.accessors.Mcu.McuModuleConfiguration.McuModeSettingConf object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EcuMSleepModeMcuModeRef"], object.getTarget())
					}
				}
				
				def List<org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource> getEcuMWakeupSourceMasks(){
					val containerDef = containerValue.gGetDefinition
					val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
						containerDef.gGetReferences.findFirst[gGetShortName == "EcuMWakeupSourceMask"] else null
				
					val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
						override protected accept(GReferenceValue item) {
							return accept(item, typeof(GConfigReference), "EcuMWakeupSourceMask")
						}
					}
				
					return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource)) {
						override protected wrap(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource object) throws CoreException {
							if (object !== null) {
								val container = object.getTarget()
								val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
								referenceValue.gSetDefinition(referenceValueDef)
								referenceValue.gSetValue(container)
								return referenceValue
							}
						}
				
						override protected unwrap(GReferenceValue referenceValue) {
							if (referenceValue !== null) {
								val referenceValueValue = referenceValue.gGetValue
								if (referenceValueValue instanceof GContainer) {
									return new org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource(referenceValueValue as GContainer)
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof EcuMWakeupSource)){
						return false
					}
					this.target == (object as EcuMWakeupSource).target
				}
			
				def BigDecimal getEcuMCheckWakeupTimeout(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMCheckWakeupTimeout"].getBigDecimalValue()
				}
				
				def void setEcuMCheckWakeupTimeout(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMCheckWakeupTimeout"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMCheckWakeupTimeout"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigDecimal getEcuMValidationTimeout(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMValidationTimeout"].getBigDecimalValue()
				}
				
				def void setEcuMValidationTimeout(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMValidationTimeout"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMValidationTimeout"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getEcuMWakeupSourceId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMWakeupSourceId"].getBigIntegerValue()
				}
				
				def void setEcuMWakeupSourceId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMWakeupSourceId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMWakeupSourceId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def Boolean getEcuMWakeupSourcePolling(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMWakeupSourcePolling"].getBooleanValue()
				}
				
				def void setEcuMWakeupSourcePolling(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMWakeupSourcePolling"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMWakeupSourcePolling"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				
				def org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMChannel getEcuMComMChannelRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMChannel), "EcuMComMChannelRef")
				}
				
				def void setEcuMComMChannelRef(org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMChannel object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EcuMComMChannelRef"], object.getTarget())
					}
				}
				
				def List<org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMPnc> getEcuMComMPNCRefs(){
					val containerDef = containerValue.gGetDefinition
					val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
						containerDef.gGetReferences.findFirst[gGetShortName == "EcuMComMPNCRef"] else null
				
					val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
						override protected accept(GReferenceValue item) {
							return accept(item, typeof(GConfigReference), "EcuMComMPNCRef")
						}
					}
				
					return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMPnc>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMPnc)) {
						override protected wrap(org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMPnc object) throws CoreException {
							if (object !== null) {
								val container = object.getTarget()
								val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
								referenceValue.gSetDefinition(referenceValueDef)
								referenceValue.gSetValue(container)
								return referenceValue
							}
						}
				
						override protected unwrap(GReferenceValue referenceValue) {
							if (referenceValue !== null) {
								val referenceValueValue = referenceValue.gGetValue
								if (referenceValueValue instanceof GContainer) {
									return new org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMPnc(referenceValueValue as GContainer)
								}
							}
						}
					}
				}
				
				def List<org.artop.ecuc.autosar444.accessors.Mcu.McuPublishedInformation.McuResetReasonConf> getEcuMResetReasonRefs(){
					val containerDef = containerValue.gGetDefinition
					val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
						containerDef.gGetReferences.findFirst[gGetShortName == "EcuMResetReasonRef"] else null
				
					val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
						override protected accept(GReferenceValue item) {
							return accept(item, typeof(GConfigReference), "EcuMResetReasonRef")
						}
					}
				
					return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar444.accessors.Mcu.McuPublishedInformation.McuResetReasonConf>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar444.accessors.Mcu.McuPublishedInformation.McuResetReasonConf)) {
						override protected wrap(org.artop.ecuc.autosar444.accessors.Mcu.McuPublishedInformation.McuResetReasonConf object) throws CoreException {
							if (object !== null) {
								val container = object.getTarget()
								val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
								referenceValue.gSetDefinition(referenceValueDef)
								referenceValue.gSetValue(container)
								return referenceValue
							}
						}
				
						override protected unwrap(GReferenceValue referenceValue) {
							if (referenceValue !== null) {
								val referenceValueValue = referenceValue.gGetValue
								if (referenceValueValue instanceof GContainer) {
									return new org.artop.ecuc.autosar444.accessors.Mcu.McuPublishedInformation.McuResetReasonConf(referenceValueValue as GContainer)
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof EcuMFixedConfiguration)){
					return false
				}
				this.target == (object as EcuMFixedConfiguration).target
			}
		
			def BigDecimal getEcuMNvramReadallTimeout(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMNvramReadallTimeout"].getBigDecimalValue()
			}
			
			def void setEcuMNvramReadallTimeout(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMNvramReadallTimeout"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMNvramReadallTimeout"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getEcuMNvramWriteallTimeout(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMNvramWriteallTimeout"].getBigDecimalValue()
			}
			
			def void setEcuMNvramWriteallTimeout(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMNvramWriteallTimeout"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMNvramWriteallTimeout"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getEcuMRunMinimumDuration(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMRunMinimumDuration"].getBigDecimalValue()
			}
			
			def void setEcuMRunMinimumDuration(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMRunMinimumDuration"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMRunMinimumDuration"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def List<org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMChannel> getEcuMComMCommunicationAllowedLists(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "EcuMComMCommunicationAllowedList"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "EcuMComMCommunicationAllowedList")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMChannel>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMChannel)) {
					override protected wrap(org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMChannel object) throws CoreException {
						if (object !== null) {
							val container = object.getTarget()
							val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
							referenceValue.gSetDefinition(referenceValueDef)
							referenceValue.gSetValue(container)
							return referenceValue
						}
					}
			
					override protected unwrap(GReferenceValue referenceValue) {
						if (referenceValue !== null) {
							val referenceValueValue = referenceValue.gGetValue
							if (referenceValueValue instanceof GContainer) {
								return new org.artop.ecuc.autosar444.accessors.ComM.ComMConfigSet.ComMChannel(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			def org.artop.ecuc.autosar444.accessors.Mcu.McuModuleConfiguration.McuModeSettingConf getEcuMNormalMcuModeRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Mcu.McuModuleConfiguration.McuModeSettingConf), "EcuMNormalMcuModeRef")
			}
			
			def void setEcuMNormalMcuModeRef(org.artop.ecuc.autosar444.accessors.Mcu.McuModuleConfiguration.McuModeSettingConf object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EcuMNormalMcuModeRef"], object.getTarget())
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
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMFixedConfiguration.EcuMFixedUserConfig ecuMFixedUserConfig) {
						ecuMFixedUserConfig.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMFixedUserConfig"))
						super.delegateAdd(ecuMFixedUserConfig)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMFixedConfiguration.EcuMFixedUserConfig ecuMFixedUserConfig) {
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
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMFixedConfiguration.EcuMTTII ecuMTTII) {
						ecuMTTII.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMTTII"))
						super.delegateAdd(ecuMTTII)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMFixedConfiguration.EcuMTTII ecuMTTII) {
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof EcuMDriverInitListThree)){
						return false
					}
					this.target == (object as EcuMDriverInitListThree).target
				}
			
				
				
				def List<EcuMDriverInitItem> getEcuMDriverInitItems(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "EcuMDriverInitItem")
						}
					}
					return new BasicWrappingEList<EcuMDriverInitItem, GContainer>(filteredContainers, typeof(EcuMDriverInitItem), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMFixedConfiguration.EcuMDriverInitListThree.EcuMDriverInitItem ecuMDriverInitItem) {
							ecuMDriverInitItem.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMDriverInitItem"))
							super.delegateAdd(ecuMDriverInitItem)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMFixedConfiguration.EcuMDriverInitListThree.EcuMDriverInitItem ecuMDriverInitItem) {
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
				
					override def boolean equals(Object object) {
				        if (!(object instanceof EcuMDriverInitItem)){
							return false
						}
						this.target == (object as EcuMDriverInitItem).target
					}
				
					def EcuMModuleParameter getEcuMModuleParameter(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleParameter"].getEcuMModuleParameterValue()
					}
					
					def void setEcuMModuleParameter(EcuMModuleParameter value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleParameter"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMModuleParameter"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					enum EcuMModuleParameter {
						NULL_PTR, 
						POSTBUILD_PTR, 
						VOID
					}
					
					def EcuMModuleParameter getEcuMModuleParameterValue(GParameterValue parameterValue){
						val castedParameterValue = parameterValue as EcucTextualParamValue
						switch (castedParameterValue.value){
							case "NULL_PTR" : EcuMModuleParameter.NULL_PTR
							case "POSTBUILD_PTR" : EcuMModuleParameter.POSTBUILD_PTR
							case "VOID" : EcuMModuleParameter.VOID
						}
					}
					
					def void setEcuMModuleParameterValue(GParameterValue parameterValue, EcuMModuleParameter value){
						parameterValue.setValue(value)
					}
					
					def String getEcuMModuleService(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleService"].getStringValue()
					}
					
					def void setEcuMModuleService(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleService"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMModuleService"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof EcuMDriverInitListTwo)){
						return false
					}
					this.target == (object as EcuMDriverInitListTwo).target
				}
			
				
				
				def List<EcuMDriverInitItem> getEcuMDriverInitItems(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "EcuMDriverInitItem")
						}
					}
					return new BasicWrappingEList<EcuMDriverInitItem, GContainer>(filteredContainers, typeof(EcuMDriverInitItem), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMFixedConfiguration.EcuMDriverInitListTwo.EcuMDriverInitItem ecuMDriverInitItem) {
							ecuMDriverInitItem.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMDriverInitItem"))
							super.delegateAdd(ecuMDriverInitItem)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMFixedConfiguration.EcuMDriverInitListTwo.EcuMDriverInitItem ecuMDriverInitItem) {
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
				
					override def boolean equals(Object object) {
				        if (!(object instanceof EcuMDriverInitItem)){
							return false
						}
						this.target == (object as EcuMDriverInitItem).target
					}
				
					def EcuMModuleParameter getEcuMModuleParameter(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleParameter"].getEcuMModuleParameterValue()
					}
					
					def void setEcuMModuleParameter(EcuMModuleParameter value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleParameter"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMModuleParameter"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					enum EcuMModuleParameter {
						NULL_PTR, 
						POSTBUILD_PTR, 
						VOID
					}
					
					def EcuMModuleParameter getEcuMModuleParameterValue(GParameterValue parameterValue){
						val castedParameterValue = parameterValue as EcucTextualParamValue
						switch (castedParameterValue.value){
							case "NULL_PTR" : EcuMModuleParameter.NULL_PTR
							case "POSTBUILD_PTR" : EcuMModuleParameter.POSTBUILD_PTR
							case "VOID" : EcuMModuleParameter.VOID
						}
					}
					
					def void setEcuMModuleParameterValue(GParameterValue parameterValue, EcuMModuleParameter value){
						parameterValue.setValue(value)
					}
					
					def String getEcuMModuleService(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleService"].getStringValue()
					}
					
					def void setEcuMModuleService(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleService"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMModuleService"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof EcuMFixedUserConfig)){
						return false
					}
					this.target == (object as EcuMFixedUserConfig).target
				}
			
				def BigInteger getEcuMFixedUser(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMFixedUser"].getBigIntegerValue()
				}
				
				def void setEcuMFixedUser(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMFixedUser"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMFixedUser"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof EcuMTTII)){
						return false
					}
					this.target == (object as EcuMTTII).target
				}
			
				def BigInteger getEcuMDivisor(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMDivisor"].getBigIntegerValue()
				}
				
				def void setEcuMDivisor(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMDivisor"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMDivisor"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMSleepMode getEcuMSleepModeRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMSleepMode), "EcuMSleepModeRef")
				}
				
				def void setEcuMSleepModeRef(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMSleepMode object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EcuMSleepModeRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMSleepMode getEcuMSuccessorRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMSleepMode), "EcuMSuccessorRef")
				}
				
				def void setEcuMSuccessorRef(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMSleepMode object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EcuMSuccessorRef"], object.getTarget())
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
		
			override def boolean equals(Object object) {
		        if (!(object instanceof EcuMFlexConfiguration)){
					return false
				}
				this.target == (object as EcuMFlexConfiguration).target
			}
		
			
			def org.artop.ecuc.autosar444.accessors.Mcu.McuModuleConfiguration.McuModeSettingConf getEcuMNormalMcuModeRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Mcu.McuModuleConfiguration.McuModeSettingConf), "EcuMNormalMcuModeRef")
			}
			
			def void setEcuMNormalMcuModeRef(org.artop.ecuc.autosar444.accessors.Mcu.McuModuleConfiguration.McuModeSettingConf object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EcuMNormalMcuModeRef"], object.getTarget())
				}
			}
			
			def List<org.artop.ecuc.autosar444.accessors.EcuC.EcucPartitionCollection.EcucPartition> getEcuMPartitionRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "EcuMPartitionRef"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "EcuMPartitionRef")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar444.accessors.EcuC.EcucPartitionCollection.EcucPartition>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar444.accessors.EcuC.EcucPartitionCollection.EcucPartition)) {
					override protected wrap(org.artop.ecuc.autosar444.accessors.EcuC.EcucPartitionCollection.EcucPartition object) throws CoreException {
						if (object !== null) {
							val container = object.getTarget()
							val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
							referenceValue.gSetDefinition(referenceValueDef)
							referenceValue.gSetValue(container)
							return referenceValue
						}
					}
			
					override protected unwrap(GReferenceValue referenceValue) {
						if (referenceValue !== null) {
							val referenceValueValue = referenceValue.gGetValue
							if (referenceValueValue instanceof GContainer) {
								return new org.artop.ecuc.autosar444.accessors.EcuC.EcucPartitionCollection.EcucPartition(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			def List<EcuMAlarmClock> getEcuMAlarmClocks(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "EcuMAlarmClock")
					}
				}
				return new BasicWrappingEList<EcuMAlarmClock, GContainer>(filteredContainers, typeof(EcuMAlarmClock), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMAlarmClock ecuMAlarmClock) {
						ecuMAlarmClock.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMAlarmClock"))
						super.delegateAdd(ecuMAlarmClock)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMAlarmClock ecuMAlarmClock) {
						ecuMAlarmClock.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMAlarmClock"))
						super.delegateAdd(index, ecuMAlarmClock)
					}
				}
			}
			
			def List<EcuMDriverInitListBswM> getEcuMDriverInitListBswMs(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "EcuMDriverInitListBswM")
					}
				}
				return new BasicWrappingEList<EcuMDriverInitListBswM, GContainer>(filteredContainers, typeof(EcuMDriverInitListBswM), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMDriverInitListBswM ecuMDriverInitListBswM) {
						ecuMDriverInitListBswM.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMDriverInitListBswM"))
						super.delegateAdd(ecuMDriverInitListBswM)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMDriverInitListBswM ecuMDriverInitListBswM) {
						ecuMDriverInitListBswM.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMDriverInitListBswM"))
						super.delegateAdd(index, ecuMDriverInitListBswM)
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
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMFlexUserConfig ecuMFlexUserConfig) {
						ecuMFlexUserConfig.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMFlexUserConfig"))
						super.delegateAdd(ecuMFlexUserConfig)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMFlexUserConfig ecuMFlexUserConfig) {
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
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMResetMode ecuMResetMode) {
						ecuMResetMode.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMResetMode"))
						super.delegateAdd(ecuMResetMode)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMResetMode ecuMResetMode) {
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
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMShutdownCause ecuMShutdownCause) {
						ecuMShutdownCause.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMShutdownCause"))
						super.delegateAdd(ecuMShutdownCause)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMShutdownCause ecuMShutdownCause) {
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof EcuMAlarmClock)){
						return false
					}
					this.target == (object as EcuMAlarmClock).target
				}
			
				def BigInteger getEcuMAlarmClockId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMAlarmClockId"].getBigIntegerValue()
				}
				
				def void setEcuMAlarmClockId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMAlarmClockId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMAlarmClockId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigDecimal getEcuMAlarmClockTimeOut(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMAlarmClockTimeOut"].getBigDecimalValue()
				}
				
				def void setEcuMAlarmClockTimeOut(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMAlarmClockTimeOut"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMAlarmClockTimeOut"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMFlexUserConfig getEcuMAlarmClockUser(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMFlexUserConfig), "EcuMAlarmClockUser")
				}
				
				def void setEcuMAlarmClockUser(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMFlexUserConfig object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EcuMAlarmClockUser"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class EcuMDriverInitListBswM implements IWrapper<GContainer> {
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
			        if (!(object instanceof EcuMDriverInitListBswM)){
						return false
					}
					this.target == (object as EcuMDriverInitListBswM).target
				}
			
				
				
				def List<EcuMDriverInitItem> getEcuMDriverInitItems(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "EcuMDriverInitItem")
						}
					}
					return new BasicWrappingEList<EcuMDriverInitItem, GContainer>(filteredContainers, typeof(EcuMDriverInitItem), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMDriverInitListBswM.EcuMDriverInitItem ecuMDriverInitItem) {
							ecuMDriverInitItem.target?.gSetDefinition(containerValue.getContainerDefinition("EcuMDriverInitItem"))
							super.delegateAdd(ecuMDriverInitItem)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMDriverInitListBswM.EcuMDriverInitItem ecuMDriverInitItem) {
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
				
					override def boolean equals(Object object) {
				        if (!(object instanceof EcuMDriverInitItem)){
							return false
						}
						this.target == (object as EcuMDriverInitItem).target
					}
				
					def EcuMModuleParameter getEcuMModuleParameter(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleParameter"].getEcuMModuleParameterValue()
					}
					
					def void setEcuMModuleParameter(EcuMModuleParameter value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleParameter"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMModuleParameter"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					enum EcuMModuleParameter {
						NULL_PTR, 
						POSTBUILD_PTR, 
						VOID
					}
					
					def EcuMModuleParameter getEcuMModuleParameterValue(GParameterValue parameterValue){
						val castedParameterValue = parameterValue as EcucTextualParamValue
						switch (castedParameterValue.value){
							case "NULL_PTR" : EcuMModuleParameter.NULL_PTR
							case "POSTBUILD_PTR" : EcuMModuleParameter.POSTBUILD_PTR
							case "VOID" : EcuMModuleParameter.VOID
						}
					}
					
					def void setEcuMModuleParameterValue(GParameterValue parameterValue, EcuMModuleParameter value){
						parameterValue.setValue(value)
					}
					
					def String getEcuMModuleService(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleService"].getStringValue()
					}
					
					def void setEcuMModuleService(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModuleService"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMModuleService"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof EcuMFlexUserConfig)){
						return false
					}
					this.target == (object as EcuMFlexUserConfig).target
				}
			
				def BigInteger getEcuMFlexUser(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMFlexUser"].getBigIntegerValue()
				}
				
				def void setEcuMFlexUser(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMFlexUser"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMFlexUser"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar444.accessors.EcuC.EcucPartitionCollection.EcucPartition getEcuMFlexEcucPartitionRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.EcuC.EcucPartitionCollection.EcucPartition), "EcuMFlexEcucPartitionRef")
				}
				
				def void setEcuMFlexEcucPartitionRef(org.artop.ecuc.autosar444.accessors.EcuC.EcucPartitionCollection.EcucPartition object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EcuMFlexEcucPartitionRef"], object.getTarget())
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof EcuMGoDownAllowedUsers)){
						return false
					}
					this.target == (object as EcuMGoDownAllowedUsers).target
				}
			
				
				def List<org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMFlexUserConfig> getEcuMGoDownAllowedUserRefs(){
					val containerDef = containerValue.gGetDefinition
					val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
						containerDef.gGetReferences.findFirst[gGetShortName == "EcuMGoDownAllowedUserRef"] else null
				
					val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
						override protected accept(GReferenceValue item) {
							return accept(item, typeof(GConfigReference), "EcuMGoDownAllowedUserRef")
						}
					}
				
					return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMFlexUserConfig>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMFlexUserConfig)) {
						override protected wrap(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMFlexUserConfig object) throws CoreException {
							if (object !== null) {
								val container = object.getTarget()
								val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
								referenceValue.gSetDefinition(referenceValueDef)
								referenceValue.gSetValue(container)
								return referenceValue
							}
						}
				
						override protected unwrap(GReferenceValue referenceValue) {
							if (referenceValue !== null) {
								val referenceValueValue = referenceValue.gGetValue
								if (referenceValueValue instanceof GContainer) {
									return new org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMFlexUserConfig(referenceValueValue as GContainer)
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof EcuMResetMode)){
						return false
					}
					this.target == (object as EcuMResetMode).target
				}
			
				def BigInteger getEcuMResetModeId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMResetModeId"].getBigIntegerValue()
				}
				
				def void setEcuMResetModeId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMResetModeId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMResetModeId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof EcuMSetClockAllowedUsers)){
						return false
					}
					this.target == (object as EcuMSetClockAllowedUsers).target
				}
			
				
				def List<org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMFlexUserConfig> getEcuMSetClockAllowedUserRefs(){
					val containerDef = containerValue.gGetDefinition
					val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
						containerDef.gGetReferences.findFirst[gGetShortName == "EcuMSetClockAllowedUserRef"] else null
				
					val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
						override protected accept(GReferenceValue item) {
							return accept(item, typeof(GConfigReference), "EcuMSetClockAllowedUserRef")
						}
					}
				
					return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMFlexUserConfig>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMFlexUserConfig)) {
						override protected wrap(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMFlexUserConfig object) throws CoreException {
							if (object !== null) {
								val container = object.getTarget()
								val referenceValue = Autosar40Factory.eINSTANCE.createEcucReferenceValue
								referenceValue.gSetDefinition(referenceValueDef)
								referenceValue.gSetValue(container)
								return referenceValue
							}
						}
				
						override protected unwrap(GReferenceValue referenceValue) {
							if (referenceValue !== null) {
								val referenceValueValue = referenceValue.gGetValue
								if (referenceValueValue instanceof GContainer) {
									return new org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMFlexUserConfig(referenceValueValue as GContainer)
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
			
				override def boolean equals(Object object) {
			        if (!(object instanceof EcuMShutdownCause)){
						return false
					}
					this.target == (object as EcuMShutdownCause).target
				}
			
				def BigInteger getEcuMShutdownCauseId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMShutdownCauseId"].getBigIntegerValue()
				}
				
				def void setEcuMShutdownCauseId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMShutdownCauseId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMShutdownCauseId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof EcuMFixedGeneral)){
				return false
			}
			this.target == (object as EcuMFixedGeneral).target
		}
	
		def Boolean getEcuMIncludeComM(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMIncludeComM"].getBooleanValue()
		}
		
		def void setEcuMIncludeComM(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMIncludeComM"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMIncludeComM"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEcuMTTIIEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMTTIIEnabled"].getBooleanValue()
		}
		
		def void setEcuMTTIIEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMTTIIEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMTTIIEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		def org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource getEcuMTTIIWakeupSourceRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource), "EcuMTTIIWakeupSourceRef")
		}
		
		def void setEcuMTTIIWakeupSourceRef(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EcuMTTIIWakeupSourceRef"], object.getTarget())
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof EcuMFlexGeneral)){
				return false
			}
			this.target == (object as EcuMFlexGeneral).target
		}
	
		def Boolean getEcuMAlarmClockPresent(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMAlarmClockPresent"].getBooleanValue()
		}
		
		def void setEcuMAlarmClockPresent(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMAlarmClockPresent"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMAlarmClockPresent"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEcuMModeHandling(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModeHandling"].getBooleanValue()
		}
		
		def void setEcuMModeHandling(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMModeHandling"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMModeHandling"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEcuMResetLoopDetection(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMResetLoopDetection"].getBooleanValue()
		}
		
		def void setEcuMResetLoopDetection(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMResetLoopDetection"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMResetLoopDetection"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEcuMSetProgrammableInterrupts(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMSetProgrammableInterrupts"].getBooleanValue()
		}
		
		def void setEcuMSetProgrammableInterrupts(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMSetProgrammableInterrupts"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMSetProgrammableInterrupts"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		def org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource getEcuMAlarmWakeupSource(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource), "EcuMAlarmWakeupSource")
		}
		
		def void setEcuMAlarmWakeupSource(org.artop.ecuc.autosar444.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EcuMAlarmWakeupSource"], object.getTarget())
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
	
		override def boolean equals(Object object) {
	        if (!(object instanceof EcuMGeneral)){
				return false
			}
			this.target == (object as EcuMGeneral).target
		}
	
		def Boolean getEcuMDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMDevErrorDetect"].getBooleanValue()
		}
		
		def void setEcuMDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEcuMIncludeDet(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMIncludeDet"].getBooleanValue()
		}
		
		def void setEcuMIncludeDet(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMIncludeDet"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMIncludeDet"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getEcuMMainFunctionPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMMainFunctionPeriod"].getBigDecimalValue()
		}
		
		def void setEcuMMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMMainFunctionPeriod"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMMainFunctionPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getEcuMVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMVersionInfoApi"].getBooleanValue()
		}
		
		def void setEcuMVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EcuMVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EcuMVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof EcuM)){
			return false
		}
		this.target == (object as EcuM).target
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
