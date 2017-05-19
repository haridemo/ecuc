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
package org.artop.ecuc.autosar431.accessors

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

class V2xM implements IWrapper<GModuleConfiguration> {
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

	def V2xMConfig getV2xMConfig(){
		moduleConfiguration.getByType(typeof(V2xMConfig))
	}

	def void setV2xMConfig(V2xMConfig v2xMConfig){
		val GContainer container = v2xMConfig.getTarget()
	    moduleConfiguration.setContainer(container, "V2xMConfig")
	}
	def V2xMGeneral getV2xMGeneral(){
		moduleConfiguration.getByType(typeof(V2xMGeneral))
	}

	def void setV2xMGeneral(V2xMGeneral v2xMGeneral){
		val GContainer container = v2xMGeneral.getTarget()
	    moduleConfiguration.setContainer(container, "V2xMGeneral")
	}

	static class V2xMConfig implements IWrapper<GContainer> {
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
	        if (!(object instanceof V2xMConfig)){
				return false
			}
			this.target == (object as V2xMConfig).target
		}
	
		
		
		def V2xMSecurityConfig getV2xMSecurityConfig(){
			containerValue.getByType(typeof(V2xMSecurityConfig))
		}
		
		def void setV2xMSecurityConfig(V2xMSecurityConfig v2xMSecurityConfig){
			val GContainer subContainer = v2xMSecurityConfig.getTarget()
			containerValue.setContainer(subContainer, "V2xMSecurityConfig")
		}
		
		
		static class V2xMSecurityConfig implements IWrapper<GContainer> {
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
		        if (!(object instanceof V2xMSecurityConfig)){
					return false
				}
				this.target == (object as V2xMSecurityConfig).target
			}
		
			def Boolean getV2xMSecurityVerificationOnDemand(){
				containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xMSecurityVerificationOnDemand"].getBooleanValue()
			}
			
			def void setV2xMSecurityVerificationOnDemand(Boolean value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xMSecurityVerificationOnDemand"]
				if (parameterValue === null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "V2xMSecurityVerificationOnDemand"].createParameterValue()
						containerValue.gGetParameterValues += parameterValue
					}
				}
				parameterValue.setValue(getBooleanParameterValueValue(value, true))
			}
			
			
			def org.artop.ecuc.autosar431.accessors.NvM.NvMBlockDescriptor getV2xMSecurityNvMBlockDescriptorLongTermCertificates(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.NvM.NvMBlockDescriptor), "V2xMSecurityNvMBlockDescriptorLongTermCertificates")
			}
			
			def void setV2xMSecurityNvMBlockDescriptorLongTermCertificates(org.artop.ecuc.autosar431.accessors.NvM.NvMBlockDescriptor object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "V2xMSecurityNvMBlockDescriptorLongTermCertificates"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar431.accessors.NvM.NvMBlockDescriptor getV2xMSecurityNvMBlockDescriptorPseudonymCertificates(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.NvM.NvMBlockDescriptor), "V2xMSecurityNvMBlockDescriptorPseudonymCertificates")
			}
			
			def void setV2xMSecurityNvMBlockDescriptorPseudonymCertificates(org.artop.ecuc.autosar431.accessors.NvM.NvMBlockDescriptor object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "V2xMSecurityNvMBlockDescriptorPseudonymCertificates"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar431.accessors.Csm.CsmPrimitives.CsmSignatureGenerate.CsmSignatureGenerateConfig getV2xMSignatureGenerationConfigRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Csm.CsmPrimitives.CsmSignatureGenerate.CsmSignatureGenerateConfig), "V2xMSignatureGenerationConfigRef")
			}
			
			def void setV2xMSignatureGenerationConfigRef(org.artop.ecuc.autosar431.accessors.Csm.CsmPrimitives.CsmSignatureGenerate.CsmSignatureGenerateConfig object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "V2xMSignatureGenerationConfigRef"], object.getTarget())
				}
			}
			
			def org.artop.ecuc.autosar431.accessors.Csm.CsmPrimitives.CsmSignatureVerify.CsmSignatureVerifyConfig getV2xMSignatureVerifyConfigRef(){
				containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Csm.CsmPrimitives.CsmSignatureVerify.CsmSignatureVerifyConfig), "V2xMSignatureVerifyConfigRef")
			}
			
			def void setV2xMSignatureVerifyConfigRef(org.artop.ecuc.autosar431.accessors.Csm.CsmPrimitives.CsmSignatureVerify.CsmSignatureVerifyConfig object){
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "V2xMSignatureVerifyConfigRef"], object.getTarget())
				}
			}
			
			
			
		}
		
	}
	static class V2xMGeneral implements IWrapper<GContainer> {
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
	        if (!(object instanceof V2xMGeneral)){
				return false
			}
			this.target == (object as V2xMGeneral).target
		}
	
		def Boolean getV2xMDevErrorDetect(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xMDevErrorDetect"].getBooleanValue()
		}
		
		def void setV2xMDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xMDevErrorDetect"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "V2xMDevErrorDetect"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		def BigDecimal getV2xMMainFunctionPeriod(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xMMainFunctionPeriod"].getBigDecimalValue()
		}
		
		def void setV2xMMainFunctionPeriod(BigDecimal value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xMMainFunctionPeriod"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "V2xMMainFunctionPeriod"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(value)
		}
		
		def Boolean getV2xMVersionInfoApi(){
			containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xMVersionInfoApi"].getBooleanValue()
		}
		
		def void setV2xMVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "V2xMVersionInfoApi"]
			if (parameterValue === null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = containerDef.gGetParameters.findFirst[gGetShortName == "V2xMVersionInfoApi"].createParameterValue()
					containerValue.gGetParameterValues += parameterValue
				}
			}
			parameterValue.setValue(getBooleanParameterValueValue(value, true))
		}
		
		
		def org.artop.ecuc.autosar431.accessors.EthIf.EthIfConfigSet.EthIfController getV2xMEthIfCtrlRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.EthIf.EthIfConfigSet.EthIfController), "V2xMEthIfCtrlRef")
		}
		
		def void setV2xMEthIfCtrlRef(org.artop.ecuc.autosar431.accessors.EthIf.EthIfConfigSet.EthIfController object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "V2xMEthIfCtrlRef"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar431.accessors.Gpt.GptChannelConfigSet.GptChannelConfiguration getV2xMGptChannelConfigurationRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.Gpt.GptChannelConfigSet.GptChannelConfiguration), "V2xMGptChannelConfigurationRef")
		}
		
		def void setV2xMGptChannelConfigurationRef(org.artop.ecuc.autosar431.accessors.Gpt.GptChannelConfigSet.GptChannelConfiguration object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "V2xMGptChannelConfigurationRef"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar431.accessors.NvM.NvMBlockDescriptor getV2xMNvMBlockDescriptor(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.NvM.NvMBlockDescriptor), "V2xMNvMBlockDescriptor")
		}
		
		def void setV2xMNvMBlockDescriptor(org.artop.ecuc.autosar431.accessors.NvM.NvMBlockDescriptor object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "V2xMNvMBlockDescriptor"], object.getTarget())
			}
		}
		
		def org.artop.ecuc.autosar431.accessors.StbM.StbMSynchronizedTimeBase getV2xMStbMSynchronizedTimeBaseRef(){
			containerValue.getReference(typeof(org.artop.ecuc.autosar431.accessors.StbM.StbMSynchronizedTimeBase), "V2xMStbMSynchronizedTimeBaseRef")
		}
		
		def void setV2xMStbMSynchronizedTimeBaseRef(org.artop.ecuc.autosar431.accessors.StbM.StbMSynchronizedTimeBase object){
			val containerDef = containerValue.gGetDefinition
			if (containerDef instanceof GParamConfContainerDef) {
				containerValue.setReferenceValue(containerDef.gGetReferences.findFirst[gGetShortName == "V2xMStbMSynchronizedTimeBaseRef"], object.getTarget())
			}
		}
		
		
		
	}

	override def boolean equals(Object object) {
        if (!(object instanceof V2xM)){
			return false
		}
		this.target == (object as V2xM).target
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
