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

class Eep implements IWrapper<GModuleConfiguration> {
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

	def EepGeneral getEepGeneral(){
		moduleConfiguration.getByType(typeof(EepGeneral))
	}

	def void setEepGeneral(EepGeneral eepGeneral){
		val GContainer container = eepGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "EepGeneral")
	}
	def EepInitConfiguration getEepInitConfiguration(){
		moduleConfiguration.getByType(typeof(EepInitConfiguration))
	}

	def void setEepInitConfiguration(EepInitConfiguration eepInitConfiguration){
		val GContainer container = eepInitConfiguration.getTarget()
	    moduleConfiguration.setContainer(container, "EepInitConfiguration")
	}
	def EepPublishedInformation getEepPublishedInformation(){
		moduleConfiguration.getByType(typeof(EepPublishedInformation))
	}

	def void setEepPublishedInformation(EepPublishedInformation eepPublishedInformation){
		val GContainer container = eepPublishedInformation.getTarget()
	    moduleConfiguration.setContainer(container, "EepPublishedInformation")
	}

	static class EepGeneral implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
		def String getShortName(){
			containerValue?.gGetShortName
		}
	
		def void setShortName(String name){
			containerValue?.gSetShortName(name)
		}
	
		override def GContainer getTarget(){
			containerValue
		}
	
		override def boolean equals(Object object) {
	        if (!(object instanceof EepGeneral)){
				return false
			}
			this.target == (object as EepGeneral).target
		}
	
		def Boolean getEepDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepDevErrorDetect"].getBooleanValue()
		}
		
		def void setEepDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EepDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getEepDriverIndex(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepDriverIndex"].getBigIntegerValue()
		}
		
		def void setEepDriverIndex(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepDriverIndex"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EepDriverIndex"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getEepUseInterrupts(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepUseInterrupts"].getBooleanValue()
		}
		
		def void setEepUseInterrupts(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepUseInterrupts"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EepUseInterrupts"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEepVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepVersionInfoApi"].getBooleanValue()
		}
		
		def void setEepVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EepVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getEepWriteCycleReduction(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepWriteCycleReduction"].getBooleanValue()
		}
		
		def void setEepWriteCycleReduction(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepWriteCycleReduction"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EepWriteCycleReduction"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}
	static class EepInitConfiguration implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
		def String getShortName(){
			containerValue?.gGetShortName
		}
	
		def void setShortName(String name){
			containerValue?.gSetShortName(name)
		}
	
		override def GContainer getTarget(){
			containerValue
		}
	
		override def boolean equals(Object object) {
	        if (!(object instanceof EepInitConfiguration)){
				return false
			}
			this.target == (object as EepInitConfiguration).target
		}
	
		def BigInteger getEepBaseAddress(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepBaseAddress"].getBigIntegerValue()
		}
		
		def void setEepBaseAddress(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepBaseAddress"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EepBaseAddress"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def EepDefaultMode getEepDefaultMode(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepDefaultMode"].getEepDefaultModeValue()
		}
		
		def void setEepDefaultMode(EepDefaultMode value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepDefaultMode"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EepDefaultMode"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum EepDefaultMode {
			MEMIF_MODE_FAST, 
			MEMIF_MODE_SLOW
		}
		
		def EepDefaultMode getEepDefaultModeValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "MEMIF_MODE_FAST" : EepDefaultMode.MEMIF_MODE_FAST
				case "MEMIF_MODE_SLOW" : EepDefaultMode.MEMIF_MODE_SLOW
			}
		}
		
		def void setEepDefaultModeValue(GParameterValue parameterValue, EepDefaultMode value){
			parameterValue.setValue(value)
		}
		
		def BigInteger getEepFastReadBlockSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepFastReadBlockSize"].getBigIntegerValue()
		}
		
		def void setEepFastReadBlockSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepFastReadBlockSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EepFastReadBlockSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getEepFastWriteBlockSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepFastWriteBlockSize"].getBigIntegerValue()
		}
		
		def void setEepFastWriteBlockSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepFastWriteBlockSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EepFastWriteBlockSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getEepJobCallCycle(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepJobCallCycle"].getBigDecimalValue()
		}
		
		def void setEepJobCallCycle(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepJobCallCycle"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EepJobCallCycle"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def String getEepJobEndNotification(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepJobEndNotification"].getStringValue()
		}
		
		def void setEepJobEndNotification(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepJobEndNotification"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EepJobEndNotification"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def String getEepJobErrorNotification(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepJobErrorNotification"].getStringValue()
		}
		
		def void setEepJobErrorNotification(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepJobErrorNotification"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EepJobErrorNotification"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getEepNormalReadBlockSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepNormalReadBlockSize"].getBigIntegerValue()
		}
		
		def void setEepNormalReadBlockSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepNormalReadBlockSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EepNormalReadBlockSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getEepNormalWriteBlockSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepNormalWriteBlockSize"].getBigIntegerValue()
		}
		
		def void setEepNormalWriteBlockSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepNormalWriteBlockSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EepNormalWriteBlockSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getEepSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepSize"].getBigIntegerValue()
		}
		
		def void setEepSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EepSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def EepDemEventParameterRefs getEepDemEventParameterRefs(){
			containerValue.getByType(typeof(EepDemEventParameterRefs))
		}
		
		def void setEepDemEventParameterRefs(EepDemEventParameterRefs eepDemEventParameterRefs){
			val GContainer subContainer = eepDemEventParameterRefs.getTarget()
			containerValue.setContainer(subContainer, "EepDemEventParameterRefs")
		}
		
		def EepExternalDriver getEepExternalDriver(){
			containerValue.getByType(typeof(EepExternalDriver))
		}
		
		def void setEepExternalDriver(EepExternalDriver eepExternalDriver){
			val GContainer subContainer = eepExternalDriver.getTarget()
			containerValue.setContainer(subContainer, "EepExternalDriver")
		}
		
		
		static class EepDemEventParameterRefs implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof EepDemEventParameterRefs)){
					return false
				}
				this.target == (object as EepDemEventParameterRefs).target
			}
		
			
			def org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter getEEP_E_COMPARE_FAILED(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter), "EEP_E_COMPARE_FAILED")
			}
			
			def void setEEP_E_COMPARE_FAILED(org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EEP_E_COMPARE_FAILED"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter getEEP_E_ERASE_FAILED(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter), "EEP_E_ERASE_FAILED")
			}
			
			def void setEEP_E_ERASE_FAILED(org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EEP_E_ERASE_FAILED"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter getEEP_E_READ_FAILED(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter), "EEP_E_READ_FAILED")
			}
			
			def void setEEP_E_READ_FAILED(org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EEP_E_READ_FAILED"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter getEEP_E_WRITE_FAILED(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter), "EEP_E_WRITE_FAILED")
			}
			
			def void setEEP_E_WRITE_FAILED(org.artop.ecuc.autosar430.accessors.Dem.DemConfigSet.DemEventParameter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "EEP_E_WRITE_FAILED"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class EepExternalDriver implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof EepExternalDriver)){
					return false
				}
				this.target == (object as EepExternalDriver).target
			}
		
			
			def List<org.artop.ecuc.autosar430.accessors.Spi.SpiDriver.SpiSequence> getEepSpiReferences(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "EepSpiReference"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "EepSpiReference")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar430.accessors.Spi.SpiDriver.SpiSequence>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar430.accessors.Spi.SpiDriver.SpiSequence)) {
					override protected wrap(org.artop.ecuc.autosar430.accessors.Spi.SpiDriver.SpiSequence object) throws CoreException {
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
								return new org.artop.ecuc.autosar430.accessors.Spi.SpiDriver.SpiSequence(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			
		}
		
	}
	static class EepPublishedInformation implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
		def String getShortName(){
			containerValue?.gGetShortName
		}
	
		def void setShortName(String name){
			containerValue?.gSetShortName(name)
		}
	
		override def GContainer getTarget(){
			containerValue
		}
	
		override def boolean equals(Object object) {
	        if (!(object instanceof EepPublishedInformation)){
				return false
			}
			this.target == (object as EepPublishedInformation).target
		}
	
		def BigInteger getEepAllowedWriteCycles(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepAllowedWriteCycles"].getBigIntegerValue()
		}
		
		def void setEepAllowedWriteCycles(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepAllowedWriteCycles"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EepAllowedWriteCycles"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getEepEraseTime(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepEraseTime"].getBigDecimalValue()
		}
		
		def void setEepEraseTime(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepEraseTime"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EepEraseTime"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getEepEraseUnitSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepEraseUnitSize"].getBigIntegerValue()
		}
		
		def void setEepEraseUnitSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepEraseUnitSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EepEraseUnitSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getEepEraseValue(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepEraseValue"].getBigIntegerValue()
		}
		
		def void setEepEraseValue(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepEraseValue"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EepEraseValue"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getEepMinimumAddressType(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepMinimumAddressType"].getBigIntegerValue()
		}
		
		def void setEepMinimumAddressType(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepMinimumAddressType"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EepMinimumAddressType"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getEepMinimumLengthType(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepMinimumLengthType"].getBigIntegerValue()
		}
		
		def void setEepMinimumLengthType(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepMinimumLengthType"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EepMinimumLengthType"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getEepReadUnitSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepReadUnitSize"].getBigIntegerValue()
		}
		
		def void setEepReadUnitSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepReadUnitSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EepReadUnitSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getEepSpecifiedEraseCycles(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepSpecifiedEraseCycles"].getBigIntegerValue()
		}
		
		def void setEepSpecifiedEraseCycles(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepSpecifiedEraseCycles"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EepSpecifiedEraseCycles"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getEepTotalSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepTotalSize"].getBigIntegerValue()
		}
		
		def void setEepTotalSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepTotalSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EepTotalSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getEepWriteTime(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepWriteTime"].getBigDecimalValue()
		}
		
		def void setEepWriteTime(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepWriteTime"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EepWriteTime"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getEepWriteUnitSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepWriteUnitSize"].getBigIntegerValue()
		}
		
		def void setEepWriteUnitSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepWriteUnitSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "EepWriteUnitSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof Eep)){
			return false
		}
		this.target == (object as Eep).target
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
