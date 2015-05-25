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
			override protected delegateAdd(org.artop.ecuc.autosar421.accessors.BswM$BswMConfig bswMConfig) {
				bswMConfig.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("BswMConfig"))
				super.delegateAdd(bswMConfig)
			}
		
			override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.BswM$BswMConfig bswMConfig) {
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
		
		
		def org.artop.ecuc.autosar421.accessors.EcuC.EcucPartitionCollection.EcucPartition getBswMPartitionRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucPartitionCollection.EcucPartition), "BswMPartitionRef")
		}
				
		def void setBswMPartitionRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucPartitionCollection.EcucPartition object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMPartitionRef"], object.getTarget())
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
			
			
			
			def List<BswMLogicalExpression> getBswMLogicalExpressions(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "BswMLogicalExpression")
					}
				}
				return new BasicWrappingEList<BswMLogicalExpression, GContainer>(filteredContainers, typeof(BswMLogicalExpression), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.BswM$BswMConfig$BswMArbitration$BswMLogicalExpression bswMLogicalExpression) {
						bswMLogicalExpression.target?.gSetDefinition(containerValue.getContainerDefinition("BswMLogicalExpression"))
						super.delegateAdd(bswMLogicalExpression)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.BswM$BswMConfig$BswMArbitration$BswMLogicalExpression bswMLogicalExpression) {
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
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.BswM$BswMConfig$BswMArbitration$BswMModeCondition bswMModeCondition) {
						bswMModeCondition.target?.gSetDefinition(containerValue.getContainerDefinition("BswMModeCondition"))
						super.delegateAdd(bswMModeCondition)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.BswM$BswMConfig$BswMArbitration$BswMModeCondition bswMModeCondition) {
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
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.BswM$BswMConfig$BswMArbitration$BswMModeRequestPort bswMModeRequestPort) {
						bswMModeRequestPort.target?.gSetDefinition(containerValue.getContainerDefinition("BswMModeRequestPort"))
						super.delegateAdd(bswMModeRequestPort)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.BswM$BswMConfig$BswMArbitration$BswMModeRequestPort bswMModeRequestPort) {
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
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.BswM$BswMConfig$BswMArbitration$BswMRule bswMRule) {
						bswMRule.target?.gSetDefinition(containerValue.getContainerDefinition("BswMRule"))
						super.delegateAdd(bswMRule)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.BswM$BswMConfig$BswMArbitration$BswMRule bswMRule) {
						bswMRule.target?.gSetDefinition(containerValue.getContainerDefinition("BswMRule"))
						super.delegateAdd(index, bswMRule)
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
					getBswMLogicalOperatorValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMLogicalOperator"])
				}
				
				def void setBswMLogicalOperator(BswMLogicalOperator value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMLogicalOperator"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMLogicalOperator"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum BswMLogicalOperator {
					BSWM_AND, 
					BSWM_NAND, 
					BSWM_OR, 
					BSWM_XOR
				}
					
				def BswMLogicalOperator getBswMLogicalOperatorValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "BSWM_AND" : BswMLogicalOperator.BSWM_AND
						case "BSWM_NAND" : BswMLogicalOperator.BSWM_NAND
						case "BSWM_OR" : BswMLogicalOperator.BSWM_OR
						case "BSWM_XOR" : BswMLogicalOperator.BSWM_XOR
					}
				}
				
				def void setBswMLogicalOperatorValue(GParameterValue paramValue, BswMLogicalOperator value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
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
					getBswMConditionTypeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMConditionType"])
				}
				
				def void setBswMConditionType(BswMConditionType value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMConditionType"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMConditionType"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum BswMConditionType {
					BSWM_EQUALS, 
					BSWM_EQUALS_NOT
				}
					
				def BswMConditionType getBswMConditionTypeValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "BSWM_EQUALS" : BswMConditionType.BSWM_EQUALS
						case "BSWM_EQUALS_NOT" : BswMConditionType.BSWM_EQUALS_NOT
					}
				}
				
				def void setBswMConditionTypeValue(GParameterValue paramValue, BswMConditionType value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.BswM.BswMConfig.BswMArbitration.BswMModeRequestPort getBswMConditionMode(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.BswM.BswMConfig.BswMArbitration.BswMModeRequestPort), "BswMConditionMode")
				}
						
				def void setBswMConditionMode(org.artop.ecuc.autosar421.accessors.BswM.BswMConfig.BswMArbitration.BswMModeRequestPort object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMConditionMode"], object.getTarget())
					}
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
							EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMBswRequestedMode"])
						}
						
						def void setBswMBswRequestedMode(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMBswRequestedMode"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMBswRequestedMode"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
								EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMCompuConstText"])
							}
							
							def void setBswMCompuConstText(String value){
								var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMCompuConstText"]
								if (parameterValue == null) {
									val containerDef = containerValue.gGetDefinition
									if (containerDef instanceof GParamConfContainerDef) {
										parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMCompuConstText"])
										containerValue.gGetParameterValues += parameterValue
									}
								}
								EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
					getBswMRequestProcessingValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMRequestProcessing"])
				}
				
				def void setBswMRequestProcessing(BswMRequestProcessing value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMRequestProcessing"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMRequestProcessing"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum BswMRequestProcessing {
					BSWM_DEFERRED, 
					BSWM_IMMEDIATE
				}
					
				def BswMRequestProcessing getBswMRequestProcessingValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "BSWM_DEFERRED" : BswMRequestProcessing.BSWM_DEFERRED
						case "BSWM_IMMEDIATE" : BswMRequestProcessing.BSWM_IMMEDIATE
					}
				}
				
				def void setBswMRequestProcessingValue(GParameterValue paramValue, BswMRequestProcessing value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
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
						EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMBswModeInitValue"])
					}
					
					def void setBswMBswModeInitValue(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMBswModeInitValue"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMBswModeInitValue"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
							EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMCompuConstText"])
						}
						
						def void setBswMCompuConstText(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMCompuConstText"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMCompuConstText"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
					
					def BswMBswMModeRequest getBswMBswMModeRequest(){
						containerValue.getByType(typeof(BswMBswMModeRequest))
					}
					
					def void setBswMBswMModeRequest(BswMBswMModeRequest bswMBswMModeRequest){
						val GContainer subContainer = bswMBswMModeRequest.getTarget()
						containerValue.setContainer(subContainer, "BswMBswMModeRequest")
					}
					def BswMBswMModeSwitchNotification getBswMBswMModeSwitchNotification(){
						containerValue.getByType(typeof(BswMBswMModeSwitchNotification))
					}
					
					def void setBswMBswMModeSwitchNotification(BswMBswMModeSwitchNotification bswMBswMModeSwitchNotification){
						val GContainer subContainer = bswMBswMModeSwitchNotification.getTarget()
						containerValue.setContainer(subContainer, "BswMBswMModeSwitchNotification")
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
					def BswMComMInitiateReset getBswMComMInitiateReset(){
						containerValue.getByType(typeof(BswMComMInitiateReset))
					}
					
					def void setBswMComMInitiateReset(BswMComMInitiateReset bswMComMInitiateReset){
						val GContainer subContainer = bswMComMInitiateReset.getTarget()
						containerValue.setContainer(subContainer, "BswMComMInitiateReset")
					}
					def BswMComMPncRequest getBswMComMPncRequest(){
						containerValue.getByType(typeof(BswMComMPncRequest))
					}
					
					def void setBswMComMPncRequest(BswMComMPncRequest bswMComMPncRequest){
						val GContainer subContainer = bswMComMPncRequest.getTarget()
						containerValue.setContainer(subContainer, "BswMComMPncRequest")
					}
					def BswMDcmApplicationUpdatedIndication getBswMDcmApplicationUpdatedIndication(){
						containerValue.getByType(typeof(BswMDcmApplicationUpdatedIndication))
					}
					
					def void setBswMDcmApplicationUpdatedIndication(BswMDcmApplicationUpdatedIndication bswMDcmApplicationUpdatedIndication){
						val GContainer subContainer = bswMDcmApplicationUpdatedIndication.getTarget()
						containerValue.setContainer(subContainer, "BswMDcmApplicationUpdatedIndication")
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
					def BswMModeSwitchErrorEvent getBswMModeSwitchErrorEvent(){
						containerValue.getByType(typeof(BswMModeSwitchErrorEvent))
					}
					
					def void setBswMModeSwitchErrorEvent(BswMModeSwitchErrorEvent bswMModeSwitchErrorEvent){
						val GContainer subContainer = bswMModeSwitchErrorEvent.getTarget()
						containerValue.setContainer(subContainer, "BswMModeSwitchErrorEvent")
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
					def BswMPartitionRestarted getBswMPartitionRestarted(){
						containerValue.getByType(typeof(BswMPartitionRestarted))
					}
					
					def void setBswMPartitionRestarted(BswMPartitionRestarted bswMPartitionRestarted){
						val GContainer subContainer = bswMPartitionRestarted.getTarget()
						containerValue.setContainer(subContainer, "BswMPartitionRestarted")
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
					def BswMWdgMRequestPartitionReset getBswMWdgMRequestPartitionReset(){
						containerValue.getByType(typeof(BswMWdgMRequestPartitionReset))
					}
					
					def void setBswMWdgMRequestPartitionReset(BswMWdgMRequestPartitionReset bswMWdgMRequestPartitionReset){
						val GContainer subContainer = bswMWdgMRequestPartitionReset.getTarget()
						containerValue.setContainer(subContainer, "BswMWdgMRequestPartitionReset")
					}
					
					static class BswMBswMModeRequest implements IWrapper<GContainer> {
						private GContainer containerValue
						
						new(GContainer containerValue){
							this.containerValue = containerValue
						}
						
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
					        if (!(object instanceof BswMBswMModeRequest)){
								return false
							}
							this.target == (object as BswMBswMModeRequest).target
						}
						
						
						
						
						
					}
					
					static class BswMBswMModeSwitchNotification implements IWrapper<GContainer> {
						private GContainer containerValue
						
						new(GContainer containerValue){
							this.containerValue = containerValue
						}
						
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
					        if (!(object instanceof BswMBswMModeSwitchNotification)){
								return false
							}
							this.target == (object as BswMBswMModeSwitchNotification).target
						}
						
						
						
						
						
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
						
						def Boolean getBswMCanSMIcomIndicationSwitchError(){
							EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMCanSMIcomIndicationSwitchError"])
						}
						
						def void setBswMCanSMIcomIndicationSwitchError(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMCanSMIcomIndicationSwitchError"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMCanSMIcomIndicationSwitchError"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
						}
						
						
						def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel getBswMCanSMChannelRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel), "BswMCanSMChannelRef")
						}
								
						def void setBswMCanSMChannelRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMCanSMChannelRef"], object.getTarget())
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
						
						
						def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel getBswMCanSMChannelRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel), "BswMCanSMChannelRef")
						}
								
						def void setBswMCanSMChannelRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMCanSMChannelRef"], object.getTarget())
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
						
						
						def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel getBswMComMChannelRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel), "BswMComMChannelRef")
						}
								
						def void setBswMComMChannelRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMComMChannelRef"], object.getTarget())
							}
						}
						
						
						
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
						
						
						def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMPnc getBswMComMPncRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMPnc), "BswMComMPncRef")
						}
								
						def void setBswMComMPncRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMPnc object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMComMPncRef"], object.getTarget())
							}
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
						
						
						def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel getBswMDcmComMChannelRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel), "BswMDcmComMChannelRef")
						}
								
						def void setBswMDcmComMChannelRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMDcmComMChannelRef"], object.getTarget())
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
							getBswMEcuMRUNRequestProtocolPortValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMEcuMRUNRequestProtocolPort"])
						}
						
						def void setBswMEcuMRUNRequestProtocolPort(BswMEcuMRUNRequestProtocolPort value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMEcuMRUNRequestProtocolPort"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMEcuMRUNRequestProtocolPort"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						enum BswMEcuMRUNRequestProtocolPort {
							POST_RUN, 
							RUN
						}
							
						def BswMEcuMRUNRequestProtocolPort getBswMEcuMRUNRequestProtocolPortValue(GParameterValue paramValue){
							val castedParamValue = paramValue as EcucTextualParamValue
							switch (castedParamValue.value){
								case "POST_RUN" : BswMEcuMRUNRequestProtocolPort.POST_RUN
								case "RUN" : BswMEcuMRUNRequestProtocolPort.RUN
							}
						}
						
						def void setBswMEcuMRUNRequestProtocolPortValue(GParameterValue paramValue, BswMEcuMRUNRequestProtocolPort value){
							EcucValueAccessor421Util.setParameterValue(paramValue, value)
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
						
						
						def org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource getBswMEcuMWakeupSrcRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource), "BswMEcuMWakeupSrcRef")
						}
								
						def void setBswMEcuMWakeupSrcRef(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMWakeupSource object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMEcuMWakeupSrcRef"], object.getTarget())
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
						
						
						def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel getBswMEthSMChannelRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel), "BswMEthSMChannelRef")
						}
								
						def void setBswMEthSMChannelRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMEthSMChannelRef"], object.getTarget())
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
						
						
						def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel getBswMFrSMChannelRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel), "BswMFrSMChannelRef")
						}
								
						def void setBswMFrSMChannelRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMFrSMChannelRef"], object.getTarget())
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
							EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMModeRequesterId"])
						}
						
						def void setBswMModeRequesterId(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMModeRequesterId"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMModeRequesterId"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def BigInteger getBswMRequestedModeMax(){
							EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMRequestedModeMax"])
						}
						
						def void setBswMRequestedModeMax(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMRequestedModeMax"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMRequestedModeMax"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
						
						
						def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel getBswMJ1939DcmChannelRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel), "BswMJ1939DcmChannelRef")
						}
								
						def void setBswMJ1939DcmChannelRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMJ1939DcmChannelRef"], object.getTarget())
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
						
						
						def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel getBswMJ1939NmChannelRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel), "BswMJ1939NmChannelRef")
						}
								
						def void setBswMJ1939NmChannelRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMJ1939NmChannelRef"], object.getTarget())
							}
						}
						
						def org.artop.ecuc.autosar421.accessors.J1939Nm.J1939NmConfigSet.J1939NmNode getBswMJ1939NmNodeRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.J1939Nm.J1939NmConfigSet.J1939NmNode), "BswMJ1939NmNodeRef")
						}
								
						def void setBswMJ1939NmNodeRef(org.artop.ecuc.autosar421.accessors.J1939Nm.J1939NmConfigSet.J1939NmNode object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMJ1939NmNodeRef"], object.getTarget())
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
						
						
						def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel getBswMLinSMChannelRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel), "BswMLinSMChannelRef")
						}
								
						def void setBswMLinSMChannelRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMLinSMChannelRef"], object.getTarget())
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
						
						
						def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel getBswMLinSMChannelRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel), "BswMLinSMChannelRef")
						}
								
						def void setBswMLinSMChannelRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMLinSMChannelRef"], object.getTarget())
							}
						}
						
						def org.artop.ecuc.autosar421.accessors.LinSM.LinSMConfigSet.LinSMChannel.LinSMSchedule getBswMLinScheduleRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.LinSM.LinSMConfigSet.LinSMChannel.LinSMSchedule), "BswMLinScheduleRef")
						}
								
						def void setBswMLinScheduleRef(org.artop.ecuc.autosar421.accessors.LinSM.LinSMConfigSet.LinSMChannel.LinSMSchedule object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMLinScheduleRef"], object.getTarget())
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
						
						
						def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel getBswMLinTpChannelRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel), "BswMLinTpChannelRef")
						}
								
						def void setBswMLinTpChannelRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMLinTpChannelRef"], object.getTarget())
							}
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
						
						
						def org.artop.ecuc.autosar421.accessors.BswM.BswMConfig.BswMModeControl.BswMSwitchPort getBswMRteSwitchPortRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.BswM.BswMConfig.BswMModeControl.BswMSwitchPort), "BswMRteSwitchPortRef")
						}
								
						def void setBswMRteSwitchPortRef(org.artop.ecuc.autosar421.accessors.BswM.BswMConfig.BswMModeControl.BswMSwitchPort object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMRteSwitchPortRef"], object.getTarget())
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
							getBswMNvmServiceValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMNvmService"])
						}
						
						def void setBswMNvmService(BswMNvmService value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMNvmService"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMNvmService"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						enum BswMNvmService {
							NvmReadAll, 
							NvmWriteAll
						}
							
						def BswMNvmService getBswMNvmServiceValue(GParameterValue paramValue){
							val castedParamValue = paramValue as EcucTextualParamValue
							switch (castedParamValue.value){
								case "NvmReadAll" : BswMNvmService.NvmReadAll
								case "NvmWriteAll" : BswMNvmService.NvmWriteAll
							}
						}
						
						def void setBswMNvmServiceValue(GParameterValue paramValue, BswMNvmService value){
							EcucValueAccessor421Util.setParameterValue(paramValue, value)
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
						
						
						def org.artop.ecuc.autosar421.accessors.NvM.NvMBlockDescriptor getBswMNvMBlockRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.NvM.NvMBlockDescriptor), "BswMNvMBlockRef")
						}
								
						def void setBswMNvMBlockRef(org.artop.ecuc.autosar421.accessors.NvM.NvMBlockDescriptor object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMNvMBlockRef"], object.getTarget())
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
						
						
						def org.artop.ecuc.autosar421.accessors.Sd.SdConfig.SdInstance.SdClientService getBswMSdClientMethodsRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Sd.SdConfig.SdInstance.SdClientService), "BswMSdClientMethodsRef")
						}
								
						def void setBswMSdClientMethodsRef(org.artop.ecuc.autosar421.accessors.Sd.SdConfig.SdInstance.SdClientService object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMSdClientMethodsRef"], object.getTarget())
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
						
						
						def org.artop.ecuc.autosar421.accessors.Sd.SdConfig.SdInstance.SdClientService.SdConsumedEventGroup getBswMSdConsumedEventGroupRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Sd.SdConfig.SdInstance.SdClientService.SdConsumedEventGroup), "BswMSdConsumedEventGroupRef")
						}
								
						def void setBswMSdConsumedEventGroupRef(org.artop.ecuc.autosar421.accessors.Sd.SdConfig.SdInstance.SdClientService.SdConsumedEventGroup object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMSdConsumedEventGroupRef"], object.getTarget())
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
						
						
						def org.artop.ecuc.autosar421.accessors.Sd.SdConfig.SdInstance.SdServerService.SdEventHandler getBswMSdEventHandlerRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Sd.SdConfig.SdInstance.SdServerService.SdEventHandler), "BswMSdEventHandlerRef")
						}
								
						def void setBswMSdEventHandlerRef(org.artop.ecuc.autosar421.accessors.Sd.SdConfig.SdInstance.SdServerService.SdEventHandler object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMSdEventHandlerRef"], object.getTarget())
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
						
						
						def org.artop.ecuc.autosar421.accessors.EcuC.EcucPartitionCollection.EcucPartition getBswMWdgMRequestPartitionResetRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucPartitionCollection.EcucPartition), "BswMWdgMRequestPartitionResetRef")
						}
								
						def void setBswMWdgMRequestPartitionResetRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucPartitionCollection.EcucPartition object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMWdgMRequestPartitionResetRef"], object.getTarget())
							}
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
					EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMNestedExecutionOnly"])
				}
				
				def void setBswMNestedExecutionOnly(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMNestedExecutionOnly"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMNestedExecutionOnly"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
				}
				
				def BswMRuleInitState getBswMRuleInitState(){
					getBswMRuleInitStateValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMRuleInitState"])
				}
				
				def void setBswMRuleInitState(BswMRuleInitState value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMRuleInitState"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMRuleInitState"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum BswMRuleInitState {
					BSWM_FALSE, 
					BSWM_TRUE, 
					BSWM_UNDEFINED
				}
					
				def BswMRuleInitState getBswMRuleInitStateValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "BSWM_FALSE" : BswMRuleInitState.BSWM_FALSE
						case "BSWM_TRUE" : BswMRuleInitState.BSWM_TRUE
						case "BSWM_UNDEFINED" : BswMRuleInitState.BSWM_UNDEFINED
					}
				}
				
				def void setBswMRuleInitStateValue(GParameterValue paramValue, BswMRuleInitState value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.BswM.BswMConfig.BswMArbitration.BswMLogicalExpression getBswMRuleExpressionRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.BswM.BswMConfig.BswMArbitration.BswMLogicalExpression), "BswMRuleExpressionRef")
				}
						
				def void setBswMRuleExpressionRef(org.artop.ecuc.autosar421.accessors.BswM.BswMConfig.BswMArbitration.BswMLogicalExpression object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMRuleExpressionRef"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar421.accessors.BswM.BswMConfig.BswMModeControl.BswMActionList getBswMRuleFalseActionList(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.BswM.BswMConfig.BswMModeControl.BswMActionList), "BswMRuleFalseActionList")
				}
						
				def void setBswMRuleFalseActionList(org.artop.ecuc.autosar421.accessors.BswM.BswMConfig.BswMModeControl.BswMActionList object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMRuleFalseActionList"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar421.accessors.BswM.BswMConfig.BswMModeControl.BswMActionList getBswMRuleTrueActionList(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.BswM.BswMConfig.BswMModeControl.BswMActionList), "BswMRuleTrueActionList")
				}
						
				def void setBswMRuleTrueActionList(org.artop.ecuc.autosar421.accessors.BswM.BswMConfig.BswMModeControl.BswMActionList object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMRuleTrueActionList"], object.getTarget())
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
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.BswM$BswMConfig$BswMModeControl$BswMAction bswMAction) {
						bswMAction.target?.gSetDefinition(containerValue.getContainerDefinition("BswMAction"))
						super.delegateAdd(bswMAction)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.BswM$BswMConfig$BswMModeControl$BswMAction bswMAction) {
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
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.BswM$BswMConfig$BswMModeControl$BswMActionList bswMActionList) {
						bswMActionList.target?.gSetDefinition(containerValue.getContainerDefinition("BswMActionList"))
						super.delegateAdd(bswMActionList)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.BswM$BswMConfig$BswMModeControl$BswMActionList bswMActionList) {
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
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.BswM$BswMConfig$BswMModeControl$BswMRteModeRequestPort bswMRteModeRequestPort) {
						bswMRteModeRequestPort.target?.gSetDefinition(containerValue.getContainerDefinition("BswMRteModeRequestPort"))
						super.delegateAdd(bswMRteModeRequestPort)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.BswM$BswMConfig$BswMModeControl$BswMRteModeRequestPort bswMRteModeRequestPort) {
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
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.BswM$BswMConfig$BswMModeControl$BswMSwitchPort bswMSwitchPort) {
						bswMSwitchPort.target?.gSetDefinition(containerValue.getContainerDefinition("BswMSwitchPort"))
						super.delegateAdd(bswMSwitchPort)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.BswM$BswMConfig$BswMModeControl$BswMSwitchPort bswMSwitchPort) {
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
					def BswMRequestRemoteMode getBswMRequestRemoteMode(){
						containerValue.getByType(typeof(BswMRequestRemoteMode))
					}
					
					def void setBswMRequestRemoteMode(BswMRequestRemoteMode bswMRequestRemoteMode){
						val GContainer subContainer = bswMRequestRemoteMode.getTarget()
						containerValue.setContainer(subContainer, "BswMRequestRemoteMode")
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
					def BswMTriggerIPduSend getBswMTriggerIPduSend(){
						containerValue.getByType(typeof(BswMTriggerIPduSend))
					}
					
					def void setBswMTriggerIPduSend(BswMTriggerIPduSend bswMTriggerIPduSend){
						val GContainer subContainer = bswMTriggerIPduSend.getTarget()
						containerValue.setContainer(subContainer, "BswMTriggerIPduSend")
					}
					def BswMTriggerSlaveRTEStop getBswMTriggerSlaveRTEStop(){
						containerValue.getByType(typeof(BswMTriggerSlaveRTEStop))
					}
					
					def void setBswMTriggerSlaveRTEStop(BswMTriggerSlaveRTEStop bswMTriggerSlaveRTEStop){
						val GContainer subContainer = bswMTriggerSlaveRTEStop.getTarget()
						containerValue.setContainer(subContainer, "BswMTriggerSlaveRTEStop")
					}
					def BswMTriggerStartUpPhase2 getBswMTriggerStartUpPhase2(){
						containerValue.getByType(typeof(BswMTriggerStartUpPhase2))
					}
					
					def void setBswMTriggerStartUpPhase2(BswMTriggerStartUpPhase2 bswMTriggerStartUpPhase2){
						val GContainer subContainer = bswMTriggerStartUpPhase2.getTarget()
						containerValue.setContainer(subContainer, "BswMTriggerStartUpPhase2")
					}
					def BswMUserCallout getBswMUserCallout(){
						containerValue.getByType(typeof(BswMUserCallout))
					}
					
					def void setBswMUserCallout(BswMUserCallout bswMUserCallout){
						val GContainer subContainer = bswMUserCallout.getTarget()
						containerValue.setContainer(subContainer, "BswMUserCallout")
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
							EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMComAllowed"])
						}
						
						def void setBswMComAllowed(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMComAllowed"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMComAllowed"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
						}
						
						
						def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel getBswMComMAllowChannelRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel), "BswMComMAllowChannelRef")
						}
								
						def void setBswMComMAllowChannelRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMComMAllowChannelRef"], object.getTarget())
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
							EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMComMLimitMode"])
						}
						
						def void setBswMComMLimitMode(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMComMLimitMode"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMComMLimitMode"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
						}
						
						
						def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel getBswMComMLimitChannelRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel), "BswMComMLimitChannelRef")
						}
								
						def void setBswMComMLimitChannelRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMComMLimitChannelRef"], object.getTarget())
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
							getBswMComMRequestedModeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMComMRequestedMode"])
						}
						
						def void setBswMComMRequestedMode(BswMComMRequestedMode value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMComMRequestedMode"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMComMRequestedMode"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						enum BswMComMRequestedMode {
							BSWM_FULL_COM, 
							BSWM_NO_COM
						}
							
						def BswMComMRequestedMode getBswMComMRequestedModeValue(GParameterValue paramValue){
							val castedParamValue = paramValue as EcucTextualParamValue
							switch (castedParamValue.value){
								case "BSWM_FULL_COM" : BswMComMRequestedMode.BSWM_FULL_COM
								case "BSWM_NO_COM" : BswMComMRequestedMode.BSWM_NO_COM
							}
						}
						
						def void setBswMComMRequestedModeValue(GParameterValue paramValue, BswMComMRequestedMode value){
							EcucValueAccessor421Util.setParameterValue(paramValue, value)
						}
						
						
						def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMUser getBswMComMUserRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMUser), "BswMComMUserRef")
						}
								
						def void setBswMComMUserRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMUser object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMComMUserRef"], object.getTarget())
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
							EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMCoreHaltActivationState"])
						}
						
						def void setBswMCoreHaltActivationState(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMCoreHaltActivationState"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMCoreHaltActivationState"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						
						def org.artop.ecuc.autosar421.accessors.EcuC.EcucHardware.EcucCoreDefinition getBswMTargetCoreRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucHardware.EcucCoreDefinition), "BswMTargetCoreRef")
						}
								
						def void setBswMTargetCoreRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucHardware.EcucCoreDefinition object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMTargetCoreRef"], object.getTarget())
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
						
						
						def List<org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPduGroup> getBswMDisabledDMPduGroupRefs(){
							val containerDef = containerValue.gGetDefinition
							val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
								containerDef.gGetReferences.findFirst[gGetShortName == "BswMDisabledDMPduGroupRef"] else null
											
							val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
								override protected accept(GReferenceValue item) {
									return accept(item, typeof(GConfigReference), "BswMDisabledDMPduGroupRef")
								}
							}
							
							return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPduGroup>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPduGroup)) {
								override protected wrap(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPduGroup object) throws CoreException {
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
											return new org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPduGroup(referenceValueValue as GContainer)
										}
									}
								}
							}
						}
						
						def List<org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPduGroup> getBswMEnabledDMPduGroupRefs(){
							val containerDef = containerValue.gGetDefinition
							val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
								containerDef.gGetReferences.findFirst[gGetShortName == "BswMEnabledDMPduGroupRef"] else null
											
							val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
								override protected accept(GReferenceValue item) {
									return accept(item, typeof(GConfigReference), "BswMEnabledDMPduGroupRef")
								}
							}
							
							return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPduGroup>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPduGroup)) {
								override protected wrap(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPduGroup object) throws CoreException {
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
											return new org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPduGroup(referenceValueValue as GContainer)
										}
									}
								}
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
						
						
						def org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMFlexUserConfig getBswMEcuMUserIdRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMFlexUserConfig), "BswMEcuMUserIdRef")
						}
								
						def void setBswMEcuMUserIdRef(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMFlexUserConfig object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMEcuMUserIdRef"], object.getTarget())
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
							getBswMEcuMShutdownTargetValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMEcuMShutdownTarget"])
						}
						
						def void setBswMEcuMShutdownTarget(BswMEcuMShutdownTarget value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMEcuMShutdownTarget"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMEcuMShutdownTarget"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						enum BswMEcuMShutdownTarget {
							OFF, 
							RESET, 
							SLEEP
						}
							
						def BswMEcuMShutdownTarget getBswMEcuMShutdownTargetValue(GParameterValue paramValue){
							val castedParamValue = paramValue as EcucTextualParamValue
							switch (castedParamValue.value){
								case "OFF" : BswMEcuMShutdownTarget.OFF
								case "RESET" : BswMEcuMShutdownTarget.RESET
								case "SLEEP" : BswMEcuMShutdownTarget.SLEEP
							}
						}
						
						def void setBswMEcuMShutdownTargetValue(GParameterValue paramValue, BswMEcuMShutdownTarget value){
							EcucValueAccessor421Util.setParameterValue(paramValue, value)
						}
						
						
						def org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMResetMode getBswMEcuMResetModeRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMResetMode), "BswMEcuMResetModeRef")
						}
								
						def void setBswMEcuMResetModeRef(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMFlexConfiguration.EcuMResetMode object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMEcuMResetModeRef"], object.getTarget())
							}
						}
						
						def org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMSleepMode getBswMEcuMSleepModeRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMSleepMode), "BswMEcuMSleepModeRef")
						}
								
						def void setBswMEcuMSleepModeRef(org.artop.ecuc.autosar421.accessors.EcuM.EcuMConfiguration.EcuMCommonConfiguration.EcuMSleepMode object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMEcuMSleepModeRef"], object.getTarget())
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
							getBswMEcuMStateValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMEcuMState"])
						}
						
						def void setBswMEcuMState(BswMEcuMState value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMEcuMState"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMEcuMState"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						enum BswMEcuMState {
							POST_RUN, 
							RUN, 
							SHUTDOWN, 
							SLEEP, 
							STARTUP
						}
							
						def BswMEcuMState getBswMEcuMStateValue(GParameterValue paramValue){
							val castedParamValue = paramValue as EcucTextualParamValue
							switch (castedParamValue.value){
								case "POST_RUN" : BswMEcuMState.POST_RUN
								case "RUN" : BswMEcuMState.RUN
								case "SHUTDOWN" : BswMEcuMState.SHUTDOWN
								case "SLEEP" : BswMEcuMState.SLEEP
								case "STARTUP" : BswMEcuMState.STARTUP
							}
						}
						
						def void setBswMEcuMStateValue(GParameterValue paramValue, BswMEcuMState value){
							EcucValueAccessor421Util.setParameterValue(paramValue, value)
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
						
						
						def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel getBswMFrSMAllSlotsNetworkHandleRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel), "BswMFrSMAllSlotsNetworkHandleRef")
						}
								
						def void setBswMFrSMAllSlotsNetworkHandleRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMFrSMAllSlotsNetworkHandleRef"], object.getTarget())
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
							getBswMJ1939DcmRequestedStateValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMJ1939DcmRequestedState"])
						}
						
						def void setBswMJ1939DcmRequestedState(BswMJ1939DcmRequestedState value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMJ1939DcmRequestedState"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMJ1939DcmRequestedState"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						enum BswMJ1939DcmRequestedState {
							J1939DCM_STATE_OFFLINE, 
							J1939DCM_STATE_ONLINE
						}
							
						def BswMJ1939DcmRequestedState getBswMJ1939DcmRequestedStateValue(GParameterValue paramValue){
							val castedParamValue = paramValue as EcucTextualParamValue
							switch (castedParamValue.value){
								case "J1939DCM_STATE_OFFLINE" : BswMJ1939DcmRequestedState.J1939DCM_STATE_OFFLINE
								case "J1939DCM_STATE_ONLINE" : BswMJ1939DcmRequestedState.J1939DCM_STATE_ONLINE
							}
						}
						
						def void setBswMJ1939DcmRequestedStateValue(GParameterValue paramValue, BswMJ1939DcmRequestedState value){
							EcucValueAccessor421Util.setParameterValue(paramValue, value)
						}
						
						
						def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel getBswMJ1939DcmChannelRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel), "BswMJ1939DcmChannelRef")
						}
								
						def void setBswMJ1939DcmChannelRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMJ1939DcmChannelRef"], object.getTarget())
							}
						}
						
						def org.artop.ecuc.autosar421.accessors.J1939Nm.J1939NmConfigSet.J1939NmNode getBswMJ1939DcmNodeRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.J1939Nm.J1939NmConfigSet.J1939NmNode), "BswMJ1939DcmNodeRef")
						}
								
						def void setBswMJ1939DcmNodeRef(org.artop.ecuc.autosar421.accessors.J1939Nm.J1939NmConfigSet.J1939NmNode object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMJ1939DcmNodeRef"], object.getTarget())
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
							getBswMJ1939RmRequestedStateValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMJ1939RmRequestedState"])
						}
						
						def void setBswMJ1939RmRequestedState(BswMJ1939RmRequestedState value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMJ1939RmRequestedState"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMJ1939RmRequestedState"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						enum BswMJ1939RmRequestedState {
							J1939RM_STATE_OFFLINE, 
							J1939RM_STATE_ONLINE
						}
							
						def BswMJ1939RmRequestedState getBswMJ1939RmRequestedStateValue(GParameterValue paramValue){
							val castedParamValue = paramValue as EcucTextualParamValue
							switch (castedParamValue.value){
								case "J1939RM_STATE_OFFLINE" : BswMJ1939RmRequestedState.J1939RM_STATE_OFFLINE
								case "J1939RM_STATE_ONLINE" : BswMJ1939RmRequestedState.J1939RM_STATE_ONLINE
							}
						}
						
						def void setBswMJ1939RmRequestedStateValue(GParameterValue paramValue, BswMJ1939RmRequestedState value){
							EcucValueAccessor421Util.setParameterValue(paramValue, value)
						}
						
						
						def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel getBswMJ1939RmChannelRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel), "BswMJ1939RmChannelRef")
						}
								
						def void setBswMJ1939RmChannelRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMJ1939RmChannelRef"], object.getTarget())
							}
						}
						
						def org.artop.ecuc.autosar421.accessors.J1939Nm.J1939NmConfigSet.J1939NmNode getBswMJ1939RmNodeRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.J1939Nm.J1939NmConfigSet.J1939NmNode), "BswMJ1939RmNodeRef")
						}
								
						def void setBswMJ1939RmNodeRef(org.artop.ecuc.autosar421.accessors.J1939Nm.J1939NmConfigSet.J1939NmNode object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMJ1939RmNodeRef"], object.getTarget())
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
						
						
						def org.artop.ecuc.autosar421.accessors.LinSM.LinSMConfigSet.LinSMChannel.LinSMSchedule getBswMLinScheduleRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.LinSM.LinSMConfigSet.LinSMChannel.LinSMSchedule), "BswMLinScheduleRef")
						}
								
						def void setBswMLinScheduleRef(org.artop.ecuc.autosar421.accessors.LinSM.LinSMConfigSet.LinSMChannel.LinSMSchedule object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMLinScheduleRef"], object.getTarget())
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
							getBswMNMActionValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMNMAction"])
						}
						
						def void setBswMNMAction(BswMNMAction value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMNMAction"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMNMAction"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						enum BswMNMAction {
							BSWM_NM_DISABLE, 
							BSWM_NM_ENABLE
						}
							
						def BswMNMAction getBswMNMActionValue(GParameterValue paramValue){
							val castedParamValue = paramValue as EcucTextualParamValue
							switch (castedParamValue.value){
								case "BSWM_NM_DISABLE" : BswMNMAction.BSWM_NM_DISABLE
								case "BSWM_NM_ENABLE" : BswMNMAction.BSWM_NM_ENABLE
							}
						}
						
						def void setBswMNMActionValue(GParameterValue paramValue, BswMNMAction value){
							EcucValueAccessor421Util.setParameterValue(paramValue, value)
						}
						
						
						def org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel getBswMComMNetworkHandleRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel), "BswMComMNetworkHandleRef")
						}
								
						def void setBswMComMNetworkHandleRef(org.artop.ecuc.autosar421.accessors.ComM.ComMConfigSet.ComMChannel object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMComMNetworkHandleRef"], object.getTarget())
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
							EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMPduGroupSwitchReinit"])
						}
						
						def void setBswMPduGroupSwitchReinit(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMPduGroupSwitchReinit"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMPduGroupSwitchReinit"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
						}
						
						
						def List<org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPduGroup> getBswMDisabledPduGroupRefs(){
							val containerDef = containerValue.gGetDefinition
							val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
								containerDef.gGetReferences.findFirst[gGetShortName == "BswMDisabledPduGroupRef"] else null
											
							val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
								override protected accept(GReferenceValue item) {
									return accept(item, typeof(GConfigReference), "BswMDisabledPduGroupRef")
								}
							}
							
							return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPduGroup>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPduGroup)) {
								override protected wrap(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPduGroup object) throws CoreException {
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
											return new org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPduGroup(referenceValueValue as GContainer)
										}
									}
								}
							}
						}
						
						def List<org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPduGroup> getBswMEnabledPduGroupRefs(){
							val containerDef = containerValue.gGetDefinition
							val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
								containerDef.gGetReferences.findFirst[gGetShortName == "BswMEnabledPduGroupRef"] else null
											
							val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
								override protected accept(GReferenceValue item) {
									return accept(item, typeof(GConfigReference), "BswMEnabledPduGroupRef")
								}
							}
							
							return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPduGroup>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPduGroup)) {
								override protected wrap(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPduGroup object) throws CoreException {
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
											return new org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPduGroup(referenceValueValue as GContainer)
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
							getBswMPduRouterActionValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMPduRouterAction"])
						}
						
						def void setBswMPduRouterAction(BswMPduRouterAction value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMPduRouterAction"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMPduRouterAction"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						enum BswMPduRouterAction {
							BSWM_PDUR_DISABLE, 
							BSWM_PDUR_ENABLE
						}
							
						def BswMPduRouterAction getBswMPduRouterActionValue(GParameterValue paramValue){
							val castedParamValue = paramValue as EcucTextualParamValue
							switch (castedParamValue.value){
								case "BSWM_PDUR_DISABLE" : BswMPduRouterAction.BSWM_PDUR_DISABLE
								case "BSWM_PDUR_ENABLE" : BswMPduRouterAction.BSWM_PDUR_ENABLE
							}
						}
						
						def void setBswMPduRouterActionValue(GParameterValue paramValue, BswMPduRouterAction value){
							EcucValueAccessor421Util.setParameterValue(paramValue, value)
						}
						
						def Boolean getBswMPduRouterDisableInitBuffer(){
							EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMPduRouterDisableInitBuffer"])
						}
						
						def void setBswMPduRouterDisableInitBuffer(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMPduRouterDisableInitBuffer"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMPduRouterDisableInitBuffer"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
						}
						
						
						def List<org.artop.ecuc.autosar421.accessors.PduR.PduRRoutingTables.PduRRoutingPathGroup> getBswMPduRoutingPathGroupRefs(){
							val containerDef = containerValue.gGetDefinition
							val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
								containerDef.gGetReferences.findFirst[gGetShortName == "BswMPduRoutingPathGroupRef"] else null
											
							val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
								override protected accept(GReferenceValue item) {
									return accept(item, typeof(GConfigReference), "BswMPduRoutingPathGroupRef")
								}
							}
							
							return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.PduR.PduRRoutingTables.PduRRoutingPathGroup>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.PduR.PduRRoutingTables.PduRRoutingPathGroup)) {
								override protected wrap(org.artop.ecuc.autosar421.accessors.PduR.PduRRoutingTables.PduRRoutingPathGroup object) throws CoreException {
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
											return new org.artop.ecuc.autosar421.accessors.PduR.PduRRoutingTables.PduRRoutingPathGroup(referenceValueValue as GContainer)
										}
									}
								}
							}
						}
						
						
						
					}
					
					static class BswMRequestRemoteMode implements IWrapper<GContainer> {
						private GContainer containerValue
						
						new(GContainer containerValue){
							this.containerValue = containerValue
						}
						
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
					        if (!(object instanceof BswMRequestRemoteMode)){
								return false
							}
							this.target == (object as BswMRequestRemoteMode).target
						}
						
						
						
						
						def org.artop.ecuc.autosar421.accessors.EcuC.EcucPartitionCollection.EcucPartition getBswMEcuCPartitionRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucPartitionCollection.EcucPartition), "BswMEcuCPartitionRef")
						}
								
						def void setBswMEcuCPartitionRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucPartitionCollection.EcucPartition object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMEcuCPartitionRef"], object.getTarget())
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
						
						
						
						def org.artop.ecuc.autosar421.accessors.BswM.BswMConfig.BswMModeControl.BswMRteModeRequestPort getBswMRteModeRequestPortRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.BswM.BswMConfig.BswMModeControl.BswMRteModeRequestPort), "BswMRteModeRequestPortRef")
						}
								
						def void setBswMRteModeRequestPortRef(org.artop.ecuc.autosar421.accessors.BswM.BswMConfig.BswMModeControl.BswMRteModeRequestPort object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMRteModeRequestPortRef"], object.getTarget())
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
						
						
						
						def org.artop.ecuc.autosar421.accessors.BswM.BswMConfig.BswMModeControl.BswMSwitchPort getBswMRteSwitchPortRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.BswM.BswMConfig.BswMModeControl.BswMSwitchPort), "BswMRteSwitchPortRef")
						}
								
						def void setBswMRteSwitchPortRef(org.artop.ecuc.autosar421.accessors.BswM.BswMConfig.BswMModeControl.BswMSwitchPort object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMRteSwitchPortRef"], object.getTarget())
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
							getBswMSdClientServiceStateValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMSdClientServiceState"])
						}
						
						def void setBswMSdClientServiceState(BswMSdClientServiceState value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMSdClientServiceState"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMSdClientServiceState"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						enum BswMSdClientServiceState {
							BSWM_SD_CLIENT_SERVICE_RELEASED, 
							BSWM_SD_CLIENT_SERVICE_REQUESTED
						}
							
						def BswMSdClientServiceState getBswMSdClientServiceStateValue(GParameterValue paramValue){
							val castedParamValue = paramValue as EcucTextualParamValue
							switch (castedParamValue.value){
								case "BSWM_SD_CLIENT_SERVICE_RELEASED" : BswMSdClientServiceState.BSWM_SD_CLIENT_SERVICE_RELEASED
								case "BSWM_SD_CLIENT_SERVICE_REQUESTED" : BswMSdClientServiceState.BSWM_SD_CLIENT_SERVICE_REQUESTED
							}
						}
						
						def void setBswMSdClientServiceStateValue(GParameterValue paramValue, BswMSdClientServiceState value){
							EcucValueAccessor421Util.setParameterValue(paramValue, value)
						}
						
						
						def org.artop.ecuc.autosar421.accessors.Sd.SdConfig.SdInstance.SdClientService getBswMSdClientMethodsRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Sd.SdConfig.SdInstance.SdClientService), "BswMSdClientMethodsRef")
						}
								
						def void setBswMSdClientMethodsRef(org.artop.ecuc.autosar421.accessors.Sd.SdConfig.SdInstance.SdClientService object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMSdClientMethodsRef"], object.getTarget())
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
							getBswMSdConsumedEventGroupStateValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMSdConsumedEventGroupState"])
						}
						
						def void setBswMSdConsumedEventGroupState(BswMSdConsumedEventGroupState value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMSdConsumedEventGroupState"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMSdConsumedEventGroupState"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						enum BswMSdConsumedEventGroupState {
							BSWM_SD_CONSUMED_EVENTGROUP_RELEASED, 
							BSWM_SD_CONSUMED_EVENTGROUP_REQUESTED
						}
							
						def BswMSdConsumedEventGroupState getBswMSdConsumedEventGroupStateValue(GParameterValue paramValue){
							val castedParamValue = paramValue as EcucTextualParamValue
							switch (castedParamValue.value){
								case "BSWM_SD_CONSUMED_EVENTGROUP_RELEASED" : BswMSdConsumedEventGroupState.BSWM_SD_CONSUMED_EVENTGROUP_RELEASED
								case "BSWM_SD_CONSUMED_EVENTGROUP_REQUESTED" : BswMSdConsumedEventGroupState.BSWM_SD_CONSUMED_EVENTGROUP_REQUESTED
							}
						}
						
						def void setBswMSdConsumedEventGroupStateValue(GParameterValue paramValue, BswMSdConsumedEventGroupState value){
							EcucValueAccessor421Util.setParameterValue(paramValue, value)
						}
						
						
						def org.artop.ecuc.autosar421.accessors.Sd.SdConfig.SdInstance.SdClientService.SdConsumedEventGroup getBswMSdConsumedEventGroupRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Sd.SdConfig.SdInstance.SdClientService.SdConsumedEventGroup), "BswMSdConsumedEventGroupRef")
						}
								
						def void setBswMSdConsumedEventGroupRef(org.artop.ecuc.autosar421.accessors.Sd.SdConfig.SdInstance.SdClientService.SdConsumedEventGroup object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMSdConsumedEventGroupRef"], object.getTarget())
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
							getBswMSdServerServiceStateValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMSdServerServiceState"])
						}
						
						def void setBswMSdServerServiceState(BswMSdServerServiceState value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMSdServerServiceState"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMSdServerServiceState"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						enum BswMSdServerServiceState {
							BSWM_SD_SERVER_SERVICE_AVAILABLE, 
							BSWM_SD_SERVER_SERVICE_DOWN
						}
							
						def BswMSdServerServiceState getBswMSdServerServiceStateValue(GParameterValue paramValue){
							val castedParamValue = paramValue as EcucTextualParamValue
							switch (castedParamValue.value){
								case "BSWM_SD_SERVER_SERVICE_AVAILABLE" : BswMSdServerServiceState.BSWM_SD_SERVER_SERVICE_AVAILABLE
								case "BSWM_SD_SERVER_SERVICE_DOWN" : BswMSdServerServiceState.BSWM_SD_SERVER_SERVICE_DOWN
							}
						}
						
						def void setBswMSdServerServiceStateValue(GParameterValue paramValue, BswMSdServerServiceState value){
							EcucValueAccessor421Util.setParameterValue(paramValue, value)
						}
						
						
						def org.artop.ecuc.autosar421.accessors.Sd.SdConfig.SdInstance.SdServerService getBswMSdServerMethodsRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Sd.SdConfig.SdInstance.SdServerService), "BswMSdServerMethodsRef")
						}
								
						def void setBswMSdServerMethodsRef(org.artop.ecuc.autosar421.accessors.Sd.SdConfig.SdInstance.SdServerService object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMSdServerMethodsRef"], object.getTarget())
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
							EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMSwitchIPduModeValue"])
						}
						
						def void setBswMSwitchIPduModeValue(Boolean value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMSwitchIPduModeValue"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMSwitchIPduModeValue"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
						}
						
						
						def org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPdu getBswMSwitchIPduModeRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPdu), "BswMSwitchIPduModeRef")
						}
								
						def void setBswMSwitchIPduModeRef(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPdu object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMSwitchIPduModeRef"], object.getTarget())
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
						
						
						def List<org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPdu> getBswMTriggeredIPduRefs(){
							val containerDef = containerValue.gGetDefinition
							val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
								containerDef.gGetReferences.findFirst[gGetShortName == "BswMTriggeredIPduRef"] else null
											
							val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
								override protected accept(GReferenceValue item) {
									return accept(item, typeof(GConfigReference), "BswMTriggeredIPduRef")
								}
							}
							
							return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPdu>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPdu)) {
								override protected wrap(org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPdu object) throws CoreException {
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
											return new org.artop.ecuc.autosar421.accessors.Com.ComConfig.ComIPdu(referenceValueValue as GContainer)
										}
									}
								}
							}
						}
						
						
						
					}
					
					static class BswMTriggerSlaveRTEStop implements IWrapper<GContainer> {
						private GContainer containerValue
						
						new(GContainer containerValue){
							this.containerValue = containerValue
						}
						
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
					        if (!(object instanceof BswMTriggerSlaveRTEStop)){
								return false
							}
							this.target == (object as BswMTriggerSlaveRTEStop).target
						}
						
						
						def org.artop.ecuc.autosar421.accessors.EcuC.EcucHardware.EcucCoreDefinition getBswMCoreRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucHardware.EcucCoreDefinition), "BswMCoreRef")
						}
								
						def void setBswMCoreRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucHardware.EcucCoreDefinition object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMCoreRef"], object.getTarget())
							}
						}
						
						
						
					}
					
					static class BswMTriggerStartUpPhase2 implements IWrapper<GContainer> {
						private GContainer containerValue
						
						new(GContainer containerValue){
							this.containerValue = containerValue
						}
						
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
					        if (!(object instanceof BswMTriggerStartUpPhase2)){
								return false
							}
							this.target == (object as BswMTriggerStartUpPhase2).target
						}
						
						
						def org.artop.ecuc.autosar421.accessors.EcuC.EcucHardware.EcucCoreDefinition getBswMCoreRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucHardware.EcucCoreDefinition), "BswMCoreRef")
						}
								
						def void setBswMCoreRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucHardware.EcucCoreDefinition object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMCoreRef"], object.getTarget())
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
							EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMUserCalloutFunction"])
						}
						
						def void setBswMUserCalloutFunction(String value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMUserCalloutFunction"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMUserCalloutFunction"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
					getBswMActionListExecutionValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMActionListExecution"])
				}
				
				def void setBswMActionListExecution(BswMActionListExecution value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMActionListExecution"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMActionListExecution"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				enum BswMActionListExecution {
					BSWM_CONDITION, 
					BSWM_TRIGGER
				}
					
				def BswMActionListExecution getBswMActionListExecutionValue(GParameterValue paramValue){
					val castedParamValue = paramValue as EcucTextualParamValue
					switch (castedParamValue.value){
						case "BSWM_CONDITION" : BswMActionListExecution.BSWM_CONDITION
						case "BSWM_TRIGGER" : BswMActionListExecution.BSWM_TRIGGER
					}
				}
				
				def void setBswMActionListExecutionValue(GParameterValue paramValue, BswMActionListExecution value){
					EcucValueAccessor421Util.setParameterValue(paramValue, value)
				}
				
				
				
				def List<BswMActionListItem> getBswMActionListItems(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "BswMActionListItem")
						}
					}
					return new BasicWrappingEList<BswMActionListItem, GContainer>(filteredContainers, typeof(BswMActionListItem), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.BswM$BswMConfig$BswMModeControl$BswMActionList$BswMActionListItem bswMActionListItem) {
							bswMActionListItem.target?.gSetDefinition(containerValue.getContainerDefinition("BswMActionListItem"))
							super.delegateAdd(bswMActionListItem)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.BswM$BswMConfig$BswMModeControl$BswMActionList$BswMActionListItem bswMActionListItem) {
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
						EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMAbortOnFail"])
					}
					
					def void setBswMAbortOnFail(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMAbortOnFail"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMAbortOnFail"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
					}
					
					def BigInteger getBswMActionListItemIndex(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMActionListItemIndex"])
					}
					
					def void setBswMActionListItemIndex(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMActionListItemIndex"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMActionListItemIndex"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					
					def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getBswMReportFailToDemRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "BswMReportFailToDemRef")
					}
							
					def void setBswMReportFailToDemRef(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "BswMReportFailToDemRef"], object.getTarget())
						}
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
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMCanSMEnabled"])
		}
		
		def void setBswMCanSMEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMCanSMEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMCanSMEnabled"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getBswMCanSMIcomEnabled(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMCanSMIcomEnabled"])
		}
		
		def void setBswMCanSMIcomEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMCanSMIcomEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMCanSMIcomEnabled"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getBswMComMEnabled(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMComMEnabled"])
		}
		
		def void setBswMComMEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMComMEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMComMEnabled"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getBswMDcmEnabled(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMDcmEnabled"])
		}
		
		def void setBswMDcmEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMDcmEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMDcmEnabled"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getBswMDevErrorDetect(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMDevErrorDetect"])
		}
		
		def void setBswMDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getBswMEcuMEnabled(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMEcuMEnabled"])
		}
		
		def void setBswMEcuMEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMEcuMEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMEcuMEnabled"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getBswMEthSMEnabled(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMEthSMEnabled"])
		}
		
		def void setBswMEthSMEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMEthSMEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMEthSMEnabled"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getBswMFrSMEnabled(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMFrSMEnabled"])
		}
		
		def void setBswMFrSMEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMFrSMEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMFrSMEnabled"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getBswMGenericRequestEnabled(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMGenericRequestEnabled"])
		}
		
		def void setBswMGenericRequestEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMGenericRequestEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMGenericRequestEnabled"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getBswMJ1939DcmEnabled(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMJ1939DcmEnabled"])
		}
		
		def void setBswMJ1939DcmEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMJ1939DcmEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMJ1939DcmEnabled"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getBswMJ1939NmEnabled(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMJ1939NmEnabled"])
		}
		
		def void setBswMJ1939NmEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMJ1939NmEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMJ1939NmEnabled"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getBswMLinSMEnabled(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMLinSMEnabled"])
		}
		
		def void setBswMLinSMEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMLinSMEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMLinSMEnabled"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getBswMLinTPEnabled(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMLinTPEnabled"])
		}
		
		def void setBswMLinTPEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMLinTPEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMLinTPEnabled"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getBswMMainFunctionPeriod(){
			EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMMainFunctionPeriod"])
		}
		
		def void setBswMMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMMainFunctionPeriod"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMMainFunctionPeriod"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getBswMNvMEnabled(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMNvMEnabled"])
		}
		
		def void setBswMNvMEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMNvMEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMNvMEnabled"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getBswMSchMEnabled(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMSchMEnabled"])
		}
		
		def void setBswMSchMEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMSchMEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMSchMEnabled"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getBswMVersionInfoApi(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMVersionInfoApi"])
		}
		
		def void setBswMVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getBswMWdgMEnabled(){
			EcucValueAccessor421Util.getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMWdgMEnabled"])
		}
		
		def void setBswMWdgMEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "BswMWdgMEnabled"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "BswMWdgMEnabled"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, getBooleanParameterValueValue(value, true))
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
		if (definitionFeature != null) {
			val definition = child.eGet(definitionFeature)
			if (ecucTypeDefType.isInstance(definition)) {
				return ecucTypeDefType.cast(definition).gGetShortName.equals(ecucTypeDefName)
			}
		}
		return false
	}
}
