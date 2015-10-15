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
package org.artop.ecuc.autosar422.accessors

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

class RamTst implements IWrapper<GModuleConfiguration> {
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

	def RamTstCommon getRamTstCommon(){
		moduleConfiguration.getByType(typeof(RamTstCommon))
	}

	def void setRamTstCommon(RamTstCommon ramTstCommon){
		val GContainer container = ramTstCommon.getTarget()
	    moduleConfiguration.setContainer(container, "RamTstCommon")
	}
	def RamTstDemEventParameterRefs getRamTstDemEventParameterRefs(){
		moduleConfiguration.getByType(typeof(RamTstDemEventParameterRefs))
	}

	def void setRamTstDemEventParameterRefs(RamTstDemEventParameterRefs ramTstDemEventParameterRefs){
		val GContainer container = ramTstDemEventParameterRefs.getTarget()
	    moduleConfiguration.setContainer(container, "RamTstDemEventParameterRefs")
	}
	def RamTstPublishedInformation getRamTstPublishedInformation(){
		moduleConfiguration.getByType(typeof(RamTstPublishedInformation))
	}

	def void setRamTstPublishedInformation(RamTstPublishedInformation ramTstPublishedInformation){
		val GContainer container = ramTstPublishedInformation.getTarget()
	    moduleConfiguration.setContainer(container, "RamTstPublishedInformation")
	}

	static class RamTstCommon implements IWrapper<GContainer> {
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
	        if (!(object instanceof RamTstCommon)){
				return false
			}
			this.target == (object as RamTstCommon).target
		}
	
		def Boolean getRamTstAllowApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstAllowApi"].getBooleanValue()
		}
		
		def void setRamTstAllowApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstAllowApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstAllowApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getRamTstChangeNumOfTestedCellsApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstChangeNumOfTestedCellsApi"].getBooleanValue()
		}
		
		def void setRamTstChangeNumOfTestedCellsApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstChangeNumOfTestedCellsApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstChangeNumOfTestedCellsApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getRamTstDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstDevErrorDetect"].getBooleanValue()
		}
		
		def void setRamTstDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getRamTstGetAlgParamsApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstGetAlgParamsApi"].getBooleanValue()
		}
		
		def void setRamTstGetAlgParamsApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstGetAlgParamsApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstGetAlgParamsApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getRamTstGetExecutionStatusApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstGetExecutionStatusApi"].getBooleanValue()
		}
		
		def void setRamTstGetExecutionStatusApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstGetExecutionStatusApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstGetExecutionStatusApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getRamTstGetNumberOfTestedCellsApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstGetNumberOfTestedCellsApi"].getBooleanValue()
		}
		
		def void setRamTstGetNumberOfTestedCellsApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstGetNumberOfTestedCellsApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstGetNumberOfTestedCellsApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getRamTstGetTestAlgorithmApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstGetTestAlgorithmApi"].getBooleanValue()
		}
		
		def void setRamTstGetTestAlgorithmApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstGetTestAlgorithmApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstGetTestAlgorithmApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getRamTstGetTestResultApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstGetTestResultApi"].getBooleanValue()
		}
		
		def void setRamTstGetTestResultApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstGetTestResultApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstGetTestResultApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getRamTstGetTestResultPerBlockApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstGetTestResultPerBlockApi"].getBooleanValue()
		}
		
		def void setRamTstGetTestResultPerBlockApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstGetTestResultPerBlockApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstGetTestResultPerBlockApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getRamTstGetVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstGetVersionInfoApi"].getBooleanValue()
		}
		
		def void setRamTstGetVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstGetVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstGetVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getRamTstResumeApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstResumeApi"].getBooleanValue()
		}
		
		def void setRamTstResumeApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstResumeApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstResumeApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getRamTstRunFullTestApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstRunFullTestApi"].getBooleanValue()
		}
		
		def void setRamTstRunFullTestApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstRunFullTestApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstRunFullTestApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getRamTstRunPartialTestApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstRunPartialTestApi"].getBooleanValue()
		}
		
		def void setRamTstRunPartialTestApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstRunPartialTestApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstRunPartialTestApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getRamTstSelectAlgParamsApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstSelectAlgParamsApi"].getBooleanValue()
		}
		
		def void setRamTstSelectAlgParamsApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstSelectAlgParamsApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstSelectAlgParamsApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getRamTstStopApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstStopApi"].getBooleanValue()
		}
		
		def void setRamTstStopApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstStopApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstStopApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getRamTstSuspendApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstSuspendApi"].getBooleanValue()
		}
		
		def void setRamTstSuspendApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstSuspendApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstSuspendApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		def RamTstAlgorithms getRamTstAlgorithms(){
			containerValue.getByType(typeof(RamTstAlgorithms))
		}
		
		def void setRamTstAlgorithms(RamTstAlgorithms ramTstAlgorithms){
			val GContainer subContainer = ramTstAlgorithms.getTarget()
			containerValue.setContainer(subContainer, "RamTstAlgorithms")
		}
		
		def RamTstConfigParams getRamTstConfigParams(){
			containerValue.getByType(typeof(RamTstConfigParams))
		}
		
		def void setRamTstConfigParams(RamTstConfigParams ramTstConfigParams){
			val GContainer subContainer = ramTstConfigParams.getTarget()
			containerValue.setContainer(subContainer, "RamTstConfigParams")
		}
		
		
		static class RamTstAlgorithms implements IWrapper<GContainer> {
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
		        if (!(object instanceof RamTstAlgorithms)){
					return false
				}
				this.target == (object as RamTstAlgorithms).target
			}
		
			def Boolean getRamTstAbrahamTestSelected(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstAbrahamTestSelected"].getBooleanValue()
			}
			
			def void setRamTstAbrahamTestSelected(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstAbrahamTestSelected"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstAbrahamTestSelected"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getRamTstCheckerboardTestSelected(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstCheckerboardTestSelected"].getBooleanValue()
			}
			
			def void setRamTstCheckerboardTestSelected(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstCheckerboardTestSelected"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstCheckerboardTestSelected"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getRamTstGalpatTestSelected(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstGalpatTestSelected"].getBooleanValue()
			}
			
			def void setRamTstGalpatTestSelected(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstGalpatTestSelected"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstGalpatTestSelected"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getRamTstMarchTestSelected(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstMarchTestSelected"].getBooleanValue()
			}
			
			def void setRamTstMarchTestSelected(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstMarchTestSelected"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstMarchTestSelected"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getRamTstTranspGalpatTestSelected(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstTranspGalpatTestSelected"].getBooleanValue()
			}
			
			def void setRamTstTranspGalpatTestSelected(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstTranspGalpatTestSelected"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstTranspGalpatTestSelected"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			def Boolean getRamTstWalkPathTestSelected(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstWalkPathTestSelected"].getBooleanValue()
			}
			
			def void setRamTstWalkPathTestSelected(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstWalkPathTestSelected"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstWalkPathTestSelected"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			
			
		}
		
		static class RamTstConfigParams implements IWrapper<GContainer> {
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
		        if (!(object instanceof RamTstConfigParams)){
					return false
				}
				this.target == (object as RamTstConfigParams).target
			}
		
			def BigInteger getRamTstDefaultAlgParamsId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstDefaultAlgParamsId"].getBigIntegerValue()
			}
			
			def void setRamTstDefaultAlgParamsId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstDefaultAlgParamsId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstDefaultAlgParamsId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getRamTstMinNumberOfTestedCells(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstMinNumberOfTestedCells"].getBigIntegerValue()
			}
			
			def void setRamTstMinNumberOfTestedCells(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstMinNumberOfTestedCells"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstMinNumberOfTestedCells"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def BigInteger getRamTstNumberOfAlgParamSets(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstNumberOfAlgParamSets"].getBigIntegerValue()
			}
			
			def void setRamTstNumberOfAlgParamSets(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstNumberOfAlgParamSets"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstNumberOfAlgParamSets"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getRamTstTestCompletedNotification(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstTestCompletedNotification"].getStringValue()
			}
			
			def void setRamTstTestCompletedNotification(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstTestCompletedNotification"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstTestCompletedNotification"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			def String getRamTstTestErrorNotification(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstTestErrorNotification"].getStringValue()
			}
			
			def void setRamTstTestErrorNotification(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstTestErrorNotification"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstTestErrorNotification"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			
			def List<RamTstAlgParams> getRamTstAlgParams(){
				val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
					override protected accept(GContainer item) {
						return accept(item, typeof(GContainerDef), "RamTstAlgParams")
					}
				}
				return new BasicWrappingEList<RamTstAlgParams, GContainer>(filteredContainers, typeof(RamTstAlgParams), typeof(GContainer)) {
					override protected delegateAdd(org.artop.ecuc.autosar422.accessors.RamTst.RamTstCommon.RamTstConfigParams.RamTstAlgParams ramTstAlgParams) {
						ramTstAlgParams.target?.gSetDefinition(containerValue.getContainerDefinition("RamTstAlgParams"))
						super.delegateAdd(ramTstAlgParams)
					}
			
					override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.RamTst.RamTstCommon.RamTstConfigParams.RamTstAlgParams ramTstAlgParams) {
						ramTstAlgParams.target?.gSetDefinition(containerValue.getContainerDefinition("RamTstAlgParams"))
						super.delegateAdd(index, ramTstAlgParams)
					}
				}
			}
			
			
			static class RamTstAlgParams implements IWrapper<GContainer> {
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
			        if (!(object instanceof RamTstAlgParams)){
						return false
					}
					this.target == (object as RamTstAlgParams).target
				}
			
				def BigInteger getRamTstAlgParamsId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstAlgParamsId"].getBigIntegerValue()
				}
				
				def void setRamTstAlgParamsId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstAlgParamsId"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstAlgParamsId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def RamTstAlgorithm getRamTstAlgorithm(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstAlgorithm"].getRamTstAlgorithmValue()
				}
				
				def void setRamTstAlgorithm(RamTstAlgorithm value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstAlgorithm"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstAlgorithm"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				enum RamTstAlgorithm {
					RAMTST_ABRAHAM_TEST, 
					RAMTST_CHECKERBOARD_TEST, 
					RAMTST_GALPAT_TEST, 
					RAMTST_MARCH_TEST, 
					RAMTST_TRANSP_GALPAT_TEST, 
					RAMTST_WALK_PATH_TEST
				}
				
				def RamTstAlgorithm getRamTstAlgorithmValue(GParameterValue parameterValue){
					val castedParameterValue = parameterValue as EcucTextualParamValue
					switch (castedParameterValue.value){
						case "RAMTST_ABRAHAM_TEST" : RamTstAlgorithm.RAMTST_ABRAHAM_TEST
						case "RAMTST_CHECKERBOARD_TEST" : RamTstAlgorithm.RAMTST_CHECKERBOARD_TEST
						case "RAMTST_GALPAT_TEST" : RamTstAlgorithm.RAMTST_GALPAT_TEST
						case "RAMTST_MARCH_TEST" : RamTstAlgorithm.RAMTST_MARCH_TEST
						case "RAMTST_TRANSP_GALPAT_TEST" : RamTstAlgorithm.RAMTST_TRANSP_GALPAT_TEST
						case "RAMTST_WALK_PATH_TEST" : RamTstAlgorithm.RAMTST_WALK_PATH_TEST
					}
				}
				
				def void setRamTstAlgorithmValue(GParameterValue parameterValue, RamTstAlgorithm value){
					parameterValue.setValue(value)
				}
				
				def BigInteger getRamTstExtNumberOfTestedCells(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstExtNumberOfTestedCells"].getBigIntegerValue()
				}
				
				def void setRamTstExtNumberOfTestedCells(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstExtNumberOfTestedCells"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstExtNumberOfTestedCells"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getRamTstMaxNumberOfTestedCells(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstMaxNumberOfTestedCells"].getBigIntegerValue()
				}
				
				def void setRamTstMaxNumberOfTestedCells(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstMaxNumberOfTestedCells"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstMaxNumberOfTestedCells"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getRamTstNumberOfBlocks(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstNumberOfBlocks"].getBigIntegerValue()
				}
				
				def void setRamTstNumberOfBlocks(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstNumberOfBlocks"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstNumberOfBlocks"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				def BigInteger getRamTstNumberOfTestedCells(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstNumberOfTestedCells"].getBigIntegerValue()
				}
				
				def void setRamTstNumberOfTestedCells(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstNumberOfTestedCells"]
					if (parameterValue == null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstNumberOfTestedCells"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				
				def List<RamTstBlockParams> getRamTstBlockParams(){
					val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
						override protected accept(GContainer item) {
							return accept(item, typeof(GContainerDef), "RamTstBlockParams")
						}
					}
					return new BasicWrappingEList<RamTstBlockParams, GContainer>(filteredContainers, typeof(RamTstBlockParams), typeof(GContainer)) {
						override protected delegateAdd(org.artop.ecuc.autosar422.accessors.RamTst.RamTstCommon.RamTstConfigParams.RamTstAlgParams.RamTstBlockParams ramTstBlockParams) {
							ramTstBlockParams.target?.gSetDefinition(containerValue.getContainerDefinition("RamTstBlockParams"))
							super.delegateAdd(ramTstBlockParams)
						}
				
						override protected delegateAdd(int index, org.artop.ecuc.autosar422.accessors.RamTst.RamTstCommon.RamTstConfigParams.RamTstAlgParams.RamTstBlockParams ramTstBlockParams) {
							ramTstBlockParams.target?.gSetDefinition(containerValue.getContainerDefinition("RamTstBlockParams"))
							super.delegateAdd(index, ramTstBlockParams)
						}
					}
				}
				
				
				static class RamTstBlockParams implements IWrapper<GContainer> {
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
				        if (!(object instanceof RamTstBlockParams)){
							return false
						}
						this.target == (object as RamTstBlockParams).target
					}
				
					def BigInteger getRamTstBlockId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstBlockId"].getBigIntegerValue()
					}
					
					def void setRamTstBlockId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstBlockId"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstBlockId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getRamTstEndAddress(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstEndAddress"].getBigIntegerValue()
					}
					
					def void setRamTstEndAddress(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstEndAddress"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstEndAddress"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getRamTstFillPattern(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstFillPattern"].getBigIntegerValue()
					}
					
					def void setRamTstFillPattern(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstFillPattern"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstFillPattern"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getRamTstStartAddress(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstStartAddress"].getBigIntegerValue()
					}
					
					def void setRamTstStartAddress(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstStartAddress"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstStartAddress"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def RamTstTestPolicy getRamTstTestPolicy(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstTestPolicy"].getRamTstTestPolicyValue()
					}
					
					def void setRamTstTestPolicy(RamTstTestPolicy value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstTestPolicy"]
						if (parameterValue == null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstTestPolicy"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					enum RamTstTestPolicy {
						RAMTEST_DESTRUCTIVE, 
						RAMTEST_NON_DESTRUCTIVE
					}
					
					def RamTstTestPolicy getRamTstTestPolicyValue(GParameterValue parameterValue){
						val castedParameterValue = parameterValue as EcucTextualParamValue
						switch (castedParameterValue.value){
							case "RAMTEST_DESTRUCTIVE" : RamTstTestPolicy.RAMTEST_DESTRUCTIVE
							case "RAMTEST_NON_DESTRUCTIVE" : RamTstTestPolicy.RAMTEST_NON_DESTRUCTIVE
						}
					}
					
					def void setRamTstTestPolicyValue(GParameterValue parameterValue, RamTstTestPolicy value){
						parameterValue.setValue(value)
					}
					
					
					
					
				}
				
			}
			
		}
		
	}
	static class RamTstDemEventParameterRefs implements IWrapper<GContainer> {
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
	        if (!(object instanceof RamTstDemEventParameterRefs)){
				return false
			}
			this.target == (object as RamTstDemEventParameterRefs).target
		}
	
		
		def org.artop.ecuc.autosar422.accessors.Dem.DemConfigSet.DemEventParameter getRAMTST_E_RAM_FAILURE(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar422.accessors.Dem.DemConfigSet.DemEventParameter), "RAMTST_E_RAM_FAILURE")
		}
		
		def void setRAMTST_E_RAM_FAILURE(org.artop.ecuc.autosar422.accessors.Dem.DemConfigSet.DemEventParameter object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "RAMTST_E_RAM_FAILURE"], object.getTarget())
			}
		}
		
		
		
	}
	static class RamTstPublishedInformation implements IWrapper<GContainer> {
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
	        if (!(object instanceof RamTstPublishedInformation)){
				return false
			}
			this.target == (object as RamTstPublishedInformation).target
		}
	
		def BigInteger getRamTstCellSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstCellSize"].getBigIntegerValue()
		}
		
		def void setRamTstCellSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "RamTstCellSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "RamTstCellSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof RamTst)){
			return false
		}
		this.target == (object as RamTst).target
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
