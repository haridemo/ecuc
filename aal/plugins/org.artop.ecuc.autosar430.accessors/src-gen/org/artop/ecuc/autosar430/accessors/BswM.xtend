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

class BswM implements IWrapper<GModuleConfiguration> {
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

	def List<BswMConfig> getBswMConfigs(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "BswMConfig")
			}
		}
		return new BasicWrappingEList<BswMConfig, GContainer>(filteredContainers, typeof(BswMConfig), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar430.accessors.BswM.BswMConfig bswMConfig) {
				bswMConfig.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("BswMConfig"))
				super.delegateAdd(bswMConfig)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.BswM.BswMConfig bswMConfig) {
				bswMConfig.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("BswMConfig"))
				super.delegateAdd(index, bswMConfig)
			}
		}
	}
	def BswMGeneral getBswMGeneral(){
		moduleConfiguration.getByType(typeof(BswMGeneral))
	}

	def void setBswMGeneral(BswMGeneral bswMGeneral){
		val GContainer container = bswMGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "BswMGeneral")
	}

	static class BswMConfig implements IWrapper<GContainer> {
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
	        if (!(object instanceof BswMConfig)){
				return false
			}
			this.target == (object as BswMConfig).target
		}
	
		
		def org.artop.ecuc.autosar430.accessors.EcuC.EcucPartitionCollection.EcucPartition getBswMPartitionRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EcuC.EcucPartitionCollection.EcucPartition), "BswMPartitionRef")
		}
		
		def void setBswMPartitionRef(org.artop.ecuc.autosar430.accessors.EcuC.EcucPartitionCollection.EcucPartition object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMPartitionRef"], object.getTarget())
			}
		}
		
		
		def BswMArbitration getBswMArbitration(){
			containerValue.getByType(typeof(BswMArbitration))
		}
		
		def void setBswMArbitration(BswMArbitration bswMArbitration){
			val GContainer subContainer = bswMArbitration.getTarget()
			containerValue.setContainer(subContainer, "BswMArbitration")
		}
		
		def BswMDataTypeMappingSets getBswMDataTypeMappingSets(){
			containerValue.getByType(typeof(BswMDataTypeMappingSets))
		}
		
		def void setBswMDataTypeMappingSets(BswMDataTypeMappingSets bswMDataTypeMappingSets){
			val GContainer subContainer = bswMDataTypeMappingSets.getTarget()
			containerValue.setContainer(subContainer, "BswMDataTypeMappingSets")
		}
		
		def BswMModeControl getBswMModeControl(){
			containerValue.getByType(typeof(BswMModeControl))
		}
		
		def void setBswMModeControl(BswMModeControl bswMModeControl){
			val GContainer subContainer = bswMModeControl.getTarget()
			containerValue.setContainer(subContainer, "BswMModeControl")
		}
		
		
		static class BswMArbitration implements IWrapper<GContainer> {
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
		        if (!(object instanceof BswMArbitration)){
					return false
				}
				this.target == (object as BswMArbitration).target
			}
		
			
			
			def List<BswMEventRequestPort> getBswMEventRequestPorts(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "BswMEventRequestPort")
					}
				}
				return new BasicWrappingEList<BswMEventRequestPort, GContainer>(filteredContainers, typeof(BswMEventRequestPort), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMArbitration.BswMEventRequestPort bswMEventRequestPort) {
						bswMEventRequestPort.target?.gSetDefinition(containerValue.getContainerDefinition("BswMEventRequestPort"))
						super.delegateAdd(bswMEventRequestPort)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMArbitration.BswMEventRequestPort bswMEventRequestPort) {
						bswMEventRequestPort.target?.gSetDefinition(containerValue.getContainerDefinition("BswMEventRequestPort"))
						super.delegateAdd(index, bswMEventRequestPort)
					}
				}
			}
			
			def List<BswMLogicalExpression> getBswMLogicalExpressions(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "BswMLogicalExpression")
					}
				}
				return new BasicWrappingEList<BswMLogicalExpression, GContainer>(filteredContainers, typeof(BswMLogicalExpression), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMArbitration.BswMLogicalExpression bswMLogicalExpression) {
						bswMLogicalExpression.target?.gSetDefinition(containerValue.getContainerDefinition("BswMLogicalExpression"))
						super.delegateAdd(bswMLogicalExpression)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMArbitration.BswMLogicalExpression bswMLogicalExpression) {
						bswMLogicalExpression.target?.gSetDefinition(containerValue.getContainerDefinition("BswMLogicalExpression"))
						super.delegateAdd(index, bswMLogicalExpression)
					}
				}
			}
			
			def List<BswMModeCondition> getBswMModeConditions(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "BswMModeCondition")
					}
				}
				return new BasicWrappingEList<BswMModeCondition, GContainer>(filteredContainers, typeof(BswMModeCondition), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMArbitration.BswMModeCondition bswMModeCondition) {
						bswMModeCondition.target?.gSetDefinition(containerValue.getContainerDefinition("BswMModeCondition"))
						super.delegateAdd(bswMModeCondition)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMArbitration.BswMModeCondition bswMModeCondition) {
						bswMModeCondition.target?.gSetDefinition(containerValue.getContainerDefinition("BswMModeCondition"))
						super.delegateAdd(index, bswMModeCondition)
					}
				}
			}
			
			def List<BswMModeRequestPort> getBswMModeRequestPorts(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "BswMModeRequestPort")
					}
				}
				return new BasicWrappingEList<BswMModeRequestPort, GContainer>(filteredContainers, typeof(BswMModeRequestPort), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMArbitration.BswMModeRequestPort bswMModeRequestPort) {
						bswMModeRequestPort.target?.gSetDefinition(containerValue.getContainerDefinition("BswMModeRequestPort"))
						super.delegateAdd(bswMModeRequestPort)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMArbitration.BswMModeRequestPort bswMModeRequestPort) {
						bswMModeRequestPort.target?.gSetDefinition(containerValue.getContainerDefinition("BswMModeRequestPort"))
						super.delegateAdd(index, bswMModeRequestPort)
					}
				}
			}
			
			def List<BswMRule> getBswMRules(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "BswMRule")
					}
				}
				return new BasicWrappingEList<BswMRule, GContainer>(filteredContainers, typeof(BswMRule), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMArbitration.BswMRule bswMRule) {
						bswMRule.target?.gSetDefinition(containerValue.getContainerDefinition("BswMRule"))
						super.delegateAdd(bswMRule)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMArbitration.BswMRule bswMRule) {
						bswMRule.target?.gSetDefinition(containerValue.getContainerDefinition("BswMRule"))
						super.delegateAdd(index, bswMRule)
					}
				}
			}
			
			
			static class BswMEventRequestPort implements IWrapper<GContainer> {
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
			        if (!(object instanceof BswMEventRequestPort)){
						return false
					}
					this.target == (object as BswMEventRequestPort).target
				}
			
				def BswMEventRequestProcessing getBswMEventRequestProcessing(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMEventRequestProcessing"].getBswMEventRequestProcessingValue()
				}
				
				def void setBswMEventRequestProcessing(BswMEventRequestProcessing value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMEventRequestProcessing"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMEventRequestProcessing"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum BswMEventRequestProcessing {
					BSWM_DEFERRED, 
					BSWM_IMMEDIATE
				}
				
				def BswMEventRequestProcessing getBswMEventRequestProcessingValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "BSWM_DEFERRED" : BswMEventRequestProcessing.BSWM_DEFERRED
						case "BSWM_IMMEDIATE" : BswMEventRequestProcessing.BSWM_IMMEDIATE
					}
				}
				
				def void setBswMEventRequestProcessingValue(GParameterValue parameterValue, BswMEventRequestProcessing value){
					parameterValue.setValue(value)
				}
				
				
				
				def BswMEventRequestSource getBswMEventRequestSource(){
					containerValue.getByType(typeof(BswMEventRequestSource))
				}
				
				def void setBswMEventRequestSource(BswMEventRequestSource bswMEventRequestSource){
					val GContainer subContainer = bswMEventRequestSource.getTarget()
					containerValue.setContainer(subContainer, "BswMEventRequestSource")
				}
				
				
				static class BswMEventRequestSource implements IWrapper<GContainer> {
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
				        if (!(object instanceof BswMEventRequestSource)){
							return false
						}
						this.target == (object as BswMEventRequestSource).target
					}
				
					def BswMComMInitiateReset getBswMComMInitiateReset(){
						containerValue.getByType(typeof(BswMComMInitiateReset))
					}
					
					def void setBswMComMInitiateReset(BswMComMInitiateReset bswMComMInitiateReset){
						val GContainer subContainer = bswMComMInitiateReset.getTarget()
						containerValue.setContainer(subContainer, "BswMComMInitiateReset")
					}
					def BswMDcmApplicationUpdatedIndication getBswMDcmApplicationUpdatedIndication(){
						containerValue.getByType(typeof(BswMDcmApplicationUpdatedIndication))
					}
					
					def void setBswMDcmApplicationUpdatedIndication(BswMDcmApplicationUpdatedIndication bswMDcmApplicationUpdatedIndication){
						val GContainer subContainer = bswMDcmApplicationUpdatedIndication.getTarget()
						containerValue.setContainer(subContainer, "BswMDcmApplicationUpdatedIndication")
					}
					def BswMModeSwitchErrorEvent getBswMModeSwitchErrorEvent(){
						containerValue.getByType(typeof(BswMModeSwitchErrorEvent))
					}
					
					def void setBswMModeSwitchErrorEvent(BswMModeSwitchErrorEvent bswMModeSwitchErrorEvent){
						val GContainer subContainer = bswMModeSwitchErrorEvent.getTarget()
						containerValue.setContainer(subContainer, "BswMModeSwitchErrorEvent")
					}
					def BswMPartitionRestarted getBswMPartitionRestarted(){
						containerValue.getByType(typeof(BswMPartitionRestarted))
					}
					
					def void setBswMPartitionRestarted(BswMPartitionRestarted bswMPartitionRestarted){
						val GContainer subContainer = bswMPartitionRestarted.getTarget()
						containerValue.setContainer(subContainer, "BswMPartitionRestarted")
					}
					def BswMWdgMRequestPartitionReset getBswMWdgMRequestPartitionReset(){
						containerValue.getByType(typeof(BswMWdgMRequestPartitionReset))
					}
					
					def void setBswMWdgMRequestPartitionReset(BswMWdgMRequestPartitionReset bswMWdgMRequestPartitionReset){
						val GContainer subContainer = bswMWdgMRequestPartitionReset.getTarget()
						containerValue.setContainer(subContainer, "BswMWdgMRequestPartitionReset")
					}
					
					static class BswMComMInitiateReset implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMComMInitiateReset)){
								return false
							}
							this.target == (object as BswMComMInitiateReset).target
						}
					
						
						
						
					}
					
					static class BswMDcmApplicationUpdatedIndication implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMDcmApplicationUpdatedIndication)){
								return false
							}
							this.target == (object as BswMDcmApplicationUpdatedIndication).target
						}
					
						
						
						
					}
					
					static class BswMModeSwitchErrorEvent implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMModeSwitchErrorEvent)){
								return false
							}
							this.target == (object as BswMModeSwitchErrorEvent).target
						}
					
						
						def org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMModeControl.BswMSwitchPort getBswMRteSwitchPortRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMModeControl.BswMSwitchPort), "BswMRteSwitchPortRef")
						}
						
						def void setBswMRteSwitchPortRef(org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMModeControl.BswMSwitchPort object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMRteSwitchPortRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMPartitionRestarted implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMPartitionRestarted)){
								return false
							}
							this.target == (object as BswMPartitionRestarted).target
						}
					
						
						
						
					}
					
					static class BswMWdgMRequestPartitionReset implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMWdgMRequestPartitionReset)){
								return false
							}
							this.target == (object as BswMWdgMRequestPartitionReset).target
						}
					
						
						def org.artop.ecuc.autosar430.accessors.EcuC.EcucPartitionCollection.EcucPartition getBswMWdgMRequestPartitionResetRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EcuC.EcucPartitionCollection.EcucPartition), "BswMWdgMRequestPartitionResetRef")
						}
						
						def void setBswMWdgMRequestPartitionResetRef(org.artop.ecuc.autosar430.accessors.EcuC.EcucPartitionCollection.EcucPartition object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMWdgMRequestPartitionResetRef"], object.getTarget())
							}
						}
						
						
						
					}
					
				}
				
			}
			
			static class BswMLogicalExpression implements IWrapper<GContainer> {
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
			        if (!(object instanceof BswMLogicalExpression)){
						return false
					}
					this.target == (object as BswMLogicalExpression).target
				}
			
				def BswMLogicalOperator getBswMLogicalOperator(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMLogicalOperator"].getBswMLogicalOperatorValue()
				}
				
				def void setBswMLogicalOperator(BswMLogicalOperator value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMLogicalOperator"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMLogicalOperator"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum BswMLogicalOperator {
					BSWM_AND, 
					BSWM_NAND, 
					BSWM_NOT, 
					BSWM_OR, 
					BSWM_XOR
				}
				
				def BswMLogicalOperator getBswMLogicalOperatorValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "BSWM_AND" : BswMLogicalOperator.BSWM_AND
						case "BSWM_NAND" : BswMLogicalOperator.BSWM_NAND
						case "BSWM_NOT" : BswMLogicalOperator.BSWM_NOT
						case "BSWM_OR" : BswMLogicalOperator.BSWM_OR
						case "BSWM_XOR" : BswMLogicalOperator.BSWM_XOR
					}
				}
				
				def void setBswMLogicalOperatorValue(GParameterValue parameterValue, BswMLogicalOperator value){
					parameterValue.setValue(value)
				}
				
				
				
				
				
			}
			
			static class BswMModeCondition implements IWrapper<GContainer> {
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
			        if (!(object instanceof BswMModeCondition)){
						return false
					}
					this.target == (object as BswMModeCondition).target
				}
			
				def BswMConditionType getBswMConditionType(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMConditionType"].getBswMConditionTypeValue()
				}
				
				def void setBswMConditionType(BswMConditionType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMConditionType"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMConditionType"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum BswMConditionType {
					BSWM_EQUALS, 
					BSWM_EQUALS_NOT, 
					BSWM_EVENT_IS_CLEARED, 
					BSWM_EVENT_IS_SET
				}
				
				def BswMConditionType getBswMConditionTypeValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "BSWM_EQUALS" : BswMConditionType.BSWM_EQUALS
						case "BSWM_EQUALS_NOT" : BswMConditionType.BSWM_EQUALS_NOT
						case "BSWM_EVENT_IS_CLEARED" : BswMConditionType.BSWM_EVENT_IS_CLEARED
						case "BSWM_EVENT_IS_SET" : BswMConditionType.BSWM_EVENT_IS_SET
					}
				}
				
				def void setBswMConditionTypeValue(GParameterValue parameterValue, BswMConditionType value){
					parameterValue.setValue(value)
				}
				
				
				
				
				def BswMConditionValue getBswMConditionValue(){
					containerValue.getByType(typeof(BswMConditionValue))
				}
				
				def void setBswMConditionValue(BswMConditionValue bswMConditionValue){
					val GContainer subContainer = bswMConditionValue.getTarget()
					containerValue.setContainer(subContainer, "BswMConditionValue")
				}
				
				
				static class BswMConditionValue implements IWrapper<GContainer> {
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
				        if (!(object instanceof BswMConditionValue)){
							return false
						}
						this.target == (object as BswMConditionValue).target
					}
				
					def BswMBswMode getBswMBswMode(){
						containerValue.getByType(typeof(BswMBswMode))
					}
					
					def void setBswMBswMode(BswMBswMode bswMBswMode){
						val GContainer subContainer = bswMBswMode.getTarget()
						containerValue.setContainer(subContainer, "BswMBswMode")
					}
					def BswMModeDeclaration getBswMModeDeclaration(){
						containerValue.getByType(typeof(BswMModeDeclaration))
					}
					
					def void setBswMModeDeclaration(BswMModeDeclaration bswMModeDeclaration){
						val GContainer subContainer = bswMModeDeclaration.getTarget()
						containerValue.setContainer(subContainer, "BswMModeDeclaration")
					}
					
					static class BswMBswMode implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMBswMode)){
								return false
							}
							this.target == (object as BswMBswMode).target
						}
					
						def String getBswMBswRequestedMode(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMBswRequestedMode"].getStringValue()
						}
						
						def void setBswMBswRequestedMode(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMBswRequestedMode"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMBswRequestedMode"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						
						
						def BswMCompuScaleModeValue getBswMCompuScaleModeValue(){
							containerValue.getByType(typeof(BswMCompuScaleModeValue))
						}
						
						def void setBswMCompuScaleModeValue(BswMCompuScaleModeValue bswMCompuScaleModeValue){
							val GContainer subContainer = bswMCompuScaleModeValue.getTarget()
							containerValue.setContainer(subContainer, "BswMCompuScaleModeValue")
						}
						
						
						static class BswMCompuScaleModeValue implements IWrapper<GContainer> {
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
						        if (!(object instanceof BswMCompuScaleModeValue)){
									return false
								}
								this.target == (object as BswMCompuScaleModeValue).target
							}
						
							def String getBswMCompuConstText(){
								containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMCompuConstText"].getStringValue()
							}
							
							def void setBswMCompuConstText(String value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMCompuConstText"]
								if (parameterValue === null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMCompuConstText"].createParameterValue()
										containerValue.gGetParameterValues += parameterValue
									}
								}
								parameterValue.setValue(value)
							}
							
							
							
							
							
						}
						
					}
					
					static class BswMModeDeclaration implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMModeDeclaration)){
								return false
							}
							this.target == (object as BswMModeDeclaration).target
						}
					
						
						
						
						
					}
					
				}
				
			}
			
			static class BswMModeRequestPort implements IWrapper<GContainer> {
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
			        if (!(object instanceof BswMModeRequestPort)){
						return false
					}
					this.target == (object as BswMModeRequestPort).target
				}
			
				def BswMRequestProcessing getBswMRequestProcessing(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMRequestProcessing"].getBswMRequestProcessingValue()
				}
				
				def void setBswMRequestProcessing(BswMRequestProcessing value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMRequestProcessing"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMRequestProcessing"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum BswMRequestProcessing {
					BSWM_DEFERRED, 
					BSWM_IMMEDIATE
				}
				
				def BswMRequestProcessing getBswMRequestProcessingValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "BSWM_DEFERRED" : BswMRequestProcessing.BSWM_DEFERRED
						case "BSWM_IMMEDIATE" : BswMRequestProcessing.BSWM_IMMEDIATE
					}
				}
				
				def void setBswMRequestProcessingValue(GParameterValue parameterValue, BswMRequestProcessing value){
					parameterValue.setValue(value)
				}
				
				
				
				def BswMModeInitValue getBswMModeInitValue(){
					containerValue.getByType(typeof(BswMModeInitValue))
				}
				
				def void setBswMModeInitValue(BswMModeInitValue bswMModeInitValue){
					val GContainer subContainer = bswMModeInitValue.getTarget()
					containerValue.setContainer(subContainer, "BswMModeInitValue")
				}
				
				def BswMModeRequestSource getBswMModeRequestSource(){
					containerValue.getByType(typeof(BswMModeRequestSource))
				}
				
				def void setBswMModeRequestSource(BswMModeRequestSource bswMModeRequestSource){
					val GContainer subContainer = bswMModeRequestSource.getTarget()
					containerValue.setContainer(subContainer, "BswMModeRequestSource")
				}
				
				
				static class BswMModeInitValue implements IWrapper<GContainer> {
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
				        if (!(object instanceof BswMModeInitValue)){
							return false
						}
						this.target == (object as BswMModeInitValue).target
					}
				
					def String getBswMBswModeInitValue(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMBswModeInitValue"].getStringValue()
					}
					
					def void setBswMBswModeInitValue(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMBswModeInitValue"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMBswModeInitValue"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					
					def BswMCompuScaleModeValue getBswMCompuScaleModeValue(){
						containerValue.getByType(typeof(BswMCompuScaleModeValue))
					}
					
					def void setBswMCompuScaleModeValue(BswMCompuScaleModeValue bswMCompuScaleModeValue){
						val GContainer subContainer = bswMCompuScaleModeValue.getTarget()
						containerValue.setContainer(subContainer, "BswMCompuScaleModeValue")
					}
					
					
					static class BswMCompuScaleModeValue implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMCompuScaleModeValue)){
								return false
							}
							this.target == (object as BswMCompuScaleModeValue).target
						}
					
						def String getBswMCompuConstText(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMCompuConstText"].getStringValue()
						}
						
						def void setBswMCompuConstText(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMCompuConstText"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMCompuConstText"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						
						
						
						
					}
					
				}
				
				static class BswMModeRequestSource implements IWrapper<GContainer> {
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
				        if (!(object instanceof BswMModeRequestSource)){
							return false
						}
						this.target == (object as BswMModeRequestSource).target
					}
				
					def BswMBswModeNotification getBswMBswModeNotification(){
						containerValue.getByType(typeof(BswMBswModeNotification))
					}
					
					def void setBswMBswModeNotification(BswMBswModeNotification bswMBswModeNotification){
						val GContainer subContainer = bswMBswModeNotification.getTarget()
						containerValue.setContainer(subContainer, "BswMBswModeNotification")
					}
					def BswMCanSMIcomIndication getBswMCanSMIcomIndication(){
						containerValue.getByType(typeof(BswMCanSMIcomIndication))
					}
					
					def void setBswMCanSMIcomIndication(BswMCanSMIcomIndication bswMCanSMIcomIndication){
						val GContainer subContainer = bswMCanSMIcomIndication.getTarget()
						containerValue.setContainer(subContainer, "BswMCanSMIcomIndication")
					}
					def BswMCanSMIndication getBswMCanSMIndication(){
						containerValue.getByType(typeof(BswMCanSMIndication))
					}
					
					def void setBswMCanSMIndication(BswMCanSMIndication bswMCanSMIndication){
						val GContainer subContainer = bswMCanSMIndication.getTarget()
						containerValue.setContainer(subContainer, "BswMCanSMIndication")
					}
					def BswMComMIndication getBswMComMIndication(){
						containerValue.getByType(typeof(BswMComMIndication))
					}
					
					def void setBswMComMIndication(BswMComMIndication bswMComMIndication){
						val GContainer subContainer = bswMComMIndication.getTarget()
						containerValue.setContainer(subContainer, "BswMComMIndication")
					}
					def BswMComMPncRequest getBswMComMPncRequest(){
						containerValue.getByType(typeof(BswMComMPncRequest))
					}
					
					def void setBswMComMPncRequest(BswMComMPncRequest bswMComMPncRequest){
						val GContainer subContainer = bswMComMPncRequest.getTarget()
						containerValue.setContainer(subContainer, "BswMComMPncRequest")
					}
					def BswMDcmComModeRequest getBswMDcmComModeRequest(){
						containerValue.getByType(typeof(BswMDcmComModeRequest))
					}
					
					def void setBswMDcmComModeRequest(BswMDcmComModeRequest bswMDcmComModeRequest){
						val GContainer subContainer = bswMDcmComModeRequest.getTarget()
						containerValue.setContainer(subContainer, "BswMDcmComModeRequest")
					}
					def BswMEcuMIndication getBswMEcuMIndication(){
						containerValue.getByType(typeof(BswMEcuMIndication))
					}
					
					def void setBswMEcuMIndication(BswMEcuMIndication bswMEcuMIndication){
						val GContainer subContainer = bswMEcuMIndication.getTarget()
						containerValue.setContainer(subContainer, "BswMEcuMIndication")
					}
					def BswMEcuMRUNRequestIndication getBswMEcuMRUNRequestIndication(){
						containerValue.getByType(typeof(BswMEcuMRUNRequestIndication))
					}
					
					def void setBswMEcuMRUNRequestIndication(BswMEcuMRUNRequestIndication bswMEcuMRUNRequestIndication){
						val GContainer subContainer = bswMEcuMRUNRequestIndication.getTarget()
						containerValue.setContainer(subContainer, "BswMEcuMRUNRequestIndication")
					}
					def BswMEcuMWakeupSource getBswMEcuMWakeupSource(){
						containerValue.getByType(typeof(BswMEcuMWakeupSource))
					}
					
					def void setBswMEcuMWakeupSource(BswMEcuMWakeupSource bswMEcuMWakeupSource){
						val GContainer subContainer = bswMEcuMWakeupSource.getTarget()
						containerValue.setContainer(subContainer, "BswMEcuMWakeupSource")
					}
					def BswMEthIfPortGroupLinkStateChg getBswMEthIfPortGroupLinkStateChg(){
						containerValue.getByType(typeof(BswMEthIfPortGroupLinkStateChg))
					}
					
					def void setBswMEthIfPortGroupLinkStateChg(BswMEthIfPortGroupLinkStateChg bswMEthIfPortGroupLinkStateChg){
						val GContainer subContainer = bswMEthIfPortGroupLinkStateChg.getTarget()
						containerValue.setContainer(subContainer, "BswMEthIfPortGroupLinkStateChg")
					}
					def BswMEthSMIndication getBswMEthSMIndication(){
						containerValue.getByType(typeof(BswMEthSMIndication))
					}
					
					def void setBswMEthSMIndication(BswMEthSMIndication bswMEthSMIndication){
						val GContainer subContainer = bswMEthSMIndication.getTarget()
						containerValue.setContainer(subContainer, "BswMEthSMIndication")
					}
					def BswMFrSMIndication getBswMFrSMIndication(){
						containerValue.getByType(typeof(BswMFrSMIndication))
					}
					
					def void setBswMFrSMIndication(BswMFrSMIndication bswMFrSMIndication){
						val GContainer subContainer = bswMFrSMIndication.getTarget()
						containerValue.setContainer(subContainer, "BswMFrSMIndication")
					}
					def BswMGenericRequest getBswMGenericRequest(){
						containerValue.getByType(typeof(BswMGenericRequest))
					}
					
					def void setBswMGenericRequest(BswMGenericRequest bswMGenericRequest){
						val GContainer subContainer = bswMGenericRequest.getTarget()
						containerValue.setContainer(subContainer, "BswMGenericRequest")
					}
					def BswMJ1939DcmBroadcastStatus getBswMJ1939DcmBroadcastStatus(){
						containerValue.getByType(typeof(BswMJ1939DcmBroadcastStatus))
					}
					
					def void setBswMJ1939DcmBroadcastStatus(BswMJ1939DcmBroadcastStatus bswMJ1939DcmBroadcastStatus){
						val GContainer subContainer = bswMJ1939DcmBroadcastStatus.getTarget()
						containerValue.setContainer(subContainer, "BswMJ1939DcmBroadcastStatus")
					}
					def BswMJ1939NmIndication getBswMJ1939NmIndication(){
						containerValue.getByType(typeof(BswMJ1939NmIndication))
					}
					
					def void setBswMJ1939NmIndication(BswMJ1939NmIndication bswMJ1939NmIndication){
						val GContainer subContainer = bswMJ1939NmIndication.getTarget()
						containerValue.setContainer(subContainer, "BswMJ1939NmIndication")
					}
					def BswMLinSMIndication getBswMLinSMIndication(){
						containerValue.getByType(typeof(BswMLinSMIndication))
					}
					
					def void setBswMLinSMIndication(BswMLinSMIndication bswMLinSMIndication){
						val GContainer subContainer = bswMLinSMIndication.getTarget()
						containerValue.setContainer(subContainer, "BswMLinSMIndication")
					}
					def BswMLinScheduleIndication getBswMLinScheduleIndication(){
						containerValue.getByType(typeof(BswMLinScheduleIndication))
					}
					
					def void setBswMLinScheduleIndication(BswMLinScheduleIndication bswMLinScheduleIndication){
						val GContainer subContainer = bswMLinScheduleIndication.getTarget()
						containerValue.setContainer(subContainer, "BswMLinScheduleIndication")
					}
					def BswMLinTpModeRequest getBswMLinTpModeRequest(){
						containerValue.getByType(typeof(BswMLinTpModeRequest))
					}
					
					def void setBswMLinTpModeRequest(BswMLinTpModeRequest bswMLinTpModeRequest){
						val GContainer subContainer = bswMLinTpModeRequest.getTarget()
						containerValue.setContainer(subContainer, "BswMLinTpModeRequest")
					}
					def BswMNmIfCarWakeUpIndication getBswMNmIfCarWakeUpIndication(){
						containerValue.getByType(typeof(BswMNmIfCarWakeUpIndication))
					}
					
					def void setBswMNmIfCarWakeUpIndication(BswMNmIfCarWakeUpIndication bswMNmIfCarWakeUpIndication){
						val GContainer subContainer = bswMNmIfCarWakeUpIndication.getTarget()
						containerValue.setContainer(subContainer, "BswMNmIfCarWakeUpIndication")
					}
					def BswMNvMJobModeIndication getBswMNvMJobModeIndication(){
						containerValue.getByType(typeof(BswMNvMJobModeIndication))
					}
					
					def void setBswMNvMJobModeIndication(BswMNvMJobModeIndication bswMNvMJobModeIndication){
						val GContainer subContainer = bswMNvMJobModeIndication.getTarget()
						containerValue.setContainer(subContainer, "BswMNvMJobModeIndication")
					}
					def BswMNvMRequest getBswMNvMRequest(){
						containerValue.getByType(typeof(BswMNvMRequest))
					}
					
					def void setBswMNvMRequest(BswMNvMRequest bswMNvMRequest){
						val GContainer subContainer = bswMNvMRequest.getTarget()
						containerValue.setContainer(subContainer, "BswMNvMRequest")
					}
					def BswMSdClientServiceCurrentState getBswMSdClientServiceCurrentState(){
						containerValue.getByType(typeof(BswMSdClientServiceCurrentState))
					}
					
					def void setBswMSdClientServiceCurrentState(BswMSdClientServiceCurrentState bswMSdClientServiceCurrentState){
						val GContainer subContainer = bswMSdClientServiceCurrentState.getTarget()
						containerValue.setContainer(subContainer, "BswMSdClientServiceCurrentState")
					}
					def BswMSdConsumedEventGroupCurrentState getBswMSdConsumedEventGroupCurrentState(){
						containerValue.getByType(typeof(BswMSdConsumedEventGroupCurrentState))
					}
					
					def void setBswMSdConsumedEventGroupCurrentState(BswMSdConsumedEventGroupCurrentState bswMSdConsumedEventGroupCurrentState){
						val GContainer subContainer = bswMSdConsumedEventGroupCurrentState.getTarget()
						containerValue.setContainer(subContainer, "BswMSdConsumedEventGroupCurrentState")
					}
					def BswMSdEventHandlerCurrentState getBswMSdEventHandlerCurrentState(){
						containerValue.getByType(typeof(BswMSdEventHandlerCurrentState))
					}
					
					def void setBswMSdEventHandlerCurrentState(BswMSdEventHandlerCurrentState bswMSdEventHandlerCurrentState){
						val GContainer subContainer = bswMSdEventHandlerCurrentState.getTarget()
						containerValue.setContainer(subContainer, "BswMSdEventHandlerCurrentState")
					}
					def BswMSwcModeNotification getBswMSwcModeNotification(){
						containerValue.getByType(typeof(BswMSwcModeNotification))
					}
					
					def void setBswMSwcModeNotification(BswMSwcModeNotification bswMSwcModeNotification){
						val GContainer subContainer = bswMSwcModeNotification.getTarget()
						containerValue.setContainer(subContainer, "BswMSwcModeNotification")
					}
					def BswMSwcModeRequest getBswMSwcModeRequest(){
						containerValue.getByType(typeof(BswMSwcModeRequest))
					}
					
					def void setBswMSwcModeRequest(BswMSwcModeRequest bswMSwcModeRequest){
						val GContainer subContainer = bswMSwcModeRequest.getTarget()
						containerValue.setContainer(subContainer, "BswMSwcModeRequest")
					}
					def BswMTimer getBswMTimer(){
						containerValue.getByType(typeof(BswMTimer))
					}
					
					def void setBswMTimer(BswMTimer bswMTimer){
						val GContainer subContainer = bswMTimer.getTarget()
						containerValue.setContainer(subContainer, "BswMTimer")
					}
					
					static class BswMBswModeNotification implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMBswModeNotification)){
								return false
							}
							this.target == (object as BswMBswModeNotification).target
						}
					
						
						
						
						
					}
					
					static class BswMCanSMIcomIndication implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMCanSMIcomIndication)){
								return false
							}
							this.target == (object as BswMCanSMIcomIndication).target
						}
					
						def BswMCanSMIcomIndicationSwitchError getBswMCanSMIcomIndicationSwitchError(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMCanSMIcomIndicationSwitchError"].getBswMCanSMIcomIndicationSwitchErrorValue()
						}
						
						def void setBswMCanSMIcomIndicationSwitchError(BswMCanSMIcomIndicationSwitchError value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMCanSMIcomIndicationSwitchError"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMCanSMIcomIndicationSwitchError"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						enum BswMCanSMIcomIndicationSwitchError {
							BSWM_ICOM_SWITCH_E_FAILED, 
							BSWM_ICOM_SWITCH_E_OK
						}
						
						def BswMCanSMIcomIndicationSwitchError getBswMCanSMIcomIndicationSwitchErrorValue(GParameterValue parameterValue){
							val castedParameterValue = parameterValue as EcucTextualParamValue
							switch (castedParameterValue.value){
								case "BSWM_ICOM_SWITCH_E_FAILED" : BswMCanSMIcomIndicationSwitchError.BSWM_ICOM_SWITCH_E_FAILED
								case "BSWM_ICOM_SWITCH_E_OK" : BswMCanSMIcomIndicationSwitchError.BSWM_ICOM_SWITCH_E_OK
							}
						}
						
						def void setBswMCanSMIcomIndicationSwitchErrorValue(GParameterValue parameterValue, BswMCanSMIcomIndicationSwitchError value){
							parameterValue.setValue(value)
						}
						
						
						def org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel getBswMCanSMChannelRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel), "BswMCanSMChannelRef")
						}
						
						def void setBswMCanSMChannelRef(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMCanSMChannelRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMCanSMIndication implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMCanSMIndication)){
								return false
							}
							this.target == (object as BswMCanSMIndication).target
						}
					
						
						def org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel getBswMCanSMChannelRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel), "BswMCanSMChannelRef")
						}
						
						def void setBswMCanSMChannelRef(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMCanSMChannelRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMComMIndication implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMComMIndication)){
								return false
							}
							this.target == (object as BswMComMIndication).target
						}
					
						
						def org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel getBswMComMChannelRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel), "BswMComMChannelRef")
						}
						
						def void setBswMComMChannelRef(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMComMChannelRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMComMPncRequest implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMComMPncRequest)){
								return false
							}
							this.target == (object as BswMComMPncRequest).target
						}
					
						
						def org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMPnc getBswMComMPncRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMPnc), "BswMComMPncRef")
						}
						
						def void setBswMComMPncRef(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMPnc object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMComMPncRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMDcmComModeRequest implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMDcmComModeRequest)){
								return false
							}
							this.target == (object as BswMDcmComModeRequest).target
						}
					
						
						def org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel getBswMDcmComMChannelRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel), "BswMDcmComMChannelRef")
						}
						
						def void setBswMDcmComMChannelRef(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMDcmComMChannelRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMEcuMIndication implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMEcuMIndication)){
								return false
							}
							this.target == (object as BswMEcuMIndication).target
						}
					
						
						
						
					}
					
					static class BswMEcuMRUNRequestIndication implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMEcuMRUNRequestIndication)){
								return false
							}
							this.target == (object as BswMEcuMRUNRequestIndication).target
						}
					
						def BswMEcuMRUNRequestProtocolPort getBswMEcuMRUNRequestProtocolPort(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMEcuMRUNRequestProtocolPort"].getBswMEcuMRUNRequestProtocolPortValue()
						}
						
						def void setBswMEcuMRUNRequestProtocolPort(BswMEcuMRUNRequestProtocolPort value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMEcuMRUNRequestProtocolPort"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMEcuMRUNRequestProtocolPort"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						enum BswMEcuMRUNRequestProtocolPort {
							BSWM_ECUM_STATE_APP_POST_RUN, 
							BSWM_ECUM_STATE_APP_RUN
						}
						
						def BswMEcuMRUNRequestProtocolPort getBswMEcuMRUNRequestProtocolPortValue(GParameterValue parameterValue){
							val castedParameterValue = parameterValue as EcucTextualParamValue
							switch (castedParameterValue.value){
								case "BSWM_ECUM_STATE_APP_POST_RUN" : BswMEcuMRUNRequestProtocolPort.BSWM_ECUM_STATE_APP_POST_RUN
								case "BSWM_ECUM_STATE_APP_RUN" : BswMEcuMRUNRequestProtocolPort.BSWM_ECUM_STATE_APP_RUN
							}
						}
						
						def void setBswMEcuMRUNRequestProtocolPortValue(GParameterValue parameterValue, BswMEcuMRUNRequestProtocolPort value){
							parameterValue.setValue(value)
						}
						
						
						
						
					}
					
					static class BswMEcuMWakeupSource implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMEcuMWakeupSource)){
								return false
							}
							this.target == (object as BswMEcuMWakeupSource).target
						}
					
						
						def org.artop.ecuc.autosar430.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource getBswMEcuMWakeupSrcRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource), "BswMEcuMWakeupSrcRef")
						}
						
						def void setBswMEcuMWakeupSrcRef(org.artop.ecuc.autosar430.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMEcuMWakeupSrcRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMEthIfPortGroupLinkStateChg implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMEthIfPortGroupLinkStateChg)){
								return false
							}
							this.target == (object as BswMEthIfPortGroupLinkStateChg).target
						}
					
						
						def org.artop.ecuc.autosar430.accessors.EthIf.EthIfConfigSet.EthIfSwitchPortGroup getBswMEthIfSwitchPortGroupRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EthIf.EthIfConfigSet.EthIfSwitchPortGroup), "BswMEthIfSwitchPortGroupRef")
						}
						
						def void setBswMEthIfSwitchPortGroupRef(org.artop.ecuc.autosar430.accessors.EthIf.EthIfConfigSet.EthIfSwitchPortGroup object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMEthIfSwitchPortGroupRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMEthSMIndication implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMEthSMIndication)){
								return false
							}
							this.target == (object as BswMEthSMIndication).target
						}
					
						
						def org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel getBswMEthSMChannelRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel), "BswMEthSMChannelRef")
						}
						
						def void setBswMEthSMChannelRef(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMEthSMChannelRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMFrSMIndication implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMFrSMIndication)){
								return false
							}
							this.target == (object as BswMFrSMIndication).target
						}
					
						
						def org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel getBswMFrSMChannelRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel), "BswMFrSMChannelRef")
						}
						
						def void setBswMFrSMChannelRef(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMFrSMChannelRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMGenericRequest implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMGenericRequest)){
								return false
							}
							this.target == (object as BswMGenericRequest).target
						}
					
						def BigInteger getBswMModeRequesterId(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMModeRequesterId"].getBigIntegerValue()
						}
						
						def void setBswMModeRequesterId(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMModeRequesterId"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMModeRequesterId"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						def BigInteger getBswMRequestedModeMax(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMRequestedModeMax"].getBigIntegerValue()
						}
						
						def void setBswMRequestedModeMax(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMRequestedModeMax"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMRequestedModeMax"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						
						
						
					}
					
					static class BswMJ1939DcmBroadcastStatus implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMJ1939DcmBroadcastStatus)){
								return false
							}
							this.target == (object as BswMJ1939DcmBroadcastStatus).target
						}
					
						
						def org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel getBswMJ1939DcmChannelRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel), "BswMJ1939DcmChannelRef")
						}
						
						def void setBswMJ1939DcmChannelRef(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMJ1939DcmChannelRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMJ1939NmIndication implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMJ1939NmIndication)){
								return false
							}
							this.target == (object as BswMJ1939NmIndication).target
						}
					
						
						def org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel getBswMJ1939NmChannelRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel), "BswMJ1939NmChannelRef")
						}
						
						def void setBswMJ1939NmChannelRef(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMJ1939NmChannelRef"], object.getTarget())
							}
						}
						
						def org.artop.ecuc.autosar430.accessors.J1939Nm.J1939NmConfigSet.J1939NmNode getBswMJ1939NmNodeRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.J1939Nm.J1939NmConfigSet.J1939NmNode), "BswMJ1939NmNodeRef")
						}
						
						def void setBswMJ1939NmNodeRef(org.artop.ecuc.autosar430.accessors.J1939Nm.J1939NmConfigSet.J1939NmNode object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMJ1939NmNodeRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMLinSMIndication implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMLinSMIndication)){
								return false
							}
							this.target == (object as BswMLinSMIndication).target
						}
					
						
						def org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel getBswMLinSMChannelRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel), "BswMLinSMChannelRef")
						}
						
						def void setBswMLinSMChannelRef(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMLinSMChannelRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMLinScheduleIndication implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMLinScheduleIndication)){
								return false
							}
							this.target == (object as BswMLinScheduleIndication).target
						}
					
						
						def org.artop.ecuc.autosar430.accessors.LinSM.LinSMConfigSet.LinSMChannel.LinSMSchedule getBswMLinScheduleRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.LinSM.LinSMConfigSet.LinSMChannel.LinSMSchedule), "BswMLinScheduleRef")
						}
						
						def void setBswMLinScheduleRef(org.artop.ecuc.autosar430.accessors.LinSM.LinSMConfigSet.LinSMChannel.LinSMSchedule object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMLinScheduleRef"], object.getTarget())
							}
						}
						
						def org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel getBswMLinSMChannelRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel), "BswMLinSMChannelRef")
						}
						
						def void setBswMLinSMChannelRef(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMLinSMChannelRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMLinTpModeRequest implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMLinTpModeRequest)){
								return false
							}
							this.target == (object as BswMLinTpModeRequest).target
						}
					
						
						def org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel getBswMLinTpChannelRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel), "BswMLinTpChannelRef")
						}
						
						def void setBswMLinTpChannelRef(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMLinTpChannelRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMNmIfCarWakeUpIndication implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMNmIfCarWakeUpIndication)){
								return false
							}
							this.target == (object as BswMNmIfCarWakeUpIndication).target
						}
					
						
						def org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel getBswMNmChannelRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel), "BswMNmChannelRef")
						}
						
						def void setBswMNmChannelRef(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMNmChannelRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMNvMJobModeIndication implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMNvMJobModeIndication)){
								return false
							}
							this.target == (object as BswMNvMJobModeIndication).target
						}
					
						def BswMNvmService getBswMNvmService(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMNvmService"].getBswMNvmServiceValue()
						}
						
						def void setBswMNvmService(BswMNvmService value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMNvmService"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMNvmService"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						enum BswMNvmService {
							NvmFirstInitAll, 
							NvmReadAll, 
							NvmValidateAll, 
							NvmWriteAll
						}
						
						def BswMNvmService getBswMNvmServiceValue(GParameterValue parameterValue){
							val castedParameterValue = parameterValue as EcucTextualParamValue
							switch (castedParameterValue.value){
								case "NvmFirstInitAll" : BswMNvmService.NvmFirstInitAll
								case "NvmReadAll" : BswMNvmService.NvmReadAll
								case "NvmValidateAll" : BswMNvmService.NvmValidateAll
								case "NvmWriteAll" : BswMNvmService.NvmWriteAll
							}
						}
						
						def void setBswMNvmServiceValue(GParameterValue parameterValue, BswMNvmService value){
							parameterValue.setValue(value)
						}
						
						
						
						
					}
					
					static class BswMNvMRequest implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMNvMRequest)){
								return false
							}
							this.target == (object as BswMNvMRequest).target
						}
					
						
						def org.artop.ecuc.autosar430.accessors.NvM.NvMBlockDescriptor getBswMNvMBlockRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.NvM.NvMBlockDescriptor), "BswMNvMBlockRef")
						}
						
						def void setBswMNvMBlockRef(org.artop.ecuc.autosar430.accessors.NvM.NvMBlockDescriptor object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMNvMBlockRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMSdClientServiceCurrentState implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMSdClientServiceCurrentState)){
								return false
							}
							this.target == (object as BswMSdClientServiceCurrentState).target
						}
					
						
						def org.artop.ecuc.autosar430.accessors.Sd.SdConfig.SdInstance.SdClientService getBswMSdClientMethodsRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Sd.SdConfig.SdInstance.SdClientService), "BswMSdClientMethodsRef")
						}
						
						def void setBswMSdClientMethodsRef(org.artop.ecuc.autosar430.accessors.Sd.SdConfig.SdInstance.SdClientService object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMSdClientMethodsRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMSdConsumedEventGroupCurrentState implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMSdConsumedEventGroupCurrentState)){
								return false
							}
							this.target == (object as BswMSdConsumedEventGroupCurrentState).target
						}
					
						
						def org.artop.ecuc.autosar430.accessors.Sd.SdConfig.SdInstance.SdClientService.SdConsumedEventGroup getBswMSdConsumedEventGroupRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Sd.SdConfig.SdInstance.SdClientService.SdConsumedEventGroup), "BswMSdConsumedEventGroupRef")
						}
						
						def void setBswMSdConsumedEventGroupRef(org.artop.ecuc.autosar430.accessors.Sd.SdConfig.SdInstance.SdClientService.SdConsumedEventGroup object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMSdConsumedEventGroupRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMSdEventHandlerCurrentState implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMSdEventHandlerCurrentState)){
								return false
							}
							this.target == (object as BswMSdEventHandlerCurrentState).target
						}
					
						
						def org.artop.ecuc.autosar430.accessors.Sd.SdConfig.SdInstance.SdServerService.SdEventHandler getBswMSdEventHandlerRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Sd.SdConfig.SdInstance.SdServerService.SdEventHandler), "BswMSdEventHandlerRef")
						}
						
						def void setBswMSdEventHandlerRef(org.artop.ecuc.autosar430.accessors.Sd.SdConfig.SdInstance.SdServerService.SdEventHandler object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMSdEventHandlerRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMSwcModeNotification implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMSwcModeNotification)){
								return false
							}
							this.target == (object as BswMSwcModeNotification).target
						}
					
						
						
						
						
					}
					
					static class BswMSwcModeRequest implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMSwcModeRequest)){
								return false
							}
							this.target == (object as BswMSwcModeRequest).target
						}
					
						
						
						
						
					}
					
					static class BswMTimer implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMTimer)){
								return false
							}
							this.target == (object as BswMTimer).target
						}
					
						
						
						
					}
					
				}
				
			}
			
			static class BswMRule implements IWrapper<GContainer> {
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
			        if (!(object instanceof BswMRule)){
						return false
					}
					this.target == (object as BswMRule).target
				}
			
				def Boolean getBswMNestedExecutionOnly(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMNestedExecutionOnly"].getBooleanValue()
				}
				
				def void setBswMNestedExecutionOnly(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMNestedExecutionOnly"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMNestedExecutionOnly"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				def BswMRuleInitState getBswMRuleInitState(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMRuleInitState"].getBswMRuleInitStateValue()
				}
				
				def void setBswMRuleInitState(BswMRuleInitState value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMRuleInitState"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMRuleInitState"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum BswMRuleInitState {
					BSWM_FALSE, 
					BSWM_TRUE, 
					BSWM_UNDEFINED
				}
				
				def BswMRuleInitState getBswMRuleInitStateValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "BSWM_FALSE" : BswMRuleInitState.BSWM_FALSE
						case "BSWM_TRUE" : BswMRuleInitState.BSWM_TRUE
						case "BSWM_UNDEFINED" : BswMRuleInitState.BSWM_UNDEFINED
					}
				}
				
				def void setBswMRuleInitStateValue(GParameterValue parameterValue, BswMRuleInitState value){
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMArbitration.BswMLogicalExpression getBswMRuleExpressionRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMArbitration.BswMLogicalExpression), "BswMRuleExpressionRef")
				}
				
				def void setBswMRuleExpressionRef(org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMArbitration.BswMLogicalExpression object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMRuleExpressionRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMModeControl.BswMActionList getBswMRuleFalseActionList(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMModeControl.BswMActionList), "BswMRuleFalseActionList")
				}
				
				def void setBswMRuleFalseActionList(org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMModeControl.BswMActionList object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMRuleFalseActionList"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMModeControl.BswMActionList getBswMRuleTrueActionList(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMModeControl.BswMActionList), "BswMRuleTrueActionList")
				}
				
				def void setBswMRuleTrueActionList(org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMModeControl.BswMActionList object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMRuleTrueActionList"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class BswMDataTypeMappingSets implements IWrapper<GContainer> {
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
		        if (!(object instanceof BswMDataTypeMappingSets)){
					return false
				}
				this.target == (object as BswMDataTypeMappingSets).target
			}
		
			
			
			
			
		}
		
		static class BswMModeControl implements IWrapper<GContainer> {
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
		        if (!(object instanceof BswMModeControl)){
					return false
				}
				this.target == (object as BswMModeControl).target
			}
		
			
			
			def List<BswMAction> getBswMActions(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "BswMAction")
					}
				}
				return new BasicWrappingEList<BswMAction, GContainer>(filteredContainers, typeof(BswMAction), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMModeControl.BswMAction bswMAction) {
						bswMAction.target?.gSetDefinition(containerValue.getContainerDefinition("BswMAction"))
						super.delegateAdd(bswMAction)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMModeControl.BswMAction bswMAction) {
						bswMAction.target?.gSetDefinition(containerValue.getContainerDefinition("BswMAction"))
						super.delegateAdd(index, bswMAction)
					}
				}
			}
			
			def List<BswMActionList> getBswMActionLists(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "BswMActionList")
					}
				}
				return new BasicWrappingEList<BswMActionList, GContainer>(filteredContainers, typeof(BswMActionList), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMModeControl.BswMActionList bswMActionList) {
						bswMActionList.target?.gSetDefinition(containerValue.getContainerDefinition("BswMActionList"))
						super.delegateAdd(bswMActionList)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMModeControl.BswMActionList bswMActionList) {
						bswMActionList.target?.gSetDefinition(containerValue.getContainerDefinition("BswMActionList"))
						super.delegateAdd(index, bswMActionList)
					}
				}
			}
			
			def List<BswMRteModeRequestPort> getBswMRteModeRequestPorts(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "BswMRteModeRequestPort")
					}
				}
				return new BasicWrappingEList<BswMRteModeRequestPort, GContainer>(filteredContainers, typeof(BswMRteModeRequestPort), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMModeControl.BswMRteModeRequestPort bswMRteModeRequestPort) {
						bswMRteModeRequestPort.target?.gSetDefinition(containerValue.getContainerDefinition("BswMRteModeRequestPort"))
						super.delegateAdd(bswMRteModeRequestPort)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMModeControl.BswMRteModeRequestPort bswMRteModeRequestPort) {
						bswMRteModeRequestPort.target?.gSetDefinition(containerValue.getContainerDefinition("BswMRteModeRequestPort"))
						super.delegateAdd(index, bswMRteModeRequestPort)
					}
				}
			}
			
			def List<BswMSwitchPort> getBswMSwitchPorts(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "BswMSwitchPort")
					}
				}
				return new BasicWrappingEList<BswMSwitchPort, GContainer>(filteredContainers, typeof(BswMSwitchPort), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMModeControl.BswMSwitchPort bswMSwitchPort) {
						bswMSwitchPort.target?.gSetDefinition(containerValue.getContainerDefinition("BswMSwitchPort"))
						super.delegateAdd(bswMSwitchPort)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMModeControl.BswMSwitchPort bswMSwitchPort) {
						bswMSwitchPort.target?.gSetDefinition(containerValue.getContainerDefinition("BswMSwitchPort"))
						super.delegateAdd(index, bswMSwitchPort)
					}
				}
			}
			
			
			static class BswMAction implements IWrapper<GContainer> {
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
			        if (!(object instanceof BswMAction)){
						return false
					}
					this.target == (object as BswMAction).target
				}
			
				
				
				def BswMAvailableActions getBswMAvailableActions(){
					containerValue.getByType(typeof(BswMAvailableActions))
				}
				
				def void setBswMAvailableActions(BswMAvailableActions bswMAvailableActions){
					val GContainer subContainer = bswMAvailableActions.getTarget()
					containerValue.setContainer(subContainer, "BswMAvailableActions")
				}
				
				
				static class BswMAvailableActions implements IWrapper<GContainer> {
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
				        if (!(object instanceof BswMAvailableActions)){
							return false
						}
						this.target == (object as BswMAvailableActions).target
					}
				
					def BswMClearEventRequest getBswMClearEventRequest(){
						containerValue.getByType(typeof(BswMClearEventRequest))
					}
					
					def void setBswMClearEventRequest(BswMClearEventRequest bswMClearEventRequest){
						val GContainer subContainer = bswMClearEventRequest.getTarget()
						containerValue.setContainer(subContainer, "BswMClearEventRequest")
					}
					def BswMComMAllowCom getBswMComMAllowCom(){
						containerValue.getByType(typeof(BswMComMAllowCom))
					}
					
					def void setBswMComMAllowCom(BswMComMAllowCom bswMComMAllowCom){
						val GContainer subContainer = bswMComMAllowCom.getTarget()
						containerValue.setContainer(subContainer, "BswMComMAllowCom")
					}
					def BswMComMModeLimitation getBswMComMModeLimitation(){
						containerValue.getByType(typeof(BswMComMModeLimitation))
					}
					
					def void setBswMComMModeLimitation(BswMComMModeLimitation bswMComMModeLimitation){
						val GContainer subContainer = bswMComMModeLimitation.getTarget()
						containerValue.setContainer(subContainer, "BswMComMModeLimitation")
					}
					def BswMComMModeSwitch getBswMComMModeSwitch(){
						containerValue.getByType(typeof(BswMComMModeSwitch))
					}
					
					def void setBswMComMModeSwitch(BswMComMModeSwitch bswMComMModeSwitch){
						val GContainer subContainer = bswMComMModeSwitch.getTarget()
						containerValue.setContainer(subContainer, "BswMComMModeSwitch")
					}
					def BswMCoreHaltMode getBswMCoreHaltMode(){
						containerValue.getByType(typeof(BswMCoreHaltMode))
					}
					
					def void setBswMCoreHaltMode(BswMCoreHaltMode bswMCoreHaltMode){
						val GContainer subContainer = bswMCoreHaltMode.getTarget()
						containerValue.setContainer(subContainer, "BswMCoreHaltMode")
					}
					def BswMDeadlineMonitoringControl getBswMDeadlineMonitoringControl(){
						containerValue.getByType(typeof(BswMDeadlineMonitoringControl))
					}
					
					def void setBswMDeadlineMonitoringControl(BswMDeadlineMonitoringControl bswMDeadlineMonitoringControl){
						val GContainer subContainer = bswMDeadlineMonitoringControl.getTarget()
						containerValue.setContainer(subContainer, "BswMDeadlineMonitoringControl")
					}
					def BswMEcuMDriverInitListBswM getBswMEcuMDriverInitListBswM(){
						containerValue.getByType(typeof(BswMEcuMDriverInitListBswM))
					}
					
					def void setBswMEcuMDriverInitListBswM(BswMEcuMDriverInitListBswM bswMEcuMDriverInitListBswM){
						val GContainer subContainer = bswMEcuMDriverInitListBswM.getTarget()
						containerValue.setContainer(subContainer, "BswMEcuMDriverInitListBswM")
					}
					def BswMEcuMGoDown getBswMEcuMGoDown(){
						containerValue.getByType(typeof(BswMEcuMGoDown))
					}
					
					def void setBswMEcuMGoDown(BswMEcuMGoDown bswMEcuMGoDown){
						val GContainer subContainer = bswMEcuMGoDown.getTarget()
						containerValue.setContainer(subContainer, "BswMEcuMGoDown")
					}
					def BswMEcuMGoHalt getBswMEcuMGoHalt(){
						containerValue.getByType(typeof(BswMEcuMGoHalt))
					}
					
					def void setBswMEcuMGoHalt(BswMEcuMGoHalt bswMEcuMGoHalt){
						val GContainer subContainer = bswMEcuMGoHalt.getTarget()
						containerValue.setContainer(subContainer, "BswMEcuMGoHalt")
					}
					def BswMEcuMGoPoll getBswMEcuMGoPoll(){
						containerValue.getByType(typeof(BswMEcuMGoPoll))
					}
					
					def void setBswMEcuMGoPoll(BswMEcuMGoPoll bswMEcuMGoPoll){
						val GContainer subContainer = bswMEcuMGoPoll.getTarget()
						containerValue.setContainer(subContainer, "BswMEcuMGoPoll")
					}
					def BswMEcuMSelectShutdownTarget getBswMEcuMSelectShutdownTarget(){
						containerValue.getByType(typeof(BswMEcuMSelectShutdownTarget))
					}
					
					def void setBswMEcuMSelectShutdownTarget(BswMEcuMSelectShutdownTarget bswMEcuMSelectShutdownTarget){
						val GContainer subContainer = bswMEcuMSelectShutdownTarget.getTarget()
						containerValue.setContainer(subContainer, "BswMEcuMSelectShutdownTarget")
					}
					def BswMEcuMStateSwitch getBswMEcuMStateSwitch(){
						containerValue.getByType(typeof(BswMEcuMStateSwitch))
					}
					
					def void setBswMEcuMStateSwitch(BswMEcuMStateSwitch bswMEcuMStateSwitch){
						val GContainer subContainer = bswMEcuMStateSwitch.getTarget()
						containerValue.setContainer(subContainer, "BswMEcuMStateSwitch")
					}
					def BswMEthIfSwitchPortGroupRequestMode getBswMEthIfSwitchPortGroupRequestMode(){
						containerValue.getByType(typeof(BswMEthIfSwitchPortGroupRequestMode))
					}
					
					def void setBswMEthIfSwitchPortGroupRequestMode(BswMEthIfSwitchPortGroupRequestMode bswMEthIfSwitchPortGroupRequestMode){
						val GContainer subContainer = bswMEthIfSwitchPortGroupRequestMode.getTarget()
						containerValue.setContainer(subContainer, "BswMEthIfSwitchPortGroupRequestMode")
					}
					def BswMFrSMAllSlots getBswMFrSMAllSlots(){
						containerValue.getByType(typeof(BswMFrSMAllSlots))
					}
					
					def void setBswMFrSMAllSlots(BswMFrSMAllSlots bswMFrSMAllSlots){
						val GContainer subContainer = bswMFrSMAllSlots.getTarget()
						containerValue.setContainer(subContainer, "BswMFrSMAllSlots")
					}
					def BswMJ1939DcmStateSwitch getBswMJ1939DcmStateSwitch(){
						containerValue.getByType(typeof(BswMJ1939DcmStateSwitch))
					}
					
					def void setBswMJ1939DcmStateSwitch(BswMJ1939DcmStateSwitch bswMJ1939DcmStateSwitch){
						val GContainer subContainer = bswMJ1939DcmStateSwitch.getTarget()
						containerValue.setContainer(subContainer, "BswMJ1939DcmStateSwitch")
					}
					def BswMJ1939RmStateSwitch getBswMJ1939RmStateSwitch(){
						containerValue.getByType(typeof(BswMJ1939RmStateSwitch))
					}
					
					def void setBswMJ1939RmStateSwitch(BswMJ1939RmStateSwitch bswMJ1939RmStateSwitch){
						val GContainer subContainer = bswMJ1939RmStateSwitch.getTarget()
						containerValue.setContainer(subContainer, "BswMJ1939RmStateSwitch")
					}
					def BswMLinScheduleSwitch getBswMLinScheduleSwitch(){
						containerValue.getByType(typeof(BswMLinScheduleSwitch))
					}
					
					def void setBswMLinScheduleSwitch(BswMLinScheduleSwitch bswMLinScheduleSwitch){
						val GContainer subContainer = bswMLinScheduleSwitch.getTarget()
						containerValue.setContainer(subContainer, "BswMLinScheduleSwitch")
					}
					def BswMNMControl getBswMNMControl(){
						containerValue.getByType(typeof(BswMNMControl))
					}
					
					def void setBswMNMControl(BswMNMControl bswMNMControl){
						val GContainer subContainer = bswMNMControl.getTarget()
						containerValue.setContainer(subContainer, "BswMNMControl")
					}
					def BswMPduGroupSwitch getBswMPduGroupSwitch(){
						containerValue.getByType(typeof(BswMPduGroupSwitch))
					}
					
					def void setBswMPduGroupSwitch(BswMPduGroupSwitch bswMPduGroupSwitch){
						val GContainer subContainer = bswMPduGroupSwitch.getTarget()
						containerValue.setContainer(subContainer, "BswMPduGroupSwitch")
					}
					def BswMPduRouterControl getBswMPduRouterControl(){
						containerValue.getByType(typeof(BswMPduRouterControl))
					}
					
					def void setBswMPduRouterControl(BswMPduRouterControl bswMPduRouterControl){
						val GContainer subContainer = bswMPduRouterControl.getTarget()
						containerValue.setContainer(subContainer, "BswMPduRouterControl")
					}
					def BswMRteModeRequest getBswMRteModeRequest(){
						containerValue.getByType(typeof(BswMRteModeRequest))
					}
					
					def void setBswMRteModeRequest(BswMRteModeRequest bswMRteModeRequest){
						val GContainer subContainer = bswMRteModeRequest.getTarget()
						containerValue.setContainer(subContainer, "BswMRteModeRequest")
					}
					def BswMRteSwitch getBswMRteSwitch(){
						containerValue.getByType(typeof(BswMRteSwitch))
					}
					
					def void setBswMRteSwitch(BswMRteSwitch bswMRteSwitch){
						val GContainer subContainer = bswMRteSwitch.getTarget()
						containerValue.setContainer(subContainer, "BswMRteSwitch")
					}
					def BswMSchMSwitch getBswMSchMSwitch(){
						containerValue.getByType(typeof(BswMSchMSwitch))
					}
					
					def void setBswMSchMSwitch(BswMSchMSwitch bswMSchMSwitch){
						val GContainer subContainer = bswMSchMSwitch.getTarget()
						containerValue.setContainer(subContainer, "BswMSchMSwitch")
					}
					def BswMSdClientServiceModeRequest getBswMSdClientServiceModeRequest(){
						containerValue.getByType(typeof(BswMSdClientServiceModeRequest))
					}
					
					def void setBswMSdClientServiceModeRequest(BswMSdClientServiceModeRequest bswMSdClientServiceModeRequest){
						val GContainer subContainer = bswMSdClientServiceModeRequest.getTarget()
						containerValue.setContainer(subContainer, "BswMSdClientServiceModeRequest")
					}
					def BswMSdConsumedEventGroupModeRequest getBswMSdConsumedEventGroupModeRequest(){
						containerValue.getByType(typeof(BswMSdConsumedEventGroupModeRequest))
					}
					
					def void setBswMSdConsumedEventGroupModeRequest(BswMSdConsumedEventGroupModeRequest bswMSdConsumedEventGroupModeRequest){
						val GContainer subContainer = bswMSdConsumedEventGroupModeRequest.getTarget()
						containerValue.setContainer(subContainer, "BswMSdConsumedEventGroupModeRequest")
					}
					def BswMSdServerServiceModeRequest getBswMSdServerServiceModeRequest(){
						containerValue.getByType(typeof(BswMSdServerServiceModeRequest))
					}
					
					def void setBswMSdServerServiceModeRequest(BswMSdServerServiceModeRequest bswMSdServerServiceModeRequest){
						val GContainer subContainer = bswMSdServerServiceModeRequest.getTarget()
						containerValue.setContainer(subContainer, "BswMSdServerServiceModeRequest")
					}
					def BswMSwitchIPduMode getBswMSwitchIPduMode(){
						containerValue.getByType(typeof(BswMSwitchIPduMode))
					}
					
					def void setBswMSwitchIPduMode(BswMSwitchIPduMode bswMSwitchIPduMode){
						val GContainer subContainer = bswMSwitchIPduMode.getTarget()
						containerValue.setContainer(subContainer, "BswMSwitchIPduMode")
					}
					def BswMTimerControl getBswMTimerControl(){
						containerValue.getByType(typeof(BswMTimerControl))
					}
					
					def void setBswMTimerControl(BswMTimerControl bswMTimerControl){
						val GContainer subContainer = bswMTimerControl.getTarget()
						containerValue.setContainer(subContainer, "BswMTimerControl")
					}
					def BswMTriggerIPduSend getBswMTriggerIPduSend(){
						containerValue.getByType(typeof(BswMTriggerIPduSend))
					}
					
					def void setBswMTriggerIPduSend(BswMTriggerIPduSend bswMTriggerIPduSend){
						val GContainer subContainer = bswMTriggerIPduSend.getTarget()
						containerValue.setContainer(subContainer, "BswMTriggerIPduSend")
					}
					def BswMUserCallout getBswMUserCallout(){
						containerValue.getByType(typeof(BswMUserCallout))
					}
					
					def void setBswMUserCallout(BswMUserCallout bswMUserCallout){
						val GContainer subContainer = bswMUserCallout.getTarget()
						containerValue.setContainer(subContainer, "BswMUserCallout")
					}
					
					static class BswMClearEventRequest implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMClearEventRequest)){
								return false
							}
							this.target == (object as BswMClearEventRequest).target
						}
					
						
						def org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMArbitration.BswMEventRequestPort getBswMClearEventRequestPortRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMArbitration.BswMEventRequestPort), "BswMClearEventRequestPortRef")
						}
						
						def void setBswMClearEventRequestPortRef(org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMArbitration.BswMEventRequestPort object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMClearEventRequestPortRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMComMAllowCom implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMComMAllowCom)){
								return false
							}
							this.target == (object as BswMComMAllowCom).target
						}
					
						def Boolean getBswMComAllowed(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMComAllowed"].getBooleanValue()
						}
						
						def void setBswMComAllowed(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMComAllowed"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMComAllowed"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(getBooleanParameterValueValue(value, true))
						}
						
						
						def org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel getBswMComMAllowChannelRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel), "BswMComMAllowChannelRef")
						}
						
						def void setBswMComMAllowChannelRef(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMComMAllowChannelRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMComMModeLimitation implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMComMModeLimitation)){
								return false
							}
							this.target == (object as BswMComMModeLimitation).target
						}
					
						def Boolean getBswMComMLimitMode(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMComMLimitMode"].getBooleanValue()
						}
						
						def void setBswMComMLimitMode(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMComMLimitMode"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMComMLimitMode"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(getBooleanParameterValueValue(value, true))
						}
						
						
						def org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel getBswMComMLimitChannelRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel), "BswMComMLimitChannelRef")
						}
						
						def void setBswMComMLimitChannelRef(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMComMLimitChannelRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMComMModeSwitch implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMComMModeSwitch)){
								return false
							}
							this.target == (object as BswMComMModeSwitch).target
						}
					
						def BswMComMRequestedMode getBswMComMRequestedMode(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMComMRequestedMode"].getBswMComMRequestedModeValue()
						}
						
						def void setBswMComMRequestedMode(BswMComMRequestedMode value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMComMRequestedMode"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMComMRequestedMode"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						enum BswMComMRequestedMode {
							BSWM_COMM_FULL_COMMUNICATION, 
							BSWM_COMM_NO_COMMUNICATION
						}
						
						def BswMComMRequestedMode getBswMComMRequestedModeValue(GParameterValue parameterValue){
							val castedParameterValue = parameterValue as EcucTextualParamValue
							switch (castedParameterValue.value){
								case "BSWM_COMM_FULL_COMMUNICATION" : BswMComMRequestedMode.BSWM_COMM_FULL_COMMUNICATION
								case "BSWM_COMM_NO_COMMUNICATION" : BswMComMRequestedMode.BSWM_COMM_NO_COMMUNICATION
							}
						}
						
						def void setBswMComMRequestedModeValue(GParameterValue parameterValue, BswMComMRequestedMode value){
							parameterValue.setValue(value)
						}
						
						
						def org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMUser getBswMComMUserRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMUser), "BswMComMUserRef")
						}
						
						def void setBswMComMUserRef(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMUser object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMComMUserRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMCoreHaltMode implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMCoreHaltMode)){
								return false
							}
							this.target == (object as BswMCoreHaltMode).target
						}
					
						def String getBswMCoreHaltActivationState(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMCoreHaltActivationState"].getStringValue()
						}
						
						def void setBswMCoreHaltActivationState(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMCoreHaltActivationState"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMCoreHaltActivationState"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						
						def org.artop.ecuc.autosar430.accessors.EcuC.EcucHardware.EcucCoreDefinition getBswMTargetCoreRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EcuC.EcucHardware.EcucCoreDefinition), "BswMTargetCoreRef")
						}
						
						def void setBswMTargetCoreRef(org.artop.ecuc.autosar430.accessors.EcuC.EcucHardware.EcucCoreDefinition object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMTargetCoreRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMDeadlineMonitoringControl implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMDeadlineMonitoringControl)){
								return false
							}
							this.target == (object as BswMDeadlineMonitoringControl).target
						}
					
						
						def List<org.artop.ecuc.autosar430.accessors.Com.ComConfig.ComIPduGroup> getBswMDisabledDMPduGroupRefs(){
							val containerDef = containerValue.gGetDefinition
							val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
								containerDef.gGetReferences.findFirst[gGetShortName == "BswMDisabledDMPduGroupRef"] else null
						
							val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
								override protected accept(GReferenceValue item) {
									return accept(item, typeof(GConfigReference), "BswMDisabledDMPduGroupRef")
								}
							}
						
							return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar430.accessors.Com.ComConfig.ComIPduGroup>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar430.accessors.Com.ComConfig.ComIPduGroup)) {
								override protected wrap(org.artop.ecuc.autosar430.accessors.Com.ComConfig.ComIPduGroup object) throws CoreException {
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
											return new org.artop.ecuc.autosar430.accessors.Com.ComConfig.ComIPduGroup(referenceValueValue as GContainer)
										}
									}
								}
							}
						}
						
						def List<org.artop.ecuc.autosar430.accessors.Com.ComConfig.ComIPduGroup> getBswMEnabledDMPduGroupRefs(){
							val containerDef = containerValue.gGetDefinition
							val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
								containerDef.gGetReferences.findFirst[gGetShortName == "BswMEnabledDMPduGroupRef"] else null
						
							val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
								override protected accept(GReferenceValue item) {
									return accept(item, typeof(GConfigReference), "BswMEnabledDMPduGroupRef")
								}
							}
						
							return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar430.accessors.Com.ComConfig.ComIPduGroup>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar430.accessors.Com.ComConfig.ComIPduGroup)) {
								override protected wrap(org.artop.ecuc.autosar430.accessors.Com.ComConfig.ComIPduGroup object) throws CoreException {
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
											return new org.artop.ecuc.autosar430.accessors.Com.ComConfig.ComIPduGroup(referenceValueValue as GContainer)
										}
									}
								}
							}
						}
						
						
						
					}
					
					static class BswMEcuMDriverInitListBswM implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMEcuMDriverInitListBswM)){
								return false
							}
							this.target == (object as BswMEcuMDriverInitListBswM).target
						}
					
						
						def org.artop.ecuc.autosar430.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMDriverInitListBswM getBswMEcuMDriverInitListBswMRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMDriverInitListBswM), "BswMEcuMDriverInitListBswMRef")
						}
						
						def void setBswMEcuMDriverInitListBswMRef(org.artop.ecuc.autosar430.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMDriverInitListBswM object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMEcuMDriverInitListBswMRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMEcuMGoDown implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMEcuMGoDown)){
								return false
							}
							this.target == (object as BswMEcuMGoDown).target
						}
					
						
						def org.artop.ecuc.autosar430.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMFlexUserConfig getBswMEcuMUserIdRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMFlexUserConfig), "BswMEcuMUserIdRef")
						}
						
						def void setBswMEcuMUserIdRef(org.artop.ecuc.autosar430.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMFlexUserConfig object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMEcuMUserIdRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMEcuMGoHalt implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMEcuMGoHalt)){
								return false
							}
							this.target == (object as BswMEcuMGoHalt).target
						}
					
						
						
						
					}
					
					static class BswMEcuMGoPoll implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMEcuMGoPoll)){
								return false
							}
							this.target == (object as BswMEcuMGoPoll).target
						}
					
						
						
						
					}
					
					static class BswMEcuMSelectShutdownTarget implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMEcuMSelectShutdownTarget)){
								return false
							}
							this.target == (object as BswMEcuMSelectShutdownTarget).target
						}
					
						def BswMEcuMShutdownTarget getBswMEcuMShutdownTarget(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMEcuMShutdownTarget"].getBswMEcuMShutdownTargetValue()
						}
						
						def void setBswMEcuMShutdownTarget(BswMEcuMShutdownTarget value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMEcuMShutdownTarget"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMEcuMShutdownTarget"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						enum BswMEcuMShutdownTarget {
							BSWM_ECUM_SHUTDOWN_TARGET_OFF, 
							BSWM_ECUM_SHUTDOWN_TARGET_RESET, 
							BSWM_ECUM_SHUTDOWN_TARGET_SLEEP
						}
						
						def BswMEcuMShutdownTarget getBswMEcuMShutdownTargetValue(GParameterValue parameterValue){
							val castedParameterValue = parameterValue as EcucTextualParamValue
							switch (castedParameterValue.value){
								case "BSWM_ECUM_SHUTDOWN_TARGET_OFF" : BswMEcuMShutdownTarget.BSWM_ECUM_SHUTDOWN_TARGET_OFF
								case "BSWM_ECUM_SHUTDOWN_TARGET_RESET" : BswMEcuMShutdownTarget.BSWM_ECUM_SHUTDOWN_TARGET_RESET
								case "BSWM_ECUM_SHUTDOWN_TARGET_SLEEP" : BswMEcuMShutdownTarget.BSWM_ECUM_SHUTDOWN_TARGET_SLEEP
							}
						}
						
						def void setBswMEcuMShutdownTargetValue(GParameterValue parameterValue, BswMEcuMShutdownTarget value){
							parameterValue.setValue(value)
						}
						
						
						def org.artop.ecuc.autosar430.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMResetMode getBswMEcuMResetModeRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMResetMode), "BswMEcuMResetModeRef")
						}
						
						def void setBswMEcuMResetModeRef(org.artop.ecuc.autosar430.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMResetMode object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMEcuMResetModeRef"], object.getTarget())
							}
						}
						
						def org.artop.ecuc.autosar430.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMSleepMode getBswMEcuMSleepModeRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMSleepMode), "BswMEcuMSleepModeRef")
						}
						
						def void setBswMEcuMSleepModeRef(org.artop.ecuc.autosar430.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMSleepMode object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMEcuMSleepModeRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMEcuMStateSwitch implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMEcuMStateSwitch)){
								return false
							}
							this.target == (object as BswMEcuMStateSwitch).target
						}
					
						def BswMEcuMState getBswMEcuMState(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMEcuMState"].getBswMEcuMStateValue()
						}
						
						def void setBswMEcuMState(BswMEcuMState value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMEcuMState"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMEcuMState"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						enum BswMEcuMState {
							BSWM_ECUM_STATE_APP_POST_RUN, 
							BSWM_ECUM_STATE_APP_RUN, 
							BSWM_ECUM_STATE_SHUTDOWN, 
							BSWM_ECUM_STATE_SLEEP, 
							BSWM_ECUM_STATE_STARTUP
						}
						
						def BswMEcuMState getBswMEcuMStateValue(GParameterValue parameterValue){
							val castedParameterValue = parameterValue as EcucTextualParamValue
							switch (castedParameterValue.value){
								case "BSWM_ECUM_STATE_APP_POST_RUN" : BswMEcuMState.BSWM_ECUM_STATE_APP_POST_RUN
								case "BSWM_ECUM_STATE_APP_RUN" : BswMEcuMState.BSWM_ECUM_STATE_APP_RUN
								case "BSWM_ECUM_STATE_SHUTDOWN" : BswMEcuMState.BSWM_ECUM_STATE_SHUTDOWN
								case "BSWM_ECUM_STATE_SLEEP" : BswMEcuMState.BSWM_ECUM_STATE_SLEEP
								case "BSWM_ECUM_STATE_STARTUP" : BswMEcuMState.BSWM_ECUM_STATE_STARTUP
							}
						}
						
						def void setBswMEcuMStateValue(GParameterValue parameterValue, BswMEcuMState value){
							parameterValue.setValue(value)
						}
						
						
						
						
					}
					
					static class BswMEthIfSwitchPortGroupRequestMode implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMEthIfSwitchPortGroupRequestMode)){
								return false
							}
							this.target == (object as BswMEthIfSwitchPortGroupRequestMode).target
						}
					
						def BswMEthTrcvMode getBswMEthTrcvMode(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMEthTrcvMode"].getBswMEthTrcvModeValue()
						}
						
						def void setBswMEthTrcvMode(BswMEthTrcvMode value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMEthTrcvMode"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMEthTrcvMode"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						enum BswMEthTrcvMode {
							BSWM_ETHTRCV_MODE_ACTIVE, 
							BSWM_ETHTRCV_MODE_DOWN
						}
						
						def BswMEthTrcvMode getBswMEthTrcvModeValue(GParameterValue parameterValue){
							val castedParameterValue = parameterValue as EcucTextualParamValue
							switch (castedParameterValue.value){
								case "BSWM_ETHTRCV_MODE_ACTIVE" : BswMEthTrcvMode.BSWM_ETHTRCV_MODE_ACTIVE
								case "BSWM_ETHTRCV_MODE_DOWN" : BswMEthTrcvMode.BSWM_ETHTRCV_MODE_DOWN
							}
						}
						
						def void setBswMEthTrcvModeValue(GParameterValue parameterValue, BswMEthTrcvMode value){
							parameterValue.setValue(value)
						}
						
						
						def org.artop.ecuc.autosar430.accessors.EthIf.EthIfConfigSet.EthIfSwitchPortGroup getBswMEthIfSwitchPortGroupRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EthIf.EthIfConfigSet.EthIfSwitchPortGroup), "BswMEthIfSwitchPortGroupRef")
						}
						
						def void setBswMEthIfSwitchPortGroupRef(org.artop.ecuc.autosar430.accessors.EthIf.EthIfConfigSet.EthIfSwitchPortGroup object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMEthIfSwitchPortGroupRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMFrSMAllSlots implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMFrSMAllSlots)){
								return false
							}
							this.target == (object as BswMFrSMAllSlots).target
						}
					
						
						def org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel getBswMFrSMAllSlotsNetworkHandleRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel), "BswMFrSMAllSlotsNetworkHandleRef")
						}
						
						def void setBswMFrSMAllSlotsNetworkHandleRef(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMFrSMAllSlotsNetworkHandleRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMJ1939DcmStateSwitch implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMJ1939DcmStateSwitch)){
								return false
							}
							this.target == (object as BswMJ1939DcmStateSwitch).target
						}
					
						def BswMJ1939DcmRequestedState getBswMJ1939DcmRequestedState(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMJ1939DcmRequestedState"].getBswMJ1939DcmRequestedStateValue()
						}
						
						def void setBswMJ1939DcmRequestedState(BswMJ1939DcmRequestedState value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMJ1939DcmRequestedState"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMJ1939DcmRequestedState"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						enum BswMJ1939DcmRequestedState {
							BSWM_J1939DCM_STATE_OFFLINE, 
							BSWM_J1939DCM_STATE_ONLINE
						}
						
						def BswMJ1939DcmRequestedState getBswMJ1939DcmRequestedStateValue(GParameterValue parameterValue){
							val castedParameterValue = parameterValue as EcucTextualParamValue
							switch (castedParameterValue.value){
								case "BSWM_J1939DCM_STATE_OFFLINE" : BswMJ1939DcmRequestedState.BSWM_J1939DCM_STATE_OFFLINE
								case "BSWM_J1939DCM_STATE_ONLINE" : BswMJ1939DcmRequestedState.BSWM_J1939DCM_STATE_ONLINE
							}
						}
						
						def void setBswMJ1939DcmRequestedStateValue(GParameterValue parameterValue, BswMJ1939DcmRequestedState value){
							parameterValue.setValue(value)
						}
						
						
						def org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel getBswMJ1939DcmChannelRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel), "BswMJ1939DcmChannelRef")
						}
						
						def void setBswMJ1939DcmChannelRef(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMJ1939DcmChannelRef"], object.getTarget())
							}
						}
						
						def org.artop.ecuc.autosar430.accessors.J1939Nm.J1939NmConfigSet.J1939NmNode getBswMJ1939DcmNodeRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.J1939Nm.J1939NmConfigSet.J1939NmNode), "BswMJ1939DcmNodeRef")
						}
						
						def void setBswMJ1939DcmNodeRef(org.artop.ecuc.autosar430.accessors.J1939Nm.J1939NmConfigSet.J1939NmNode object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMJ1939DcmNodeRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMJ1939RmStateSwitch implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMJ1939RmStateSwitch)){
								return false
							}
							this.target == (object as BswMJ1939RmStateSwitch).target
						}
					
						def BswMJ1939RmRequestedState getBswMJ1939RmRequestedState(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMJ1939RmRequestedState"].getBswMJ1939RmRequestedStateValue()
						}
						
						def void setBswMJ1939RmRequestedState(BswMJ1939RmRequestedState value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMJ1939RmRequestedState"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMJ1939RmRequestedState"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						enum BswMJ1939RmRequestedState {
							BSWM_J1939RM_STATE_OFFLINE, 
							BSWM_J1939RM_STATE_ONLINE
						}
						
						def BswMJ1939RmRequestedState getBswMJ1939RmRequestedStateValue(GParameterValue parameterValue){
							val castedParameterValue = parameterValue as EcucTextualParamValue
							switch (castedParameterValue.value){
								case "BSWM_J1939RM_STATE_OFFLINE" : BswMJ1939RmRequestedState.BSWM_J1939RM_STATE_OFFLINE
								case "BSWM_J1939RM_STATE_ONLINE" : BswMJ1939RmRequestedState.BSWM_J1939RM_STATE_ONLINE
							}
						}
						
						def void setBswMJ1939RmRequestedStateValue(GParameterValue parameterValue, BswMJ1939RmRequestedState value){
							parameterValue.setValue(value)
						}
						
						
						def org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel getBswMJ1939RmChannelRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel), "BswMJ1939RmChannelRef")
						}
						
						def void setBswMJ1939RmChannelRef(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMJ1939RmChannelRef"], object.getTarget())
							}
						}
						
						def org.artop.ecuc.autosar430.accessors.J1939Nm.J1939NmConfigSet.J1939NmNode getBswMJ1939RmNodeRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.J1939Nm.J1939NmConfigSet.J1939NmNode), "BswMJ1939RmNodeRef")
						}
						
						def void setBswMJ1939RmNodeRef(org.artop.ecuc.autosar430.accessors.J1939Nm.J1939NmConfigSet.J1939NmNode object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMJ1939RmNodeRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMLinScheduleSwitch implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMLinScheduleSwitch)){
								return false
							}
							this.target == (object as BswMLinScheduleSwitch).target
						}
					
						
						def org.artop.ecuc.autosar430.accessors.LinSM.LinSMConfigSet.LinSMChannel.LinSMSchedule getBswMLinScheduleRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.LinSM.LinSMConfigSet.LinSMChannel.LinSMSchedule), "BswMLinScheduleRef")
						}
						
						def void setBswMLinScheduleRef(org.artop.ecuc.autosar430.accessors.LinSM.LinSMConfigSet.LinSMChannel.LinSMSchedule object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMLinScheduleRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMNMControl implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMNMControl)){
								return false
							}
							this.target == (object as BswMNMControl).target
						}
					
						def BswMNMAction getBswMNMAction(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMNMAction"].getBswMNMActionValue()
						}
						
						def void setBswMNMAction(BswMNMAction value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMNMAction"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMNMAction"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						enum BswMNMAction {
							BSWM_NM_DISABLE, 
							BSWM_NM_ENABLE
						}
						
						def BswMNMAction getBswMNMActionValue(GParameterValue parameterValue){
							val castedParameterValue = parameterValue as EcucTextualParamValue
							switch (castedParameterValue.value){
								case "BSWM_NM_DISABLE" : BswMNMAction.BSWM_NM_DISABLE
								case "BSWM_NM_ENABLE" : BswMNMAction.BSWM_NM_ENABLE
							}
						}
						
						def void setBswMNMActionValue(GParameterValue parameterValue, BswMNMAction value){
							parameterValue.setValue(value)
						}
						
						
						def org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel getBswMComMNetworkHandleRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel), "BswMComMNetworkHandleRef")
						}
						
						def void setBswMComMNetworkHandleRef(org.artop.ecuc.autosar430.accessors.ComM.ComMConfigSet.ComMChannel object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMComMNetworkHandleRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMPduGroupSwitch implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMPduGroupSwitch)){
								return false
							}
							this.target == (object as BswMPduGroupSwitch).target
						}
					
						def Boolean getBswMPduGroupSwitchReinit(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMPduGroupSwitchReinit"].getBooleanValue()
						}
						
						def void setBswMPduGroupSwitchReinit(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMPduGroupSwitchReinit"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMPduGroupSwitchReinit"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(getBooleanParameterValueValue(value, true))
						}
						
						
						def List<org.artop.ecuc.autosar430.accessors.Com.ComConfig.ComIPduGroup> getBswMDisabledPduGroupRefs(){
							val containerDef = containerValue.gGetDefinition
							val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
								containerDef.gGetReferences.findFirst[gGetShortName == "BswMDisabledPduGroupRef"] else null
						
							val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
								override protected accept(GReferenceValue item) {
									return accept(item, typeof(GConfigReference), "BswMDisabledPduGroupRef")
								}
							}
						
							return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar430.accessors.Com.ComConfig.ComIPduGroup>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar430.accessors.Com.ComConfig.ComIPduGroup)) {
								override protected wrap(org.artop.ecuc.autosar430.accessors.Com.ComConfig.ComIPduGroup object) throws CoreException {
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
											return new org.artop.ecuc.autosar430.accessors.Com.ComConfig.ComIPduGroup(referenceValueValue as GContainer)
										}
									}
								}
							}
						}
						
						def List<org.artop.ecuc.autosar430.accessors.Com.ComConfig.ComIPduGroup> getBswMEnabledPduGroupRefs(){
							val containerDef = containerValue.gGetDefinition
							val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
								containerDef.gGetReferences.findFirst[gGetShortName == "BswMEnabledPduGroupRef"] else null
						
							val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
								override protected accept(GReferenceValue item) {
									return accept(item, typeof(GConfigReference), "BswMEnabledPduGroupRef")
								}
							}
						
							return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar430.accessors.Com.ComConfig.ComIPduGroup>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar430.accessors.Com.ComConfig.ComIPduGroup)) {
								override protected wrap(org.artop.ecuc.autosar430.accessors.Com.ComConfig.ComIPduGroup object) throws CoreException {
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
											return new org.artop.ecuc.autosar430.accessors.Com.ComConfig.ComIPduGroup(referenceValueValue as GContainer)
										}
									}
								}
							}
						}
						
						
						
					}
					
					static class BswMPduRouterControl implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMPduRouterControl)){
								return false
							}
							this.target == (object as BswMPduRouterControl).target
						}
					
						def BswMPduRouterAction getBswMPduRouterAction(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMPduRouterAction"].getBswMPduRouterActionValue()
						}
						
						def void setBswMPduRouterAction(BswMPduRouterAction value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMPduRouterAction"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMPduRouterAction"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						enum BswMPduRouterAction {
							BSWM_PDUR_DISABLE, 
							BSWM_PDUR_ENABLE
						}
						
						def BswMPduRouterAction getBswMPduRouterActionValue(GParameterValue parameterValue){
							val castedParameterValue = parameterValue as EcucTextualParamValue
							switch (castedParameterValue.value){
								case "BSWM_PDUR_DISABLE" : BswMPduRouterAction.BSWM_PDUR_DISABLE
								case "BSWM_PDUR_ENABLE" : BswMPduRouterAction.BSWM_PDUR_ENABLE
							}
						}
						
						def void setBswMPduRouterActionValue(GParameterValue parameterValue, BswMPduRouterAction value){
							parameterValue.setValue(value)
						}
						
						def Boolean getBswMPduRouterDisableInitBuffer(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMPduRouterDisableInitBuffer"].getBooleanValue()
						}
						
						def void setBswMPduRouterDisableInitBuffer(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMPduRouterDisableInitBuffer"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMPduRouterDisableInitBuffer"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(getBooleanParameterValueValue(value, true))
						}
						
						
						def List<org.artop.ecuc.autosar430.accessors.PduR.PduRRoutingPaths.PduRRoutingPathGroup> getBswMPduRoutingPathGroupRefs(){
							val containerDef = containerValue.gGetDefinition
							val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
								containerDef.gGetReferences.findFirst[gGetShortName == "BswMPduRoutingPathGroupRef"] else null
						
							val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
								override protected accept(GReferenceValue item) {
									return accept(item, typeof(GConfigReference), "BswMPduRoutingPathGroupRef")
								}
							}
						
							return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar430.accessors.PduR.PduRRoutingPaths.PduRRoutingPathGroup>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar430.accessors.PduR.PduRRoutingPaths.PduRRoutingPathGroup)) {
								override protected wrap(org.artop.ecuc.autosar430.accessors.PduR.PduRRoutingPaths.PduRRoutingPathGroup object) throws CoreException {
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
											return new org.artop.ecuc.autosar430.accessors.PduR.PduRRoutingPaths.PduRRoutingPathGroup(referenceValueValue as GContainer)
										}
									}
								}
							}
						}
						
						
						
					}
					
					static class BswMRteModeRequest implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMRteModeRequest)){
								return false
							}
							this.target == (object as BswMRteModeRequest).target
						}
					
						
						
						def org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMModeControl.BswMRteModeRequestPort getBswMRteModeRequestPortRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMModeControl.BswMRteModeRequestPort), "BswMRteModeRequestPortRef")
						}
						
						def void setBswMRteModeRequestPortRef(org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMModeControl.BswMRteModeRequestPort object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMRteModeRequestPortRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMRteSwitch implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMRteSwitch)){
								return false
							}
							this.target == (object as BswMRteSwitch).target
						}
					
						
						def org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMModeControl.BswMSwitchPort getBswMRteSwitchPortRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMModeControl.BswMSwitchPort), "BswMRteSwitchPortRef")
						}
						
						def void setBswMRteSwitchPortRef(org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMModeControl.BswMSwitchPort object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMRteSwitchPortRef"], object.getTarget())
							}
						}
						
						
						
						
					}
					
					static class BswMSchMSwitch implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMSchMSwitch)){
								return false
							}
							this.target == (object as BswMSchMSwitch).target
						}
					
						
						
						
						
						
					}
					
					static class BswMSdClientServiceModeRequest implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMSdClientServiceModeRequest)){
								return false
							}
							this.target == (object as BswMSdClientServiceModeRequest).target
						}
					
						def BswMSdClientServiceState getBswMSdClientServiceState(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMSdClientServiceState"].getBswMSdClientServiceStateValue()
						}
						
						def void setBswMSdClientServiceState(BswMSdClientServiceState value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMSdClientServiceState"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMSdClientServiceState"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						enum BswMSdClientServiceState {
							BSWM_SD_CLIENT_SERVICE_RELEASED, 
							BSWM_SD_CLIENT_SERVICE_REQUESTED
						}
						
						def BswMSdClientServiceState getBswMSdClientServiceStateValue(GParameterValue parameterValue){
							val castedParameterValue = parameterValue as EcucTextualParamValue
							switch (castedParameterValue.value){
								case "BSWM_SD_CLIENT_SERVICE_RELEASED" : BswMSdClientServiceState.BSWM_SD_CLIENT_SERVICE_RELEASED
								case "BSWM_SD_CLIENT_SERVICE_REQUESTED" : BswMSdClientServiceState.BSWM_SD_CLIENT_SERVICE_REQUESTED
							}
						}
						
						def void setBswMSdClientServiceStateValue(GParameterValue parameterValue, BswMSdClientServiceState value){
							parameterValue.setValue(value)
						}
						
						
						def org.artop.ecuc.autosar430.accessors.Sd.SdConfig.SdInstance.SdClientService getBswMSdClientMethodsRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Sd.SdConfig.SdInstance.SdClientService), "BswMSdClientMethodsRef")
						}
						
						def void setBswMSdClientMethodsRef(org.artop.ecuc.autosar430.accessors.Sd.SdConfig.SdInstance.SdClientService object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMSdClientMethodsRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMSdConsumedEventGroupModeRequest implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMSdConsumedEventGroupModeRequest)){
								return false
							}
							this.target == (object as BswMSdConsumedEventGroupModeRequest).target
						}
					
						def BswMSdConsumedEventGroupState getBswMSdConsumedEventGroupState(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMSdConsumedEventGroupState"].getBswMSdConsumedEventGroupStateValue()
						}
						
						def void setBswMSdConsumedEventGroupState(BswMSdConsumedEventGroupState value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMSdConsumedEventGroupState"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMSdConsumedEventGroupState"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						enum BswMSdConsumedEventGroupState {
							BSWM_SD_CONSUMED_EVENTGROUP_RELEASED, 
							BSWM_SD_CONSUMED_EVENTGROUP_REQUESTED
						}
						
						def BswMSdConsumedEventGroupState getBswMSdConsumedEventGroupStateValue(GParameterValue parameterValue){
							val castedParameterValue = parameterValue as EcucTextualParamValue
							switch (castedParameterValue.value){
								case "BSWM_SD_CONSUMED_EVENTGROUP_RELEASED" : BswMSdConsumedEventGroupState.BSWM_SD_CONSUMED_EVENTGROUP_RELEASED
								case "BSWM_SD_CONSUMED_EVENTGROUP_REQUESTED" : BswMSdConsumedEventGroupState.BSWM_SD_CONSUMED_EVENTGROUP_REQUESTED
							}
						}
						
						def void setBswMSdConsumedEventGroupStateValue(GParameterValue parameterValue, BswMSdConsumedEventGroupState value){
							parameterValue.setValue(value)
						}
						
						
						def org.artop.ecuc.autosar430.accessors.Sd.SdConfig.SdInstance.SdClientService.SdConsumedEventGroup getBswMSdConsumedEventGroupRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Sd.SdConfig.SdInstance.SdClientService.SdConsumedEventGroup), "BswMSdConsumedEventGroupRef")
						}
						
						def void setBswMSdConsumedEventGroupRef(org.artop.ecuc.autosar430.accessors.Sd.SdConfig.SdInstance.SdClientService.SdConsumedEventGroup object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMSdConsumedEventGroupRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMSdServerServiceModeRequest implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMSdServerServiceModeRequest)){
								return false
							}
							this.target == (object as BswMSdServerServiceModeRequest).target
						}
					
						def BswMSdServerServiceState getBswMSdServerServiceState(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMSdServerServiceState"].getBswMSdServerServiceStateValue()
						}
						
						def void setBswMSdServerServiceState(BswMSdServerServiceState value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMSdServerServiceState"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMSdServerServiceState"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						enum BswMSdServerServiceState {
							BSWM_SD_SERVER_SERVICE_AVAILABLE, 
							BSWM_SD_SERVER_SERVICE_DOWN
						}
						
						def BswMSdServerServiceState getBswMSdServerServiceStateValue(GParameterValue parameterValue){
							val castedParameterValue = parameterValue as EcucTextualParamValue
							switch (castedParameterValue.value){
								case "BSWM_SD_SERVER_SERVICE_AVAILABLE" : BswMSdServerServiceState.BSWM_SD_SERVER_SERVICE_AVAILABLE
								case "BSWM_SD_SERVER_SERVICE_DOWN" : BswMSdServerServiceState.BSWM_SD_SERVER_SERVICE_DOWN
							}
						}
						
						def void setBswMSdServerServiceStateValue(GParameterValue parameterValue, BswMSdServerServiceState value){
							parameterValue.setValue(value)
						}
						
						
						def org.artop.ecuc.autosar430.accessors.Sd.SdConfig.SdInstance.SdServerService getBswMSdServerMethodsRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Sd.SdConfig.SdInstance.SdServerService), "BswMSdServerMethodsRef")
						}
						
						def void setBswMSdServerMethodsRef(org.artop.ecuc.autosar430.accessors.Sd.SdConfig.SdInstance.SdServerService object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMSdServerMethodsRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMSwitchIPduMode implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMSwitchIPduMode)){
								return false
							}
							this.target == (object as BswMSwitchIPduMode).target
						}
					
						def Boolean getBswMSwitchIPduModeValue(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMSwitchIPduModeValue"].getBooleanValue()
						}
						
						def void setBswMSwitchIPduModeValue(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMSwitchIPduModeValue"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMSwitchIPduModeValue"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(getBooleanParameterValueValue(value, true))
						}
						
						
						def org.artop.ecuc.autosar430.accessors.Com.ComConfig.ComIPdu getBswMSwitchIPduModeRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Com.ComConfig.ComIPdu), "BswMSwitchIPduModeRef")
						}
						
						def void setBswMSwitchIPduModeRef(org.artop.ecuc.autosar430.accessors.Com.ComConfig.ComIPdu object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMSwitchIPduModeRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMTimerControl implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMTimerControl)){
								return false
							}
							this.target == (object as BswMTimerControl).target
						}
					
						def BswMTimerAction getBswMTimerAction(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMTimerAction"].getBswMTimerActionValue()
						}
						
						def void setBswMTimerAction(BswMTimerAction value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMTimerAction"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMTimerAction"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						enum BswMTimerAction {
							BSWM_TIMER_START, 
							BSWM_TIMER_STOP
						}
						
						def BswMTimerAction getBswMTimerActionValue(GParameterValue parameterValue){
							val castedParameterValue = parameterValue as EcucTextualParamValue
							switch (castedParameterValue.value){
								case "BSWM_TIMER_START" : BswMTimerAction.BSWM_TIMER_START
								case "BSWM_TIMER_STOP" : BswMTimerAction.BSWM_TIMER_STOP
							}
						}
						
						def void setBswMTimerActionValue(GParameterValue parameterValue, BswMTimerAction value){
							parameterValue.setValue(value)
						}
						
						def BigDecimal getBswMTimerValue(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMTimerValue"].getBigDecimalValue()
						}
						
						def void setBswMTimerValue(BigDecimal value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMTimerValue"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMTimerValue"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						
						def org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMArbitration.BswMModeRequestPort.BswMModeRequestSource.BswMTimer getBswMTimerRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMArbitration.BswMModeRequestPort.BswMModeRequestSource.BswMTimer), "BswMTimerRef")
						}
						
						def void setBswMTimerRef(org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMArbitration.BswMModeRequestPort.BswMModeRequestSource.BswMTimer object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "BswMTimerRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMTriggerIPduSend implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMTriggerIPduSend)){
								return false
							}
							this.target == (object as BswMTriggerIPduSend).target
						}
					
						
						def List<org.artop.ecuc.autosar430.accessors.Com.ComConfig.ComIPdu> getBswMTriggeredIPduRefs(){
							val containerDef = containerValue.gGetDefinition
							val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
								containerDef.gGetReferences.findFirst[gGetShortName == "BswMTriggeredIPduRef"] else null
						
							val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
								override protected accept(GReferenceValue item) {
									return accept(item, typeof(GConfigReference), "BswMTriggeredIPduRef")
								}
							}
						
							return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar430.accessors.Com.ComConfig.ComIPdu>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar430.accessors.Com.ComConfig.ComIPdu)) {
								override protected wrap(org.artop.ecuc.autosar430.accessors.Com.ComConfig.ComIPdu object) throws CoreException {
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
											return new org.artop.ecuc.autosar430.accessors.Com.ComConfig.ComIPdu(referenceValueValue as GContainer)
										}
									}
								}
							}
						}
						
						
						
					}
					
					static class BswMUserCallout implements IWrapper<GContainer> {
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
					        if (!(object instanceof BswMUserCallout)){
								return false
							}
							this.target == (object as BswMUserCallout).target
						}
					
						def String getBswMUserCalloutFunction(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMUserCalloutFunction"].getStringValue()
						}
						
						def void setBswMUserCalloutFunction(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMUserCalloutFunction"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMUserCalloutFunction"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						
						
						
					}
					
				}
				
			}
			
			static class BswMActionList implements IWrapper<GContainer> {
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
			        if (!(object instanceof BswMActionList)){
						return false
					}
					this.target == (object as BswMActionList).target
				}
			
				def BswMActionListExecution getBswMActionListExecution(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMActionListExecution"].getBswMActionListExecutionValue()
				}
				
				def void setBswMActionListExecution(BswMActionListExecution value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMActionListExecution"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMActionListExecution"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum BswMActionListExecution {
					BSWM_CONDITION, 
					BSWM_TRIGGER
				}
				
				def BswMActionListExecution getBswMActionListExecutionValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "BSWM_CONDITION" : BswMActionListExecution.BSWM_CONDITION
						case "BSWM_TRIGGER" : BswMActionListExecution.BSWM_TRIGGER
					}
				}
				
				def void setBswMActionListExecutionValue(GParameterValue parameterValue, BswMActionListExecution value){
					parameterValue.setValue(value)
				}
				
				
				
				def List<BswMActionListItem> getBswMActionListItems(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "BswMActionListItem")
						}
					}
					return new BasicWrappingEList<BswMActionListItem, GContainer>(filteredContainers, typeof(BswMActionListItem), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMModeControl.BswMActionList.BswMActionListItem bswMActionListItem) {
							bswMActionListItem.target?.gSetDefinition(containerValue.getContainerDefinition("BswMActionListItem"))
							super.delegateAdd(bswMActionListItem)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.BswM.BswMConfig.BswMModeControl.BswMActionList.BswMActionListItem bswMActionListItem) {
							bswMActionListItem.target?.gSetDefinition(containerValue.getContainerDefinition("BswMActionListItem"))
							super.delegateAdd(index, bswMActionListItem)
						}
					}
				}
				
				
				static class BswMActionListItem implements IWrapper<GContainer> {
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
				        if (!(object instanceof BswMActionListItem)){
							return false
						}
						this.target == (object as BswMActionListItem).target
					}
				
					def Boolean getBswMAbortOnFail(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMAbortOnFail"].getBooleanValue()
					}
					
					def void setBswMAbortOnFail(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMAbortOnFail"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMAbortOnFail"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def BigInteger getBswMActionListItemIndex(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMActionListItemIndex"].getBigIntegerValue()
					}
					
					def void setBswMActionListItemIndex(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMActionListItemIndex"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMActionListItemIndex"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getBswMReportFailRuntimeErrorId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMReportFailRuntimeErrorId"].getBigIntegerValue()
					}
					
					def void setBswMReportFailRuntimeErrorId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMReportFailRuntimeErrorId"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMReportFailRuntimeErrorId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					
					
					
				}
				
			}
			
			static class BswMRteModeRequestPort implements IWrapper<GContainer> {
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
			        if (!(object instanceof BswMRteModeRequestPort)){
						return false
					}
					this.target == (object as BswMRteModeRequestPort).target
				}
			
				
				
				
				
				
			}
			
			static class BswMSwitchPort implements IWrapper<GContainer> {
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
			        if (!(object instanceof BswMSwitchPort)){
						return false
					}
					this.target == (object as BswMSwitchPort).target
				}
			
				
				
				
				
			}
			
		}
		
	}
	static class BswMGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof BswMGeneral)){
				return false
			}
			this.target == (object as BswMGeneral).target
		}
	
		def Boolean getBswMCanSMEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMCanSMEnabled"].getBooleanValue()
		}
		
		def void setBswMCanSMEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMCanSMEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMCanSMEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getBswMCanSMIcomEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMCanSMIcomEnabled"].getBooleanValue()
		}
		
		def void setBswMCanSMIcomEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMCanSMIcomEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMCanSMIcomEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getBswMComMEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMComMEnabled"].getBooleanValue()
		}
		
		def void setBswMComMEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMComMEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMComMEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getBswMDcmEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMDcmEnabled"].getBooleanValue()
		}
		
		def void setBswMDcmEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMDcmEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMDcmEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getBswMDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMDevErrorDetect"].getBooleanValue()
		}
		
		def void setBswMDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getBswMEcuMEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMEcuMEnabled"].getBooleanValue()
		}
		
		def void setBswMEcuMEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMEcuMEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMEcuMEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getBswMEthSMEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMEthSMEnabled"].getBooleanValue()
		}
		
		def void setBswMEthSMEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMEthSMEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMEthSMEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getBswMFrSMEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMFrSMEnabled"].getBooleanValue()
		}
		
		def void setBswMFrSMEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMFrSMEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMFrSMEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getBswMGenericRequestEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMGenericRequestEnabled"].getBooleanValue()
		}
		
		def void setBswMGenericRequestEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMGenericRequestEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMGenericRequestEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getBswMJ1939DcmEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMJ1939DcmEnabled"].getBooleanValue()
		}
		
		def void setBswMJ1939DcmEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMJ1939DcmEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMJ1939DcmEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getBswMJ1939NmEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMJ1939NmEnabled"].getBooleanValue()
		}
		
		def void setBswMJ1939NmEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMJ1939NmEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMJ1939NmEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getBswMLinSMEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMLinSMEnabled"].getBooleanValue()
		}
		
		def void setBswMLinSMEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMLinSMEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMLinSMEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getBswMLinTPEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMLinTPEnabled"].getBooleanValue()
		}
		
		def void setBswMLinTPEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMLinTPEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMLinTPEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getBswMMainFunctionPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMMainFunctionPeriod"].getBigDecimalValue()
		}
		
		def void setBswMMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMMainFunctionPeriod"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMMainFunctionPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getBswMNvMEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMNvMEnabled"].getBooleanValue()
		}
		
		def void setBswMNvMEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMNvMEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMNvMEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getBswMSchMEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMSchMEnabled"].getBooleanValue()
		}
		
		def void setBswMSchMEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMSchMEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMSchMEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getBswMSdEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMSdEnabled"].getBooleanValue()
		}
		
		def void setBswMSdEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMSdEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMSdEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getBswMVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMVersionInfoApi"].getBooleanValue()
		}
		
		def void setBswMVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getBswMWdgMEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMWdgMEnabled"].getBooleanValue()
		}
		
		def void setBswMWdgMEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMWdgMEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "BswMWdgMEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		def BswMUserIncludeFiles getBswMUserIncludeFiles(){
			containerValue.getByType(typeof(BswMUserIncludeFiles))
		}
		
		def void setBswMUserIncludeFiles(BswMUserIncludeFiles bswMUserIncludeFiles){
			val GContainer subContainer = bswMUserIncludeFiles.getTarget()
			containerValue.setContainer(subContainer, "BswMUserIncludeFiles")
		}
		
		
		static class BswMUserIncludeFiles implements IWrapper<GContainer> {
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
		        if (!(object instanceof BswMUserIncludeFiles)){
					return false
				}
				this.target == (object as BswMUserIncludeFiles).target
			}
		
			def List<String> getBswMUserIncludeFiles(){
				val List<EcucTextualParamValue> filteredParameterValues = new AbstractFilteringEList<EcucTextualParamValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {
					override protected accept(EcucTextualParamValue item) {
						return accept(item, typeof(GConfigParameter), "BswMUserIncludeFile")
					}
				}
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == "BswMUserIncludeFile"]
					return new StringValueUnwrappingEList(filteredParameterValues, typeof(EcucTextualParamValue), typeof(String), parameterDef)
				}
			}
			
			
			
			
		}
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof BswM)){
			return false
		}
		this.target == (object as BswM).target
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
