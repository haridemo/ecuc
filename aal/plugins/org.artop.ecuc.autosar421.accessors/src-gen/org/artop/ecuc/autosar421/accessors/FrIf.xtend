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
		
		def BigInteger getFrIfMaxPduCnt(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfMaxPduCnt"])
		}
		
		def void setFrIfMaxPduCnt(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfMaxPduCnt"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfMaxPduCnt"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<FrIfCluster> getFrIfClusters(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "FrIfCluster")
				}
			}
			return new BasicWrappingEList<FrIfCluster, GContainer>(filteredContainers, typeof(FrIfCluster), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.FrIf$FrIfConfig$FrIfCluster frIfCluster) {
					frIfCluster.target?.gSetDefinition(containerValue.getContainerDefinition("FrIfCluster"))
					super.delegateAdd(frIfCluster)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.FrIf$FrIfConfig$FrIfCluster frIfCluster) {
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
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.FrIf$FrIfConfig$FrIfFrameStructure frIfFrameStructure) {
					frIfFrameStructure.target?.gSetDefinition(containerValue.getContainerDefinition("FrIfFrameStructure"))
					super.delegateAdd(frIfFrameStructure)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.FrIf$FrIfConfig$FrIfFrameStructure frIfFrameStructure) {
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
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.FrIf$FrIfConfig$FrIfPdu frIfPdu) {
					frIfPdu.target?.gSetDefinition(containerValue.getContainerDefinition("FrIfPdu"))
					super.delegateAdd(frIfPdu)
				}
				
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.FrIf$FrIfConfig$FrIfPdu frIfPdu) {
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
			
			def BigInteger getFrIfClstIdx(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfClstIdx"])
			}
			
			def void setFrIfClstIdx(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfClstIdx"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfClstIdx"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def Boolean getFrIfDetectNITError(){
				getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfDetectNITError"])
			}
			
			def void setFrIfDetectNITError(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfDetectNITError"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfDetectNITError"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def FrIfGChannels getFrIfGChannels(){
				getFrIfGChannelsValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGChannels"])
			}
			
			def void setFrIfGChannels(FrIfGChannels value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGChannels"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGChannels"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum FrIfGChannels {
				FR_CHANNEL_A, 
				FR_CHANNEL_AB, 
				FR_CHANNEL_B
			}
				
			def FrIfGChannels getFrIfGChannelsValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "FR_CHANNEL_A" : FrIfGChannels.FR_CHANNEL_A
					case "FR_CHANNEL_AB" : FrIfGChannels.FR_CHANNEL_AB
					case "FR_CHANNEL_B" : FrIfGChannels.FR_CHANNEL_B
				}
			}
			
			def void setFrIfGChannelsValue(GParameterValue paramValue, FrIfGChannels value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			def BigInteger getFrIfGColdStartAttempts(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGColdStartAttempts"])
			}
			
			def void setFrIfGColdStartAttempts(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGColdStartAttempts"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGColdStartAttempts"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getFrIfGCycleCountMax(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGCycleCountMax"])
			}
			
			def void setFrIfGCycleCountMax(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGCycleCountMax"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGCycleCountMax"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getFrIfGListenNoise(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGListenNoise"])
			}
			
			def void setFrIfGListenNoise(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGListenNoise"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGListenNoise"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getFrIfGMacroPerCycle(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGMacroPerCycle"])
			}
			
			def void setFrIfGMacroPerCycle(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGMacroPerCycle"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGMacroPerCycle"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getFrIfGMaxWithoutClockCorrectFatal(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGMaxWithoutClockCorrectFatal"])
			}
			
			def void setFrIfGMaxWithoutClockCorrectFatal(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGMaxWithoutClockCorrectFatal"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGMaxWithoutClockCorrectFatal"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getFrIfGMaxWithoutClockCorrectPassive(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGMaxWithoutClockCorrectPassive"])
			}
			
			def void setFrIfGMaxWithoutClockCorrectPassive(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGMaxWithoutClockCorrectPassive"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGMaxWithoutClockCorrectPassive"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getFrIfGNetworkManagementVectorLength(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGNetworkManagementVectorLength"])
			}
			
			def void setFrIfGNetworkManagementVectorLength(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGNetworkManagementVectorLength"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGNetworkManagementVectorLength"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getFrIfGNumberOfMinislots(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGNumberOfMinislots"])
			}
			
			def void setFrIfGNumberOfMinislots(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGNumberOfMinislots"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGNumberOfMinislots"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getFrIfGNumberOfStaticSlots(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGNumberOfStaticSlots"])
			}
			
			def void setFrIfGNumberOfStaticSlots(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGNumberOfStaticSlots"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGNumberOfStaticSlots"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getFrIfGPayloadLengthStatic(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGPayloadLengthStatic"])
			}
			
			def void setFrIfGPayloadLengthStatic(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGPayloadLengthStatic"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGPayloadLengthStatic"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getFrIfGSyncFrameIDCountMax(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGSyncFrameIDCountMax"])
			}
			
			def void setFrIfGSyncFrameIDCountMax(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGSyncFrameIDCountMax"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGSyncFrameIDCountMax"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getFrIfGdActionPointOffset(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdActionPointOffset"])
			}
			
			def void setFrIfGdActionPointOffset(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdActionPointOffset"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdActionPointOffset"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def FrIfGdBit getFrIfGdBit(){
				getFrIfGdBitValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdBit"])
			}
			
			def void setFrIfGdBit(FrIfGdBit value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdBit"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdBit"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum FrIfGdBit {
				T100NS, 
				T200NS, 
				T400NS
			}
				
			def FrIfGdBit getFrIfGdBitValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "T100NS" : FrIfGdBit.T100NS
					case "T200NS" : FrIfGdBit.T200NS
					case "T400NS" : FrIfGdBit.T400NS
				}
			}
			
			def void setFrIfGdBitValue(GParameterValue paramValue, FrIfGdBit value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			def BigInteger getFrIfGdCasRxLowMax(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdCasRxLowMax"])
			}
			
			def void setFrIfGdCasRxLowMax(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdCasRxLowMax"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdCasRxLowMax"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigDecimal getFrIfGdCycle(){
				EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdCycle"])
			}
			
			def void setFrIfGdCycle(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdCycle"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdCycle"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getFrIfGdDynamicSlotIdlePhase(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdDynamicSlotIdlePhase"])
			}
			
			def void setFrIfGdDynamicSlotIdlePhase(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdDynamicSlotIdlePhase"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdDynamicSlotIdlePhase"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getFrIfGdIgnoreAfterTx(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdIgnoreAfterTx"])
			}
			
			def void setFrIfGdIgnoreAfterTx(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdIgnoreAfterTx"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdIgnoreAfterTx"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigDecimal getFrIfGdMacrotick(){
				EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdMacrotick"])
			}
			
			def void setFrIfGdMacrotick(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdMacrotick"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdMacrotick"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getFrIfGdMiniSlotActionPointOffset(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdMiniSlotActionPointOffset"])
			}
			
			def void setFrIfGdMiniSlotActionPointOffset(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdMiniSlotActionPointOffset"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdMiniSlotActionPointOffset"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getFrIfGdMinislot(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdMinislot"])
			}
			
			def void setFrIfGdMinislot(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdMinislot"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdMinislot"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getFrIfGdNit(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdNit"])
			}
			
			def void setFrIfGdNit(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdNit"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdNit"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def FrIfGdSampleClockPeriod getFrIfGdSampleClockPeriod(){
				getFrIfGdSampleClockPeriodValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdSampleClockPeriod"])
			}
			
			def void setFrIfGdSampleClockPeriod(FrIfGdSampleClockPeriod value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdSampleClockPeriod"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdSampleClockPeriod"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum FrIfGdSampleClockPeriod {
				T12_5NS, 
				T25NS, 
				T50NS
			}
				
			def FrIfGdSampleClockPeriod getFrIfGdSampleClockPeriodValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "T12_5NS" : FrIfGdSampleClockPeriod.T12_5NS
					case "T25NS" : FrIfGdSampleClockPeriod.T25NS
					case "T50NS" : FrIfGdSampleClockPeriod.T50NS
				}
			}
			
			def void setFrIfGdSampleClockPeriodValue(GParameterValue paramValue, FrIfGdSampleClockPeriod value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			def BigInteger getFrIfGdStaticSlot(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdStaticSlot"])
			}
			
			def void setFrIfGdStaticSlot(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdStaticSlot"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdStaticSlot"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getFrIfGdSymbolWindow(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdSymbolWindow"])
			}
			
			def void setFrIfGdSymbolWindow(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdSymbolWindow"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdSymbolWindow"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getFrIfGdSymbolWindowActionPointOffset(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdSymbolWindowActionPointOffset"])
			}
			
			def void setFrIfGdSymbolWindowActionPointOffset(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdSymbolWindowActionPointOffset"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdSymbolWindowActionPointOffset"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getFrIfGdTSSTransmitter(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdTSSTransmitter"])
			}
			
			def void setFrIfGdTSSTransmitter(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdTSSTransmitter"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdTSSTransmitter"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getFrIfGdWakeupRxIdle(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdWakeupRxIdle"])
			}
			
			def void setFrIfGdWakeupRxIdle(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdWakeupRxIdle"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdWakeupRxIdle"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getFrIfGdWakeupRxLow(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdWakeupRxLow"])
			}
			
			def void setFrIfGdWakeupRxLow(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdWakeupRxLow"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdWakeupRxLow"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getFrIfGdWakeupRxWindow(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdWakeupRxWindow"])
			}
			
			def void setFrIfGdWakeupRxWindow(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdWakeupRxWindow"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdWakeupRxWindow"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getFrIfGdWakeupTxActive(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdWakeupTxActive"])
			}
			
			def void setFrIfGdWakeupTxActive(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdWakeupTxActive"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdWakeupTxActive"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getFrIfGdWakeupTxIdle(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdWakeupTxIdle"])
			}
			
			def void setFrIfGdWakeupTxIdle(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGdWakeupTxIdle"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGdWakeupTxIdle"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigDecimal getFrIfMainFunctionPeriod(){
				EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfMainFunctionPeriod"])
			}
			
			def void setFrIfMainFunctionPeriod(BigDecimal value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfMainFunctionPeriod"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfMainFunctionPeriod"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def BigInteger getFrIfSafetyMargin(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfSafetyMargin"])
			}
			
			def void setFrIfSafetyMargin(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfSafetyMargin"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfSafetyMargin"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.FrIf$FrIfConfig$FrIfCluster$FrIfController frIfController) {
						frIfController.target?.gSetDefinition(containerValue.getContainerDefinition("FrIfController"))
						super.delegateAdd(frIfController)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.FrIf$FrIfConfig$FrIfCluster$FrIfController frIfController) {
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
				
				
				def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getFRIF_E_ACS_CH_A(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "FRIF_E_ACS_CH_A")
				}
						
				def void setFRIF_E_ACS_CH_A(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FRIF_E_ACS_CH_A"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getFRIF_E_ACS_CH_B(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "FRIF_E_ACS_CH_B")
				}
						
				def void setFRIF_E_ACS_CH_B(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FRIF_E_ACS_CH_B"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getFRIF_E_NIT_CH_A(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "FRIF_E_NIT_CH_A")
				}
						
				def void setFRIF_E_NIT_CH_A(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FRIF_E_NIT_CH_A"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getFRIF_E_NIT_CH_B(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "FRIF_E_NIT_CH_B")
				}
						
				def void setFRIF_E_NIT_CH_B(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FRIF_E_NIT_CH_B"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getFRIF_E_SW_CH_A(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "FRIF_E_SW_CH_A")
				}
						
				def void setFRIF_E_SW_CH_A(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FRIF_E_SW_CH_A"], object.getTarget())
					}
				}
				
				def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getFRIF_E_SW_CH_B(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "FRIF_E_SW_CH_B")
				}
						
				def void setFRIF_E_SW_CH_B(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FRIF_E_SW_CH_B"], object.getTarget())
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
				
				def BigInteger getFrIfCtrlIdx(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfCtrlIdx"])
				}
				
				def void setFrIfCtrlIdx(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfCtrlIdx"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfCtrlIdx"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.Fr.FrMultipleConfiguration.FrController getFrIfFrCtrlRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Fr.FrMultipleConfiguration.FrController), "FrIfFrCtrlRef")
				}
						
				def void setFrIfFrCtrlRef(org.artop.ecuc.autosar421.accessors.Fr.FrMultipleConfiguration.FrController object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FrIfFrCtrlRef"], object.getTarget())
					}
				}
				
				
				def List<FrIfFrameTriggering> getFrIfFrameTriggerings(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "FrIfFrameTriggering")
						}
					}
					return new BasicWrappingEList<FrIfFrameTriggering, GContainer>(filteredContainers, typeof(FrIfFrameTriggering), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.FrIf$FrIfConfig$FrIfCluster$FrIfController$FrIfFrameTriggering frIfFrameTriggering) {
							frIfFrameTriggering.target?.gSetDefinition(containerValue.getContainerDefinition("FrIfFrameTriggering"))
							super.delegateAdd(frIfFrameTriggering)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.FrIf$FrIfConfig$FrIfCluster$FrIfController$FrIfFrameTriggering frIfFrameTriggering) {
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
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.FrIf$FrIfConfig$FrIfCluster$FrIfController$FrIfLPdu frIfLPdu) {
							frIfLPdu.target?.gSetDefinition(containerValue.getContainerDefinition("FrIfLPdu"))
							super.delegateAdd(frIfLPdu)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.FrIf$FrIfConfig$FrIfCluster$FrIfController$FrIfLPdu frIfLPdu) {
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
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.FrIf$FrIfConfig$FrIfCluster$FrIfController$FrIfTransceiver frIfTransceiver) {
							frIfTransceiver.target?.gSetDefinition(containerValue.getContainerDefinition("FrIfTransceiver"))
							super.delegateAdd(frIfTransceiver)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.FrIf$FrIfConfig$FrIfCluster$FrIfController$FrIfTransceiver frIfTransceiver) {
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
					
					def Boolean getFrIfAllowDynamicLSduLength(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfAllowDynamicLSduLength"])
					}
					
					def void setFrIfAllowDynamicLSduLength(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfAllowDynamicLSduLength"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfAllowDynamicLSduLength"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Boolean getFrIfAlwaysTransmit(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfAlwaysTransmit"])
					}
					
					def void setFrIfAlwaysTransmit(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfAlwaysTransmit"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfAlwaysTransmit"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getFrIfBaseCycle(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfBaseCycle"])
					}
					
					def void setFrIfBaseCycle(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfBaseCycle"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfBaseCycle"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def FrIfChannel getFrIfChannel(){
						getFrIfChannelValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfChannel"])
					}
					
					def void setFrIfChannel(FrIfChannel value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfChannel"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfChannel"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					enum FrIfChannel {
						FRIF_CHANNEL_A, 
						FRIF_CHANNEL_AB, 
						FRIF_CHANNEL_B
					}
						
					def FrIfChannel getFrIfChannelValue(GParameterValue paramValue){
						val castedParamValue = paramValue as EcucTextualParamValue
						switch (castedParamValue.value){
							case "FRIF_CHANNEL_A" : FrIfChannel.FRIF_CHANNEL_A
							case "FRIF_CHANNEL_AB" : FrIfChannel.FRIF_CHANNEL_AB
							case "FRIF_CHANNEL_B" : FrIfChannel.FRIF_CHANNEL_B
						}
					}
					
					def void setFrIfChannelValue(GParameterValue paramValue, FrIfChannel value){
						EcucValueAccessor421Util.setParameterValue(paramValue, value)
					}
					
					def BigInteger getFrIfCycleRepetition(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfCycleRepetition"])
					}
					
					def void setFrIfCycleRepetition(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfCycleRepetition"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfCycleRepetition"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getFrIfLSduLength(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfLSduLength"])
					}
					
					def void setFrIfLSduLength(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfLSduLength"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfLSduLength"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getFrIfMessageId(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfMessageId"])
					}
					
					def void setFrIfMessageId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfMessageId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfMessageId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Boolean getFrIfPayloadPreamble(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfPayloadPreamble"])
					}
					
					def void setFrIfPayloadPreamble(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfPayloadPreamble"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfPayloadPreamble"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getFrIfSlotId(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfSlotId"])
					}
					
					def void setFrIfSlotId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfSlotId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfSlotId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.FrIf.FrIfConfig.FrIfFrameStructure getFrIfFrameStructureRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.FrIf.FrIfConfig.FrIfFrameStructure), "FrIfFrameStructureRef")
					}
							
					def void setFrIfFrameStructureRef(org.artop.ecuc.autosar421.accessors.FrIf.FrIfConfig.FrIfFrameStructure object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FrIfFrameStructureRef"], object.getTarget())
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
						
						
						def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getFRIF_E_LPDU_SLOTSTATUS(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "FRIF_E_LPDU_SLOTSTATUS")
						}
								
						def void setFRIF_E_LPDU_SLOTSTATUS(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FRIF_E_LPDU_SLOTSTATUS"], object.getTarget())
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
					
					def BigInteger getFrIfLPduIdx(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfLPduIdx"])
					}
					
					def void setFrIfLPduIdx(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfLPduIdx"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfLPduIdx"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Boolean getFrIfReconfigurable(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfReconfigurable"])
					}
					
					def void setFrIfReconfigurable(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfReconfigurable"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfReconfigurable"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.FrIf.FrIfConfig.FrIfCluster.FrIfController.FrIfFrameTriggering getFrIfVBTriggeringRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.FrIf.FrIfConfig.FrIfCluster.FrIfController.FrIfFrameTriggering), "FrIfVBTriggeringRef")
					}
							
					def void setFrIfVBTriggeringRef(org.artop.ecuc.autosar421.accessors.FrIf.FrIfConfig.FrIfCluster.FrIfController.FrIfFrameTriggering object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FrIfVBTriggeringRef"], object.getTarget())
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
					
					def FrIfClusterChannel getFrIfClusterChannel(){
						getFrIfClusterChannelValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfClusterChannel"])
					}
					
					def void setFrIfClusterChannel(FrIfClusterChannel value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfClusterChannel"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfClusterChannel"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					enum FrIfClusterChannel {
						FRIF_CHANNEL_A, 
						FRIF_CHANNEL_B
					}
						
					def FrIfClusterChannel getFrIfClusterChannelValue(GParameterValue paramValue){
						val castedParamValue = paramValue as EcucTextualParamValue
						switch (castedParamValue.value){
							case "FRIF_CHANNEL_A" : FrIfClusterChannel.FRIF_CHANNEL_A
							case "FRIF_CHANNEL_B" : FrIfClusterChannel.FRIF_CHANNEL_B
						}
					}
					
					def void setFrIfClusterChannelValue(GParameterValue paramValue, FrIfClusterChannel value){
						EcucValueAccessor421Util.setParameterValue(paramValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.FrTrcv.FrTrcvChannel getFrIfFrTrcvChannelRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.FrTrcv.FrTrcvChannel), "FrIfFrTrcvChannelRef")
					}
							
					def void setFrIfFrTrcvChannelRef(org.artop.ecuc.autosar421.accessors.FrTrcv.FrTrcvChannel object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FrIfFrTrcvChannelRef"], object.getTarget())
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
				
				
				def org.artop.ecuc.autosar421.accessors.Fr.FrMultipleConfiguration.FrController.FrAbsoluteTimer getFrIfAbsTimerRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Fr.FrMultipleConfiguration.FrController.FrAbsoluteTimer), "FrIfAbsTimerRef")
				}
						
				def void setFrIfAbsTimerRef(org.artop.ecuc.autosar421.accessors.Fr.FrMultipleConfiguration.FrController.FrAbsoluteTimer object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FrIfAbsTimerRef"], object.getTarget())
					}
				}
				
				
				def List<FrIfJob> getFrIfJobs(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "FrIfJob")
						}
					}
					return new BasicWrappingEList<FrIfJob, GContainer>(filteredContainers, typeof(FrIfJob), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.FrIf$FrIfConfig$FrIfCluster$FrIfJobList$FrIfJob frIfJob) {
							frIfJob.target?.gSetDefinition(containerValue.getContainerDefinition("FrIfJob"))
							super.delegateAdd(frIfJob)
						}
						
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.FrIf$FrIfConfig$FrIfCluster$FrIfJobList$FrIfJob frIfJob) {
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
					
					def BigInteger getFrIfCycle(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfCycle"])
					}
					
					def void setFrIfCycle(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfCycle"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfCycle"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getFrIfMacrotick(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfMacrotick"])
					}
					
					def void setFrIfMacrotick(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfMacrotick"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfMacrotick"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getFrIfMaxIsrDelay(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfMaxIsrDelay"])
					}
					
					def void setFrIfMaxIsrDelay(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfMaxIsrDelay"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfMaxIsrDelay"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					
					
					def List<FrIfCommunicationOperation> getFrIfCommunicationOperations(){
						val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
							override protected accept(GContainer item) {
								return accept(item, typeof(GContainerDef), "FrIfCommunicationOperation")
							}
						}
						return new BasicWrappingEList<FrIfCommunicationOperation, GContainer>(filteredContainers, typeof(FrIfCommunicationOperation), typeof(GContainer)) {
							override protected delegateAdd(org.artop.ecuc.autosar421.accessors.FrIf$FrIfConfig$FrIfCluster$FrIfJobList$FrIfJob$FrIfCommunicationOperation frIfCommunicationOperation) {
								frIfCommunicationOperation.target?.gSetDefinition(containerValue.getContainerDefinition("FrIfCommunicationOperation"))
								super.delegateAdd(frIfCommunicationOperation)
							}
							
							override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.FrIf$FrIfConfig$FrIfCluster$FrIfJobList$FrIfJob$FrIfCommunicationOperation frIfCommunicationOperation) {
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
						
						def FrIfCommunicationAction getFrIfCommunicationAction(){
							getFrIfCommunicationActionValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfCommunicationAction"])
						}
						
						def void setFrIfCommunicationAction(FrIfCommunicationAction value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfCommunicationAction"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfCommunicationAction"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
							
						def FrIfCommunicationAction getFrIfCommunicationActionValue(GParameterValue paramValue){
							val castedParamValue = paramValue as EcucTextualParamValue
							switch (castedParamValue.value){
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
						
						def void setFrIfCommunicationActionValue(GParameterValue paramValue, FrIfCommunicationAction value){
							EcucValueAccessor421Util.setParameterValue(paramValue, value)
						}
						
						def BigInteger getFrIfCommunicationOperationIdx(){
							EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfCommunicationOperationIdx"])
						}
						
						def void setFrIfCommunicationOperationIdx(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfCommunicationOperationIdx"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfCommunicationOperationIdx"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						def BigInteger getFrIfRxComOpMaxLoop(){
							EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfRxComOpMaxLoop"])
						}
						
						def void setFrIfRxComOpMaxLoop(BigInteger value){
							var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfRxComOpMaxLoop"]
							if (parameterValue == null) {
								val containerDef = containerValue.gGetDefinition
								if (containerDef instanceof GParamConfContainerDef) {
									parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfRxComOpMaxLoop"])
									containerValue.gGetParameterValues += parameterValue
								}
							}
							EcucValueAccessor421Util.setParameterValue(parameterValue, value)
						}
						
						
						def org.artop.ecuc.autosar421.accessors.FrIf.FrIfConfig.FrIfCluster.FrIfController.FrIfLPdu getFrIfLPduIdxRef(){
							containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.FrIf.FrIfConfig.FrIfCluster.FrIfController.FrIfLPdu), "FrIfLPduIdxRef")
						}
								
						def void setFrIfLPduIdxRef(org.artop.ecuc.autosar421.accessors.FrIf.FrIfConfig.FrIfCluster.FrIfController.FrIfLPdu object){
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FrIfLPduIdxRef"], object.getTarget())
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
			
			def FrIfByteOrder getFrIfByteOrder(){
				getFrIfByteOrderValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfByteOrder"])
			}
			
			def void setFrIfByteOrder(FrIfByteOrder value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfByteOrder"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfByteOrder"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			enum FrIfByteOrder {
				BIG_ENDIAN, 
				LITTLE_ENDIAN
			}
				
			def FrIfByteOrder getFrIfByteOrderValue(GParameterValue paramValue){
				val castedParamValue = paramValue as EcucTextualParamValue
				switch (castedParamValue.value){
					case "BIG_ENDIAN" : FrIfByteOrder.BIG_ENDIAN
					case "LITTLE_ENDIAN" : FrIfByteOrder.LITTLE_ENDIAN
				}
			}
			
			def void setFrIfByteOrderValue(GParameterValue paramValue, FrIfByteOrder value){
				EcucValueAccessor421Util.setParameterValue(paramValue, value)
			}
			
			
			
			def List<FrIfPdusInFrame> getFrIfPdusInFrames(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "FrIfPdusInFrame")
					}
				}
				return new BasicWrappingEList<FrIfPdusInFrame, GContainer>(filteredContainers, typeof(FrIfPdusInFrame), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.FrIf$FrIfConfig$FrIfFrameStructure$FrIfPdusInFrame frIfPdusInFrame) {
						frIfPdusInFrame.target?.gSetDefinition(containerValue.getContainerDefinition("FrIfPdusInFrame"))
						super.delegateAdd(frIfPdusInFrame)
					}
					
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.FrIf$FrIfConfig$FrIfFrameStructure$FrIfPdusInFrame frIfPdusInFrame) {
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
				
				def BigInteger getFrIfPduOffset(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfPduOffset"])
				}
				
				def void setFrIfPduOffset(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfPduOffset"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfPduOffset"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				def BigInteger getFrIfPduUpdateBitOffset(){
					EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfPduUpdateBitOffset"])
				}
				
				def void setFrIfPduUpdateBitOffset(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfPduUpdateBitOffset"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfPduUpdateBitOffset"])
							containerValue.gGetParameterValues += parameterValue
						}
					}
					EcucValueAccessor421Util.setParameterValue(parameterValue, value)
				}
				
				
				def org.artop.ecuc.autosar421.accessors.FrIf.FrIfConfig.FrIfPdu getFrIfPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.FrIf.FrIfConfig.FrIfPdu), "FrIfPduRef")
				}
						
				def void setFrIfPduRef(org.artop.ecuc.autosar421.accessors.FrIf.FrIfConfig.FrIfPdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FrIfPduRef"], object.getTarget())
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
					
					def String getFrIfRxIndicationName(){
						EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfRxIndicationName"])
					}
					
					def void setFrIfRxIndicationName(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfRxIndicationName"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfRxIndicationName"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def FrIfUserRxIndicationUL getFrIfUserRxIndicationUL(){
						getFrIfUserRxIndicationULValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfUserRxIndicationUL"])
					}
					
					def void setFrIfUserRxIndicationUL(FrIfUserRxIndicationUL value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfUserRxIndicationUL"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfUserRxIndicationUL"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					enum FrIfUserRxIndicationUL {
						CDD, 
						FR_AR_TP, 
						FR_NM, 
						FR_TP, 
						PDUR, 
						XCP
					}
						
					def FrIfUserRxIndicationUL getFrIfUserRxIndicationULValue(GParameterValue paramValue){
						val castedParamValue = paramValue as EcucTextualParamValue
						switch (castedParamValue.value){
							case "CDD" : FrIfUserRxIndicationUL.CDD
							case "FR_AR_TP" : FrIfUserRxIndicationUL.FR_AR_TP
							case "FR_NM" : FrIfUserRxIndicationUL.FR_NM
							case "FR_TP" : FrIfUserRxIndicationUL.FR_TP
							case "PDUR" : FrIfUserRxIndicationUL.PDUR
							case "XCP" : FrIfUserRxIndicationUL.XCP
						}
					}
					
					def void setFrIfUserRxIndicationULValue(GParameterValue paramValue, FrIfUserRxIndicationUL value){
						EcucValueAccessor421Util.setParameterValue(paramValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getFrIfRxPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "FrIfRxPduRef")
					}
							
					def void setFrIfRxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FrIfRxPduRef"], object.getTarget())
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
					
					def Boolean getFrIfConfirm(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfConfirm"])
					}
					
					def void setFrIfConfirm(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfConfirm"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfConfirm"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getFrIfCounterLimit(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfCounterLimit"])
					}
					
					def void setFrIfCounterLimit(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfCounterLimit"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfCounterLimit"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Boolean getFrIfImmediate(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfImmediate"])
					}
					
					def void setFrIfImmediate(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfImmediate"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfImmediate"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def Boolean getFrIfNoneMode(){
						getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfNoneMode"])
					}
					
					def void setFrIfNoneMode(Boolean value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfNoneMode"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfNoneMode"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def String getFrIfTxConfirmationName(){
						EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfTxConfirmationName"])
					}
					
					def void setFrIfTxConfirmationName(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfTxConfirmationName"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfTxConfirmationName"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def BigInteger getFrIfTxPduId(){
						EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfTxPduId"])
					}
					
					def void setFrIfTxPduId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfTxPduId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfTxPduId"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def String getFrIfUserTriggerTransmitName(){
						EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfUserTriggerTransmitName"])
					}
					
					def void setFrIfUserTriggerTransmitName(String value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfUserTriggerTransmitName"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfUserTriggerTransmitName"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
					}
					
					def FrIfUserTxUL getFrIfUserTxUL(){
						getFrIfUserTxULValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfUserTxUL"])
					}
					
					def void setFrIfUserTxUL(FrIfUserTxUL value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfUserTxUL"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfUserTxUL"])
								containerValue.gGetParameterValues += parameterValue
							}
						}
						EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
						
					def FrIfUserTxUL getFrIfUserTxULValue(GParameterValue paramValue){
						val castedParamValue = paramValue as EcucTextualParamValue
						switch (castedParamValue.value){
							case "CDD" : FrIfUserTxUL.CDD
							case "FR_AR_TP" : FrIfUserTxUL.FR_AR_TP
							case "FR_NM" : FrIfUserTxUL.FR_NM
							case "FR_TP" : FrIfUserTxUL.FR_TP
							case "FR_TSYN" : FrIfUserTxUL.FR_TSYN
							case "PDUR" : FrIfUserTxUL.PDUR
							case "XCP" : FrIfUserTxUL.XCP
						}
					}
					
					def void setFrIfUserTxULValue(GParameterValue paramValue, FrIfUserTxUL value){
						EcucValueAccessor421Util.setParameterValue(paramValue, value)
					}
					
					
					def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getFrIfTxPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "FrIfTxPduRef")
					}
							
					def void setFrIfTxPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "FrIfTxPduRef"], object.getTarget())
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
		
		def BigInteger getFrIfAbsTimerIdx(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfAbsTimerIdx"])
		}
		
		def void setFrIfAbsTimerIdx(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfAbsTimerIdx"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfAbsTimerIdx"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFrIfAllSlotsSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfAllSlotsSupport"])
		}
		
		def void setFrIfAllSlotsSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfAllSlotsSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfAllSlotsSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFrIfCancelTransmitSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfCancelTransmitSupport"])
		}
		
		def void setFrIfCancelTransmitSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfCancelTransmitSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfCancelTransmitSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFrIfDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfDevErrorDetect"])
		}
		
		def void setFrIfDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFrIfDisableLPduSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfDisableLPduSupport"])
		}
		
		def void setFrIfDisableLPduSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfDisableLPduSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfDisableLPduSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFrIfDisableTransceiverBranchSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfDisableTransceiverBranchSupport"])
		}
		
		def void setFrIfDisableTransceiverBranchSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfDisableTransceiverBranchSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfDisableTransceiverBranchSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFrIfEnableTransceiverBranchSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfEnableTransceiverBranchSupport"])
		}
		
		def void setFrIfEnableTransceiverBranchSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfEnableTransceiverBranchSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfEnableTransceiverBranchSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def String getFrIfFreeOpAApiName(){
			EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfFreeOpAApiName"])
		}
		
		def void setFrIfFreeOpAApiName(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfFreeOpAApiName"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfFreeOpAApiName"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def String getFrIfFreeOpBApiName(){
			EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfFreeOpBApiName"])
		}
		
		def void setFrIfFreeOpBApiName(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfFreeOpBApiName"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfFreeOpBApiName"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def String getFrIfFreeOpsHeader(){
			EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfFreeOpsHeader"])
		}
		
		def void setFrIfFreeOpsHeader(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfFreeOpsHeader"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfFreeOpsHeader"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFrIfGetClockCorrectionSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGetClockCorrectionSupport"])
		}
		
		def void setFrIfGetClockCorrectionSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGetClockCorrectionSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGetClockCorrectionSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFrIfGetGetChannelStatusSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGetGetChannelStatusSupport"])
		}
		
		def void setFrIfGetGetChannelStatusSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGetGetChannelStatusSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGetGetChannelStatusSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFrIfGetNmVectorSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGetNmVectorSupport"])
		}
		
		def void setFrIfGetNmVectorSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGetNmVectorSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGetNmVectorSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFrIfGetNumOfStartupFramesSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGetNumOfStartupFramesSupport"])
		}
		
		def void setFrIfGetNumOfStartupFramesSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGetNumOfStartupFramesSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGetNumOfStartupFramesSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFrIfGetSyncFrameListSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGetSyncFrameListSupport"])
		}
		
		def void setFrIfGetSyncFrameListSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGetSyncFrameListSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGetSyncFrameListSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFrIfGetTransceiverErrorSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGetTransceiverErrorSupport"])
		}
		
		def void setFrIfGetTransceiverErrorSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGetTransceiverErrorSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGetTransceiverErrorSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFrIfGetWakeupRxStatusSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGetWakeupRxStatusSupport"])
		}
		
		def void setFrIfGetWakeupRxStatusSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfGetWakeupRxStatusSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfGetWakeupRxStatusSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getFrIfNumClstSupported(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfNumClstSupported"])
		}
		
		def void setFrIfNumClstSupported(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfNumClstSupported"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfNumClstSupported"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getFrIfNumCtrlSupported(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfNumCtrlSupported"])
		}
		
		def void setFrIfNumCtrlSupported(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfNumCtrlSupported"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfNumCtrlSupported"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfReadCCConfigApi"])
		}
		
		def void setFrIfReadCCConfigApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfReadCCConfigApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfReadCCConfigApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFrIfReconfigLPduSupport(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfReconfigLPduSupport"])
		}
		
		def void setFrIfReconfigLPduSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfReconfigLPduSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfReconfigLPduSupport"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getFrIfUnusedBitValue(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfUnusedBitValue"])
		}
		
		def void setFrIfUnusedBitValue(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfUnusedBitValue"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfUnusedBitValue"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getFrIfVersionInfoApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfVersionInfoApi"])
		}
		
		def void setFrIfVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIfVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "FrIfVersionInfoApi"])
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
