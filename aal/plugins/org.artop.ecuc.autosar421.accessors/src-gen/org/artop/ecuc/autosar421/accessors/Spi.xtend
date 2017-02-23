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

class Spi implements IWrapper<GModuleConfiguration> {
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

	def SpiDemEventParameterRefs getSpiDemEventParameterRefs(){
		moduleConfiguration.getByType(typeof(SpiDemEventParameterRefs))
	}

	def void setSpiDemEventParameterRefs(SpiDemEventParameterRefs spiDemEventParameterRefs){
		val GContainer container = spiDemEventParameterRefs.getTarget()
	    moduleConfiguration.setContainer(container, "SpiDemEventParameterRefs")
	}
	def SpiDriver getSpiDriver(){
		moduleConfiguration.getByType(typeof(SpiDriver))
	}

	def void setSpiDriver(SpiDriver spiDriver){
		val GContainer container = spiDriver.getTarget()
	    moduleConfiguration.setContainer(container, "SpiDriver")
	}
	def SpiGeneral getSpiGeneral(){
		moduleConfiguration.getByType(typeof(SpiGeneral))
	}

	def void setSpiGeneral(SpiGeneral spiGeneral){
		val GContainer container = spiGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "SpiGeneral")
	}
	def SpiPublishedInformation getSpiPublishedInformation(){
		moduleConfiguration.getByType(typeof(SpiPublishedInformation))
	}

	def void setSpiPublishedInformation(SpiPublishedInformation spiPublishedInformation){
		val GContainer container = spiPublishedInformation.getTarget()
	    moduleConfiguration.setContainer(container, "SpiPublishedInformation")
	}

	static class SpiDemEventParameterRefs implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
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
	        if (!(object instanceof SpiDemEventParameterRefs)){
				return false
			}
			this.target == (object as SpiDemEventParameterRefs).target
		}
	
		
		def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getSPI_E_HARDWARE_ERROR(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "SPI_E_HARDWARE_ERROR")
		}
		
		def void setSPI_E_HARDWARE_ERROR(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SPI_E_HARDWARE_ERROR"], object.getTarget())
			}
		}
		
		
		
	}
	static class SpiDriver implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
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
	        if (!(object instanceof SpiDriver)){
				return false
			}
			this.target == (object as SpiDriver).target
		}
	
		def BigInteger getSpiMaxChannel(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiMaxChannel"].getBigIntegerValue()
		}
		
		def void setSpiMaxChannel(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiMaxChannel"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SpiMaxChannel"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getSpiMaxJob(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiMaxJob"].getBigIntegerValue()
		}
		
		def void setSpiMaxJob(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiMaxJob"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SpiMaxJob"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getSpiMaxSequence(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiMaxSequence"].getBigIntegerValue()
		}
		
		def void setSpiMaxSequence(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiMaxSequence"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SpiMaxSequence"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<SpiChannel> getSpiChannels(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "SpiChannel")
				}
			}
			return new BasicWrappingEList<SpiChannel, GContainer>(filteredContainers, typeof(SpiChannel), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiChannel spiChannel) {
					spiChannel.target?.gSetDefinition(containerValue.getContainerDefinition("SpiChannel"))
					super.delegateAdd(spiChannel)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiChannel spiChannel) {
					spiChannel.target?.gSetDefinition(containerValue.getContainerDefinition("SpiChannel"))
					super.delegateAdd(index, spiChannel)
				}
			}
		}
		
		def List<SpiExternalDevice> getSpiExternalDevices(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "SpiExternalDevice")
				}
			}
			return new BasicWrappingEList<SpiExternalDevice, GContainer>(filteredContainers, typeof(SpiExternalDevice), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiExternalDevice spiExternalDevice) {
					spiExternalDevice.target?.gSetDefinition(containerValue.getContainerDefinition("SpiExternalDevice"))
					super.delegateAdd(spiExternalDevice)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiExternalDevice spiExternalDevice) {
					spiExternalDevice.target?.gSetDefinition(containerValue.getContainerDefinition("SpiExternalDevice"))
					super.delegateAdd(index, spiExternalDevice)
				}
			}
		}
		
		def List<SpiJob> getSpiJobs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "SpiJob")
				}
			}
			return new BasicWrappingEList<SpiJob, GContainer>(filteredContainers, typeof(SpiJob), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiJob spiJob) {
					spiJob.target?.gSetDefinition(containerValue.getContainerDefinition("SpiJob"))
					super.delegateAdd(spiJob)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiJob spiJob) {
					spiJob.target?.gSetDefinition(containerValue.getContainerDefinition("SpiJob"))
					super.delegateAdd(index, spiJob)
				}
			}
		}
		
		def List<SpiSequence> getSpiSequences(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "SpiSequence")
				}
			}
			return new BasicWrappingEList<SpiSequence, GContainer>(filteredContainers, typeof(SpiSequence), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiSequence spiSequence) {
					spiSequence.target?.gSetDefinition(containerValue.getContainerDefinition("SpiSequence"))
					super.delegateAdd(spiSequence)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiSequence spiSequence) {
					spiSequence.target?.gSetDefinition(containerValue.getContainerDefinition("SpiSequence"))
					super.delegateAdd(index, spiSequence)
				}
			}
		}
		
		
		static class SpiChannel implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
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
		        if (!(object instanceof SpiChannel)){
					return false
				}
				this.target == (object as SpiChannel).target
			}
		
			def BigInteger getSpiChannelId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiChannelId"].getBigIntegerValue()
			}
			
			def void setSpiChannelId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiChannelId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SpiChannelId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def SpiChannelType getSpiChannelType(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiChannelType"].getSpiChannelTypeValue()
			}
			
			def void setSpiChannelType(SpiChannelType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiChannelType"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SpiChannelType"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum SpiChannelType {
				EB, 
				IB
			}
			
			def SpiChannelType getSpiChannelTypeValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "EB" : SpiChannelType.EB
					case "IB" : SpiChannelType.IB
				}
			}
			
			def void setSpiChannelTypeValue(GParameterValue parameterValue, SpiChannelType value){
				parameterValue.setValue(value)
			}
			
			def BigInteger getSpiDataWidth(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiDataWidth"].getBigIntegerValue()
			}
			
			def void setSpiDataWidth(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiDataWidth"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SpiDataWidth"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getSpiDefaultData(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiDefaultData"].getBigIntegerValue()
			}
			
			def void setSpiDefaultData(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiDefaultData"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SpiDefaultData"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getSpiEbMaxLength(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiEbMaxLength"].getBigIntegerValue()
			}
			
			def void setSpiEbMaxLength(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiEbMaxLength"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SpiEbMaxLength"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getSpiIbNBuffers(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiIbNBuffers"].getBigIntegerValue()
			}
			
			def void setSpiIbNBuffers(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiIbNBuffers"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SpiIbNBuffers"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def SpiTransferStart getSpiTransferStart(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiTransferStart"].getSpiTransferStartValue()
			}
			
			def void setSpiTransferStart(SpiTransferStart value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiTransferStart"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SpiTransferStart"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum SpiTransferStart {
				LSB, 
				MSB
			}
			
			def SpiTransferStart getSpiTransferStartValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "LSB" : SpiTransferStart.LSB
					case "MSB" : SpiTransferStart.MSB
				}
			}
			
			def void setSpiTransferStartValue(GParameterValue parameterValue, SpiTransferStart value){
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
		static class SpiExternalDevice implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
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
		        if (!(object instanceof SpiExternalDevice)){
					return false
				}
				this.target == (object as SpiExternalDevice).target
			}
		
			def BigDecimal getSpiBaudrate(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiBaudrate"].getBigDecimalValue()
			}
			
			def void setSpiBaudrate(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiBaudrate"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SpiBaudrate"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getSpiCsIdentifier(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiCsIdentifier"].getStringValue()
			}
			
			def void setSpiCsIdentifier(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiCsIdentifier"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SpiCsIdentifier"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def SpiCsPolarity getSpiCsPolarity(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiCsPolarity"].getSpiCsPolarityValue()
			}
			
			def void setSpiCsPolarity(SpiCsPolarity value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiCsPolarity"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SpiCsPolarity"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum SpiCsPolarity {
				HIGH, 
				LOW
			}
			
			def SpiCsPolarity getSpiCsPolarityValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "HIGH" : SpiCsPolarity.HIGH
					case "LOW" : SpiCsPolarity.LOW
				}
			}
			
			def void setSpiCsPolarityValue(GParameterValue parameterValue, SpiCsPolarity value){
				parameterValue.setValue(value)
			}
			
			def SpiCsSelection getSpiCsSelection(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiCsSelection"].getSpiCsSelectionValue()
			}
			
			def void setSpiCsSelection(SpiCsSelection value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiCsSelection"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SpiCsSelection"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum SpiCsSelection {
				CS_VIA_GPIO, 
				CS_VIA_PERIPHERAL_ENGINE
			}
			
			def SpiCsSelection getSpiCsSelectionValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "CS_VIA_GPIO" : SpiCsSelection.CS_VIA_GPIO
					case "CS_VIA_PERIPHERAL_ENGINE" : SpiCsSelection.CS_VIA_PERIPHERAL_ENGINE
				}
			}
			
			def void setSpiCsSelectionValue(GParameterValue parameterValue, SpiCsSelection value){
				parameterValue.setValue(value)
			}
			
			def SpiDataShiftEdge getSpiDataShiftEdge(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiDataShiftEdge"].getSpiDataShiftEdgeValue()
			}
			
			def void setSpiDataShiftEdge(SpiDataShiftEdge value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiDataShiftEdge"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SpiDataShiftEdge"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum SpiDataShiftEdge {
				LEADING, 
				TRAILING
			}
			
			def SpiDataShiftEdge getSpiDataShiftEdgeValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "LEADING" : SpiDataShiftEdge.LEADING
					case "TRAILING" : SpiDataShiftEdge.TRAILING
				}
			}
			
			def void setSpiDataShiftEdgeValue(GParameterValue parameterValue, SpiDataShiftEdge value){
				parameterValue.setValue(value)
			}
			
			def Boolean getSpiEnableCs(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiEnableCs"].getBooleanValue()
			}
			
			def void setSpiEnableCs(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiEnableCs"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SpiEnableCs"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def SpiHwUnit getSpiHwUnit(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiHwUnit"].getSpiHwUnitValue()
			}
			
			def void setSpiHwUnit(SpiHwUnit value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiHwUnit"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SpiHwUnit"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum SpiHwUnit {
				CSIB0, 
				CSIB1, 
				CSIB2, 
				CSIB3
			}
			
			def SpiHwUnit getSpiHwUnitValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "CSIB0" : SpiHwUnit.CSIB0
					case "CSIB1" : SpiHwUnit.CSIB1
					case "CSIB2" : SpiHwUnit.CSIB2
					case "CSIB3" : SpiHwUnit.CSIB3
				}
			}
			
			def void setSpiHwUnitValue(GParameterValue parameterValue, SpiHwUnit value){
				parameterValue.setValue(value)
			}
			
			def SpiShiftClockIdleLevel getSpiShiftClockIdleLevel(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiShiftClockIdleLevel"].getSpiShiftClockIdleLevelValue()
			}
			
			def void setSpiShiftClockIdleLevel(SpiShiftClockIdleLevel value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiShiftClockIdleLevel"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SpiShiftClockIdleLevel"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum SpiShiftClockIdleLevel {
				HIGH, 
				LOW
			}
			
			def SpiShiftClockIdleLevel getSpiShiftClockIdleLevelValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "HIGH" : SpiShiftClockIdleLevel.HIGH
					case "LOW" : SpiShiftClockIdleLevel.LOW
				}
			}
			
			def void setSpiShiftClockIdleLevelValue(GParameterValue parameterValue, SpiShiftClockIdleLevel value){
				parameterValue.setValue(value)
			}
			
			def BigDecimal getSpiTimeClk2Cs(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiTimeClk2Cs"].getBigDecimalValue()
			}
			
			def void setSpiTimeClk2Cs(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiTimeClk2Cs"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SpiTimeClk2Cs"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			
		}
		
		static class SpiJob implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
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
		        if (!(object instanceof SpiJob)){
					return false
				}
				this.target == (object as SpiJob).target
			}
		
			def SpiHwUnitSynchronous getSpiHwUnitSynchronous(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiHwUnitSynchronous"].getSpiHwUnitSynchronousValue()
			}
			
			def void setSpiHwUnitSynchronous(SpiHwUnitSynchronous value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiHwUnitSynchronous"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SpiHwUnitSynchronous"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum SpiHwUnitSynchronous {
				ASYNCHRONOUS, 
				SYNCHRONOUS
			}
			
			def SpiHwUnitSynchronous getSpiHwUnitSynchronousValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "ASYNCHRONOUS" : SpiHwUnitSynchronous.ASYNCHRONOUS
					case "SYNCHRONOUS" : SpiHwUnitSynchronous.SYNCHRONOUS
				}
			}
			
			def void setSpiHwUnitSynchronousValue(GParameterValue parameterValue, SpiHwUnitSynchronous value){
				parameterValue.setValue(value)
			}
			
			def String getSpiJobEndNotification(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiJobEndNotification"].getStringValue()
			}
			
			def void setSpiJobEndNotification(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiJobEndNotification"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SpiJobEndNotification"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getSpiJobId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiJobId"].getBigIntegerValue()
			}
			
			def void setSpiJobId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiJobId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SpiJobId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getSpiJobPriority(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiJobPriority"].getBigIntegerValue()
			}
			
			def void setSpiJobPriority(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiJobPriority"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SpiJobPriority"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiExternalDevice getSpiDeviceAssignment(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiExternalDevice), "SpiDeviceAssignment")
			}
			
			def void setSpiDeviceAssignment(org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiExternalDevice object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SpiDeviceAssignment"], object.getTarget())
				}
			}
			
			
			def List<SpiChannelList> getSpiChannelLists(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "SpiChannelList")
					}
				}
				return new BasicWrappingEList<SpiChannelList, GContainer>(filteredContainers, typeof(SpiChannelList), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiJob.SpiChannelList spiChannelList) {
						spiChannelList.target?.gSetDefinition(containerValue.getContainerDefinition("SpiChannelList"))
						super.delegateAdd(spiChannelList)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiJob.SpiChannelList spiChannelList) {
						spiChannelList.target?.gSetDefinition(containerValue.getContainerDefinition("SpiChannelList"))
						super.delegateAdd(index, spiChannelList)
					}
				}
			}
			
			
			static class SpiChannelList implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
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
			        if (!(object instanceof SpiChannelList)){
						return false
					}
					this.target == (object as SpiChannelList).target
				}
			
				def BigInteger getSpiChannelIndex(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiChannelIndex"].getBigIntegerValue()
				}
				
				def void setSpiChannelIndex(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiChannelIndex"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SpiChannelIndex"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiChannel getSpiChannelAssignment(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiChannel), "SpiChannelAssignment")
				}
				
				def void setSpiChannelAssignment(org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiChannel object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SpiChannelAssignment"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class SpiSequence implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
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
		        if (!(object instanceof SpiSequence)){
					return false
				}
				this.target == (object as SpiSequence).target
			}
		
			def Boolean getSpiInterruptibleSequence(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiInterruptibleSequence"].getBooleanValue()
			}
			
			def void setSpiInterruptibleSequence(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiInterruptibleSequence"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SpiInterruptibleSequence"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def String getSpiSeqEndNotification(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiSeqEndNotification"].getStringValue()
			}
			
			def void setSpiSeqEndNotification(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiSeqEndNotification"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SpiSeqEndNotification"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getSpiSequenceId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiSequenceId"].getBigIntegerValue()
			}
			
			def void setSpiSequenceId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiSequenceId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SpiSequenceId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def List<org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiJob> getSpiJobAssignments(){
				val containerDef = containerValue.gGetDefinition
				val GConfigReference referenceValueDef = if (containerDef instanceof GParamConfContainerDef)
					containerDef.gGetReferences.findFirst[gGetShortName == "SpiJobAssignment"] else null
			
				val List<GReferenceValue> filteredReferenceValues = new AbstractFilteringEList<GReferenceValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGConfigReferenceValue())) {
					override protected accept(GReferenceValue item) {
						return accept(item, typeof(GConfigReference), "SpiJobAssignment")
					}
				}
			
				return new AbstractUnwrappingEList<GReferenceValue, org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiJob>(filteredReferenceValues, typeof(GReferenceValue), typeof(org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiJob)) {
					override protected wrap(org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiJob object) throws CoreException {
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
								return new org.artop.ecuc.autosar421.accessors.Spi.SpiDriver.SpiJob(referenceValueValue as GContainer)
							}
						}
					}
				}
			}
			
			
			
		}
		
	}
	static class SpiGeneral implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
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
	        if (!(object instanceof SpiGeneral)){
				return false
			}
			this.target == (object as SpiGeneral).target
		}
	
		def Boolean getSpiCancelApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiCancelApi"].getBooleanValue()
		}
		
		def void setSpiCancelApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiCancelApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SpiCancelApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getSpiChannelBuffersAllowed(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiChannelBuffersAllowed"].getBigIntegerValue()
		}
		
		def void setSpiChannelBuffersAllowed(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiChannelBuffersAllowed"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SpiChannelBuffersAllowed"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getSpiDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiDevErrorDetect"].getBooleanValue()
		}
		
		def void setSpiDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SpiDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getSpiHwStatusApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiHwStatusApi"].getBooleanValue()
		}
		
		def void setSpiHwStatusApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiHwStatusApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SpiHwStatusApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getSpiInterruptibleSeqAllowed(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiInterruptibleSeqAllowed"].getBooleanValue()
		}
		
		def void setSpiInterruptibleSeqAllowed(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiInterruptibleSeqAllowed"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SpiInterruptibleSeqAllowed"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getSpiLevelDelivered(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiLevelDelivered"].getBigIntegerValue()
		}
		
		def void setSpiLevelDelivered(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiLevelDelivered"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SpiLevelDelivered"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getSpiMainFunctionPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiMainFunctionPeriod"].getBigDecimalValue()
		}
		
		def void setSpiMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiMainFunctionPeriod"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SpiMainFunctionPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getSpiSupportConcurrentSyncTransmit(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiSupportConcurrentSyncTransmit"].getBooleanValue()
		}
		
		def void setSpiSupportConcurrentSyncTransmit(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiSupportConcurrentSyncTransmit"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SpiSupportConcurrentSyncTransmit"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def List<String> getSpiUserCallbackHeaderFiles(){
			val List<EcucTextualParamValue> filteredParameterValues = new AbstractFilteringEList<EcucTextualParamValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {
				override protected accept(EcucTextualParamValue item) {
					return accept(item, typeof(GConfigParameter), "SpiUserCallbackHeaderFile")
				}
			}
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == "SpiUserCallbackHeaderFile"]
				return new StringValueUnwrappingEList(filteredParameterValues, typeof(EcucTextualParamValue), typeof(String), parameterDef)
			}
		}
		
		def Boolean getSpiVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiVersionInfoApi"].getBooleanValue()
		}
		
		def void setSpiVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SpiVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}
	static class SpiPublishedInformation implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
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
	        if (!(object instanceof SpiPublishedInformation)){
				return false
			}
			this.target == (object as SpiPublishedInformation).target
		}
	
		def BigInteger getSpiMaxHwUnit(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiMaxHwUnit"].getBigIntegerValue()
		}
		
		def void setSpiMaxHwUnit(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SpiMaxHwUnit"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SpiMaxHwUnit"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof Spi)){
			return false
		}
		this.target == (object as Spi).target
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
