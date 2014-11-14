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

import static extension org.artop.ecuc.autosar4x.accessors.lib.ParameterValueAccessor4xUtil.*
import org.artop.ecuc.autosar4x.accessors.lib.ParameterValueAccessor4xUtil
import org.artop.ecuc.autosar4x.accessors.lib.IntegerValueUnwrappingEList
import org.artop.ecuc.autosar4x.accessors.lib.FloatValueUnwrappingEList
import org.artop.ecuc.autosar4x.accessors.lib.BooleanValueUnwrappingEList
import org.artop.ecuc.autosar4x.accessors.lib.StringValueUnwrappingEList
import org.artop.ecuc.autosar4x.accessors.lib.DocumentationBlockValueUnwrappingEList

import org.eclipse.sphinx.emf.util.AbstractFilteringEList
import org.eclipse.sphinx.emf.util.BasicWrappingEList

import gautosar.gecucdescription.GContainer
import gautosar.gecucdescription.GModuleConfiguration
import gautosar.gecucdescription.GParameterValue
import gautosar.gecucdescription.GecucdescriptionPackage
import gautosar.gecucparameterdef.GConfigParameter
import gautosar.gecucparameterdef.GContainerDef
import gautosar.gecucparameterdef.GParamConfContainerDef
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable
import static extension org.artop.ecuc.gautosar.accessors.lib.ParameterValueAccessorUtil.*
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EStructuralFeature
import org.eclipse.sphinx.emf.util.AbstractUnwrappingEList
import org.eclipse.core.runtime.CoreException

class Fls implements BasicWrappingEList.IWrapper<GModuleConfiguration> {
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
	
	def FlsConfigSet getFlsConfigSet(){
		moduleConfiguration.getByType(typeof(FlsConfigSet))
	}
	
	def void setFlsConfigSet(FlsConfigSet flsConfigSet){
		val GContainer container = flsConfigSet.getTarget() 
	    moduleConfiguration.setContainer(container, "FlsConfigSet")
	}
	def FlsGeneral getFlsGeneral(){
		moduleConfiguration.getByType(typeof(FlsGeneral))
	}
	
	def void setFlsGeneral(FlsGeneral flsGeneral){
		val GContainer container = flsGeneral.getTarget() 
	    moduleConfiguration.setContainer(container, "FlsGeneral")
	}
	def FlsPublishedInformation getFlsPublishedInformation(){
		moduleConfiguration.getByType(typeof(FlsPublishedInformation))
	}
	
	def void setFlsPublishedInformation(FlsPublishedInformation flsPublishedInformation){
		val GContainer container = flsPublishedInformation.getTarget() 
	    moduleConfiguration.setContainer(container, "FlsPublishedInformation")
	}
	
	static class FlsConfigSet implements BasicWrappingEList.IWrapper<GContainer> {
		private GContainer containerValue
		
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
		
		def String getShortName(){
			containerValue?.gGetShortName
		}
		
		def void setShortName(String name){
			containerValue?.gSetShortName(name)
		}
		
		override def GContainer getTarget(){
			containerValue
		}
		
		def Integer getFlsAcErase(){
			ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsAcErase"])
		}
		
		def void setFlsAcErase(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsAcErase"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsAcErase"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getFlsAcWrite(){
			ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsAcWrite"])
		}
		
		def void setFlsAcWrite(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsAcWrite"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsAcWrite"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Float getFlsCallCycle(){
			ParameterValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsCallCycle"])
		}
		
		def void setFlsCallCycle(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsCallCycle"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsCallCycle"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def FlsDefaultMode getFlsDefaultMode(){
			getFlsDefaultModeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsDefaultMode"])
		}
		
		def void setFlsDefaultMode(FlsDefaultMode value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsDefaultMode"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsDefaultMode"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		enum FlsDefaultMode {
			MEMIF_MODE_FAST, 
			MEMIF_MODE_SLOW
		}
			
		def FlsDefaultMode getFlsDefaultModeValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "MEMIF_MODE_FAST" : FlsDefaultMode.MEMIF_MODE_FAST
				case "MEMIF_MODE_SLOW" : FlsDefaultMode.MEMIF_MODE_SLOW
			}
		}
		
		def void setFlsDefaultModeValue(GParameterValue paramValue, FlsDefaultMode value){
			ParameterValueAccessor4xUtil.setParameterValue(paramValue, value)
		}
		
		def String getFlsJobEndNotification(){
			ParameterValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsJobEndNotification"])
		}
		
		def void setFlsJobEndNotification(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsJobEndNotification"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsJobEndNotification"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def String getFlsJobErrorNotification(){
			ParameterValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsJobErrorNotification"])
		}
		
		def void setFlsJobErrorNotification(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsJobErrorNotification"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsJobErrorNotification"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getFlsMaxReadFastMode(){
			ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsMaxReadFastMode"])
		}
		
		def void setFlsMaxReadFastMode(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsMaxReadFastMode"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsMaxReadFastMode"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getFlsMaxReadNormalMode(){
			ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsMaxReadNormalMode"])
		}
		
		def void setFlsMaxReadNormalMode(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsMaxReadNormalMode"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsMaxReadNormalMode"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getFlsMaxWriteFastMode(){
			ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsMaxWriteFastMode"])
		}
		
		def void setFlsMaxWriteFastMode(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsMaxWriteFastMode"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsMaxWriteFastMode"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getFlsMaxWriteNormalMode(){
			ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsMaxWriteNormalMode"])
		}
		
		def void setFlsMaxWriteNormalMode(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsMaxWriteNormalMode"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsMaxWriteNormalMode"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getFlsProtection(){
			ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsProtection"])
		}
		
		def void setFlsProtection(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsProtection"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsProtection"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		
		
		def FlsDemEventParameterRefs getFlsDemEventParameterRefs(){
			containerValue.getByType(typeof(FlsDemEventParameterRefs))
		}
		
		def void setFlsDemEventParameterRefs(GContainer subContainer){
			containerValue.setContainer(subContainer, "FlsDemEventParameterRefs")
		}
		
		def FlsExternalDriver getFlsExternalDriver(){
			containerValue.getByType(typeof(FlsExternalDriver))
		}
		
		def void setFlsExternalDriver(GContainer subContainer){
			containerValue.setContainer(subContainer, "FlsExternalDriver")
		}
		
		def FlsSectorList getFlsSectorList(){
			containerValue.getByType(typeof(FlsSectorList))
		}
		
		def void setFlsSectorList(GContainer subContainer){
			containerValue.setContainer(subContainer, "FlsSectorList")
		}
		
		
		static class FlsDemEventParameterRefs implements BasicWrappingEList.IWrapper<GContainer> {
			private GContainer containerValue
			
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
			
			def String getShortName(){
				containerValue?.gGetShortName
			}
			
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
			
			override def GContainer getTarget(){
				containerValue
			}
			
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getFLS_E_COMPARE_FAILED(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "FLS_E_COMPARE_FAILED")
			}
					
			def void setFLS_E_COMPARE_FAILED(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FLS_E_COMPARE_FAILED"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getFLS_E_ERASE_FAILED(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "FLS_E_ERASE_FAILED")
			}
					
			def void setFLS_E_ERASE_FAILED(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FLS_E_ERASE_FAILED"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getFLS_E_READ_FAILED(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "FLS_E_READ_FAILED")
			}
					
			def void setFLS_E_READ_FAILED(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FLS_E_READ_FAILED"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getFLS_E_UNEXPECTED_FLASH_ID(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "FLS_E_UNEXPECTED_FLASH_ID")
			}
					
			def void setFLS_E_UNEXPECTED_FLASH_ID(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FLS_E_UNEXPECTED_FLASH_ID"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getFLS_E_WRITE_FAILED(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "FLS_E_WRITE_FAILED")
			}
					
			def void setFLS_E_WRITE_FAILED(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FLS_E_WRITE_FAILED"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class FlsExternalDriver implements BasicWrappingEList.IWrapper<GContainer> {
			private GContainer containerValue
			
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
			
			def String getShortName(){
				containerValue?.gGetShortName
			}
			
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
			
			override def GContainer getTarget(){
				containerValue
			}
			
			
			def org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiSequence getFlsSpiReference(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiSequence), "FlsSpiReference")
			}
					
			def void setFlsSpiReference(org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiSequence object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FlsSpiReference"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class FlsSectorList implements BasicWrappingEList.IWrapper<GContainer> {
			private GContainer containerValue
			
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
			
			def String getShortName(){
				containerValue?.gGetShortName
			}
			
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
			
			override def GContainer getTarget(){
				containerValue
			}
			
			
			
			def List<FlsSector> getFlsSectors(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "FlsSector")
					}
				}
				return new BasicWrappingEList<FlsSector, GContainer>(filteredContainers, typeof(FlsSector), typeof(GContainer))
			}
			
			
			static class FlsSector implements BasicWrappingEList.IWrapper<GContainer> {
				private GContainer containerValue
				
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
				
				def String getShortName(){
					containerValue?.gGetShortName
				}
				
				def void setShortName(String name){
					containerValue?.gSetShortName(name)
				}
				
				override def GContainer getTarget(){
					containerValue
				}
				
				def Integer getFlsNumberOfSectors(){
					ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsNumberOfSectors"])
				}
				
				def void setFlsNumberOfSectors(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsNumberOfSectors"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsNumberOfSectors"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getFlsPageSize(){
					ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsPageSize"])
				}
				
				def void setFlsPageSize(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsPageSize"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsPageSize"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getFlsSectorSize(){
					ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsSectorSize"])
				}
				
				def void setFlsSectorSize(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsSectorSize"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsSectorSize"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				def Integer getFlsSectorStartaddress(){
					ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsSectorStartaddress"])
				}
				
				def void setFlsSectorStartaddress(Integer value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsSectorStartaddress"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsSectorStartaddress"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
				}
				
				
				
				
			}
			
		}
		
	}
	static class FlsGeneral implements BasicWrappingEList.IWrapper<GContainer> {
		private GContainer containerValue
		
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
		
		def String getShortName(){
			containerValue?.gGetShortName
		}
		
		def void setShortName(String name){
			containerValue?.gSetShortName(name)
		}
		
		override def GContainer getTarget(){
			containerValue
		}
		
		def Boolean getFlsAcLoadOnJobStart(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsAcLoadOnJobStart"])
		}
		
		def void setFlsAcLoadOnJobStart(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsAcLoadOnJobStart"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsAcLoadOnJobStart"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getFlsBaseAddress(){
			ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsBaseAddress"])
		}
		
		def void setFlsBaseAddress(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsBaseAddress"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsBaseAddress"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFlsBlankCheckApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsBlankCheckApi"])
		}
		
		def void setFlsBlankCheckApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsBlankCheckApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsBlankCheckApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFlsCancelApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsCancelApi"])
		}
		
		def void setFlsCancelApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsCancelApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsCancelApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFlsCompareApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsCompareApi"])
		}
		
		def void setFlsCompareApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsCompareApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsCompareApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFlsDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsDevErrorDetect"])
		}
		
		def void setFlsDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getFlsDriverIndex(){
			ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsDriverIndex"])
		}
		
		def void setFlsDriverIndex(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsDriverIndex"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsDriverIndex"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFlsGetJobResultApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsGetJobResultApi"])
		}
		
		def void setFlsGetJobResultApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsGetJobResultApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsGetJobResultApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFlsGetStatusApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsGetStatusApi"])
		}
		
		def void setFlsGetStatusApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsGetStatusApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsGetStatusApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFlsSetModeApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsSetModeApi"])
		}
		
		def void setFlsSetModeApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsSetModeApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsSetModeApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getFlsTotalSize(){
			ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTotalSize"])
		}
		
		def void setFlsTotalSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTotalSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsTotalSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFlsUseInterrupts(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsUseInterrupts"])
		}
		
		def void setFlsUseInterrupts(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsUseInterrupts"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsUseInterrupts"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFlsVersionInfoApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsVersionInfoApi"])
		}
		
		def void setFlsVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		
		
		
	}
	static class FlsPublishedInformation implements BasicWrappingEList.IWrapper<GContainer> {
		private GContainer containerValue
		
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
		
		def String getShortName(){
			containerValue?.gGetShortName
		}
		
		def void setShortName(String name){
			containerValue?.gSetShortName(name)
		}
		
		override def GContainer getTarget(){
			containerValue
		}
		
		def Integer getFlsAcLocationErase(){
			ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsAcLocationErase"])
		}
		
		def void setFlsAcLocationErase(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsAcLocationErase"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsAcLocationErase"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getFlsAcLocationWrite(){
			ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsAcLocationWrite"])
		}
		
		def void setFlsAcLocationWrite(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsAcLocationWrite"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsAcLocationWrite"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getFlsAcSizeErase(){
			ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsAcSizeErase"])
		}
		
		def void setFlsAcSizeErase(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsAcSizeErase"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsAcSizeErase"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getFlsAcSizeWrite(){
			ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsAcSizeWrite"])
		}
		
		def void setFlsAcSizeWrite(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsAcSizeWrite"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsAcSizeWrite"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Float getFlsEraseTime(){
			ParameterValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsEraseTime"])
		}
		
		def void setFlsEraseTime(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsEraseTime"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsEraseTime"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getFlsErasedValue(){
			ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsErasedValue"])
		}
		
		def void setFlsErasedValue(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsErasedValue"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsErasedValue"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def String getFlsExpectedHwId(){
			ParameterValueAccessor4xUtil.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsExpectedHwId"])
		}
		
		def void setFlsExpectedHwId(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsExpectedHwId"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsExpectedHwId"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Integer getFlsSpecifiedEraseCycles(){
			ParameterValueAccessor4xUtil.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsSpecifiedEraseCycles"])
		}
		
		def void setFlsSpecifiedEraseCycles(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsSpecifiedEraseCycles"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsSpecifiedEraseCycles"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
		}
		
		def Float getFlsWriteTime(){
			ParameterValueAccessor4xUtil.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsWriteTime"])
		}
		
		def void setFlsWriteTime(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsWriteTime"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = ParameterValueAccessor4xUtil.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FlsWriteTime"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			ParameterValueAccessor4xUtil.setParameterValue(parameterValue, value)
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
