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
		
		
		def org.artop.ecuc.autosar421.accessors.WdgM.WdgMConfigSet.WdgMMode getWdgMInitialMode(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.WdgM.WdgMConfigSet.WdgMMode), "WdgMInitialMode")
		}
				
		def void setWdgMInitialMode(org.artop.ecuc.autosar421.accessors.WdgM.WdgMConfigSet.WdgMMode object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "WdgMInitialMode"], object.getTarget())
			}
		}
		
		
		def WdgMDemEventParameterRefs getWdgMDemEventParameterRefs(){
			containerValue.getByType(typeof(WdgMDemEventParameterRefs))
		}
		
		def void setWdgMDemEventParameterRefs(GContainer subContainer){
			containerValue.setContainer(subContainer, "WdgMDemEventParameterRefs")
		}
		
		def List<WdgMMode> getWdgMModes(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "WdgMMode")
				}
			}
			return new BasicWrappingEList<WdgMMode, GContainer>(filteredContainers, typeof(WdgMMode), typeof(GContainer))
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
			
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getWDGM_E_IMPROPER_CALLER(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "WDGM_E_IMPROPER_CALLER")
			}
					
			def void setWDGM_E_IMPROPER_CALLER(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "WDGM_E_IMPROPER_CALLER"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getWDGM_E_MONITORING(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "WDGM_E_MONITORING")
			}
					
			def void setWDGM_E_MONITORING(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "WDGM_E_MONITORING"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getWDGM_E_SET_MODE(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "WDGM_E_SET_MODE")
			}
					
			def void setWDGM_E_SET_MODE(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "WDGM_E_SET_MODE"], object.getTarget())
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
			
			def Integer getWdgMExpiredSupervisionCycleTol(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMExpiredSupervisionCycleTol"])
			}
			
			def void setWdgMExpiredSupervisionCycleTol(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMExpiredSupervisionCycleTol"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgMExpiredSupervisionCycleTol"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Integer getWdgMModeId(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMModeId"])
			}
			
			def void setWdgMModeId(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMModeId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgMModeId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			def Float getWdgMSupervisionCycle(){
				EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMSupervisionCycle"])
			}
			
			def void setWdgMSupervisionCycle(Float value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMSupervisionCycle"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgMSupervisionCycle"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			
			def List<WdgMAliveSupervision> getWdgMAliveSupervisions(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "WdgMAliveSupervision")
					}
				}
				return new BasicWrappingEList<WdgMAliveSupervision, GContainer>(filteredContainers, typeof(WdgMAliveSupervision), typeof(GContainer))
			}
			
			def List<WdgMDeadlineSupervision> getWdgMDeadlineSupervisions(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "WdgMDeadlineSupervision")
					}
				}
				return new BasicWrappingEList<WdgMDeadlineSupervision, GContainer>(filteredContainers, typeof(WdgMDeadlineSupervision), typeof(GContainer))
			}
			
			def List<WdgMExternalLogicalSupervision> getWdgMExternalLogicalSupervisions(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "WdgMExternalLogicalSupervision")
					}
				}
				return new BasicWrappingEList<WdgMExternalLogicalSupervision, GContainer>(filteredContainers, typeof(WdgMExternalLogicalSupervision), typeof(GContainer))
			}
			
			def List<WdgMLocalStatusParams> getWdgMLocalStatusParams(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "WdgMLocalStatusParams")
					}
				}
				return new BasicWrappingEList<WdgMLocalStatusParams, GContainer>(filteredContainers, typeof(WdgMLocalStatusParams), typeof(GContainer))
			}
			
			def List<WdgMTrigger> getWdgMTriggers(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "WdgMTrigger")
					}
				}
				return new BasicWrappingEList<WdgMTrigger, GContainer>(filteredContainers, typeof(WdgMTrigger), typeof(GContainer))
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
				
				def Integer getWdgMExpectedAliveIndications(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMExpectedAliveIndications"])
				}
				
				def void setWdgMExpectedAliveIndications(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMExpectedAliveIndications"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgMExpectedAliveIndications"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getWdgMMaxMargin(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMMaxMargin"])
				}
				
				def void setWdgMMaxMargin(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMMaxMargin"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgMMaxMargin"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getWdgMMinMargin(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMMinMargin"])
				}
				
				def void setWdgMMinMargin(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMMinMargin"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgMMinMargin"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getWdgMSupervisionReferenceCycle(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMSupervisionReferenceCycle"])
				}
				
				def void setWdgMSupervisionReferenceCycle(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMSupervisionReferenceCycle"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgMSupervisionReferenceCycle"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint getWdgMAliveSupervisionCheckpointRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint), "WdgMAliveSupervisionCheckpointRef")
				}
						
				def void setWdgMAliveSupervisionCheckpointRef(org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "WdgMAliveSupervisionCheckpointRef"], object.getTarget())
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
				
				def Float getWdgMDeadlineMax(){
					EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMDeadlineMax"])
				}
				
				def void setWdgMDeadlineMax(Float value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMDeadlineMax"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgMDeadlineMax"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Float getWdgMDeadlineMin(){
					EcucValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMDeadlineMin"])
				}
				
				def void setWdgMDeadlineMin(Float value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMDeadlineMin"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgMDeadlineMin"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint getWdgMDeadlineStartRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint), "WdgMDeadlineStartRef")
				}
						
				def void setWdgMDeadlineStartRef(org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "WdgMDeadlineStartRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint getWdgMDeadlineStopRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint), "WdgMDeadlineStopRef")
				}
						
				def void setWdgMDeadlineStopRef(org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "WdgMDeadlineStopRef"], object.getTarget())
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
				
				
				def List<org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint> getWdgMExternalCheckpointFinalRefs(){
					val containerDef = containerValue.gGetDefinition
					val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
						containerDef.gGetReferences.findFirst[gGetShortName == "WdgMExternalCheckpointFinalRef"] else null
									
					val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
						override protected accept(GReferenceValue item) {
							return accept(item, typeof(GConfigReference), "WdgMExternalCheckpointFinalRef")
						}
					}
					
					return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint)) {
						override protected wrap(org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint object) throws CoreException {
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
									return new org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint(referenceValueValue as GContainer)
								}
							}
						}
					}
				}
				
				def List<org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint> getWdgMExternalCheckpointInitialRefs(){
					val containerDef = containerValue.gGetDefinition
					val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
						containerDef.gGetReferences.findFirst[gGetShortName == "WdgMExternalCheckpointInitialRef"] else null
									
					val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
						override protected accept(GReferenceValue item) {
							return accept(item, typeof(GConfigReference), "WdgMExternalCheckpointInitialRef")
						}
					}
					
					return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint)) {
						override protected wrap(org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint object) throws CoreException {
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
									return new org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint(referenceValueValue as GContainer)
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
					return new BasicWrappingEList<WdgMExternalTransition, GContainer>(filteredContainers, typeof(WdgMExternalTransition), typeof(GContainer))
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
					
					
					def org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint getWdgMExternalTransitionDestRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint), "WdgMExternalTransitionDestRef")
					}
							
					def void setWdgMExternalTransitionDestRef(org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "WdgMExternalTransitionDestRef"], object.getTarget())
						}
					}
					
					def org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint getWdgMExternalTransitionSourceRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint), "WdgMExternalTransitionSourceRef")
					}
							
					def void setWdgMExternalTransitionSourceRef(org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "WdgMExternalTransitionSourceRef"], object.getTarget())
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
				
				def Integer getWdgMFailedAliveSupervisionRefCycleTol(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMFailedAliveSupervisionRefCycleTol"])
				}
				
				def void setWdgMFailedAliveSupervisionRefCycleTol(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMFailedAliveSupervisionRefCycleTol"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgMFailedAliveSupervisionRefCycleTol"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity getWdgMLocalStatusSupervisedEntityRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity), "WdgMLocalStatusSupervisedEntityRef")
				}
						
				def void setWdgMLocalStatusSupervisedEntityRef(org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "WdgMLocalStatusSupervisedEntityRef"], object.getTarget())
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
				
				def Integer getWdgMTriggerConditionValue(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMTriggerConditionValue"])
				}
				
				def void setWdgMTriggerConditionValue(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMTriggerConditionValue"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgMTriggerConditionValue"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def WdgMWatchdogMode getWdgMWatchdogMode(){
					getWdgMWatchdogModeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMWatchdogMode"])
				}
				
				def void setWdgMWatchdogMode(WdgMWatchdogMode value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMWatchdogMode"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgMWatchdogMode"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				enum WdgMWatchdogMode {
					WDGIF_FAST_MODE, 
					WDGIF_OFF_MODE, 
					WDGIF_SLOW_MODE
				}
					
				def WdgMWatchdogMode getWdgMWatchdogModeValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "WDGIF_FAST_MODE" : WdgMWatchdogMode.WDGIF_FAST_MODE
						case "WDGIF_OFF_MODE" : WdgMWatchdogMode.WDGIF_OFF_MODE
						case "WDGIF_SLOW_MODE" : WdgMWatchdogMode.WDGIF_SLOW_MODE
					}
				}
				
				def void setWdgMWatchdogModeValue(GParameterValue paramValue, WdgMWatchdogMode value){
					EcucValueAccessor4xUtil.setParameterValue(paramValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMWatchdog getWdgMTriggerWatchdogRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMWatchdog), "WdgMTriggerWatchdogRef")
				}
						
				def void setWdgMTriggerWatchdogRef(org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMWatchdog object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "WdgMTriggerWatchdogRef"], object.getTarget())
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
		
		def Boolean getWdgMDefensiveBehavior(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMDefensiveBehavior"])
		}
		
		def void setWdgMDefensiveBehavior(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMDefensiveBehavior"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgMDefensiveBehavior"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getWdgMDemStoppedSupervisionReport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMDemStoppedSupervisionReport"])
		}
		
		def void setWdgMDemStoppedSupervisionReport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMDemStoppedSupervisionReport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgMDemStoppedSupervisionReport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getWdgMDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMDevErrorDetect"])
		}
		
		def void setWdgMDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgMDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getWdgMImmediateReset(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMImmediateReset"])
		}
		
		def void setWdgMImmediateReset(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMImmediateReset"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgMImmediateReset"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getWdgMOffModeEnabled(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMOffModeEnabled"])
		}
		
		def void setWdgMOffModeEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMOffModeEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgMOffModeEnabled"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getWdgMVersionInfoApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMVersionInfoApi"])
		}
		
		def void setWdgMVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgMVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		
		
		def WdgMCallerIds getWdgMCallerIds(){
			containerValue.getByType(typeof(WdgMCallerIds))
		}
		
		def void setWdgMCallerIds(GContainer subContainer){
			containerValue.setContainer(subContainer, "WdgMCallerIds")
		}
		
		def List<WdgMSupervisedEntity> getWdgMSupervisedEntities(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "WdgMSupervisedEntity")
				}
			}
			return new BasicWrappingEList<WdgMSupervisedEntity, GContainer>(filteredContainers, typeof(WdgMSupervisedEntity), typeof(GContainer))
		}
		
		def List<WdgMWatchdog> getWdgMWatchdogs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "WdgMWatchdog")
				}
			}
			return new BasicWrappingEList<WdgMWatchdog, GContainer>(filteredContainers, typeof(WdgMWatchdog), typeof(GContainer))
		}
		
		
		static class WdgMCallerIds implements IWrapper<GContainer> {
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
			
			def List<Integer> getWdgMCallerIds(){
				val List<EcucNumericalParamValue> filteredParameterValues = new AbstractFilteringEList<EcucNumericalParamValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {
					override protected accept(EcucNumericalParamValue item) {
						return accept(item, typeof(GConfigParameter), "WdgMCallerId")
					}
				}
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == "WdgMCallerId"]
					return new IntegerValueUnwrappingEList(filteredParameterValues, typeof(EcucNumericalParamValue), typeof(Integer), parameterDef)
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
			
			def Integer getWdgMSupervisedEntityId(){
				EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMSupervisedEntityId"])
			}
			
			def void setWdgMSupervisedEntityId(Integer value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMSupervisedEntityId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgMSupervisedEntityId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.EcuC.EcucPartitionCollection.EcucPartition getWdgMEcucPartitionRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucPartitionCollection.EcucPartition), "WdgMEcucPartitionRef")
			}
					
			def void setWdgMEcucPartitionRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucPartitionCollection.EcucPartition object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "WdgMEcucPartitionRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Os.OsCounter getWdgMOSCounter(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsCounter), "WdgMOSCounter")
			}
					
			def void setWdgMOSCounter(org.artop.ecuc.autosar421.accessors.Os.OsCounter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "WdgMOSCounter"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Os.OsApplication getWdgMOsApplicationRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Os.OsApplication), "WdgMOsApplicationRef")
			}
					
			def void setWdgMOsApplicationRef(org.artop.ecuc.autosar421.accessors.Os.OsApplication object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "WdgMOsApplicationRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint getWdgMInternalCheckpointInitialRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint), "WdgMInternalCheckpointInitialRef")
			}
					
			def void setWdgMInternalCheckpointInitialRef(org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "WdgMInternalCheckpointInitialRef"], object.getTarget())
				}
			}
			
			def List<org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint> getWdgMInternallCheckpointFinalRefs(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
					containerDef.gGetReferences.findFirst[gGetShortName == "WdgMInternallCheckpointFinalRef"] else null
								
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "WdgMInternallCheckpointFinalRef")
					}
				}
				
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint)) {
					override protected wrap(org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint object) throws CoreException {
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
								return new org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			def List<WdgMCheckpoint> getWdgMCheckpoints(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "WdgMCheckpoint")
					}
				}
				return new BasicWrappingEList<WdgMCheckpoint, GContainer>(filteredContainers, typeof(WdgMCheckpoint), typeof(GContainer))
			}
			
			def List<WdgMInternalTransition> getWdgMInternalTransitions(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "WdgMInternalTransition")
					}
				}
				return new BasicWrappingEList<WdgMInternalTransition, GContainer>(filteredContainers, typeof(WdgMInternalTransition), typeof(GContainer))
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
				
				def Integer getWdgMCheckpointId(){
					EcucValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMCheckpointId"])
				}
				
				def void setWdgMCheckpointId(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMCheckpointId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgMCheckpointId"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
				
				
				def org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint getWdgMInternalTransitionDestRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint), "WdgMInternalTransitionDestRef")
				}
						
				def void setWdgMInternalTransitionDestRef(org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "WdgMInternalTransitionDestRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint getWdgMInternalTransitionSourceRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint), "WdgMInternalTransitionSourceRef")
				}
						
				def void setWdgMInternalTransitionSourceRef(org.artop.ecuc.autosar421.accessors.WdgM.WdgMGeneral.WdgMSupervisedEntity.WdgMCheckpoint object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "WdgMInternalTransitionSourceRef"], object.getTarget())
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
			
			def String getWdgMWatchdogName(){
				EcucValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMWatchdogName"])
			}
			
			def void setWdgMWatchdogName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "WdgMWatchdogName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "WdgMWatchdogName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor4xUtil.setParameterValue(parameterValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.WdgIf.WdgIfDevice getWdgMWatchdogDeviceRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.WdgIf.WdgIfDevice), "WdgMWatchdogDeviceRef")
			}
					
			def void setWdgMWatchdogDeviceRef(org.artop.ecuc.autosar421.accessors.WdgIf.WdgIfDevice object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "WdgMWatchdogDeviceRef"], object.getTarget())
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
