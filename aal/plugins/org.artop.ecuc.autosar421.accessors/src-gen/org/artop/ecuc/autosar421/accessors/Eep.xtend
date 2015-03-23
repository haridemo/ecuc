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
		
		def Boolean getEepDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepDevErrorDetect"])
		}
		
		def void setEepDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EepDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getEepDriverIndex(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepDriverIndex"])
		}
		
		def void setEepDriverIndex(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepDriverIndex"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EepDriverIndex"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEepUseInterrupts(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepUseInterrupts"])
		}
		
		def void setEepUseInterrupts(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepUseInterrupts"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EepUseInterrupts"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEepVersionInfoApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepVersionInfoApi"])
		}
		
		def void setEepVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EepVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getEepWriteCycleReduction(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepWriteCycleReduction"])
		}
		
		def void setEepWriteCycleReduction(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepWriteCycleReduction"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EepWriteCycleReduction"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		
		def BigInteger getEepBaseAddress(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepBaseAddress"])
		}
		
		def void setEepBaseAddress(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepBaseAddress"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EepBaseAddress"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def EepDefaultMode getEepDefaultMode(){
			getEepDefaultModeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepDefaultMode"])
		}
		
		def void setEepDefaultMode(EepDefaultMode value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepDefaultMode"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EepDefaultMode"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		enum EepDefaultMode {
			MEMIF_MODE_FAST, 
			MEMIF_MODE_SLOW
		}
			
		def EepDefaultMode getEepDefaultModeValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "MEMIF_MODE_FAST" : EepDefaultMode.MEMIF_MODE_FAST
				case "MEMIF_MODE_SLOW" : EepDefaultMode.MEMIF_MODE_SLOW
			}
		}
		
		def void setEepDefaultModeValue(GParameterValue paramValue, EepDefaultMode value){
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		def BigInteger getEepFastReadBlockSize(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepFastReadBlockSize"])
		}
		
		def void setEepFastReadBlockSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepFastReadBlockSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EepFastReadBlockSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getEepFastWriteBlockSize(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepFastWriteBlockSize"])
		}
		
		def void setEepFastWriteBlockSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepFastWriteBlockSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EepFastWriteBlockSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigDecimal getEepJobCallCycle(){
			EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepJobCallCycle"])
		}
		
		def void setEepJobCallCycle(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepJobCallCycle"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EepJobCallCycle"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def String getEepJobEndNotification(){
			EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepJobEndNotification"])
		}
		
		def void setEepJobEndNotification(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepJobEndNotification"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EepJobEndNotification"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def String getEepJobErrorNotification(){
			EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepJobErrorNotification"])
		}
		
		def void setEepJobErrorNotification(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepJobErrorNotification"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EepJobErrorNotification"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getEepNormalReadBlockSize(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepNormalReadBlockSize"])
		}
		
		def void setEepNormalReadBlockSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepNormalReadBlockSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EepNormalReadBlockSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getEepNormalWriteBlockSize(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepNormalWriteBlockSize"])
		}
		
		def void setEepNormalWriteBlockSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepNormalWriteBlockSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EepNormalWriteBlockSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getEepSize(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepSize"])
		}
		
		def void setEepSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EepSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
			
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getEEP_E_COMPARE_FAILED(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "EEP_E_COMPARE_FAILED")
			}
					
			def void setEEP_E_COMPARE_FAILED(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "EEP_E_COMPARE_FAILED"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getEEP_E_ERASE_FAILED(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "EEP_E_ERASE_FAILED")
			}
					
			def void setEEP_E_ERASE_FAILED(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "EEP_E_ERASE_FAILED"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getEEP_E_READ_FAILED(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "EEP_E_READ_FAILED")
			}
					
			def void setEEP_E_READ_FAILED(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "EEP_E_READ_FAILED"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getEEP_E_WRITE_FAILED(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "EEP_E_WRITE_FAILED")
			}
					
			def void setEEP_E_WRITE_FAILED(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "EEP_E_WRITE_FAILED"], object.getTarget())
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
			
			
			def List<org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiSequence> getEepSpiReferences(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef) 
					containerDef.gGetReferences.findFirst[gGetShortName == "EepSpiReference"] else null
								
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "EepSpiReference")
					}
				}
				
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiSequence>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiSequence)) {
					override protected wrap(org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiSequence object) throws CoreException {
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
								return new org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiSequence(referenceValueValue as GContainer)
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
		
		def BigInteger getEepAllowedWriteCycles(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepAllowedWriteCycles"])
		}
		
		def void setEepAllowedWriteCycles(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepAllowedWriteCycles"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EepAllowedWriteCycles"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigDecimal getEepEraseTime(){
			EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepEraseTime"])
		}
		
		def void setEepEraseTime(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepEraseTime"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EepEraseTime"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getEepEraseUnitSize(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepEraseUnitSize"])
		}
		
		def void setEepEraseUnitSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepEraseUnitSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EepEraseUnitSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getEepEraseValue(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepEraseValue"])
		}
		
		def void setEepEraseValue(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepEraseValue"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EepEraseValue"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getEepMinimumAddressType(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepMinimumAddressType"])
		}
		
		def void setEepMinimumAddressType(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepMinimumAddressType"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EepMinimumAddressType"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getEepMinimumLengthType(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepMinimumLengthType"])
		}
		
		def void setEepMinimumLengthType(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepMinimumLengthType"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EepMinimumLengthType"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getEepReadUnitSize(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepReadUnitSize"])
		}
		
		def void setEepReadUnitSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepReadUnitSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EepReadUnitSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getEepSpecifiedEraseCycles(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepSpecifiedEraseCycles"])
		}
		
		def void setEepSpecifiedEraseCycles(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepSpecifiedEraseCycles"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EepSpecifiedEraseCycles"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getEepTotalSize(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepTotalSize"])
		}
		
		def void setEepTotalSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepTotalSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EepTotalSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigDecimal getEepWriteTime(){
			EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepWriteTime"])
		}
		
		def void setEepWriteTime(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepWriteTime"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EepWriteTime"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getEepWriteUnitSize(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepWriteUnitSize"])
		}
		
		def void setEepWriteUnitSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "EepWriteUnitSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "EepWriteUnitSize"])
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
