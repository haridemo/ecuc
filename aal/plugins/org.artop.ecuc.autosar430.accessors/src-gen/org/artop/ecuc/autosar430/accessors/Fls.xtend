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

class Fls implements IWrapper<GModuleConfiguration> {
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

	static class FlsConfigSet implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
		def String getShortName(){
			containerValue?.gGetShortName
		}
	
		def void setShortName(String name){
			containerValue?.gSetShortName(name)
		}
	
		override def GContainer getTarget(){
			containerValue
		}
	
		override def boolean equals(Object object) {
	        if (!(object instanceof FlsConfigSet)){
				return false
			}
			this.target == (object as FlsConfigSet).target
		}
	
		def BigInteger getFlsAcErase(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsAcErase"].getBigIntegerValue()
		}
		
		def void setFlsAcErase(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsAcErase"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsAcErase"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getFlsAcWrite(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsAcWrite"].getBigIntegerValue()
		}
		
		def void setFlsAcWrite(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsAcWrite"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsAcWrite"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getFlsCallCycle(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsCallCycle"].getBigDecimalValue()
		}
		
		def void setFlsCallCycle(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsCallCycle"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsCallCycle"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def FlsDefaultMode getFlsDefaultMode(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsDefaultMode"].getFlsDefaultModeValue()
		}
		
		def void setFlsDefaultMode(FlsDefaultMode value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsDefaultMode"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsDefaultMode"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum FlsDefaultMode {
			MEMIF_MODE_FAST, 
			MEMIF_MODE_SLOW
		}
		
		def FlsDefaultMode getFlsDefaultModeValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "MEMIF_MODE_FAST" : FlsDefaultMode.MEMIF_MODE_FAST
				case "MEMIF_MODE_SLOW" : FlsDefaultMode.MEMIF_MODE_SLOW
			}
		}
		
		def void setFlsDefaultModeValue(GParameterValue parameterValue, FlsDefaultMode value){
			parameterValue.setValue(value)
		}
		
		def String getFlsJobEndNotification(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsJobEndNotification"].getStringValue()
		}
		
		def void setFlsJobEndNotification(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsJobEndNotification"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsJobEndNotification"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def String getFlsJobErrorNotification(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsJobErrorNotification"].getStringValue()
		}
		
		def void setFlsJobErrorNotification(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsJobErrorNotification"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsJobErrorNotification"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getFlsMaxReadFastMode(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsMaxReadFastMode"].getBigIntegerValue()
		}
		
		def void setFlsMaxReadFastMode(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsMaxReadFastMode"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsMaxReadFastMode"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getFlsMaxReadNormalMode(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsMaxReadNormalMode"].getBigIntegerValue()
		}
		
		def void setFlsMaxReadNormalMode(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsMaxReadNormalMode"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsMaxReadNormalMode"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getFlsMaxWriteFastMode(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsMaxWriteFastMode"].getBigIntegerValue()
		}
		
		def void setFlsMaxWriteFastMode(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsMaxWriteFastMode"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsMaxWriteFastMode"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getFlsMaxWriteNormalMode(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsMaxWriteNormalMode"].getBigIntegerValue()
		}
		
		def void setFlsMaxWriteNormalMode(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsMaxWriteNormalMode"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsMaxWriteNormalMode"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getFlsProtection(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsProtection"].getBigIntegerValue()
		}
		
		def void setFlsProtection(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsProtection"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsProtection"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def FlsExternalDriver getFlsExternalDriver(){
			containerValue.getByType(typeof(FlsExternalDriver))
		}
		
		def void setFlsExternalDriver(FlsExternalDriver flsExternalDriver){
			val GContainer subContainer = flsExternalDriver.getTarget()
			containerValue.setContainer(subContainer, "FlsExternalDriver")
		}
		
		def FlsSectorList getFlsSectorList(){
			containerValue.getByType(typeof(FlsSectorList))
		}
		
		def void setFlsSectorList(FlsSectorList flsSectorList){
			val GContainer subContainer = flsSectorList.getTarget()
			containerValue.setContainer(subContainer, "FlsSectorList")
		}
		
		
		static class FlsExternalDriver implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof FlsExternalDriver)){
					return false
				}
				this.target == (object as FlsExternalDriver).target
			}
		
			
			def List<org.artop.ecuc.autosar430.accessors.Spi.SpiDriver.SpiSequence> getFlsSpiReferences(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "FlsSpiReference"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "FlsSpiReference")
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
		
		static class FlsSectorList implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
			def String getShortName(){
				containerValue?.gGetShortName
			}
		
			def void setShortName(String name){
				containerValue?.gSetShortName(name)
			}
		
			override def GContainer getTarget(){
				containerValue
			}
		
			override def boolean equals(Object object) {
		        if (!(object instanceof FlsSectorList)){
					return false
				}
				this.target == (object as FlsSectorList).target
			}
		
			
			
			def List<FlsSector> getFlsSectors(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "FlsSector")
					}
				}
				return new BasicWrappingEList<FlsSector, GContainer>(filteredContainers, typeof(FlsSector), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar430.accessors.Fls.FlsConfigSet.FlsSectorList.FlsSector flsSector) {
						flsSector.target?.gSetDefinition(containerValue.getContainerDefinition("FlsSector"))
						super.delegateAdd(flsSector)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.Fls.FlsConfigSet.FlsSectorList.FlsSector flsSector) {
						flsSector.target?.gSetDefinition(containerValue.getContainerDefinition("FlsSector"))
						super.delegateAdd(index, flsSector)
					}
				}
			}
			
			
			static class FlsSector implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
				def String getShortName(){
					containerValue?.gGetShortName
				}
			
				def void setShortName(String name){
					containerValue?.gSetShortName(name)
				}
			
				override def GContainer getTarget(){
					containerValue
				}
			
				override def boolean equals(Object object) {
			        if (!(object instanceof FlsSector)){
						return false
					}
					this.target == (object as FlsSector).target
				}
			
				def BigInteger getFlsNumberOfSectors(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsNumberOfSectors"].getBigIntegerValue()
				}
				
				def void setFlsNumberOfSectors(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsNumberOfSectors"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsNumberOfSectors"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getFlsPageSize(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsPageSize"].getBigIntegerValue()
				}
				
				def void setFlsPageSize(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsPageSize"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsPageSize"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getFlsSectorSize(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsSectorSize"].getBigIntegerValue()
				}
				
				def void setFlsSectorSize(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsSectorSize"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsSectorSize"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getFlsSectorStartaddress(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsSectorStartaddress"].getBigIntegerValue()
				}
				
				def void setFlsSectorStartaddress(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsSectorStartaddress"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsSectorStartaddress"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
		}
		
	}
	static class FlsGeneral implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
		def String getShortName(){
			containerValue?.gGetShortName
		}
	
		def void setShortName(String name){
			containerValue?.gSetShortName(name)
		}
	
		override def GContainer getTarget(){
			containerValue
		}
	
		override def boolean equals(Object object) {
	        if (!(object instanceof FlsGeneral)){
				return false
			}
			this.target == (object as FlsGeneral).target
		}
	
		def Boolean getFlsAcLoadOnJobStart(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsAcLoadOnJobStart"].getBooleanValue()
		}
		
		def void setFlsAcLoadOnJobStart(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsAcLoadOnJobStart"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsAcLoadOnJobStart"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getFlsBaseAddress(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsBaseAddress"].getBigIntegerValue()
		}
		
		def void setFlsBaseAddress(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsBaseAddress"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsBaseAddress"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getFlsBlankCheckApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsBlankCheckApi"].getBooleanValue()
		}
		
		def void setFlsBlankCheckApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsBlankCheckApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsBlankCheckApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFlsCancelApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsCancelApi"].getBooleanValue()
		}
		
		def void setFlsCancelApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsCancelApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsCancelApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFlsCompareApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsCompareApi"].getBooleanValue()
		}
		
		def void setFlsCompareApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsCompareApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsCompareApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFlsDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsDevErrorDetect"].getBooleanValue()
		}
		
		def void setFlsDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getFlsDriverIndex(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsDriverIndex"].getBigIntegerValue()
		}
		
		def void setFlsDriverIndex(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsDriverIndex"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsDriverIndex"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getFlsEraseVerificationEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsEraseVerificationEnabled"].getBooleanValue()
		}
		
		def void setFlsEraseVerificationEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsEraseVerificationEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsEraseVerificationEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFlsGetJobResultApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsGetJobResultApi"].getBooleanValue()
		}
		
		def void setFlsGetJobResultApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsGetJobResultApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsGetJobResultApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFlsGetStatusApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsGetStatusApi"].getBooleanValue()
		}
		
		def void setFlsGetStatusApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsGetStatusApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsGetStatusApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFlsSetModeApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsSetModeApi"].getBooleanValue()
		}
		
		def void setFlsSetModeApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsSetModeApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsSetModeApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFlsTimeoutSupervisionEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTimeoutSupervisionEnabled"].getBooleanValue()
		}
		
		def void setFlsTimeoutSupervisionEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTimeoutSupervisionEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsTimeoutSupervisionEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getFlsTotalSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTotalSize"].getBigIntegerValue()
		}
		
		def void setFlsTotalSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsTotalSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsTotalSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getFlsUseInterrupts(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsUseInterrupts"].getBooleanValue()
		}
		
		def void setFlsUseInterrupts(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsUseInterrupts"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsUseInterrupts"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFlsVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsVersionInfoApi"].getBooleanValue()
		}
		
		def void setFlsVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFlsWriteVerificationEnabled(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsWriteVerificationEnabled"].getBooleanValue()
		}
		
		def void setFlsWriteVerificationEnabled(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsWriteVerificationEnabled"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsWriteVerificationEnabled"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}
	static class FlsPublishedInformation implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
		def String getShortName(){
			containerValue?.gGetShortName
		}
	
		def void setShortName(String name){
			containerValue?.gSetShortName(name)
		}
	
		override def GContainer getTarget(){
			containerValue
		}
	
		override def boolean equals(Object object) {
	        if (!(object instanceof FlsPublishedInformation)){
				return false
			}
			this.target == (object as FlsPublishedInformation).target
		}
	
		def BigInteger getFlsAcLocationErase(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsAcLocationErase"].getBigIntegerValue()
		}
		
		def void setFlsAcLocationErase(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsAcLocationErase"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsAcLocationErase"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getFlsAcLocationWrite(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsAcLocationWrite"].getBigIntegerValue()
		}
		
		def void setFlsAcLocationWrite(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsAcLocationWrite"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsAcLocationWrite"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getFlsAcSizeErase(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsAcSizeErase"].getBigIntegerValue()
		}
		
		def void setFlsAcSizeErase(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsAcSizeErase"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsAcSizeErase"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getFlsAcSizeWrite(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsAcSizeWrite"].getBigIntegerValue()
		}
		
		def void setFlsAcSizeWrite(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsAcSizeWrite"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsAcSizeWrite"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getFlsErasedValue(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsErasedValue"].getBigIntegerValue()
		}
		
		def void setFlsErasedValue(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsErasedValue"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsErasedValue"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getFlsEraseTime(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsEraseTime"].getBigDecimalValue()
		}
		
		def void setFlsEraseTime(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsEraseTime"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsEraseTime"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def String getFlsExpectedHwId(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsExpectedHwId"].getStringValue()
		}
		
		def void setFlsExpectedHwId(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsExpectedHwId"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsExpectedHwId"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getFlsSpecifiedEraseCycles(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsSpecifiedEraseCycles"].getBigIntegerValue()
		}
		
		def void setFlsSpecifiedEraseCycles(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsSpecifiedEraseCycles"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsSpecifiedEraseCycles"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getFlsWriteTime(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsWriteTime"].getBigDecimalValue()
		}
		
		def void setFlsWriteTime(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FlsWriteTime"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FlsWriteTime"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof Fls)){
			return false
		}
		this.target == (object as Fls).target
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
