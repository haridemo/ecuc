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
			override protected delegateAdd(org.artop.ecuc.autosar421.accessors.SecOC$SecOCRxPduProcessing secOCRxPduProcessing) {
				secOCRxPduProcessing.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("SecOCRxPduProcessing"))
				super.delegateAdd(secOCRxPduProcessing)
			}
		
			override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.SecOC$SecOCRxPduProcessing secOCRxPduProcessing) {
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
			override protected delegateAdd(org.artop.ecuc.autosar421.accessors.SecOC$SecOCSameBufferPduCollection secOCSameBufferPduCollection) {
				secOCSameBufferPduCollection.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("SecOCSameBufferPduCollection"))
				super.delegateAdd(secOCSameBufferPduCollection)
			}
		
			override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.SecOC$SecOCSameBufferPduCollection secOCSameBufferPduCollection) {
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
			override protected delegateAdd(org.artop.ecuc.autosar421.accessors.SecOC$SecOCTxPduProcessing secOCTxPduProcessing) {
				secOCTxPduProcessing.target?.gSetDefinition(moduleConfiguration.getContainerDefinition("SecOCTxPduProcessing"))
				super.delegateAdd(secOCTxPduProcessing)
			}
		
			override protected delegateAdd(int index, org.artop.ecuc.autosar421.accessors.SecOC$SecOCTxPduProcessing secOCTxPduProcessing) {
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
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCDevErrorDetect"])
		}
		
		def void setSecOCDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SecOCDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigDecimal getSecOCMainFunctionPeriod(){
			EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCMainFunctionPeriod"])
		}
		
		def void setSecOCMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCMainFunctionPeriod"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SecOCMainFunctionPeriod"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def String getSecOCMaxAlignScalarType(){
			EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCMaxAlignScalarType"])
		}
		
		def void setSecOCMaxAlignScalarType(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCMaxAlignScalarType"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SecOCMaxAlignScalarType"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCVersionInfoApi"])
		}
		
		def void setSecOCVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SecOCVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		def org.artop.ecuc.autosar421.accessors.NvM.NvMBlockDescriptor getSecOCNvMBlockDescriptor(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.NvM.NvMBlockDescriptor), "SecOCNvMBlockDescriptor")
		}
				
		def void setSecOCNvMBlockDescriptor(org.artop.ecuc.autosar421.accessors.NvM.NvMBlockDescriptor object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "SecOCNvMBlockDescriptor"], object.getTarget())
			}
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
		
		def BigInteger getSecOCAuthInfoTxLength(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCAuthInfoTxLength"])
		}
		
		def void setSecOCAuthInfoTxLength(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCAuthInfoTxLength"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SecOCAuthInfoTxLength"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getSecOCDataId(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCDataId"])
		}
		
		def void setSecOCDataId(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCDataId"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SecOCDataId"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getSecOCFreshnessCounterSyncAttempts(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCFreshnessCounterSyncAttempts"])
		}
		
		def void setSecOCFreshnessCounterSyncAttempts(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCFreshnessCounterSyncAttempts"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SecOCFreshnessCounterSyncAttempts"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getSecOCFreshnessTimestampTimePeriodFactor(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCFreshnessTimestampTimePeriodFactor"])
		}
		
		def void setSecOCFreshnessTimestampTimePeriodFactor(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCFreshnessTimestampTimePeriodFactor"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SecOCFreshnessTimestampTimePeriodFactor"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getSecOCFreshnessValueId(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCFreshnessValueId"])
		}
		
		def void setSecOCFreshnessValueId(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCFreshnessValueId"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SecOCFreshnessValueId"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getSecOCFreshnessValueLength(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCFreshnessValueLength"])
		}
		
		def void setSecOCFreshnessValueLength(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCFreshnessValueLength"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SecOCFreshnessValueLength"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getSecOCFreshnessValueTxLength(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCFreshnessValueTxLength"])
		}
		
		def void setSecOCFreshnessValueTxLength(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCFreshnessValueTxLength"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SecOCFreshnessValueTxLength"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getSecOCKeyId(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCKeyId"])
		}
		
		def void setSecOCKeyId(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCKeyId"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SecOCKeyId"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigDecimal getSecOCRxAcceptanceWindow(){
			EcucValueAccessor421Util.getBigDecimalValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCRxAcceptanceWindow"])
		}
		
		def void setSecOCRxAcceptanceWindow(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCRxAcceptanceWindow"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SecOCRxAcceptanceWindow"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getSecOCSecondaryFreshnessValueId(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCSecondaryFreshnessValueId"])
		}
		
		def void setSecOCSecondaryFreshnessValueId(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCSecondaryFreshnessValueId"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SecOCSecondaryFreshnessValueId"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getSecOCUseFreshnessTimestamp(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCUseFreshnessTimestamp"])
		}
		
		def void setSecOCUseFreshnessTimestamp(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCUseFreshnessTimestamp"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SecOCUseFreshnessTimestamp"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def SecOCVerificationStatusPropagationMode getSecOCVerificationStatusPropagationMode(){
			getSecOCVerificationStatusPropagationModeValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCVerificationStatusPropagationMode"])
		}
		
		def void setSecOCVerificationStatusPropagationMode(SecOCVerificationStatusPropagationMode value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCVerificationStatusPropagationMode"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SecOCVerificationStatusPropagationMode"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		enum SecOCVerificationStatusPropagationMode {
			BOTH, 
			FAILURE_ONLY, 
			NONE
		}
			
		def SecOCVerificationStatusPropagationMode getSecOCVerificationStatusPropagationModeValue(GParameterValue paramValue){
			val castedParamValue = paramValue as EcucTextualParamValue
			switch (castedParamValue.value){
				case "BOTH" : SecOCVerificationStatusPropagationMode.BOTH
				case "FAILURE_ONLY" : SecOCVerificationStatusPropagationMode.FAILURE_ONLY
				case "NONE" : SecOCVerificationStatusPropagationMode.NONE
			}
		}
		
		def void setSecOCVerificationStatusPropagationModeValue(GParameterValue paramValue, SecOCVerificationStatusPropagationMode value){
			EcucValueAccessor421Util.setParameterValue(paramValue, value)
		}
		
		
		
		def org.artop.ecuc.autosar421.accessors.SecOC.SecOCSameBufferPduCollection getSecOCSameBufferPduRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.SecOC.SecOCSameBufferPduCollection), "SecOCSameBufferPduRef")
		}
				
		def void setSecOCSameBufferPduRef(org.artop.ecuc.autosar421.accessors.SecOC.SecOCSameBufferPduCollection object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "SecOCSameBufferPduRef"], object.getTarget())
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
			
			
			def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getSecOCRxAuthenticLayerPduRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "SecOCRxAuthenticLayerPduRef")
			}
					
			def void setSecOCRxAuthenticLayerPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "SecOCRxAuthenticLayerPduRef"], object.getTarget())
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
			
			def BigInteger getSecOCRxSecuredLayerPduId(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCRxSecuredLayerPduId"])
			}
			
			def void setSecOCRxSecuredLayerPduId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCRxSecuredLayerPduId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SecOCRxSecuredLayerPduId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getSecOCRxSecuredLayerPduRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "SecOCRxSecuredLayerPduRef")
			}
					
			def void setSecOCRxSecuredLayerPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "SecOCRxSecuredLayerPduRef"], object.getTarget())
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
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCBufferLength"])
		}
		
		def void setSecOCBufferLength(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCBufferLength"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SecOCBufferLength"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
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
		
		def BigInteger getSecOCAuthInfoTxLength(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCAuthInfoTxLength"])
		}
		
		def void setSecOCAuthInfoTxLength(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCAuthInfoTxLength"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SecOCAuthInfoTxLength"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getSecOCAuthenticationRetries(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCAuthenticationRetries"])
		}
		
		def void setSecOCAuthenticationRetries(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCAuthenticationRetries"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SecOCAuthenticationRetries"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getSecOCDataId(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCDataId"])
		}
		
		def void setSecOCDataId(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCDataId"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SecOCDataId"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getSecOCFreshnessTimestampTimePeriodFactor(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCFreshnessTimestampTimePeriodFactor"])
		}
		
		def void setSecOCFreshnessTimestampTimePeriodFactor(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCFreshnessTimestampTimePeriodFactor"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SecOCFreshnessTimestampTimePeriodFactor"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getSecOCFreshnessValueId(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCFreshnessValueId"])
		}
		
		def void setSecOCFreshnessValueId(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCFreshnessValueId"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SecOCFreshnessValueId"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getSecOCFreshnessValueLength(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCFreshnessValueLength"])
		}
		
		def void setSecOCFreshnessValueLength(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCFreshnessValueLength"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SecOCFreshnessValueLength"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getSecOCFreshnessValueTxLength(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCFreshnessValueTxLength"])
		}
		
		def void setSecOCFreshnessValueTxLength(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCFreshnessValueTxLength"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SecOCFreshnessValueTxLength"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def BigInteger getSecOCKeyId(){
			EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCKeyId"])
		}
		
		def void setSecOCKeyId(BigInteger value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCKeyId"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SecOCKeyId"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getSecOCUseFreshnessTimestamp(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCUseFreshnessTimestamp"])
		}
		
		def void setSecOCUseFreshnessTimestamp(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCUseFreshnessTimestamp"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SecOCUseFreshnessTimestamp"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def org.artop.ecuc.autosar421.accessors.SecOC.SecOCSameBufferPduCollection getSecOCSameBufferPduRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.SecOC.SecOCSameBufferPduCollection), "SecOCSameBufferPduRef")
		}
				
		def void setSecOCSameBufferPduRef(org.artop.ecuc.autosar421.accessors.SecOC.SecOCSameBufferPduCollection object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "SecOCSameBufferPduRef"], object.getTarget())
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
			
			def BigInteger getSecOCTxAuthenticLayerPduId(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCTxAuthenticLayerPduId"])
			}
			
			def void setSecOCTxAuthenticLayerPduId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCTxAuthenticLayerPduId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SecOCTxAuthenticLayerPduId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getSecOCTxAuthenticLayerPduRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "SecOCTxAuthenticLayerPduRef")
			}
					
			def void setSecOCTxAuthenticLayerPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "SecOCTxAuthenticLayerPduRef"], object.getTarget())
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
			
			def BigInteger getSecOCTxSecuredLayerPduId(){
				EcucValueAccessor421Util.getBigIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCTxSecuredLayerPduId"])
			}
			
			def void setSecOCTxSecuredLayerPduId(BigInteger value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "SecOCTxSecuredLayerPduId"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "SecOCTxSecuredLayerPduId"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			def org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu getSecOCTxSecuredLayerPduRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu), "SecOCTxSecuredLayerPduRef")
			}
					
			def void setSecOCTxSecuredLayerPduRef(org.artop.ecuc.autosar421.accessors.EcuC.EcucConfigSet.EcucPduCollection.Pdu object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReference(containerDef.gGetReferences.findFirst[gGetShortName == "SecOCTxSecuredLayerPduRef"], object.getTarget())
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
		if (definitionFeature != null) {
			val definition = child.eGet(definitionFeature)
			if (ecucTypeDefType.isInstance(definition)) {
				return ecucTypeDefType.cast(definition).gGetShortName.equals(ecucTypeDefName)
			}
		}
		return false
	}
}
