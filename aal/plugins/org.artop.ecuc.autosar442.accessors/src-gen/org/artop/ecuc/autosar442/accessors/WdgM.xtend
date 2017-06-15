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
package org.artop.ecuc.autosar442.accessors

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

class WdgM implements IWrapper<GModuleConfiguration> {
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

	def WdgMConfigSet getWdgMConfigSet(){
		moduleConfiguration.getByType(typeof(WdgMConfigSet))
	}

	def void setWdgMConfigSet(WdgMConfigSet wdgMConfigSet){
		val GContainer container = wdgMConfigSet.getTarget()
	    moduleConfiguration.setContainer(container, "WdgMConfigSet")
	}
	def WdgMGeneral getWdgMGeneral(){
		moduleConfiguration.getByType(typeof(WdgMGeneral))
	}

	def void setWdgMGeneral(WdgMGeneral wdgMGeneral){
		val GContainer container = wdgMGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "WdgMGeneral")
	}

	static class WdgMConfigSet implements IWrapper<GContainer> {
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
	        if (!(object instanceof WdgMConfigSet)){
				return false
			}
			this.target == (object as WdgMConfigSet).target
		}
	
		
		def org.artop.ecuc.autosar442.accessors.WdgM.WdgMConfigSet.WdgMMode getWdgMInitialMode(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.WdgM.WdgMConfigSet.WdgMMode), "WdgMInitialMode")
		}
		
		def void setWdgMInitialMode(org.artop.ecuc.autosar442.accessors.WdgM.WdgMConfigSet.WdgMMode object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "WdgMInitialMode"], object.getTarget())
			}
		}
		
		
		def WdgMDemEventParameterRefs getWdgMDemEventParameterRefs(){
			containerValue.getByType(typeof(WdgMDemEventParameterRefs))
		}
		
		def void setWdgMDemEventParameterRefs(WdgMDemEventParameterRefs wdgMDemEventParameterRefs){
			val GContainer subContainer = wdgMDemEventParameterRefs.getTarget()
			containerValue.setContainer(subContainer, "WdgMDemEventParameterRefs")
		}
		
		def List<WdgMMode> getWdgMModes(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "WdgMMode")
				}
			}
			return new BasicWrappingEList<WdgMMode, GContainer>(filteredContainers, typeof(WdgMMode), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar442.accessors.WdgM.WdgMConfigSet.WdgMMode wdgMMode) {
					wdgMMode.target?.gSetDefinition(containerValue.getContainerDefinition("WdgMMode"))
					super.delegateAdd(wdgMMode)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar442.accessors.WdgM.WdgMConfigSet.WdgMMode wdgMMode) {
					wdgMMode.target?.gSetDefinition(containerValue.getContainerDefinition("WdgMMode"))
					super.delegateAdd(index, wdgMMode)
				}
			}
		}
		
		
		static class WdgMDemEventParameterRefs implements IWrapper<GContainer> {
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
		        if (!(object instanceof WdgMDemEventParameterRefs)){
					return false
				}
				this.target == (object as WdgMDemEventParameterRefs).target
			}
		
			
			def org.artop.ecuc.autosar442.accessors.Dem.DemConfigSet.DemEventParameter getWDGM_E_SET_MODE(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.Dem.DemConfigSet.DemEventParameter), "WDGM_E_SET_MODE")
			}
			
			def void setWDGM_E_SET_MODE(org.artop.ecuc.autosar442.accessors.Dem.DemConfigSet.DemEventParameter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "WDGM_E_SET_MODE"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar442.accessors.Dem.DemConfigSet.DemEventParameter getWDGM_E_SUPERVISION(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.Dem.DemConfigSet.DemEventParameter), "WDGM_E_SUPERVISION")
			}
			
			def void setWDGM_E_SUPERVISION(org.artop.ecuc.autosar442.accessors.Dem.DemConfigSet.DemEventParameter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "WDGM_E_SUPERVISION"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class WdgMMode implements IWrapper<GContainer> {
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
		        if (!(object instanceof WdgMMode)){
					return false
				}
				this.target == (object as WdgMMode).target
			}
		
			def BigInteger getWdgMExpiredSupervisionCycleTol(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMExpiredSupervisionCycleTol"].getBigIntegerValue()
			}
			
			def void setWdgMExpiredSupervisionCycleTol(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMExpiredSupervisionCycleTol"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WdgMExpiredSupervisionCycleTol"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getWdgMModeId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMModeId"].getBigIntegerValue()
			}
			
			def void setWdgMModeId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMModeId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WdgMModeId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getWdgMSupervisionCycle(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMSupervisionCycle"].getBigDecimalValue()
			}
			
			def void setWdgMSupervisionCycle(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMSupervisionCycle"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WdgMSupervisionCycle"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			def List<WdgMAliveSupervision> getWdgMAliveSupervisions(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "WdgMAliveSupervision")
					}
				}
				return new BasicWrappingEList<WdgMAliveSupervision, GContainer>(filteredContainers, typeof(WdgMAliveSupervision), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar442.accessors.WdgM.WdgMConfigSet.WdgMMode.WdgMAliveSupervision wdgMAliveSupervision) {
						wdgMAliveSupervision.target?.gSetDefinition(containerValue.getContainerDefinition("WdgMAliveSupervision"))
						super.delegateAdd(wdgMAliveSupervision)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar442.accessors.WdgM.WdgMConfigSet.WdgMMode.WdgMAliveSupervision wdgMAliveSupervision) {
						wdgMAliveSupervision.target?.gSetDefinition(containerValue.getContainerDefinition("WdgMAliveSupervision"))
						super.delegateAdd(index, wdgMAliveSupervision)
					}
				}
			}
			
			def List<WdgMDeadlineSupervision> getWdgMDeadlineSupervisions(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "WdgMDeadlineSupervision")
					}
				}
				return new BasicWrappingEList<WdgMDeadlineSupervision, GContainer>(filteredContainers, typeof(WdgMDeadlineSupervision), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar442.accessors.WdgM.WdgMConfigSet.WdgMMode.WdgMDeadlineSupervision wdgMDeadlineSupervision) {
						wdgMDeadlineSupervision.target?.gSetDefinition(containerValue.getContainerDefinition("WdgMDeadlineSupervision"))
						super.delegateAdd(wdgMDeadlineSupervision)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar442.accessors.WdgM.WdgMConfigSet.WdgMMode.WdgMDeadlineSupervision wdgMDeadlineSupervision) {
						wdgMDeadlineSupervision.target?.gSetDefinition(containerValue.getContainerDefinition("WdgMDeadlineSupervision"))
						super.delegateAdd(index, wdgMDeadlineSupervision)
					}
				}
			}
			
			def List<WdgMExternalLogicalSupervision> getWdgMExternalLogicalSupervisions(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "WdgMExternalLogicalSupervision")
					}
				}
				return new BasicWrappingEList<WdgMExternalLogicalSupervision, GContainer>(filteredContainers, typeof(WdgMExternalLogicalSupervision), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar442.accessors.WdgM.WdgMConfigSet.WdgMMode.WdgMExternalLogicalSupervision wdgMExternalLogicalSupervision) {
						wdgMExternalLogicalSupervision.target?.gSetDefinition(containerValue.getContainerDefinition("WdgMExternalLogicalSupervision"))
						super.delegateAdd(wdgMExternalLogicalSupervision)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar442.accessors.WdgM.WdgMConfigSet.WdgMMode.WdgMExternalLogicalSupervision wdgMExternalLogicalSupervision) {
						wdgMExternalLogicalSupervision.target?.gSetDefinition(containerValue.getContainerDefinition("WdgMExternalLogicalSupervision"))
						super.delegateAdd(index, wdgMExternalLogicalSupervision)
					}
				}
			}
			
			def List<WdgMLocalStatusParams> getWdgMLocalStatusParams(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "WdgMLocalStatusParams")
					}
				}
				return new BasicWrappingEList<WdgMLocalStatusParams, GContainer>(filteredContainers, typeof(WdgMLocalStatusParams), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar442.accessors.WdgM.WdgMConfigSet.WdgMMode.WdgMLocalStatusParams wdgMLocalStatusParams) {
						wdgMLocalStatusParams.target?.gSetDefinition(containerValue.getContainerDefinition("WdgMLocalStatusParams"))
						super.delegateAdd(wdgMLocalStatusParams)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar442.accessors.WdgM.WdgMConfigSet.WdgMMode.WdgMLocalStatusParams wdgMLocalStatusParams) {
						wdgMLocalStatusParams.target?.gSetDefinition(containerValue.getContainerDefinition("WdgMLocalStatusParams"))
						super.delegateAdd(index, wdgMLocalStatusParams)
					}
				}
			}
			
			def List<WdgMTrigger> getWdgMTriggers(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "WdgMTrigger")
					}
				}
				return new BasicWrappingEList<WdgMTrigger, GContainer>(filteredContainers, typeof(WdgMTrigger), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar442.accessors.WdgM.WdgMConfigSet.WdgMMode.WdgMTrigger wdgMTrigger) {
						wdgMTrigger.target?.gSetDefinition(containerValue.getContainerDefinition("WdgMTrigger"))
						super.delegateAdd(wdgMTrigger)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar442.accessors.WdgM.WdgMConfigSet.WdgMMode.WdgMTrigger wdgMTrigger) {
						wdgMTrigger.target?.gSetDefinition(containerValue.getContainerDefinition("WdgMTrigger"))
						super.delegateAdd(index, wdgMTrigger)
					}
				}
			}
			
			
			static class WdgMAliveSupervision implements IWrapper<GContainer> {
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
			        if (!(object instanceof WdgMAliveSupervision)){
						return false
					}
					this.target == (object as WdgMAliveSupervision).target
				}
			
				def BigInteger getWdgMExpectedAliveIndications(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMExpectedAliveIndications"].getBigIntegerValue()
				}
				
				def void setWdgMExpectedAliveIndications(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMExpectedAliveIndications"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WdgMExpectedAliveIndications"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getWdgMMaxMargin(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMMaxMargin"].getBigIntegerValue()
				}
				
				def void setWdgMMaxMargin(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMMaxMargin"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WdgMMaxMargin"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getWdgMMinMargin(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMMinMargin"].getBigIntegerValue()
				}
				
				def void setWdgMMinMargin(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMMinMargin"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WdgMMinMargin"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getWdgMSupervisionReferenceCycle(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMSupervisionReferenceCycle"].getBigIntegerValue()
				}
				
				def void setWdgMSupervisionReferenceCycle(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMSupervisionReferenceCycle"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WdgMSupervisionReferenceCycle"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint getWdgMAliveSupervisionCheckpointRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint), "WdgMAliveSupervisionCheckpointRef")
				}
				
				def void setWdgMAliveSupervisionCheckpointRef(org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "WdgMAliveSupervisionCheckpointRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class WdgMDeadlineSupervision implements IWrapper<GContainer> {
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
			        if (!(object instanceof WdgMDeadlineSupervision)){
						return false
					}
					this.target == (object as WdgMDeadlineSupervision).target
				}
			
				def BigDecimal getWdgMDeadlineMax(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMDeadlineMax"].getBigDecimalValue()
				}
				
				def void setWdgMDeadlineMax(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMDeadlineMax"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WdgMDeadlineMax"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigDecimal getWdgMDeadlineMin(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMDeadlineMin"].getBigDecimalValue()
				}
				
				def void setWdgMDeadlineMin(BigDecimal value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMDeadlineMin"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WdgMDeadlineMin"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint getWdgMDeadlineStartRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint), "WdgMDeadlineStartRef")
				}
				
				def void setWdgMDeadlineStartRef(org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "WdgMDeadlineStartRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint getWdgMDeadlineStopRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint), "WdgMDeadlineStopRef")
				}
				
				def void setWdgMDeadlineStopRef(org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "WdgMDeadlineStopRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class WdgMExternalLogicalSupervision implements IWrapper<GContainer> {
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
			        if (!(object instanceof WdgMExternalLogicalSupervision)){
						return false
					}
					this.target == (object as WdgMExternalLogicalSupervision).target
				}
			
				
				def List<org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint> getWdgMExternalCheckpointFinalRefs(){
					val containerDef = containerValue.gGetDefinition
					val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
						containerDef.gGetReferences.findFirst[gGetShortName == "WdgMExternalCheckpointFinalRef"] else null
				
					val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
						override protected accept(GReferenceValue item) {
							return accept(item, typeof(GConfigReference), "WdgMExternalCheckpointFinalRef")
						}
					}
				
					return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint)) {
						override protected wrap(org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint object) throws CoreException {
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
									return new org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint(referenceValueValue as GContainer)
								}
							}
						}
					}
				}
				
				def List<org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint> getWdgMExternalCheckpointInitialRefs(){
					val containerDef = containerValue.gGetDefinition
					val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
						containerDef.gGetReferences.findFirst[gGetShortName == "WdgMExternalCheckpointInitialRef"] else null
				
					val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
						override protected accept(GReferenceValue item) {
							return accept(item, typeof(GConfigReference), "WdgMExternalCheckpointInitialRef")
						}
					}
				
					return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint)) {
						override protected wrap(org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint object) throws CoreException {
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
									return new org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint(referenceValueValue as GContainer)
								}
							}
						}
					}
				}
				
				
				def List<WdgMExternalTransition> getWdgMExternalTransitions(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "WdgMExternalTransition")
						}
					}
					return new BasicWrappingEList<WdgMExternalTransition, GContainer>(filteredContainers, typeof(WdgMExternalTransition), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar442.accessors.WdgM.WdgMConfigSet.WdgMMode.WdgMExternalLogicalSupervision.WdgMExternalTransition wdgMExternalTransition) {
							wdgMExternalTransition.target?.gSetDefinition(containerValue.getContainerDefinition("WdgMExternalTransition"))
							super.delegateAdd(wdgMExternalTransition)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar442.accessors.WdgM.WdgMConfigSet.WdgMMode.WdgMExternalLogicalSupervision.WdgMExternalTransition wdgMExternalTransition) {
							wdgMExternalTransition.target?.gSetDefinition(containerValue.getContainerDefinition("WdgMExternalTransition"))
							super.delegateAdd(index, wdgMExternalTransition)
						}
					}
				}
				
				
				static class WdgMExternalTransition implements IWrapper<GContainer> {
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
				        if (!(object instanceof WdgMExternalTransition)){
							return false
						}
						this.target == (object as WdgMExternalTransition).target
					}
				
					
					def org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint getWdgMExternalTransitionDestRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint), "WdgMExternalTransitionDestRef")
					}
					
					def void setWdgMExternalTransitionDestRef(org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "WdgMExternalTransitionDestRef"], object.getTarget())
						}
					}
					
					def org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint getWdgMExternalTransitionSourceRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint), "WdgMExternalTransitionSourceRef")
					}
					
					def void setWdgMExternalTransitionSourceRef(org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "WdgMExternalTransitionSourceRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
			static class WdgMLocalStatusParams implements IWrapper<GContainer> {
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
			        if (!(object instanceof WdgMLocalStatusParams)){
						return false
					}
					this.target == (object as WdgMLocalStatusParams).target
				}
			
				def BigInteger getWdgMFailedAliveSupervisionRefCycleTol(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMFailedAliveSupervisionRefCycleTol"].getBigIntegerValue()
				}
				
				def void setWdgMFailedAliveSupervisionRefCycleTol(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMFailedAliveSupervisionRefCycleTol"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WdgMFailedAliveSupervisionRefCycleTol"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity getWdgMLocalStatusSupervisedEntityRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity), "WdgMLocalStatusSupervisedEntityRef")
				}
				
				def void setWdgMLocalStatusSupervisedEntityRef(org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "WdgMLocalStatusSupervisedEntityRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class WdgMTrigger implements IWrapper<GContainer> {
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
			        if (!(object instanceof WdgMTrigger)){
						return false
					}
					this.target == (object as WdgMTrigger).target
				}
			
				def BigInteger getWdgMTriggerConditionValue(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMTriggerConditionValue"].getBigIntegerValue()
				}
				
				def void setWdgMTriggerConditionValue(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMTriggerConditionValue"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WdgMTriggerConditionValue"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def WdgMWatchdogMode getWdgMWatchdogMode(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMWatchdogMode"].getWdgMWatchdogModeValue()
				}
				
				def void setWdgMWatchdogMode(WdgMWatchdogMode value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMWatchdogMode"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WdgMWatchdogMode"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum WdgMWatchdogMode {
					WDGIF_FAST_MODE, 
					WDGIF_OFF_MODE, 
					WDGIF_SLOW_MODE
				}
				
				def WdgMWatchdogMode getWdgMWatchdogModeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "WDGIF_FAST_MODE" : WdgMWatchdogMode.WDGIF_FAST_MODE
						case "WDGIF_OFF_MODE" : WdgMWatchdogMode.WDGIF_OFF_MODE
						case "WDGIF_SLOW_MODE" : WdgMWatchdogMode.WDGIF_SLOW_MODE
					}
				}
				
				def void setWdgMWatchdogModeValue(GParameterValue parameterValue, WdgMWatchdogMode value){
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMWatchdog getWdgMTriggerWatchdogRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMWatchdog), "WdgMTriggerWatchdogRef")
				}
				
				def void setWdgMTriggerWatchdogRef(org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMWatchdog object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "WdgMTriggerWatchdogRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
	}
	static class WdgMGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof WdgMGeneral)){
				return false
			}
			this.target == (object as WdgMGeneral).target
		}
	
		def Boolean getWdgMDemStoppedSupervisionReport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMDemStoppedSupervisionReport"].getBooleanValue()
		}
		
		def void setWdgMDemStoppedSupervisionReport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMDemStoppedSupervisionReport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WdgMDemStoppedSupervisionReport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getWdgMDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMDevErrorDetect"].getBooleanValue()
		}
		
		def void setWdgMDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WdgMDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getWdgMImmediateReset(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMImmediateReset"].getBooleanValue()
		}
		
		def void setWdgMImmediateReset(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMImmediateReset"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WdgMImmediateReset"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getWdgMOffModeEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMOffModeEnabled"].getBooleanValue()
		}
		
		def void setWdgMOffModeEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMOffModeEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WdgMOffModeEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getWdgMVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMVersionInfoApi"].getBooleanValue()
		}
		
		def void setWdgMVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WdgMVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		def List<WdgMSupervisedEntity> getWdgMSupervisedEntities(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "WdgMSupervisedEntity")
				}
			}
			return new BasicWrappingEList<WdgMSupervisedEntity, GContainer>(filteredContainers, typeof(WdgMSupervisedEntity), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity wdgMSupervisedEntity) {
					wdgMSupervisedEntity.target?.gSetDefinition(containerValue.getContainerDefinition("WdgMSupervisedEntity"))
					super.delegateAdd(wdgMSupervisedEntity)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity wdgMSupervisedEntity) {
					wdgMSupervisedEntity.target?.gSetDefinition(containerValue.getContainerDefinition("WdgMSupervisedEntity"))
					super.delegateAdd(index, wdgMSupervisedEntity)
				}
			}
		}
		
		def List<WdgMWatchdog> getWdgMWatchdogs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "WdgMWatchdog")
				}
			}
			return new BasicWrappingEList<WdgMWatchdog, GContainer>(filteredContainers, typeof(WdgMWatchdog), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMWatchdog wdgMWatchdog) {
					wdgMWatchdog.target?.gSetDefinition(containerValue.getContainerDefinition("WdgMWatchdog"))
					super.delegateAdd(wdgMWatchdog)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMWatchdog wdgMWatchdog) {
					wdgMWatchdog.target?.gSetDefinition(containerValue.getContainerDefinition("WdgMWatchdog"))
					super.delegateAdd(index, wdgMWatchdog)
				}
			}
		}
		
		
		static class WdgMSupervisedEntity implements IWrapper<GContainer> {
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
		        if (!(object instanceof WdgMSupervisedEntity)){
					return false
				}
				this.target == (object as WdgMSupervisedEntity).target
			}
		
			def BigInteger getWdgMSupervisedEntityId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMSupervisedEntityId"].getBigIntegerValue()
			}
			
			def void setWdgMSupervisedEntityId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMSupervisedEntityId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WdgMSupervisedEntityId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar442.accessors.EcuC.EcucPartitionCollection.EcucPartition getWdgMEcucPartitionRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.EcuC.EcucPartitionCollection.EcucPartition), "WdgMEcucPartitionRef")
			}
			
			def void setWdgMEcucPartitionRef(org.artop.ecuc.autosar442.accessors.EcuC.EcucPartitionCollection.EcucPartition object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "WdgMEcucPartitionRef"], object.getTarget())
				}
			}
			
			def List<org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint> getWdgMInternalCheckpointInitialRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "WdgMInternalCheckpointInitialRef"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "WdgMInternalCheckpointInitialRef")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint)) {
					override protected wrap(org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint object) throws CoreException {
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
								return new org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			def List<org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint> getWdgMInternallCheckpointFinalRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "WdgMInternallCheckpointFinalRef"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "WdgMInternallCheckpointFinalRef")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint)) {
					override protected wrap(org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint object) throws CoreException {
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
								return new org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			def org.artop.ecuc.autosar442.accessors.Os.OsApplication getWdgMOsApplicationRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.Os.OsApplication), "WdgMOsApplicationRef")
			}
			
			def void setWdgMOsApplicationRef(org.artop.ecuc.autosar442.accessors.Os.OsApplication object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "WdgMOsApplicationRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar442.accessors.Os.OsCounter getWdgMOSCounter(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.Os.OsCounter), "WdgMOSCounter")
			}
			
			def void setWdgMOSCounter(org.artop.ecuc.autosar442.accessors.Os.OsCounter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "WdgMOSCounter"], object.getTarget())
				}
			}
			
			
			def List<WdgMCheckpoint> getWdgMCheckpoints(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "WdgMCheckpoint")
					}
				}
				return new BasicWrappingEList<WdgMCheckpoint, GContainer>(filteredContainers, typeof(WdgMCheckpoint), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint wdgMCheckpoint) {
						wdgMCheckpoint.target?.gSetDefinition(containerValue.getContainerDefinition("WdgMCheckpoint"))
						super.delegateAdd(wdgMCheckpoint)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint wdgMCheckpoint) {
						wdgMCheckpoint.target?.gSetDefinition(containerValue.getContainerDefinition("WdgMCheckpoint"))
						super.delegateAdd(index, wdgMCheckpoint)
					}
				}
			}
			
			def List<WdgMInternalTransition> getWdgMInternalTransitions(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "WdgMInternalTransition")
					}
				}
				return new BasicWrappingEList<WdgMInternalTransition, GContainer>(filteredContainers, typeof(WdgMInternalTransition), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMInternalTransition wdgMInternalTransition) {
						wdgMInternalTransition.target?.gSetDefinition(containerValue.getContainerDefinition("WdgMInternalTransition"))
						super.delegateAdd(wdgMInternalTransition)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMInternalTransition wdgMInternalTransition) {
						wdgMInternalTransition.target?.gSetDefinition(containerValue.getContainerDefinition("WdgMInternalTransition"))
						super.delegateAdd(index, wdgMInternalTransition)
					}
				}
			}
			
			
			static class WdgMCheckpoint implements IWrapper<GContainer> {
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
			        if (!(object instanceof WdgMCheckpoint)){
						return false
					}
					this.target == (object as WdgMCheckpoint).target
				}
			
				def BigInteger getWdgMCheckpointId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMCheckpointId"].getBigIntegerValue()
				}
				
				def void setWdgMCheckpointId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMCheckpointId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WdgMCheckpointId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
			static class WdgMInternalTransition implements IWrapper<GContainer> {
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
			        if (!(object instanceof WdgMInternalTransition)){
						return false
					}
					this.target == (object as WdgMInternalTransition).target
				}
			
				
				def org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint getWdgMInternalTransitionDestRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint), "WdgMInternalTransitionDestRef")
				}
				
				def void setWdgMInternalTransitionDestRef(org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "WdgMInternalTransitionDestRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint getWdgMInternalTransitionSourceRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint), "WdgMInternalTransitionSourceRef")
				}
				
				def void setWdgMInternalTransitionSourceRef(org.artop.ecuc.autosar442.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "WdgMInternalTransitionSourceRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class WdgMWatchdog implements IWrapper<GContainer> {
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
		        if (!(object instanceof WdgMWatchdog)){
					return false
				}
				this.target == (object as WdgMWatchdog).target
			}
		
			def String getWdgMWatchdogName(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMWatchdogName"].getStringValue()
			}
			
			def void setWdgMWatchdogName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMWatchdogName"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "WdgMWatchdogName"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar442.accessors.WdgIf.WdgIfDevice getWdgMWatchdogDeviceRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar442.accessors.WdgIf.WdgIfDevice), "WdgMWatchdogDeviceRef")
			}
			
			def void setWdgMWatchdogDeviceRef(org.artop.ecuc.autosar442.accessors.WdgIf.WdgIfDevice object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "WdgMWatchdogDeviceRef"], object.getTarget())
				}
			}
			
			
			
		}
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof WdgM)){
			return false
		}
		this.target == (object as WdgM).target
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
