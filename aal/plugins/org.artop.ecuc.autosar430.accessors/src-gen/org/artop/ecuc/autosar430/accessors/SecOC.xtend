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

class SecOC implements IWrapper<GModuleConfiguration> {
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

	def SecOCGeneral getSecOCGeneral(){
		moduleConfiguration.getByType(typeof(SecOCGeneral))
	}

	def void setSecOCGeneral(SecOCGeneral secOCGeneral){
		val GContainer container = secOCGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "SecOCGeneral")
	}
	def List<SecOCRxPduProcessing> getSecOCRxPduProcessings(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "SecOCRxPduProcessing")
			}
		}
		return new BasicWrappingEList<SecOCRxPduProcessing, GContainer>(filteredContainers, typeof(SecOCRxPduProcessing), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar430.accessors.SecOC.SecOCRxPduProcessing secOCRxPduProcessing) {
				secOCRxPduProcessing.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("SecOCRxPduProcessing"))
				super.delegateAdd(secOCRxPduProcessing)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.SecOC.SecOCRxPduProcessing secOCRxPduProcessing) {
				secOCRxPduProcessing.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("SecOCRxPduProcessing"))
				super.delegateAdd(index, secOCRxPduProcessing)
			}
		}
	}
	def List<SecOCSameBufferPduCollection> getSecOCSameBufferPduCollections(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "SecOCSameBufferPduCollection")
			}
		}
		return new BasicWrappingEList<SecOCSameBufferPduCollection, GContainer>(filteredContainers, typeof(SecOCSameBufferPduCollection), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar430.accessors.SecOC.SecOCSameBufferPduCollection secOCSameBufferPduCollection) {
				secOCSameBufferPduCollection.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("SecOCSameBufferPduCollection"))
				super.delegateAdd(secOCSameBufferPduCollection)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.SecOC.SecOCSameBufferPduCollection secOCSameBufferPduCollection) {
				secOCSameBufferPduCollection.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("SecOCSameBufferPduCollection"))
				super.delegateAdd(index, secOCSameBufferPduCollection)
			}
		}
	}
	def List<SecOCTxPduProcessing> getSecOCTxPduProcessings(){
		val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(moduleConfiguration, getEContainingFeature(moduleConfiguration, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
			override protected accept(GContainer item) {
				return accept(item, typeof(GContainerDef), "SecOCTxPduProcessing")
			}
		}
		return new BasicWrappingEList<SecOCTxPduProcessing, GContainer>(filteredContainers, typeof(SecOCTxPduProcessing), typeof(GContainer)) {
			override protected delegateAdd(org.artop.ecuc.autosar430.accessors.SecOC.SecOCTxPduProcessing secOCTxPduProcessing) {
				secOCTxPduProcessing.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("SecOCTxPduProcessing"))
				super.delegateAdd(secOCTxPduProcessing)
			}

			override protected delegateAdd(int index, org.artop.ecuc.autosar430.accessors.SecOC.SecOCTxPduProcessing secOCTxPduProcessing) {
				secOCTxPduProcessing.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("SecOCTxPduProcessing"))
				super.delegateAdd(index, secOCTxPduProcessing)
			}
		}
	}

	static class SecOCGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof SecOCGeneral)){
				return false
			}
			this.target == (object as SecOCGeneral).target
		}
	
		def Boolean getSecOCDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCDevErrorDetect"].getBooleanValue()
		}
		
		def void setSecOCDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getSecOCEnableForcedPassOverride(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCEnableForcedPassOverride"].getBooleanValue()
		}
		
		def void setSecOCEnableForcedPassOverride(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCEnableForcedPassOverride"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCEnableForcedPassOverride"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getSecOcIgnoreVerificationResult(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOcIgnoreVerificationResult"].getBooleanValue()
		}
		
		def void setSecOcIgnoreVerificationResult(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOcIgnoreVerificationResult"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOcIgnoreVerificationResult"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getSecOCMainFunctionPeriodRx(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCMainFunctionPeriodRx"].getBigDecimalValue()
		}
		
		def void setSecOCMainFunctionPeriodRx(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCMainFunctionPeriodRx"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCMainFunctionPeriodRx"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigDecimal getSecOCMainFunctionPeriodTx(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCMainFunctionPeriodTx"].getBigDecimalValue()
		}
		
		def void setSecOCMainFunctionPeriodTx(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCMainFunctionPeriodTx"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCMainFunctionPeriodTx"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def String getSecOCMaxAlignScalarType(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCMaxAlignScalarType"].getStringValue()
		}
		
		def void setSecOCMaxAlignScalarType(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCMaxAlignScalarType"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCMaxAlignScalarType"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def SecOCQueryFreshnessValue getSecOCQueryFreshnessValue(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCQueryFreshnessValue"].getSecOCQueryFreshnessValueValue()
		}
		
		def void setSecOCQueryFreshnessValue(SecOCQueryFreshnessValue value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCQueryFreshnessValue"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCQueryFreshnessValue"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum SecOCQueryFreshnessValue {
			CFUNC, 
			RTE
		}
		
		def SecOCQueryFreshnessValue getSecOCQueryFreshnessValueValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "CFUNC" : SecOCQueryFreshnessValue.CFUNC
				case "RTE" : SecOCQueryFreshnessValue.RTE
			}
		}
		
		def void setSecOCQueryFreshnessValueValue(GParameterValue parameterValue, SecOCQueryFreshnessValue value){
			parameterValue.setValue(value)
		}
		
		def List<String> getSecOCVerificationStatusCallouts(){
			val List<EcucTextualParamValue> filteredParameterValues = new AbstractFilteringEList<EcucTextualParamValue>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.GParameterValue)) {
				override protected accept(EcucTextualParamValue item) {
					return accept(item, typeof(GConfigParameter), "SecOCVerificationStatusCallout")
				}
			}
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				val parameterDef = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCVerificationStatusCallout"]
				return new StringValueUnwrappingEList(filteredParameterValues, typeof(EcucTextualParamValue), typeof(String), parameterDef)
			}
		}
		
		def Boolean getSecOCVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCVersionInfoApi"].getBooleanValue()
		}
		
		def void setSecOCVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		
		
	}
	static class SecOCRxPduProcessing implements IWrapper<GContainer> {
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
	        if (!(object instanceof SecOCRxPduProcessing)){
				return false
			}
			this.target == (object as SecOCRxPduProcessing).target
		}
	
		def BigInteger getSecOCAuthDataFreshnessLen(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCAuthDataFreshnessLen"].getBigIntegerValue()
		}
		
		def void setSecOCAuthDataFreshnessLen(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCAuthDataFreshnessLen"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCAuthDataFreshnessLen"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getSecOCAuthDataFreshnessStartPosition(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCAuthDataFreshnessStartPosition"].getBigIntegerValue()
		}
		
		def void setSecOCAuthDataFreshnessStartPosition(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCAuthDataFreshnessStartPosition"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCAuthDataFreshnessStartPosition"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getSecOCAuthenticationBuildAttempts(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCAuthenticationBuildAttempts"].getBigIntegerValue()
		}
		
		def void setSecOCAuthenticationBuildAttempts(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCAuthenticationBuildAttempts"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCAuthenticationBuildAttempts"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getSecOCAuthenticationVerifyAttempts(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCAuthenticationVerifyAttempts"].getBigIntegerValue()
		}
		
		def void setSecOCAuthenticationVerifyAttempts(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCAuthenticationVerifyAttempts"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCAuthenticationVerifyAttempts"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getSecOCAuthInfoTxLength(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCAuthInfoTxLength"].getBigIntegerValue()
		}
		
		def void setSecOCAuthInfoTxLength(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCAuthInfoTxLength"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCAuthInfoTxLength"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getSecOCDataId(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCDataId"].getBigIntegerValue()
		}
		
		def void setSecOCDataId(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCDataId"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCDataId"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getSecOCFreshnessValueId(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCFreshnessValueId"].getBigIntegerValue()
		}
		
		def void setSecOCFreshnessValueId(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCFreshnessValueId"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCFreshnessValueId"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getSecOCFreshnessValueLength(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCFreshnessValueLength"].getBigIntegerValue()
		}
		
		def void setSecOCFreshnessValueLength(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCFreshnessValueLength"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCFreshnessValueLength"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getSecOCFreshnessValueTxLength(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCFreshnessValueTxLength"].getBigIntegerValue()
		}
		
		def void setSecOCFreshnessValueTxLength(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCFreshnessValueTxLength"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCFreshnessValueTxLength"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def SecOCReceptionOverflowStrategy getSecOCReceptionOverflowStrategy(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCReceptionOverflowStrategy"].getSecOCReceptionOverflowStrategyValue()
		}
		
		def void setSecOCReceptionOverflowStrategy(SecOCReceptionOverflowStrategy value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCReceptionOverflowStrategy"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCReceptionOverflowStrategy"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum SecOCReceptionOverflowStrategy {
			QUEUE, 
			REJECT, 
			REPLACE
		}
		
		def SecOCReceptionOverflowStrategy getSecOCReceptionOverflowStrategyValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "QUEUE" : SecOCReceptionOverflowStrategy.QUEUE
				case "REJECT" : SecOCReceptionOverflowStrategy.REJECT
				case "REPLACE" : SecOCReceptionOverflowStrategy.REPLACE
			}
		}
		
		def void setSecOCReceptionOverflowStrategyValue(GParameterValue parameterValue, SecOCReceptionOverflowStrategy value){
			parameterValue.setValue(value)
		}
		
		def BigInteger getSecOCReceptionQueueSize(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCReceptionQueueSize"].getBigIntegerValue()
		}
		
		def void setSecOCReceptionQueueSize(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCReceptionQueueSize"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCReceptionQueueSize"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getSecOCUseAuthDataFreshness(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCUseAuthDataFreshness"].getBooleanValue()
		}
		
		def void setSecOCUseAuthDataFreshness(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCUseAuthDataFreshness"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCUseAuthDataFreshness"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def SecOCVerificationStatusPropagationMode getSecOCVerificationStatusPropagationMode(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCVerificationStatusPropagationMode"].getSecOCVerificationStatusPropagationModeValue()
		}
		
		def void setSecOCVerificationStatusPropagationMode(SecOCVerificationStatusPropagationMode value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCVerificationStatusPropagationMode"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCVerificationStatusPropagationMode"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		enum SecOCVerificationStatusPropagationMode {
			BOTH, 
			FAILURE_ONLY, 
			NONE
		}
		
		def SecOCVerificationStatusPropagationMode getSecOCVerificationStatusPropagationModeValue(GParameterValue parameterValue){
			val castedParameterValue = parameterValue as EcucTextualParamValue
			switch (castedParameterValue.value){
				case "BOTH" : SecOCVerificationStatusPropagationMode.BOTH
				case "FAILURE_ONLY" : SecOCVerificationStatusPropagationMode.FAILURE_ONLY
				case "NONE" : SecOCVerificationStatusPropagationMode.NONE
			}
		}
		
		def void setSecOCVerificationStatusPropagationModeValue(GParameterValue parameterValue, SecOCVerificationStatusPropagationMode value){
			parameterValue.setValue(value)
		}
		
		
		def org.artop.ecuc.autosar430.accessors.Csm.CsmJobs.CsmJob getSecOCRxAuthServiceConfigRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Csm.CsmJobs.CsmJob), "SecOCRxAuthServiceConfigRef")
		}
		
		def void setSecOCRxAuthServiceConfigRef(org.artop.ecuc.autosar430.accessors.Csm.CsmJobs.CsmJob object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SecOCRxAuthServiceConfigRef"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar430.accessors.SecOC.SecOCSameBufferPduCollection getSecOCSameBufferPduRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.SecOC.SecOCSameBufferPduCollection), "SecOCSameBufferPduRef")
		}
		
		def void setSecOCSameBufferPduRef(org.artop.ecuc.autosar430.accessors.SecOC.SecOCSameBufferPduCollection object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SecOCSameBufferPduRef"], object.getTarget())
			}
		}
		
		
		def SecOCRxAuthenticPduLayer getSecOCRxAuthenticPduLayer(){
			containerValue.getByType(typeof(SecOCRxAuthenticPduLayer))
		}
		
		def void setSecOCRxAuthenticPduLayer(SecOCRxAuthenticPduLayer secOCRxAuthenticPduLayer){
			val GContainer subContainer = secOCRxAuthenticPduLayer.getTarget()
			containerValue.setContainer(subContainer, "SecOCRxAuthenticPduLayer")
		}
		
		def SecOCRxSecuredPduLayer getSecOCRxSecuredPduLayer(){
			containerValue.getByType(typeof(SecOCRxSecuredPduLayer))
		}
		
		def void setSecOCRxSecuredPduLayer(SecOCRxSecuredPduLayer secOCRxSecuredPduLayer){
			val GContainer subContainer = secOCRxSecuredPduLayer.getTarget()
			containerValue.setContainer(subContainer, "SecOCRxSecuredPduLayer")
		}
		
		
		static class SecOCRxAuthenticPduLayer implements IWrapper<GContainer> {
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
		        if (!(object instanceof SecOCRxAuthenticPduLayer)){
					return false
				}
				this.target == (object as SecOCRxAuthenticPduLayer).target
			}
		
			def SecOCPduType getSecOCPduType(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCPduType"].getSecOCPduTypeValue()
			}
			
			def void setSecOCPduType(SecOCPduType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCPduType"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCPduType"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum SecOCPduType {
				SECOC_IFPDU, 
				SECOC_TPPDU
			}
			
			def SecOCPduType getSecOCPduTypeValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "SECOC_IFPDU" : SecOCPduType.SECOC_IFPDU
					case "SECOC_TPPDU" : SecOCPduType.SECOC_TPPDU
				}
			}
			
			def void setSecOCPduTypeValue(GParameterValue parameterValue, SecOCPduType value){
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getSecOCRxAuthenticLayerPduRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "SecOCRxAuthenticLayerPduRef")
			}
			
			def void setSecOCRxAuthenticLayerPduRef(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SecOCRxAuthenticLayerPduRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class SecOCRxSecuredPduLayer implements IWrapper<GContainer> {
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
		        if (!(object instanceof SecOCRxSecuredPduLayer)){
					return false
				}
				this.target == (object as SecOCRxSecuredPduLayer).target
			}
		
			def SecOCRxSecuredPdu getSecOCRxSecuredPdu(){
				containerValue.getByType(typeof(SecOCRxSecuredPdu))
			}
			
			def void setSecOCRxSecuredPdu(SecOCRxSecuredPdu secOCRxSecuredPdu){
				val GContainer subContainer = secOCRxSecuredPdu.getTarget()
				containerValue.setContainer(subContainer, "SecOCRxSecuredPdu")
			}
			def SecOCRxSecuredPduCollection getSecOCRxSecuredPduCollection(){
				containerValue.getByType(typeof(SecOCRxSecuredPduCollection))
			}
			
			def void setSecOCRxSecuredPduCollection(SecOCRxSecuredPduCollection secOCRxSecuredPduCollection){
				val GContainer subContainer = secOCRxSecuredPduCollection.getTarget()
				containerValue.setContainer(subContainer, "SecOCRxSecuredPduCollection")
			}
			
			static class SecOCRxSecuredPdu implements IWrapper<GContainer> {
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
			        if (!(object instanceof SecOCRxSecuredPdu)){
						return false
					}
					this.target == (object as SecOCRxSecuredPdu).target
				}
			
				def BigInteger getSecOCRxSecuredLayerPduId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCRxSecuredLayerPduId"].getBigIntegerValue()
				}
				
				def void setSecOCRxSecuredLayerPduId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCRxSecuredLayerPduId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCRxSecuredLayerPduId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getSecOCRxSecuredLayerPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "SecOCRxSecuredLayerPduRef")
				}
				
				def void setSecOCRxSecuredLayerPduRef(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SecOCRxSecuredLayerPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class SecOCRxSecuredPduCollection implements IWrapper<GContainer> {
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
			        if (!(object instanceof SecOCRxSecuredPduCollection)){
						return false
					}
					this.target == (object as SecOCRxSecuredPduCollection).target
				}
			
				
				
				def SecOCRxAuthenticPdu getSecOCRxAuthenticPdu(){
					containerValue.getByType(typeof(SecOCRxAuthenticPdu))
				}
				
				def void setSecOCRxAuthenticPdu(SecOCRxAuthenticPdu secOCRxAuthenticPdu){
					val GContainer subContainer = secOCRxAuthenticPdu.getTarget()
					containerValue.setContainer(subContainer, "SecOCRxAuthenticPdu")
				}
				
				def SecOCRxCryptographicPdu getSecOCRxCryptographicPdu(){
					containerValue.getByType(typeof(SecOCRxCryptographicPdu))
				}
				
				def void setSecOCRxCryptographicPdu(SecOCRxCryptographicPdu secOCRxCryptographicPdu){
					val GContainer subContainer = secOCRxCryptographicPdu.getTarget()
					containerValue.setContainer(subContainer, "SecOCRxCryptographicPdu")
				}
				
				def SecOCUseMessageLink getSecOCUseMessageLink(){
					containerValue.getByType(typeof(SecOCUseMessageLink))
				}
				
				def void setSecOCUseMessageLink(SecOCUseMessageLink secOCUseMessageLink){
					val GContainer subContainer = secOCUseMessageLink.getTarget()
					containerValue.setContainer(subContainer, "SecOCUseMessageLink")
				}
				
				
				static class SecOCRxAuthenticPdu implements IWrapper<GContainer> {
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
				        if (!(object instanceof SecOCRxAuthenticPdu)){
							return false
						}
						this.target == (object as SecOCRxAuthenticPdu).target
					}
				
					def BigInteger getSecOCRxAuthenticPduId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCRxAuthenticPduId"].getBigIntegerValue()
					}
					
					def void setSecOCRxAuthenticPduId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCRxAuthenticPduId"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCRxAuthenticPduId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getSecOCRxAuthenticPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "SecOCRxAuthenticPduRef")
					}
					
					def void setSecOCRxAuthenticPduRef(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SecOCRxAuthenticPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class SecOCRxCryptographicPdu implements IWrapper<GContainer> {
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
				        if (!(object instanceof SecOCRxCryptographicPdu)){
							return false
						}
						this.target == (object as SecOCRxCryptographicPdu).target
					}
				
					def BigInteger getSecOCRxCryptographicPduId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCRxCryptographicPduId"].getBigIntegerValue()
					}
					
					def void setSecOCRxCryptographicPduId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCRxCryptographicPduId"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCRxCryptographicPduId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getSecOCRxCryptographicPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "SecOCRxCryptographicPduRef")
					}
					
					def void setSecOCRxCryptographicPduRef(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SecOCRxCryptographicPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class SecOCUseMessageLink implements IWrapper<GContainer> {
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
				        if (!(object instanceof SecOCUseMessageLink)){
							return false
						}
						this.target == (object as SecOCUseMessageLink).target
					}
				
					def BigInteger getSecOCMessageLinkLen(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCMessageLinkLen"].getBigIntegerValue()
					}
					
					def void setSecOCMessageLinkLen(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCMessageLinkLen"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCMessageLinkLen"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getSecOCMessageLinkPos(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCMessageLinkPos"].getBigIntegerValue()
					}
					
					def void setSecOCMessageLinkPos(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCMessageLinkPos"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCMessageLinkPos"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					
					
				}
				
			}
			
		}
		
	}
	static class SecOCSameBufferPduCollection implements IWrapper<GContainer> {
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
	        if (!(object instanceof SecOCSameBufferPduCollection)){
				return false
			}
			this.target == (object as SecOCSameBufferPduCollection).target
		}
	
		def BigInteger getSecOCBufferLength(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCBufferLength"].getBigIntegerValue()
		}
		
		def void setSecOCBufferLength(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCBufferLength"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCBufferLength"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		
		
		
	}
	static class SecOCTxPduProcessing implements IWrapper<GContainer> {
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
	        if (!(object instanceof SecOCTxPduProcessing)){
				return false
			}
			this.target == (object as SecOCTxPduProcessing).target
		}
	
		def BigInteger getSecOCAuthenticationBuildAttempts(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCAuthenticationBuildAttempts"].getBigIntegerValue()
		}
		
		def void setSecOCAuthenticationBuildAttempts(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCAuthenticationBuildAttempts"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCAuthenticationBuildAttempts"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getSecOCAuthInfoTxLength(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCAuthInfoTxLength"].getBigIntegerValue()
		}
		
		def void setSecOCAuthInfoTxLength(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCAuthInfoTxLength"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCAuthInfoTxLength"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getSecOCDataId(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCDataId"].getBigIntegerValue()
		}
		
		def void setSecOCDataId(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCDataId"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCDataId"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getSecOCFreshnessValueId(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCFreshnessValueId"].getBigIntegerValue()
		}
		
		def void setSecOCFreshnessValueId(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCFreshnessValueId"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCFreshnessValueId"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getSecOCFreshnessValueLength(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCFreshnessValueLength"].getBigIntegerValue()
		}
		
		def void setSecOCFreshnessValueLength(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCFreshnessValueLength"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCFreshnessValueLength"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def BigInteger getSecOCFreshnessValueTxLength(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCFreshnessValueTxLength"].getBigIntegerValue()
		}
		
		def void setSecOCFreshnessValueTxLength(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCFreshnessValueTxLength"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCFreshnessValueTxLength"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getSecOCProvideTxTruncatedFreshnessValue(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCProvideTxTruncatedFreshnessValue"].getBooleanValue()
		}
		
		def void setSecOCProvideTxTruncatedFreshnessValue(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCProvideTxTruncatedFreshnessValue"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCProvideTxTruncatedFreshnessValue"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def Boolean getSecOCUseTxConfirmation(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCUseTxConfirmation"].getBooleanValue()
		}
		
		def void setSecOCUseTxConfirmation(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCUseTxConfirmation"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCUseTxConfirmation"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		def org.artop.ecuc.autosar430.accessors.SecOC.SecOCSameBufferPduCollection getSecOCSameBufferPduRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.SecOC.SecOCSameBufferPduCollection), "SecOCSameBufferPduRef")
		}
		
		def void setSecOCSameBufferPduRef(org.artop.ecuc.autosar430.accessors.SecOC.SecOCSameBufferPduCollection object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SecOCSameBufferPduRef"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar430.accessors.Csm.CsmJobs.CsmJob getSecOCTxAuthServiceConfigRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.Csm.CsmJobs.CsmJob), "SecOCTxAuthServiceConfigRef")
		}
		
		def void setSecOCTxAuthServiceConfigRef(org.artop.ecuc.autosar430.accessors.Csm.CsmJobs.CsmJob object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SecOCTxAuthServiceConfigRef"], object.getTarget())
			}
		}
		
		
		def SecOCTxAuthenticPduLayer getSecOCTxAuthenticPduLayer(){
			containerValue.getByType(typeof(SecOCTxAuthenticPduLayer))
		}
		
		def void setSecOCTxAuthenticPduLayer(SecOCTxAuthenticPduLayer secOCTxAuthenticPduLayer){
			val GContainer subContainer = secOCTxAuthenticPduLayer.getTarget()
			containerValue.setContainer(subContainer, "SecOCTxAuthenticPduLayer")
		}
		
		def SecOCTxSecuredPduLayer getSecOCTxSecuredPduLayer(){
			containerValue.getByType(typeof(SecOCTxSecuredPduLayer))
		}
		
		def void setSecOCTxSecuredPduLayer(SecOCTxSecuredPduLayer secOCTxSecuredPduLayer){
			val GContainer subContainer = secOCTxSecuredPduLayer.getTarget()
			containerValue.setContainer(subContainer, "SecOCTxSecuredPduLayer")
		}
		
		
		static class SecOCTxAuthenticPduLayer implements IWrapper<GContainer> {
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
		        if (!(object instanceof SecOCTxAuthenticPduLayer)){
					return false
				}
				this.target == (object as SecOCTxAuthenticPduLayer).target
			}
		
			def SecOCPduType getSecOCPduType(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCPduType"].getSecOCPduTypeValue()
			}
			
			def void setSecOCPduType(SecOCPduType value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCPduType"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCPduType"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			enum SecOCPduType {
				SECOC_IFPDU, 
				SECOC_TPPDU
			}
			
			def SecOCPduType getSecOCPduTypeValue(GParameterValue parameterValue){
				val castedParameterValue = parameterValue as EcucTextualParamValue
				switch (castedParameterValue.value){
					case "SECOC_IFPDU" : SecOCPduType.SECOC_IFPDU
					case "SECOC_TPPDU" : SecOCPduType.SECOC_TPPDU
				}
			}
			
			def void setSecOCPduTypeValue(GParameterValue parameterValue, SecOCPduType value){
				parameterValue.setValue(value)
			}
			
			def BigInteger getSecOCTxAuthenticLayerPduId(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCTxAuthenticLayerPduId"].getBigIntegerValue()
			}
			
			def void setSecOCTxAuthenticLayerPduId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCTxAuthenticLayerPduId"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCTxAuthenticLayerPduId"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(value)
			}
			
			
			def org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getSecOCTxAuthenticLayerPduRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "SecOCTxAuthenticLayerPduRef")
			}
			
			def void setSecOCTxAuthenticLayerPduRef(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SecOCTxAuthenticLayerPduRef"], object.getTarget())
				}
			}
			
			
			
		}
		
		static class SecOCTxSecuredPduLayer implements IWrapper<GContainer> {
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
		        if (!(object instanceof SecOCTxSecuredPduLayer)){
					return false
				}
				this.target == (object as SecOCTxSecuredPduLayer).target
			}
		
			def SecOCTxSecuredPdu getSecOCTxSecuredPdu(){
				containerValue.getByType(typeof(SecOCTxSecuredPdu))
			}
			
			def void setSecOCTxSecuredPdu(SecOCTxSecuredPdu secOCTxSecuredPdu){
				val GContainer subContainer = secOCTxSecuredPdu.getTarget()
				containerValue.setContainer(subContainer, "SecOCTxSecuredPdu")
			}
			def SecOCTxSecuredPduCollection getSecOCTxSecuredPduCollection(){
				containerValue.getByType(typeof(SecOCTxSecuredPduCollection))
			}
			
			def void setSecOCTxSecuredPduCollection(SecOCTxSecuredPduCollection secOCTxSecuredPduCollection){
				val GContainer subContainer = secOCTxSecuredPduCollection.getTarget()
				containerValue.setContainer(subContainer, "SecOCTxSecuredPduCollection")
			}
			
			static class SecOCTxSecuredPdu implements IWrapper<GContainer> {
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
			        if (!(object instanceof SecOCTxSecuredPdu)){
						return false
					}
					this.target == (object as SecOCTxSecuredPdu).target
				}
			
				def BigInteger getSecOCTxSecuredLayerPduId(){
					containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCTxSecuredLayerPduId"].getBigIntegerValue()
				}
				
				def void setSecOCTxSecuredLayerPduId(BigInteger value){
					var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCTxSecuredLayerPduId"]
					if (parameterValue === null) {
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCTxSecuredLayerPduId"].createParameterValue()
							containerValue.gGetParameterValues += parameterValue
						}
					}
					parameterValue.setValue(value)
				}
				
				
				def org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getSecOCTxSecuredLayerPduRef(){
					containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "SecOCTxSecuredLayerPduRef")
				}
				
				def void setSecOCTxSecuredLayerPduRef(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SecOCTxSecuredLayerPduRef"], object.getTarget())
					}
				}
				
				
				
			}
			
			static class SecOCTxSecuredPduCollection implements IWrapper<GContainer> {
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
			        if (!(object instanceof SecOCTxSecuredPduCollection)){
						return false
					}
					this.target == (object as SecOCTxSecuredPduCollection).target
				}
			
				
				
				def SecOCTxAuthenticPdu getSecOCTxAuthenticPdu(){
					containerValue.getByType(typeof(SecOCTxAuthenticPdu))
				}
				
				def void setSecOCTxAuthenticPdu(SecOCTxAuthenticPdu secOCTxAuthenticPdu){
					val GContainer subContainer = secOCTxAuthenticPdu.getTarget()
					containerValue.setContainer(subContainer, "SecOCTxAuthenticPdu")
				}
				
				def SecOCTxCryptographicPdu getSecOCTxCryptographicPdu(){
					containerValue.getByType(typeof(SecOCTxCryptographicPdu))
				}
				
				def void setSecOCTxCryptographicPdu(SecOCTxCryptographicPdu secOCTxCryptographicPdu){
					val GContainer subContainer = secOCTxCryptographicPdu.getTarget()
					containerValue.setContainer(subContainer, "SecOCTxCryptographicPdu")
				}
				
				def SecOCUseMessageLink getSecOCUseMessageLink(){
					containerValue.getByType(typeof(SecOCUseMessageLink))
				}
				
				def void setSecOCUseMessageLink(SecOCUseMessageLink secOCUseMessageLink){
					val GContainer subContainer = secOCUseMessageLink.getTarget()
					containerValue.setContainer(subContainer, "SecOCUseMessageLink")
				}
				
				
				static class SecOCTxAuthenticPdu implements IWrapper<GContainer> {
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
				        if (!(object instanceof SecOCTxAuthenticPdu)){
							return false
						}
						this.target == (object as SecOCTxAuthenticPdu).target
					}
				
					def BigInteger getSecOCTxAuthenticPduId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCTxAuthenticPduId"].getBigIntegerValue()
					}
					
					def void setSecOCTxAuthenticPduId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCTxAuthenticPduId"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCTxAuthenticPduId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getSecOCTxAuthenticPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "SecOCTxAuthenticPduRef")
					}
					
					def void setSecOCTxAuthenticPduRef(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SecOCTxAuthenticPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class SecOCTxCryptographicPdu implements IWrapper<GContainer> {
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
				        if (!(object instanceof SecOCTxCryptographicPdu)){
							return false
						}
						this.target == (object as SecOCTxCryptographicPdu).target
					}
				
					def BigInteger getSecOCTxCryptographicPduId(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCTxCryptographicPduId"].getBigIntegerValue()
					}
					
					def void setSecOCTxCryptographicPduId(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCTxCryptographicPduId"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCTxCryptographicPduId"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					
					def org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getSecOCTxCryptographicPduRef(){
						containerValue.getReference(typeof(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "SecOCTxCryptographicPduRef")
					}
					
					def void setSecOCTxCryptographicPduRef(org.artop.ecuc.autosar430.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
						val containerDef = containerValue.gGetDefinition
						if (containerDef instanceof GParamConfContainerDef) {
							containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "SecOCTxCryptographicPduRef"], object.getTarget())
						}
					}
					
					
					
				}
				
				static class SecOCUseMessageLink implements IWrapper<GContainer> {
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
				        if (!(object instanceof SecOCUseMessageLink)){
							return false
						}
						this.target == (object as SecOCUseMessageLink).target
					}
				
					def BigInteger getSecOCMessageLinkLen(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCMessageLinkLen"].getBigIntegerValue()
					}
					
					def void setSecOCMessageLinkLen(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCMessageLinkLen"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCMessageLinkLen"].createParameterValue()
								containerValue.gGetParameterValues += parameterValue
							}
						}
						parameterValue.setValue(value)
					}
					
					def BigInteger getSecOCMessageLinkPos(){
						containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCMessageLinkPos"].getBigIntegerValue()
					}
					
					def void setSecOCMessageLinkPos(BigInteger value){
						var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCMessageLinkPos"]
						if (parameterValue === null) {
							val containerDef = containerValue.gGetDefinition
							if (containerDef instanceof GParamConfContainerDef) {
								parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "SecOCMessageLinkPos"].createParameterValue()
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
        if (!(object instanceof SecOC)){
			return false
		}
		this.target == (object as SecOC).target
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
