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

class Fr implements IWrapper<GModuleConfiguration> {
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

	def FrGeneral getFrGeneral(){
		moduleConfiguration.getByType(typeof(FrGeneral))
	}

	def void setFrGeneral(FrGeneral frGeneral){
		val GContainer container = frGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "FrGeneral")
	}
	def FrMultipleConfiguration getFrMultipleConfiguration(){
		moduleConfiguration.getByType(typeof(FrMultipleConfiguration))
	}

	def void setFrMultipleConfiguration(FrMultipleConfiguration frMultipleConfiguration){
		val GContainer container = frMultipleConfiguration.getTarget()
	    moduleConfiguration.setContainer(container, "FrMultipleConfiguration")
	}

	static class FrGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof FrGeneral)){
				return false
			}
			this.target == (object as FrGeneral).target
		}
	
		def BigInteger getFrCtrlTestCount(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrCtrlTestCount"].getBigIntegerValue()
		}
		
		def void setFrCtrlTestCount(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrCtrlTestCount"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrCtrlTestCount"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getFrDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrDevErrorDetect"].getBooleanValue()
		}
		
		def void setFrDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFrDisableLPduSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrDisableLPduSupport"].getBooleanValue()
		}
		
		def void setFrDisableLPduSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrDisableLPduSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrDisableLPduSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigInteger getFrIndex(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIndex"].getBigIntegerValue()
		}
		
		def void setFrIndex(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrIndex"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrIndex"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getFrNumCtrlSupported(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNumCtrlSupported"].getBigIntegerValue()
		}
		
		def void setFrNumCtrlSupported(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrNumCtrlSupported"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrNumCtrlSupported"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getFrPrepareLPduSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPrepareLPduSupport"].getBooleanValue()
		}
		
		def void setFrPrepareLPduSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPrepareLPduSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrPrepareLPduSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFrReconfigLPduSupport(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrReconfigLPduSupport"].getBooleanValue()
		}
		
		def void setFrReconfigLPduSupport(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrReconfigLPduSupport"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrReconfigLPduSupport"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFrRxStringentCheck(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrRxStringentCheck"].getBooleanValue()
		}
		
		def void setFrRxStringentCheck(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrRxStringentCheck"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrRxStringentCheck"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFrRxStringentLengthCheck(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrRxStringentLengthCheck"].getBooleanValue()
		}
		
		def void setFrRxStringentLengthCheck(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrRxStringentLengthCheck"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrRxStringentLengthCheck"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getFrVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrVersionInfoApi"].getBooleanValue()
		}
		
		def void setFrVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}
	static class FrMultipleConfiguration implements IWrapper<GContainer> {
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
	        if (!(object instanceof FrMultipleConfiguration)){
				return false
			}
			this.target == (object as FrMultipleConfiguration).target
		}
	
		
		
		def List<FrController> getFrControllers(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "FrController")
				}
			}
			return new BasicWrappingEList<FrController, GContainer>(filteredContainers, typeof(FrController), typeof(GContainer)) {
				override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Fr.FrMultipleConfiguration.FrController frController) {
					frController.target?.gSetDefinition(containerValue.getContainerDefinition("FrController"))
					super.delegateAdd(frController)
				}
		
				override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Fr.FrMultipleConfiguration.FrController frController) {
					frController.target?.gSetDefinition(containerValue.getContainerDefinition("FrController"))
					super.delegateAdd(index, frController)
				}
			}
		}
		
		
		static class FrController implements IWrapper<GContainer> {
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
		        if (!(object instanceof FrController)){
					return false
				}
				this.target == (object as FrController).target
			}
		
			def BigInteger getFrCtrlIdx(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrCtrlIdx"].getBigIntegerValue()
			}
			
			def void setFrCtrlIdx(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrCtrlIdx"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrCtrlIdx"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getFrPAllowHaltDueToClock(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPAllowHaltDueToClock"].getBooleanValue()
			}
			
			def void setFrPAllowHaltDueToClock(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPAllowHaltDueToClock"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrPAllowHaltDueToClock"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getFrPAllowPassiveToActive(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPAllowPassiveToActive"].getBigIntegerValue()
			}
			
			def void setFrPAllowPassiveToActive(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPAllowPassiveToActive"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrPAllowPassiveToActive"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def FrPChannels getFrPChannels(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPChannels"].getFrPChannelsValue()
			}
			
			def void setFrPChannels(FrPChannels value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPChannels"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrPChannels"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum FrPChannels {
				FR_CHANNEL_A, 
				FR_CHANNEL_AB, 
				FR_CHANNEL_B
			}
			
			def FrPChannels getFrPChannelsValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "FR_CHANNEL_A" : FrPChannels.FR_CHANNEL_A
					case "FR_CHANNEL_AB" : FrPChannels.FR_CHANNEL_AB
					case "FR_CHANNEL_B" : FrPChannels.FR_CHANNEL_B
				}
			}
			
			def void setFrPChannelsValue(GParameterValue parameterValue, FrPChannels value){
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrPClusterDriftDamping(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPClusterDriftDamping"].getBigIntegerValue()
			}
			
			def void setFrPClusterDriftDamping(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPClusterDriftDamping"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrPClusterDriftDamping"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrPDecodingCorrection(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPDecodingCorrection"].getBigIntegerValue()
			}
			
			def void setFrPDecodingCorrection(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPDecodingCorrection"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrPDecodingCorrection"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrPDelayCompensationA(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPDelayCompensationA"].getBigIntegerValue()
			}
			
			def void setFrPDelayCompensationA(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPDelayCompensationA"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrPDelayCompensationA"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrPDelayCompensationB(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPDelayCompensationB"].getBigIntegerValue()
			}
			
			def void setFrPDelayCompensationB(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPDelayCompensationB"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrPDelayCompensationB"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getFrPExternalSync(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPExternalSync"].getBooleanValue()
			}
			
			def void setFrPExternalSync(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPExternalSync"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrPExternalSync"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getFrPFallBackInternal(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPFallBackInternal"].getBooleanValue()
			}
			
			def void setFrPFallBackInternal(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPFallBackInternal"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrPFallBackInternal"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getFrPKeySlotId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPKeySlotId"].getBigIntegerValue()
			}
			
			def void setFrPKeySlotId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPKeySlotId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrPKeySlotId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getFrPKeySlotOnlyEnabled(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPKeySlotOnlyEnabled"].getBooleanValue()
			}
			
			def void setFrPKeySlotOnlyEnabled(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPKeySlotOnlyEnabled"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrPKeySlotOnlyEnabled"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getFrPKeySlotUsedForStartup(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPKeySlotUsedForStartup"].getBooleanValue()
			}
			
			def void setFrPKeySlotUsedForStartup(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPKeySlotUsedForStartup"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrPKeySlotUsedForStartup"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getFrPKeySlotUsedForSync(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPKeySlotUsedForSync"].getBooleanValue()
			}
			
			def void setFrPKeySlotUsedForSync(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPKeySlotUsedForSync"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrPKeySlotUsedForSync"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getFrPLatestTx(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPLatestTx"].getBigIntegerValue()
			}
			
			def void setFrPLatestTx(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPLatestTx"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrPLatestTx"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrPMacroInitialOffsetA(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPMacroInitialOffsetA"].getBigIntegerValue()
			}
			
			def void setFrPMacroInitialOffsetA(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPMacroInitialOffsetA"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrPMacroInitialOffsetA"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrPMacroInitialOffsetB(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPMacroInitialOffsetB"].getBigIntegerValue()
			}
			
			def void setFrPMacroInitialOffsetB(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPMacroInitialOffsetB"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrPMacroInitialOffsetB"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrPMicroInitialOffsetA(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPMicroInitialOffsetA"].getBigIntegerValue()
			}
			
			def void setFrPMicroInitialOffsetA(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPMicroInitialOffsetA"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrPMicroInitialOffsetA"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrPMicroInitialOffsetB(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPMicroInitialOffsetB"].getBigIntegerValue()
			}
			
			def void setFrPMicroInitialOffsetB(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPMicroInitialOffsetB"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrPMicroInitialOffsetB"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrPMicroPerCycle(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPMicroPerCycle"].getBigIntegerValue()
			}
			
			def void setFrPMicroPerCycle(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPMicroPerCycle"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrPMicroPerCycle"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getFrPNmVectorEarlyUpdate(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPNmVectorEarlyUpdate"].getBooleanValue()
			}
			
			def void setFrPNmVectorEarlyUpdate(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPNmVectorEarlyUpdate"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrPNmVectorEarlyUpdate"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def BigInteger getFrPOffsetCorrectionOut(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPOffsetCorrectionOut"].getBigIntegerValue()
			}
			
			def void setFrPOffsetCorrectionOut(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPOffsetCorrectionOut"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrPOffsetCorrectionOut"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrPOffsetCorrectionStart(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPOffsetCorrectionStart"].getBigIntegerValue()
			}
			
			def void setFrPOffsetCorrectionStart(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPOffsetCorrectionStart"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrPOffsetCorrectionStart"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrPPayloadLengthDynMax(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPPayloadLengthDynMax"].getBigIntegerValue()
			}
			
			def void setFrPPayloadLengthDynMax(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPPayloadLengthDynMax"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrPPayloadLengthDynMax"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrPRateCorrectionOut(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPRateCorrectionOut"].getBigIntegerValue()
			}
			
			def void setFrPRateCorrectionOut(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPRateCorrectionOut"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrPRateCorrectionOut"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def FrPSamplesPerMicrotick getFrPSamplesPerMicrotick(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPSamplesPerMicrotick"].getFrPSamplesPerMicrotickValue()
			}
			
			def void setFrPSamplesPerMicrotick(FrPSamplesPerMicrotick value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPSamplesPerMicrotick"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrPSamplesPerMicrotick"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum FrPSamplesPerMicrotick {
				N1SAMPLES, 
				N2SAMPLES, 
				N4SAMPLES
			}
			
			def FrPSamplesPerMicrotick getFrPSamplesPerMicrotickValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "N1SAMPLES" : FrPSamplesPerMicrotick.N1SAMPLES
					case "N2SAMPLES" : FrPSamplesPerMicrotick.N2SAMPLES
					case "N4SAMPLES" : FrPSamplesPerMicrotick.N4SAMPLES
				}
			}
			
			def void setFrPSamplesPerMicrotickValue(GParameterValue parameterValue, FrPSamplesPerMicrotick value){
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrPSecondKeySlotId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPSecondKeySlotId"].getBigIntegerValue()
			}
			
			def void setFrPSecondKeySlotId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPSecondKeySlotId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrPSecondKeySlotId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def Boolean getFrPTwoKeySlotMode(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPTwoKeySlotMode"].getBooleanValue()
			}
			
			def void setFrPTwoKeySlotMode(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPTwoKeySlotMode"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrPTwoKeySlotMode"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def FrPWakeupChannel getFrPWakeupChannel(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPWakeupChannel"].getFrPWakeupChannelValue()
			}
			
			def void setFrPWakeupChannel(FrPWakeupChannel value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPWakeupChannel"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrPWakeupChannel"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum FrPWakeupChannel {
				FR_CHANNEL_A, 
				FR_CHANNEL_B
			}
			
			def FrPWakeupChannel getFrPWakeupChannelValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "FR_CHANNEL_A" : FrPWakeupChannel.FR_CHANNEL_A
					case "FR_CHANNEL_B" : FrPWakeupChannel.FR_CHANNEL_B
				}
			}
			
			def void setFrPWakeupChannelValue(GParameterValue parameterValue, FrPWakeupChannel value){
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrPWakeupPattern(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPWakeupPattern"].getBigIntegerValue()
			}
			
			def void setFrPWakeupPattern(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPWakeupPattern"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrPWakeupPattern"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrPdAcceptedStartupRange(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPdAcceptedStartupRange"].getBigIntegerValue()
			}
			
			def void setFrPdAcceptedStartupRange(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPdAcceptedStartupRange"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrPdAcceptedStartupRange"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getFrPdListenTimeout(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPdListenTimeout"].getBigIntegerValue()
			}
			
			def void setFrPdListenTimeout(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPdListenTimeout"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrPdListenTimeout"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def FrPdMicrotick getFrPdMicrotick(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPdMicrotick"].getFrPdMicrotickValue()
			}
			
			def void setFrPdMicrotick(FrPdMicrotick value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrPdMicrotick"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrPdMicrotick"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum FrPdMicrotick {
				T100NS, 
				T12_5NS, 
				T200NS, 
				T25NS, 
				T50NS
			}
			
			def FrPdMicrotick getFrPdMicrotickValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "T100NS" : FrPdMicrotick.T100NS
					case "T12_5NS" : FrPdMicrotick.T12_5NS
					case "T200NS" : FrPdMicrotick.T200NS
					case "T25NS" : FrPdMicrotick.T25NS
					case "T50NS" : FrPdMicrotick.T50NS
				}
			}
			
			def void setFrPdMicrotickValue(GParameterValue parameterValue, FrPdMicrotick value){
				parameterValue.setValue(value)
			}
			
			
			
			def List<FrAbsoluteTimer> getFrAbsoluteTimers(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "FrAbsoluteTimer")
					}
				}
				return new BasicWrappingEList<FrAbsoluteTimer, GContainer>(filteredContainers, typeof(FrAbsoluteTimer), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Fr.FrMultipleConfiguration.FrController.FrAbsoluteTimer frAbsoluteTimer) {
						frAbsoluteTimer.target?.gSetDefinition(containerValue.getContainerDefinition("FrAbsoluteTimer"))
						super.delegateAdd(frAbsoluteTimer)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Fr.FrMultipleConfiguration.FrController.FrAbsoluteTimer frAbsoluteTimer) {
						frAbsoluteTimer.target?.gSetDefinition(containerValue.getContainerDefinition("FrAbsoluteTimer"))
						super.delegateAdd(index, frAbsoluteTimer)
					}
				}
			}
			
			def FrControllerDemEventParameterRefs getFrControllerDemEventParameterRefs(){
				containerValue.getByType(typeof(FrControllerDemEventParameterRefs))
			}
			
			def void setFrControllerDemEventParameterRefs(FrControllerDemEventParameterRefs frControllerDemEventParameterRefs){
				val GContainer subContainer = frControllerDemEventParameterRefs.getTarget()
				containerValue.setContainer(subContainer, "FrControllerDemEventParameterRefs")
			}
			
			def List<FrFifo> getFrFifos(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "FrFifo")
					}
				}
				return new BasicWrappingEList<FrFifo, GContainer>(filteredContainers, typeof(FrFifo), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Fr.FrMultipleConfiguration.FrController.FrFifo frFifo) {
						frFifo.target?.gSetDefinition(containerValue.getContainerDefinition("FrFifo"))
						super.delegateAdd(frFifo)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Fr.FrMultipleConfiguration.FrController.FrFifo frFifo) {
						frFifo.target?.gSetDefinition(containerValue.getContainerDefinition("FrFifo"))
						super.delegateAdd(index, frFifo)
					}
				}
			}
			
			
			static class FrAbsoluteTimer implements IWrapper<GContainer> {
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
			        if (!(object instanceof FrAbsoluteTimer)){
						return false
					}
					this.target == (object as FrAbsoluteTimer).target
				}
			
				def BigInteger getFrAbsTimerIdx(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrAbsTimerIdx"].getBigIntegerValue()
				}
				
				def void setFrAbsTimerIdx(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrAbsTimerIdx"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrAbsTimerIdx"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				
			}
			
			static class FrControllerDemEventParameterRefs implements IWrapper<GContainer> {
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
			        if (!(object instanceof FrControllerDemEventParameterRefs)){
						return false
					}
					this.target == (object as FrControllerDemEventParameterRefs).target
				}
			
				
				def org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter getFR_E_CTRL_TESTRESULT(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter), "FR_E_CTRL_TESTRESULT")
				}
				
				def void setFR_E_CTRL_TESTRESULT(org.artop.ecuc.autosar421.accessors.Dem.DemConfigSet.DemEventParameter object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "FR_E_CTRL_TESTRESULT"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class FrFifo implements IWrapper<GContainer> {
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
			        if (!(object instanceof FrFifo)){
						return false
					}
					this.target == (object as FrFifo).target
				}
			
				def Boolean getFrAdmitWithoutMessageId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrAdmitWithoutMessageId"].getBooleanValue()
				}
				
				def void setFrAdmitWithoutMessageId(Boolean value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrAdmitWithoutMessageId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrAdmitWithoutMessageId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(getBooleanParameterValueValue(value, true))
				}
				
				def BigInteger getFrBaseCycle(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrBaseCycle"].getBigIntegerValue()
				}
				
				def void setFrBaseCycle(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrBaseCycle"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrBaseCycle"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def FrChannels getFrChannels(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrChannels"].getFrChannelsValue()
				}
				
				def void setFrChannels(FrChannels value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrChannels"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrChannels"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum FrChannels {
					FR_CHANNEL_A, 
					FR_CHANNEL_AB, 
					FR_CHANNEL_B
				}
				
				def FrChannels getFrChannelsValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "FR_CHANNEL_A" : FrChannels.FR_CHANNEL_A
						case "FR_CHANNEL_AB" : FrChannels.FR_CHANNEL_AB
						case "FR_CHANNEL_B" : FrChannels.FR_CHANNEL_B
					}
				}
				
				def void setFrChannelsValue(GParameterValue parameterValue, FrChannels value){
					parameterValue.setValue(value)
				}
				
				def BigInteger getFrCycleRepetition(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrCycleRepetition"].getBigIntegerValue()
				}
				
				def void setFrCycleRepetition(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrCycleRepetition"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrCycleRepetition"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getFrFifoDepth(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrFifoDepth"].getBigIntegerValue()
				}
				
				def void setFrFifoDepth(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrFifoDepth"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrFifoDepth"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getFrMsgIdMask(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrMsgIdMask"].getBigIntegerValue()
				}
				
				def void setFrMsgIdMask(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrMsgIdMask"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrMsgIdMask"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getFrMsgIdMatch(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrMsgIdMatch"].getBigIntegerValue()
				}
				
				def void setFrMsgIdMatch(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrMsgIdMatch"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrMsgIdMatch"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				def List<FrRange> getFrRanges(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "FrRange")
						}
					}
					return new BasicWrappingEList<FrRange, GContainer>(filteredContainers, typeof(FrRange), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar421.accessors.Fr.FrMultipleConfiguration.FrController.FrFifo.FrRange frRange) {
							frRange.target?.gSetDefinition(containerValue.getContainerDefinition("FrRange"))
							super.delegateAdd(frRange)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.Fr.FrMultipleConfiguration.FrController.FrFifo.FrRange frRange) {
							frRange.target?.gSetDefinition(containerValue.getContainerDefinition("FrRange"))
							super.delegateAdd(index, frRange)
						}
					}
				}
				
				
				static class FrRange implements IWrapper<GContainer> {
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
				        if (!(object instanceof FrRange)){
							return false
						}
						this.target == (object as FrRange).target
					}
				
					def BigInteger getFrRangeMax(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrRangeMax"].getBigIntegerValue()
					}
					
					def void setFrRangeMax(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrRangeMax"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrRangeMax"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getFrRangeMin(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrRangeMin"].getBigIntegerValue()
					}
					
					def void setFrRangeMin(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "FrRangeMin"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "FrRangeMin"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					
					
				}
				
			}
			
		}
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof Fr)){
			return false
		}
		this.target == (object as Fr).target
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
