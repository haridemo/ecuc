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

class FrIf implements IWrapper<GModuleConfiguration> {
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

	def FrIfConfig getFrIfConfig(){
		moduleConfiguration.getByType(typeof(FrIfConfig))
	}

	def void setFrIfConfig(FrIfConfig frIfConfig){
		val GContainer container = frIfConfig.getTarget()
	    moduleConfiguration.setContainer(container, "FrIfConfig")
	}
	def FrIfGeneral getFrIfGeneral(){
		moduleConfiguration.getByType(typeof(FrIfGeneral))
	}

	def void setFrIfGeneral(FrIfGeneral frIfGeneral){
		val GContainer container = frIfGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "FrIfGeneral")
	}

	static class FrIfConfig implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
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
	        if (!(object instanceof FrIfConfig)){
				return false
			}
			this.target == (object as FrIfConfig).target
		}
	
		def BigInteger getFrIfMaxPduCnt(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfMaxPduCnt"].getBigIntegerValue()
		}
		
		def void setFrIfMaxPduCnt(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfMaxPduCnt"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfMaxPduCnt"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		def List<FrIfCluster> getFrIfClusters(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "FrIfCluster")
				}
			}
			return new BasicWrappingEList<FrIfCluster, GContainer>(filteredContainers, typeof(FrIfCluster), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.FrIf.FrIfConfig.FrIfCluster frIfCluster) {
					frIfCluster.target?.gSetDefinition(containerValue.getContainerDefinition("FrIfCluster"))
					super.delegateAdd(frIfCluster)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.FrIf.FrIfConfig.FrIfCluster frIfCluster) {
					frIfCluster.target?.gSetDefinition(containerValue.getContainerDefinition("FrIfCluster"))
					super.delegateAdd(index, frIfCluster)
				}
			}
		}
		
		def List<FrIfFrameStructure> getFrIfFrameStructures(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "FrIfFrameStructure")
				}
			}
			return new BasicWrappingEList<FrIfFrameStructure, GContainer>(filteredContainers, typeof(FrIfFrameStructure), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.FrIf.FrIfConfig.FrIfFrameStructure frIfFrameStructure) {
					frIfFrameStructure.target?.gSetDefinition(containerValue.getContainerDefinition("FrIfFrameStructure"))
					super.delegateAdd(frIfFrameStructure)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.FrIf.FrIfConfig.FrIfFrameStructure frIfFrameStructure) {
					frIfFrameStructure.target?.gSetDefinition(containerValue.getContainerDefinition("FrIfFrameStructure"))
					super.delegateAdd(index, frIfFrameStructure)
				}
			}
		}
		
		def List<FrIfPdu> getFrIfPdus(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "FrIfPdu")
				}
			}
			return new BasicWrappingEList<FrIfPdu, GContainer>(filteredContainers, typeof(FrIfPdu), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar444.accessors.FrIf.FrIfConfig.FrIfPdu frIfPdu) {
					frIfPdu.target?.gSetDefinition(containerValue.getContainerDefinition("FrIfPdu"))
					super.delegateAdd(frIfPdu)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.FrIf.FrIfConfig.FrIfPdu frIfPdu) {
					frIfPdu.target?.gSetDefinition(containerValue.getContainerDefinition("FrIfPdu"))
					super.delegateAdd(index, frIfPdu)
				}
			}
		}
		
		
		static class FrIfCluster implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
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
		        if (!(object instanceof FrIfCluster)){
					return false
				}
				this.target == (object as FrIfCluster).target
			}
		
			def BigInteger getFrIfClstIdx(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfClstIdx"].getBigIntegerValue()
			}
			
			def void setFrIfClstIdx(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfClstIdx"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfClstIdx"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getFrIfDetectNITError(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfDetectNITError"].getBooleanValue()
			}
			
			def void setFrIfDetectNITError(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfDetectNITError"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfDetectNITError"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def FrIfGChannels getFrIfGChannels(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGChannels"].getFrIfGChannelsValue()
			}
			
			def void setFrIfGChannels(FrIfGChannels value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGChannels"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGChannels"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum FrIfGChannels {
				FR_CHANNEL_A, 
				FR_CHANNEL_AB, 
				FR_CHANNEL_B
			}
			
			def FrIfGChannels getFrIfGChannelsValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "FR_CHANNEL_A" : FrIfGChannels.FR_CHANNEL_A
					case "FR_CHANNEL_AB" : FrIfGChannels.FR_CHANNEL_AB
					case "FR_CHANNEL_B" : FrIfGChannels.FR_CHANNEL_B
				}
			}
			
			def void setFrIfGChannelsValue(GParameterValue parameterValue, FrIfGChannels value){
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrIfGColdStartAttempts(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGColdStartAttempts"].getBigIntegerValue()
			}
			
			def void setFrIfGColdStartAttempts(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGColdStartAttempts"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGColdStartAttempts"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrIfGCycleCountMax(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGCycleCountMax"].getBigIntegerValue()
			}
			
			def void setFrIfGCycleCountMax(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGCycleCountMax"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGCycleCountMax"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrIfGdActionPointOffset(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdActionPointOffset"].getBigIntegerValue()
			}
			
			def void setFrIfGdActionPointOffset(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdActionPointOffset"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdActionPointOffset"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def FrIfGdBit getFrIfGdBit(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdBit"].getFrIfGdBitValue()
			}
			
			def void setFrIfGdBit(FrIfGdBit value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdBit"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdBit"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum FrIfGdBit {
				T100NS, 
				T200NS, 
				T400NS
			}
			
			def FrIfGdBit getFrIfGdBitValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "T100NS" : FrIfGdBit.T100NS
					case "T200NS" : FrIfGdBit.T200NS
					case "T400NS" : FrIfGdBit.T400NS
				}
			}
			
			def void setFrIfGdBitValue(GParameterValue parameterValue, FrIfGdBit value){
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrIfGdCasRxLowMax(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdCasRxLowMax"].getBigIntegerValue()
			}
			
			def void setFrIfGdCasRxLowMax(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdCasRxLowMax"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdCasRxLowMax"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getFrIfGdCycle(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdCycle"].getBigDecimalValue()
			}
			
			def void setFrIfGdCycle(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdCycle"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdCycle"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrIfGdDynamicSlotIdlePhase(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdDynamicSlotIdlePhase"].getBigIntegerValue()
			}
			
			def void setFrIfGdDynamicSlotIdlePhase(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdDynamicSlotIdlePhase"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdDynamicSlotIdlePhase"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrIfGdIgnoreAfterTx(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdIgnoreAfterTx"].getBigIntegerValue()
			}
			
			def void setFrIfGdIgnoreAfterTx(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdIgnoreAfterTx"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdIgnoreAfterTx"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getFrIfGdMacrotick(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdMacrotick"].getBigDecimalValue()
			}
			
			def void setFrIfGdMacrotick(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdMacrotick"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdMacrotick"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrIfGdMinislot(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdMinislot"].getBigIntegerValue()
			}
			
			def void setFrIfGdMinislot(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdMinislot"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdMinislot"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrIfGdMiniSlotActionPointOffset(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdMiniSlotActionPointOffset"].getBigIntegerValue()
			}
			
			def void setFrIfGdMiniSlotActionPointOffset(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdMiniSlotActionPointOffset"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdMiniSlotActionPointOffset"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrIfGdNit(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdNit"].getBigIntegerValue()
			}
			
			def void setFrIfGdNit(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdNit"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdNit"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def FrIfGdSampleClockPeriod getFrIfGdSampleClockPeriod(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdSampleClockPeriod"].getFrIfGdSampleClockPeriodValue()
			}
			
			def void setFrIfGdSampleClockPeriod(FrIfGdSampleClockPeriod value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdSampleClockPeriod"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdSampleClockPeriod"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum FrIfGdSampleClockPeriod {
				T12_5NS, 
				T25NS, 
				T50NS
			}
			
			def FrIfGdSampleClockPeriod getFrIfGdSampleClockPeriodValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "T12_5NS" : FrIfGdSampleClockPeriod.T12_5NS
					case "T25NS" : FrIfGdSampleClockPeriod.T25NS
					case "T50NS" : FrIfGdSampleClockPeriod.T50NS
				}
			}
			
			def void setFrIfGdSampleClockPeriodValue(GParameterValue parameterValue, FrIfGdSampleClockPeriod value){
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrIfGdStaticSlot(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdStaticSlot"].getBigIntegerValue()
			}
			
			def void setFrIfGdStaticSlot(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdStaticSlot"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdStaticSlot"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrIfGdSymbolWindow(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdSymbolWindow"].getBigIntegerValue()
			}
			
			def void setFrIfGdSymbolWindow(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdSymbolWindow"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdSymbolWindow"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrIfGdSymbolWindowActionPointOffset(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdSymbolWindowActionPointOffset"].getBigIntegerValue()
			}
			
			def void setFrIfGdSymbolWindowActionPointOffset(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdSymbolWindowActionPointOffset"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdSymbolWindowActionPointOffset"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrIfGdTSSTransmitter(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdTSSTransmitter"].getBigIntegerValue()
			}
			
			def void setFrIfGdTSSTransmitter(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdTSSTransmitter"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdTSSTransmitter"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrIfGdWakeupRxIdle(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdWakeupRxIdle"].getBigIntegerValue()
			}
			
			def void setFrIfGdWakeupRxIdle(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdWakeupRxIdle"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdWakeupRxIdle"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrIfGdWakeupRxLow(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdWakeupRxLow"].getBigIntegerValue()
			}
			
			def void setFrIfGdWakeupRxLow(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdWakeupRxLow"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdWakeupRxLow"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrIfGdWakeupRxWindow(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdWakeupRxWindow"].getBigIntegerValue()
			}
			
			def void setFrIfGdWakeupRxWindow(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdWakeupRxWindow"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdWakeupRxWindow"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrIfGdWakeupTxActive(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdWakeupTxActive"].getBigIntegerValue()
			}
			
			def void setFrIfGdWakeupTxActive(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdWakeupTxActive"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdWakeupTxActive"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrIfGdWakeupTxIdle(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdWakeupTxIdle"].getBigIntegerValue()
			}
			
			def void setFrIfGdWakeupTxIdle(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdWakeupTxIdle"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdWakeupTxIdle"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrIfGListenNoise(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGListenNoise"].getBigIntegerValue()
			}
			
			def void setFrIfGListenNoise(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGListenNoise"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGListenNoise"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrIfGMacroPerCycle(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGMacroPerCycle"].getBigIntegerValue()
			}
			
			def void setFrIfGMacroPerCycle(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGMacroPerCycle"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGMacroPerCycle"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrIfGMaxWithoutClockCorrectFatal(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGMaxWithoutClockCorrectFatal"].getBigIntegerValue()
			}
			
			def void setFrIfGMaxWithoutClockCorrectFatal(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGMaxWithoutClockCorrectFatal"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGMaxWithoutClockCorrectFatal"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrIfGMaxWithoutClockCorrectPassive(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGMaxWithoutClockCorrectPassive"].getBigIntegerValue()
			}
			
			def void setFrIfGMaxWithoutClockCorrectPassive(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGMaxWithoutClockCorrectPassive"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGMaxWithoutClockCorrectPassive"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrIfGNetworkManagementVectorLength(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGNetworkManagementVectorLength"].getBigIntegerValue()
			}
			
			def void setFrIfGNetworkManagementVectorLength(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGNetworkManagementVectorLength"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGNetworkManagementVectorLength"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrIfGNumberOfMinislots(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGNumberOfMinislots"].getBigIntegerValue()
			}
			
			def void setFrIfGNumberOfMinislots(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGNumberOfMinislots"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGNumberOfMinislots"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrIfGNumberOfStaticSlots(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGNumberOfStaticSlots"].getBigIntegerValue()
			}
			
			def void setFrIfGNumberOfStaticSlots(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGNumberOfStaticSlots"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGNumberOfStaticSlots"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrIfGPayloadLengthStatic(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGPayloadLengthStatic"].getBigIntegerValue()
			}
			
			def void setFrIfGPayloadLengthStatic(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGPayloadLengthStatic"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGPayloadLengthStatic"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrIfGSyncFrameIDCountMax(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGSyncFrameIDCountMax"].getBigIntegerValue()
			}
			
			def void setFrIfGSyncFrameIDCountMax(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGSyncFrameIDCountMax"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGSyncFrameIDCountMax"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigDecimal getFrIfMainFunctionPeriod(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfMainFunctionPeriod"].getBigDecimalValue()
			}
			
			def void setFrIfMainFunctionPeriod(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfMainFunctionPeriod"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfMainFunctionPeriod"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrIfSafetyMargin(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfSafetyMargin"].getBigIntegerValue()
			}
			
			def void setFrIfSafetyMargin(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfSafetyMargin"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfSafetyMargin"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			def FrIfClusterDemEventParameterRefs getFrIfClusterDemEventParameterRefs(){
				containerValue.getByType(typeof(FrIfClusterDemEventParameterRefs))
			}
			
			def void setFrIfClusterDemEventParameterRefs(FrIfClusterDemEventParameterRefs frIfClusterDemEventParameterRefs){
				val GContainer subContainer = frIfClusterDemEventParameterRefs.getTarget()
				containerValue.setContainer(subContainer, "FrIfClusterDemEventParameterRefs")
			}
			
			def List<FrIfController> getFrIfControllers(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "FrIfController")
					}
				}
				return new BasicWrappingEList<FrIfController, GContainer>(filteredContainers, typeof(FrIfController), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.FrIf.FrIfConfig.FrIfCluster.FrIfController frIfController) {
						frIfController.target?.gSetDefinition(containerValue.getContainerDefinition("FrIfController"))
						super.delegateAdd(frIfController)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.FrIf.FrIfConfig.FrIfCluster.FrIfController frIfController) {
						frIfController.target?.gSetDefinition(containerValue.getContainerDefinition("FrIfController"))
						super.delegateAdd(index, frIfController)
					}
				}
			}
			
			def FrIfJobList getFrIfJobList(){
				containerValue.getByType(typeof(FrIfJobList))
			}
			
			def void setFrIfJobList(FrIfJobList frIfJobList){
				val GContainer subContainer = frIfJobList.getTarget()
				containerValue.setContainer(subContainer, "FrIfJobList")
			}
			
			
			static class FrIfClusterDemEventParameterRefs implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
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
			        if (!(object instanceof FrIfClusterDemEventParameterRefs)){
						return false
					}
					this.target == (object as FrIfClusterDemEventParameterRefs).target
				}
			
				
				def org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter getFRIF_E_ACS_CH_A(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter), "FRIF_E_ACS_CH_A")
				}
				
				def void setFRIF_E_ACS_CH_A(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FRIF_E_ACS_CH_A"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter getFRIF_E_ACS_CH_B(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter), "FRIF_E_ACS_CH_B")
				}
				
				def void setFRIF_E_ACS_CH_B(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FRIF_E_ACS_CH_B"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter getFRIF_E_NIT_CH_A(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter), "FRIF_E_NIT_CH_A")
				}
				
				def void setFRIF_E_NIT_CH_A(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FRIF_E_NIT_CH_A"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter getFRIF_E_NIT_CH_B(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter), "FRIF_E_NIT_CH_B")
				}
				
				def void setFRIF_E_NIT_CH_B(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FRIF_E_NIT_CH_B"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter getFRIF_E_SW_CH_A(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter), "FRIF_E_SW_CH_A")
				}
				
				def void setFRIF_E_SW_CH_A(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FRIF_E_SW_CH_A"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter getFRIF_E_SW_CH_B(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter), "FRIF_E_SW_CH_B")
				}
				
				def void setFRIF_E_SW_CH_B(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FRIF_E_SW_CH_B"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class FrIfController implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
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
			        if (!(object instanceof FrIfController)){
						return false
					}
					this.target == (object as FrIfController).target
				}
			
				def BigInteger getFrIfCtrlIdx(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfCtrlIdx"].getBigIntegerValue()
				}
				
				def void setFrIfCtrlIdx(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfCtrlIdx"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfCtrlIdx"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar444.accessors.Fr.FrMultipleConfiguration.FrController getFrIfFrCtrlRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Fr.FrMultipleConfiguration.FrController), "FrIfFrCtrlRef")
				}
				
				def void setFrIfFrCtrlRef(org.artop.ecuc.autosar444.accessors.Fr.FrMultipleConfiguration.FrController object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FrIfFrCtrlRef"], object.getTarget())
					}
				}
				
				
				def List<FrIfFrameTriggering> getFrIfFrameTriggerings(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "FrIfFrameTriggering")
						}
					}
					return new BasicWrappingEList<FrIfFrameTriggering, GContainer>(filteredContainers, typeof(FrIfFrameTriggering), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar444.accessors.FrIf.FrIfConfig.FrIfCluster.FrIfController.FrIfFrameTriggering frIfFrameTriggering) {
							frIfFrameTriggering.target?.gSetDefinition(containerValue.getContainerDefinition("FrIfFrameTriggering"))
							super.delegateAdd(frIfFrameTriggering)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.FrIf.FrIfConfig.FrIfCluster.FrIfController.FrIfFrameTriggering frIfFrameTriggering) {
							frIfFrameTriggering.target?.gSetDefinition(containerValue.getContainerDefinition("FrIfFrameTriggering"))
							super.delegateAdd(index, frIfFrameTriggering)
						}
					}
				}
				
				def List<FrIfLPdu> getFrIfLPdus(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "FrIfLPdu")
						}
					}
					return new BasicWrappingEList<FrIfLPdu, GContainer>(filteredContainers, typeof(FrIfLPdu), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar444.accessors.FrIf.FrIfConfig.FrIfCluster.FrIfController.FrIfLPdu frIfLPdu) {
							frIfLPdu.target?.gSetDefinition(containerValue.getContainerDefinition("FrIfLPdu"))
							super.delegateAdd(frIfLPdu)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.FrIf.FrIfConfig.FrIfCluster.FrIfController.FrIfLPdu frIfLPdu) {
							frIfLPdu.target?.gSetDefinition(containerValue.getContainerDefinition("FrIfLPdu"))
							super.delegateAdd(index, frIfLPdu)
						}
					}
				}
				
				def List<FrIfTransceiver> getFrIfTransceivers(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "FrIfTransceiver")
						}
					}
					return new BasicWrappingEList<FrIfTransceiver, GContainer>(filteredContainers, typeof(FrIfTransceiver), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar444.accessors.FrIf.FrIfConfig.FrIfCluster.FrIfController.FrIfTransceiver frIfTransceiver) {
							frIfTransceiver.target?.gSetDefinition(containerValue.getContainerDefinition("FrIfTransceiver"))
							super.delegateAdd(frIfTransceiver)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.FrIf.FrIfConfig.FrIfCluster.FrIfController.FrIfTransceiver frIfTransceiver) {
							frIfTransceiver.target?.gSetDefinition(containerValue.getContainerDefinition("FrIfTransceiver"))
							super.delegateAdd(index, frIfTransceiver)
						}
					}
				}
				
				
				static class FrIfFrameTriggering implements IWrapper<GContainer> {
					private GContainer containerValue
				
					new(GContainer containerValue){
						this.containerValue = containerValue
					}
				
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
				        if (!(object instanceof FrIfFrameTriggering)){
							return false
						}
						this.target == (object as FrIfFrameTriggering).target
					}
				
					def Boolean getFrIfAllowDynamicLSduLength(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfAllowDynamicLSduLength"].getBooleanValue()
					}
					
					def void setFrIfAllowDynamicLSduLength(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfAllowDynamicLSduLength"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfAllowDynamicLSduLength"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def Boolean getFrIfAlwaysTransmit(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfAlwaysTransmit"].getBooleanValue()
					}
					
					def void setFrIfAlwaysTransmit(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfAlwaysTransmit"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfAlwaysTransmit"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def BigInteger getFrIfBaseCycle(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfBaseCycle"].getBigIntegerValue()
					}
					
					def void setFrIfBaseCycle(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfBaseCycle"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfBaseCycle"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def FrIfChannel getFrIfChannel(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfChannel"].getFrIfChannelValue()
					}
					
					def void setFrIfChannel(FrIfChannel value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfChannel"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfChannel"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					enum FrIfChannel {
						FRIF_CHANNEL_A, 
						FRIF_CHANNEL_AB, 
						FRIF_CHANNEL_B
					}
					
					def FrIfChannel getFrIfChannelValue(GParameterValue parameterValue){
						val castedParameterValue = parameterValue as EcucTextualParamValue
						switch (castedParameterValue.value){
							case "FRIF_CHANNEL_A" : FrIfChannel.FRIF_CHANNEL_A
							case "FRIF_CHANNEL_AB" : FrIfChannel.FRIF_CHANNEL_AB
							case "FRIF_CHANNEL_B" : FrIfChannel.FRIF_CHANNEL_B
						}
					}
					
					def void setFrIfChannelValue(GParameterValue parameterValue, FrIfChannel value){
						parameterValue.setValue(value)
					}
					
					def BigInteger getFrIfCycleRepetition(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfCycleRepetition"].getBigIntegerValue()
					}
					
					def void setFrIfCycleRepetition(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfCycleRepetition"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfCycleRepetition"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getFrIfLSduLength(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfLSduLength"].getBigIntegerValue()
					}
					
					def void setFrIfLSduLength(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfLSduLength"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfLSduLength"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getFrIfMessageId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfMessageId"].getBigIntegerValue()
					}
					
					def void setFrIfMessageId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfMessageId"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfMessageId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def Boolean getFrIfPayloadPreamble(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfPayloadPreamble"].getBooleanValue()
					}
					
					def void setFrIfPayloadPreamble(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfPayloadPreamble"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfPayloadPreamble"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def BigInteger getFrIfSlotId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfSlotId"].getBigIntegerValue()
					}
					
					def void setFrIfSlotId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfSlotId"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfSlotId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar444.accessors.FrIf.FrIfConfig.FrIfFrameStructure getFrIfFrameStructureRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.FrIf.FrIfConfig.FrIfFrameStructure), "FrIfFrameStructureRef")
					}
					
					def void setFrIfFrameStructureRef(org.artop.ecuc.autosar444.accessors.FrIf.FrIfConfig.FrIfFrameStructure object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FrIfFrameStructureRef"], object.getTarget())
						}
					}
					
					
					def FrIfFrameTriggeringDemEventParameterRefs getFrIfFrameTriggeringDemEventParameterRefs(){
						containerValue.getByType(typeof(FrIfFrameTriggeringDemEventParameterRefs))
					}
					
					def void setFrIfFrameTriggeringDemEventParameterRefs(FrIfFrameTriggeringDemEventParameterRefs frIfFrameTriggeringDemEventParameterRefs){
						val GContainer subContainer = frIfFrameTriggeringDemEventParameterRefs.getTarget()
						containerValue.setContainer(subContainer, "FrIfFrameTriggeringDemEventParameterRefs")
					}
					
					
					static class FrIfFrameTriggeringDemEventParameterRefs implements IWrapper<GContainer> {
						private GContainer containerValue
					
						new(GContainer containerValue){
							this.containerValue = containerValue
						}
					
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
					        if (!(object instanceof FrIfFrameTriggeringDemEventParameterRefs)){
								return false
							}
							this.target == (object as FrIfFrameTriggeringDemEventParameterRefs).target
						}
					
						
						def org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter getFRIF_E_LPDU_SLOTSTATUS(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter), "FRIF_E_LPDU_SLOTSTATUS")
						}
						
						def void setFRIF_E_LPDU_SLOTSTATUS(org.artop.ecuc.autosar444.accessors.Dem.DemConfigSet.DemEventParameter object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FRIF_E_LPDU_SLOTSTATUS"], object.getTarget())
							}
						}
						
						
						
					}
					
				}
				
				static class FrIfLPdu implements IWrapper<GContainer> {
					private GContainer containerValue
				
					new(GContainer containerValue){
						this.containerValue = containerValue
					}
				
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
				        if (!(object instanceof FrIfLPdu)){
							return false
						}
						this.target == (object as FrIfLPdu).target
					}
				
					def BigInteger getFrIfLPduIdx(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfLPduIdx"].getBigIntegerValue()
					}
					
					def void setFrIfLPduIdx(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfLPduIdx"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfLPduIdx"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def Boolean getFrIfReconfigurable(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfReconfigurable"].getBooleanValue()
					}
					
					def void setFrIfReconfigurable(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfReconfigurable"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfReconfigurable"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					
					def org.artop.ecuc.autosar444.accessors.FrIf.FrIfConfig.FrIfCluster.FrIfController.FrIfFrameTriggering getFrIfVBTriggeringRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.FrIf.FrIfConfig.FrIfCluster.FrIfController.FrIfFrameTriggering), "FrIfVBTriggeringRef")
					}
					
					def void setFrIfVBTriggeringRef(org.artop.ecuc.autosar444.accessors.FrIf.FrIfConfig.FrIfCluster.FrIfController.FrIfFrameTriggering object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FrIfVBTriggeringRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class FrIfTransceiver implements IWrapper<GContainer> {
					private GContainer containerValue
				
					new(GContainer containerValue){
						this.containerValue = containerValue
					}
				
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
				        if (!(object instanceof FrIfTransceiver)){
							return false
						}
						this.target == (object as FrIfTransceiver).target
					}
				
					def FrIfClusterChannel getFrIfClusterChannel(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfClusterChannel"].getFrIfClusterChannelValue()
					}
					
					def void setFrIfClusterChannel(FrIfClusterChannel value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfClusterChannel"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfClusterChannel"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					enum FrIfClusterChannel {
						FRIF_CHANNEL_A, 
						FRIF_CHANNEL_B
					}
					
					def FrIfClusterChannel getFrIfClusterChannelValue(GParameterValue parameterValue){
						val castedParameterValue = parameterValue as EcucTextualParamValue
						switch (castedParameterValue.value){
							case "FRIF_CHANNEL_A" : FrIfClusterChannel.FRIF_CHANNEL_A
							case "FRIF_CHANNEL_B" : FrIfClusterChannel.FRIF_CHANNEL_B
						}
					}
					
					def void setFrIfClusterChannelValue(GParameterValue parameterValue, FrIfClusterChannel value){
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar444.accessors.FrTrcv.FrTrcvChannel getFrIfFrTrcvChannelRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.FrTrcv.FrTrcvChannel), "FrIfFrTrcvChannelRef")
					}
					
					def void setFrIfFrTrcvChannelRef(org.artop.ecuc.autosar444.accessors.FrTrcv.FrTrcvChannel object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FrIfFrTrcvChannelRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
			static class FrIfJobList implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
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
			        if (!(object instanceof FrIfJobList)){
						return false
					}
					this.target == (object as FrIfJobList).target
				}
			
				
				def org.artop.ecuc.autosar444.accessors.Fr.FrMultipleConfiguration.FrController.FrAbsoluteTimer getFrIfAbsTimerRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.Fr.FrMultipleConfiguration.FrController.FrAbsoluteTimer), "FrIfAbsTimerRef")
				}
				
				def void setFrIfAbsTimerRef(org.artop.ecuc.autosar444.accessors.Fr.FrMultipleConfiguration.FrController.FrAbsoluteTimer object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FrIfAbsTimerRef"], object.getTarget())
					}
				}
				
				
				def List<FrIfJob> getFrIfJobs(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "FrIfJob")
						}
					}
					return new BasicWrappingEList<FrIfJob, GContainer>(filteredContainers, typeof(FrIfJob), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar444.accessors.FrIf.FrIfConfig.FrIfCluster.FrIfJobList.FrIfJob frIfJob) {
							frIfJob.target?.gSetDefinition(containerValue.getContainerDefinition("FrIfJob"))
							super.delegateAdd(frIfJob)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.FrIf.FrIfConfig.FrIfCluster.FrIfJobList.FrIfJob frIfJob) {
							frIfJob.target?.gSetDefinition(containerValue.getContainerDefinition("FrIfJob"))
							super.delegateAdd(index, frIfJob)
						}
					}
				}
				
				
				static class FrIfJob implements IWrapper<GContainer> {
					private GContainer containerValue
				
					new(GContainer containerValue){
						this.containerValue = containerValue
					}
				
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
				        if (!(object instanceof FrIfJob)){
							return false
						}
						this.target == (object as FrIfJob).target
					}
				
					def BigInteger getFrIfCycle(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfCycle"].getBigIntegerValue()
					}
					
					def void setFrIfCycle(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfCycle"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfCycle"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getFrIfMacrotick(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfMacrotick"].getBigIntegerValue()
					}
					
					def void setFrIfMacrotick(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfMacrotick"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfMacrotick"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getFrIfMaxIsrDelay(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfMaxIsrDelay"].getBigIntegerValue()
					}
					
					def void setFrIfMaxIsrDelay(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfMaxIsrDelay"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfMaxIsrDelay"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					
					def List<FrIfCommunicationOperation> getFrIfCommunicationOperations(){
						val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
							override protected accept(GContainer item) {
								return accept(item, typeof(GContainerDef), "FrIfCommunicationOperation")
							}
						}
						return new BasicWrappingEList<FrIfCommunicationOperation, GContainer>(filteredContainers, typeof(FrIfCommunicationOperation), typeof(GContainer)) {
							override protected delegateAdd(org.artop.ecuc.autosar444.accessors.FrIf.FrIfConfig.FrIfCluster.FrIfJobList.FrIfJob.FrIfCommunicationOperation frIfCommunicationOperation) {
								frIfCommunicationOperation.target?.gSetDefinition(containerValue.getContainerDefinition("FrIfCommunicationOperation"))
								super.delegateAdd(frIfCommunicationOperation)
							}
					
							override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.FrIf.FrIfConfig.FrIfCluster.FrIfJobList.FrIfJob.FrIfCommunicationOperation frIfCommunicationOperation) {
								frIfCommunicationOperation.target?.gSetDefinition(containerValue.getContainerDefinition("FrIfCommunicationOperation"))
								super.delegateAdd(index, frIfCommunicationOperation)
							}
						}
					}
					
					
					static class FrIfCommunicationOperation implements IWrapper<GContainer> {
						private GContainer containerValue
					
						new(GContainer containerValue){
							this.containerValue = containerValue
						}
					
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
					        if (!(object instanceof FrIfCommunicationOperation)){
								return false
							}
							this.target == (object as FrIfCommunicationOperation).target
						}
					
						def FrIfCommunicationAction getFrIfCommunicationAction(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfCommunicationAction"].getFrIfCommunicationActionValue()
						}
						
						def void setFrIfCommunicationAction(FrIfCommunicationAction value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfCommunicationAction"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfCommunicationAction"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						enum FrIfCommunicationAction {
							DECOUPLED_TRANSMISSION, 
							FREE_OP_A, 
							FREE_OP_B, 
							PREPARE_LPDU, 
							RECEIVE_AND_INDICATE, 
							RECEIVE_AND_STORE, 
							RX_INDICATION, 
							TX_CONFIRMATION
						}
						
						def FrIfCommunicationAction getFrIfCommunicationActionValue(GParameterValue parameterValue){
							val castedParameterValue = parameterValue as EcucTextualParamValue
							switch (castedParameterValue.value){
								case "DECOUPLED_TRANSMISSION" : FrIfCommunicationAction.DECOUPLED_TRANSMISSION
								case "FREE_OP_A" : FrIfCommunicationAction.FREE_OP_A
								case "FREE_OP_B" : FrIfCommunicationAction.FREE_OP_B
								case "PREPARE_LPDU" : FrIfCommunicationAction.PREPARE_LPDU
								case "RECEIVE_AND_INDICATE" : FrIfCommunicationAction.RECEIVE_AND_INDICATE
								case "RECEIVE_AND_STORE" : FrIfCommunicationAction.RECEIVE_AND_STORE
								case "RX_INDICATION" : FrIfCommunicationAction.RX_INDICATION
								case "TX_CONFIRMATION" : FrIfCommunicationAction.TX_CONFIRMATION
							}
						}
						
						def void setFrIfCommunicationActionValue(GParameterValue parameterValue, FrIfCommunicationAction value){
							parameterValue.setValue(value)
						}
						
						def BigInteger getFrIfCommunicationOperationIdx(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfCommunicationOperationIdx"].getBigIntegerValue()
						}
						
						def void setFrIfCommunicationOperationIdx(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfCommunicationOperationIdx"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfCommunicationOperationIdx"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						def BigInteger getFrIfRxComOpMaxLoop(){
							containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfRxComOpMaxLoop"].getBigIntegerValue()
						}
						
						def void setFrIfRxComOpMaxLoop(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfRxComOpMaxLoop"]
							if (parameterValue === null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfRxComOpMaxLoop"].createParameterValue()
									containerValue.gGetParameterValues += parameterValue
								}
							}
							parameterValue.setValue(value)
						}
						
						
						def org.artop.ecuc.autosar444.accessors.FrIf.FrIfConfig.FrIfCluster.FrIfController.FrIfLPdu getFrIfLPduIdxRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.FrIf.FrIfConfig.FrIfCluster.FrIfController.FrIfLPdu), "FrIfLPduIdxRef")
						}
						
						def void setFrIfLPduIdxRef(org.artop.ecuc.autosar444.accessors.FrIf.FrIfConfig.FrIfCluster.FrIfController.FrIfLPdu object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FrIfLPduIdxRef"], object.getTarget())
							}
						}
						
						
						
					}
					
				}
				
			}
			
		}
		
		static class FrIfFrameStructure implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
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
		        if (!(object instanceof FrIfFrameStructure)){
					return false
				}
				this.target == (object as FrIfFrameStructure).target
			}
		
			def FrIfByteOrder getFrIfByteOrder(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfByteOrder"].getFrIfByteOrderValue()
			}
			
			def void setFrIfByteOrder(FrIfByteOrder value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfByteOrder"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfByteOrder"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum FrIfByteOrder {
				BIG_ENDIAN, 
				LITTLE_ENDIAN
			}
			
			def FrIfByteOrder getFrIfByteOrderValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "BIG_ENDIAN" : FrIfByteOrder.BIG_ENDIAN
					case "LITTLE_ENDIAN" : FrIfByteOrder.LITTLE_ENDIAN
				}
			}
			
			def void setFrIfByteOrderValue(GParameterValue parameterValue, FrIfByteOrder value){
				parameterValue.setValue(value)
			}
			
			
			
			def List<FrIfPdusInFrame> getFrIfPdusInFrames(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "FrIfPdusInFrame")
					}
				}
				return new BasicWrappingEList<FrIfPdusInFrame, GContainer>(filteredContainers, typeof(FrIfPdusInFrame), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar444.accessors.FrIf.FrIfConfig.FrIfFrameStructure.FrIfPdusInFrame frIfPdusInFrame) {
						frIfPdusInFrame.target?.gSetDefinition(containerValue.getContainerDefinition("FrIfPdusInFrame"))
						super.delegateAdd(frIfPdusInFrame)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar444.accessors.FrIf.FrIfConfig.FrIfFrameStructure.FrIfPdusInFrame frIfPdusInFrame) {
						frIfPdusInFrame.target?.gSetDefinition(containerValue.getContainerDefinition("FrIfPdusInFrame"))
						super.delegateAdd(index, frIfPdusInFrame)
					}
				}
			}
			
			
			static class FrIfPdusInFrame implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
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
			        if (!(object instanceof FrIfPdusInFrame)){
						return false
					}
					this.target == (object as FrIfPdusInFrame).target
				}
			
				def BigInteger getFrIfPduOffset(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfPduOffset"].getBigIntegerValue()
				}
				
				def void setFrIfPduOffset(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfPduOffset"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfPduOffset"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getFrIfPduUpdateBitOffset(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfPduUpdateBitOffset"].getBigIntegerValue()
				}
				
				def void setFrIfPduUpdateBitOffset(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfPduUpdateBitOffset"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfPduUpdateBitOffset"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar444.accessors.FrIf.FrIfConfig.FrIfPdu getFrIfPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.FrIf.FrIfConfig.FrIfPdu), "FrIfPduRef")
				}
				
				def void setFrIfPduRef(org.artop.ecuc.autosar444.accessors.FrIf.FrIfConfig.FrIfPdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FrIfPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
		}
		
		static class FrIfPdu implements IWrapper<GContainer> {
			private GContainer containerValue
		
			new(GContainer containerValue){
				this.containerValue = containerValue
			}
		
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
		        if (!(object instanceof FrIfPdu)){
					return false
				}
				this.target == (object as FrIfPdu).target
			}
		
			
			
			def FrIfPduDirection getFrIfPduDirection(){
				containerValue.getByType(typeof(FrIfPduDirection))
			}
			
			def void setFrIfPduDirection(FrIfPduDirection frIfPduDirection){
				val GContainer subContainer = frIfPduDirection.getTarget()
				containerValue.setContainer(subContainer, "FrIfPduDirection")
			}
			
			
			static class FrIfPduDirection implements IWrapper<GContainer> {
				private GContainer containerValue
			
				new(GContainer containerValue){
					this.containerValue = containerValue
				}
			
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
			        if (!(object instanceof FrIfPduDirection)){
						return false
					}
					this.target == (object as FrIfPduDirection).target
				}
			
				def FrIfRxPdu getFrIfRxPdu(){
					containerValue.getByType(typeof(FrIfRxPdu))
				}
				
				def void setFrIfRxPdu(FrIfRxPdu frIfRxPdu){
					val GContainer subContainer = frIfRxPdu.getTarget()
					containerValue.setContainer(subContainer, "FrIfRxPdu")
				}
				def FrIfTxPdu getFrIfTxPdu(){
					containerValue.getByType(typeof(FrIfTxPdu))
				}
				
				def void setFrIfTxPdu(FrIfTxPdu frIfTxPdu){
					val GContainer subContainer = frIfTxPdu.getTarget()
					containerValue.setContainer(subContainer, "FrIfTxPdu")
				}
				
				static class FrIfRxPdu implements IWrapper<GContainer> {
					private GContainer containerValue
				
					new(GContainer containerValue){
						this.containerValue = containerValue
					}
				
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
				        if (!(object instanceof FrIfRxPdu)){
							return false
						}
						this.target == (object as FrIfRxPdu).target
					}
				
					def String getFrIfRxIndicationName(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfRxIndicationName"].getStringValue()
					}
					
					def void setFrIfRxIndicationName(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfRxIndicationName"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfRxIndicationName"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def FrIfUserRxIndicationUL getFrIfUserRxIndicationUL(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfUserRxIndicationUL"].getFrIfUserRxIndicationULValue()
					}
					
					def void setFrIfUserRxIndicationUL(FrIfUserRxIndicationUL value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfUserRxIndicationUL"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfUserRxIndicationUL"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					enum FrIfUserRxIndicationUL {
						CDD, 
						FR_AR_TP, 
						FR_NM, 
						FR_TP, 
						FR_TSYN, 
						PDUR, 
						XCP
					}
					
					def FrIfUserRxIndicationUL getFrIfUserRxIndicationULValue(GParameterValue parameterValue){
						val castedParameterValue = parameterValue as EcucTextualParamValue
						switch (castedParameterValue.value){
							case "CDD" : FrIfUserRxIndicationUL.CDD
							case "FR_AR_TP" : FrIfUserRxIndicationUL.FR_AR_TP
							case "FR_NM" : FrIfUserRxIndicationUL.FR_NM
							case "FR_TP" : FrIfUserRxIndicationUL.FR_TP
							case "FR_TSYN" : FrIfUserRxIndicationUL.FR_TSYN
							case "PDUR" : FrIfUserRxIndicationUL.PDUR
							case "XCP" : FrIfUserRxIndicationUL.XCP
						}
					}
					
					def void setFrIfUserRxIndicationULValue(GParameterValue parameterValue, FrIfUserRxIndicationUL value){
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getFrIfRxPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "FrIfRxPduRef")
					}
					
					def void setFrIfRxPduRef(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FrIfRxPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class FrIfTxPdu implements IWrapper<GContainer> {
					private GContainer containerValue
				
					new(GContainer containerValue){
						this.containerValue = containerValue
					}
				
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
				        if (!(object instanceof FrIfTxPdu)){
							return false
						}
						this.target == (object as FrIfTxPdu).target
					}
				
					def Boolean getFrIfConfirm(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfConfirm"].getBooleanValue()
					}
					
					def void setFrIfConfirm(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfConfirm"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfConfirm"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def BigInteger getFrIfCounterLimit(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfCounterLimit"].getBigIntegerValue()
					}
					
					def void setFrIfCounterLimit(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfCounterLimit"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfCounterLimit"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def Boolean getFrIfImmediate(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfImmediate"].getBooleanValue()
					}
					
					def void setFrIfImmediate(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfImmediate"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfImmediate"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def Boolean getFrIfNoneMode(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfNoneMode"].getBooleanValue()
					}
					
					def void setFrIfNoneMode(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfNoneMode"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfNoneMode"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(getBooleanParameterValueValue(value, true))
					}
					
					def String getFrIfTxConfirmationName(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfTxConfirmationName"].getStringValue()
					}
					
					def void setFrIfTxConfirmationName(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfTxConfirmationName"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfTxConfirmationName"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getFrIfTxPduId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfTxPduId"].getBigIntegerValue()
					}
					
					def void setFrIfTxPduId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfTxPduId"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfTxPduId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def String getFrIfUserTriggerTransmitName(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfUserTriggerTransmitName"].getStringValue()
					}
					
					def void setFrIfUserTriggerTransmitName(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfUserTriggerTransmitName"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfUserTriggerTransmitName"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def FrIfUserTxUL getFrIfUserTxUL(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfUserTxUL"].getFrIfUserTxULValue()
					}
					
					def void setFrIfUserTxUL(FrIfUserTxUL value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfUserTxUL"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfUserTxUL"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					enum FrIfUserTxUL {
						CDD, 
						FR_AR_TP, 
						FR_NM, 
						FR_TP, 
						FR_TSYN, 
						PDUR, 
						XCP
					}
					
					def FrIfUserTxUL getFrIfUserTxULValue(GParameterValue parameterValue){
						val castedParameterValue = parameterValue as EcucTextualParamValue
						switch (castedParameterValue.value){
							case "CDD" : FrIfUserTxUL.CDD
							case "FR_AR_TP" : FrIfUserTxUL.FR_AR_TP
							case "FR_NM" : FrIfUserTxUL.FR_NM
							case "FR_TP" : FrIfUserTxUL.FR_TP
							case "FR_TSYN" : FrIfUserTxUL.FR_TSYN
							case "PDUR" : FrIfUserTxUL.PDUR
							case "XCP" : FrIfUserTxUL.XCP
						}
					}
					
					def void setFrIfUserTxULValue(GParameterValue parameterValue, FrIfUserTxUL value){
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getFrIfTxPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "FrIfTxPduRef")
					}
					
					def void setFrIfTxPduRef(org.artop.ecuc.autosar444.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FrIfTxPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
			}
			
		}
		
	}
	static class FrIfGeneral implements IWrapper<GContainer> {
		private GContainer containerValue
	
		new(GContainer containerValue){
			this.containerValue = containerValue
		}
	
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
	        if (!(object instanceof FrIfGeneral)){
				return false
			}
			this.target == (object as FrIfGeneral).target
		}
	
		def BigInteger getFrIfAbsTimerIdx(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfAbsTimerIdx"].getBigIntegerValue()
		}
		
		def void setFrIfAbsTimerIdx(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfAbsTimerIdx"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfAbsTimerIdx"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getFrIfAllSlotsSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfAllSlotsSupport"].getBooleanValue()
		}
		
		def void setFrIfAllSlotsSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfAllSlotsSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfAllSlotsSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFrIfCancelTransmitSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfCancelTransmitSupport"].getBooleanValue()
		}
		
		def void setFrIfCancelTransmitSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfCancelTransmitSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfCancelTransmitSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFrIfDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfDevErrorDetect"].getBooleanValue()
		}
		
		def void setFrIfDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFrIfDisableLPduSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfDisableLPduSupport"].getBooleanValue()
		}
		
		def void setFrIfDisableLPduSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfDisableLPduSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfDisableLPduSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFrIfDisableTransceiverBranchSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfDisableTransceiverBranchSupport"].getBooleanValue()
		}
		
		def void setFrIfDisableTransceiverBranchSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfDisableTransceiverBranchSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfDisableTransceiverBranchSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFrIfEnableTransceiverBranchSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfEnableTransceiverBranchSupport"].getBooleanValue()
		}
		
		def void setFrIfEnableTransceiverBranchSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfEnableTransceiverBranchSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfEnableTransceiverBranchSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def String getFrIfFreeOpAApiName(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfFreeOpAApiName"].getStringValue()
		}
		
		def void setFrIfFreeOpAApiName(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfFreeOpAApiName"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfFreeOpAApiName"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def String getFrIfFreeOpBApiName(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfFreeOpBApiName"].getStringValue()
		}
		
		def void setFrIfFreeOpBApiName(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfFreeOpBApiName"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfFreeOpBApiName"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def String getFrIfFreeOpsHeader(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfFreeOpsHeader"].getStringValue()
		}
		
		def void setFrIfFreeOpsHeader(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfFreeOpsHeader"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfFreeOpsHeader"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getFrIfGetClockCorrectionSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGetClockCorrectionSupport"].getBooleanValue()
		}
		
		def void setFrIfGetClockCorrectionSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGetClockCorrectionSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGetClockCorrectionSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFrIfGetGetChannelStatusSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGetGetChannelStatusSupport"].getBooleanValue()
		}
		
		def void setFrIfGetGetChannelStatusSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGetGetChannelStatusSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGetGetChannelStatusSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFrIfGetNmVectorSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGetNmVectorSupport"].getBooleanValue()
		}
		
		def void setFrIfGetNmVectorSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGetNmVectorSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGetNmVectorSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFrIfGetNumOfStartupFramesSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGetNumOfStartupFramesSupport"].getBooleanValue()
		}
		
		def void setFrIfGetNumOfStartupFramesSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGetNumOfStartupFramesSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGetNumOfStartupFramesSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFrIfGetSyncFrameListSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGetSyncFrameListSupport"].getBooleanValue()
		}
		
		def void setFrIfGetSyncFrameListSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGetSyncFrameListSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGetSyncFrameListSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFrIfGetTransceiverErrorSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGetTransceiverErrorSupport"].getBooleanValue()
		}
		
		def void setFrIfGetTransceiverErrorSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGetTransceiverErrorSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGetTransceiverErrorSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFrIfGetWakeupRxStatusSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGetWakeupRxStatusSupport"].getBooleanValue()
		}
		
		def void setFrIfGetWakeupRxStatusSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGetWakeupRxStatusSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGetWakeupRxStatusSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getFrIfNumClstSupported(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfNumClstSupported"].getBigIntegerValue()
		}
		
		def void setFrIfNumClstSupported(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfNumClstSupported"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfNumClstSupported"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getFrIfNumCtrlSupported(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfNumCtrlSupported"].getBigIntegerValue()
		}
		
		def void setFrIfNumCtrlSupported(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfNumCtrlSupported"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfNumCtrlSupported"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def List<String> getFrIfPublicCddHeaderFiles(){
			val List<EcucTextualParamValue> filteredParameterValues = new AbstractFilteringEList<EcucTextualParamValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {
				override protected accept(EcucTextualParamValue item) {
					return accept(item, typeof(GConfigParameter), "FrIfPublicCddHeaderFile")
				}
			}
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfPublicCddHeaderFile"]
				return new StringValueUnwrappingEList(filteredParameterValues, typeof(EcucTextualParamValue), typeof(String), parameterDef)
			}
		}
		
		def Boolean getFrIfReadCCConfigApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfReadCCConfigApi"].getBooleanValue()
		}
		
		def void setFrIfReadCCConfigApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfReadCCConfigApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfReadCCConfigApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFrIfReconfigLPduSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfReconfigLPduSupport"].getBooleanValue()
		}
		
		def void setFrIfReconfigLPduSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfReconfigLPduSupport"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfReconfigLPduSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def String getFrIfTxConflictNotificationHeaderName(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfTxConflictNotificationHeaderName"].getStringValue()
		}
		
		def void setFrIfTxConflictNotificationHeaderName(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfTxConflictNotificationHeaderName"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfTxConflictNotificationHeaderName"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def String getFrIfTxConflictNotificationName(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfTxConflictNotificationName"].getStringValue()
		}
		
		def void setFrIfTxConflictNotificationName(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfTxConflictNotificationName"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfTxConflictNotificationName"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getFrIfUnusedBitValue(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfUnusedBitValue"].getBigIntegerValue()
		}
		
		def void setFrIfUnusedBitValue(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfUnusedBitValue"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfUnusedBitValue"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getFrIfVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfVersionInfoApi"].getBooleanValue()
		}
		
		def void setFrIfVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIfVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof FrIf)){
			return false
		}
		this.target == (object as FrIf).target
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
