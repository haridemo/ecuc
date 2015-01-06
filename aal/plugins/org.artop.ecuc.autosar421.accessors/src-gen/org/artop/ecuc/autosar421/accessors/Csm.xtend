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
import org.artop.ecuc.autosar421.accessors.lib.IntegerValueUnwrappingEList
import org.artop.ecuc.autosar421.accessors.lib.FloatValueUnwrappingEList
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

class Csm implements IWrapper<GModuleConfiguration> {
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
	
	def CsmAsymDecrypt getCsmAsymDecrypt(){
		moduleConfiguration.getByType(typeof(CsmAsymDecrypt))
	}
	
	def void setCsmAsymDecrypt(CsmAsymDecrypt csmAsymDecrypt){
		val GContainer container = csmAsymDecrypt.getTarget() 
	    moduleConfiguration.setContainer(container, "CsmAsymDecrypt")
	}
	def CsmAsymEncrypt getCsmAsymEncrypt(){
		moduleConfiguration.getByType(typeof(CsmAsymEncrypt))
	}
	
	def void setCsmAsymEncrypt(CsmAsymEncrypt csmAsymEncrypt){
		val GContainer container = csmAsymEncrypt.getTarget() 
	    moduleConfiguration.setContainer(container, "CsmAsymEncrypt")
	}
	def CsmAsymPrivateKeyExtract getCsmAsymPrivateKeyExtract(){
		moduleConfiguration.getByType(typeof(CsmAsymPrivateKeyExtract))
	}
	
	def void setCsmAsymPrivateKeyExtract(CsmAsymPrivateKeyExtract csmAsymPrivateKeyExtract){
		val GContainer container = csmAsymPrivateKeyExtract.getTarget() 
	    moduleConfiguration.setContainer(container, "CsmAsymPrivateKeyExtract")
	}
	def CsmAsymPrivateKeyUpdate getCsmAsymPrivateKeyUpdate(){
		moduleConfiguration.getByType(typeof(CsmAsymPrivateKeyUpdate))
	}
	
	def void setCsmAsymPrivateKeyUpdate(CsmAsymPrivateKeyUpdate csmAsymPrivateKeyUpdate){
		val GContainer container = csmAsymPrivateKeyUpdate.getTarget() 
	    moduleConfiguration.setContainer(container, "CsmAsymPrivateKeyUpdate")
	}
	def CsmAsymPrivateKeyWrapAsym getCsmAsymPrivateKeyWrapAsym(){
		moduleConfiguration.getByType(typeof(CsmAsymPrivateKeyWrapAsym))
	}
	
	def void setCsmAsymPrivateKeyWrapAsym(CsmAsymPrivateKeyWrapAsym csmAsymPrivateKeyWrapAsym){
		val GContainer container = csmAsymPrivateKeyWrapAsym.getTarget() 
	    moduleConfiguration.setContainer(container, "CsmAsymPrivateKeyWrapAsym")
	}
	def CsmAsymPrivateKeyWrapSym getCsmAsymPrivateKeyWrapSym(){
		moduleConfiguration.getByType(typeof(CsmAsymPrivateKeyWrapSym))
	}
	
	def void setCsmAsymPrivateKeyWrapSym(CsmAsymPrivateKeyWrapSym csmAsymPrivateKeyWrapSym){
		val GContainer container = csmAsymPrivateKeyWrapSym.getTarget() 
	    moduleConfiguration.setContainer(container, "CsmAsymPrivateKeyWrapSym")
	}
	def CsmAsymPublicKeyExtract getCsmAsymPublicKeyExtract(){
		moduleConfiguration.getByType(typeof(CsmAsymPublicKeyExtract))
	}
	
	def void setCsmAsymPublicKeyExtract(CsmAsymPublicKeyExtract csmAsymPublicKeyExtract){
		val GContainer container = csmAsymPublicKeyExtract.getTarget() 
	    moduleConfiguration.setContainer(container, "CsmAsymPublicKeyExtract")
	}
	def CsmAsymPublicKeyUpdate getCsmAsymPublicKeyUpdate(){
		moduleConfiguration.getByType(typeof(CsmAsymPublicKeyUpdate))
	}
	
	def void setCsmAsymPublicKeyUpdate(CsmAsymPublicKeyUpdate csmAsymPublicKeyUpdate){
		val GContainer container = csmAsymPublicKeyUpdate.getTarget() 
	    moduleConfiguration.setContainer(container, "CsmAsymPublicKeyUpdate")
	}
	def CsmChecksum getCsmChecksum(){
		moduleConfiguration.getByType(typeof(CsmChecksum))
	}
	
	def void setCsmChecksum(CsmChecksum csmChecksum){
		val GContainer container = csmChecksum.getTarget() 
	    moduleConfiguration.setContainer(container, "CsmChecksum")
	}
	def CsmCompression getCsmCompression(){
		moduleConfiguration.getByType(typeof(CsmCompression))
	}
	
	def void setCsmCompression(CsmCompression csmCompression){
		val GContainer container = csmCompression.getTarget() 
	    moduleConfiguration.setContainer(container, "CsmCompression")
	}
	def CsmDecompression getCsmDecompression(){
		moduleConfiguration.getByType(typeof(CsmDecompression))
	}
	
	def void setCsmDecompression(CsmDecompression csmDecompression){
		val GContainer container = csmDecompression.getTarget() 
	    moduleConfiguration.setContainer(container, "CsmDecompression")
	}
	def CsmGeneral getCsmGeneral(){
		moduleConfiguration.getByType(typeof(CsmGeneral))
	}
	
	def void setCsmGeneral(CsmGeneral csmGeneral){
		val GContainer container = csmGeneral.getTarget() 
	    moduleConfiguration.setContainer(container, "CsmGeneral")
	}
	def CsmHash getCsmHash(){
		moduleConfiguration.getByType(typeof(CsmHash))
	}
	
	def void setCsmHash(CsmHash csmHash){
		val GContainer container = csmHash.getTarget() 
	    moduleConfiguration.setContainer(container, "CsmHash")
	}
	def CsmKeyDerive getCsmKeyDerive(){
		moduleConfiguration.getByType(typeof(CsmKeyDerive))
	}
	
	def void setCsmKeyDerive(CsmKeyDerive csmKeyDerive){
		val GContainer container = csmKeyDerive.getTarget() 
	    moduleConfiguration.setContainer(container, "CsmKeyDerive")
	}
	def CsmKeyDeriveSymKey getCsmKeyDeriveSymKey(){
		moduleConfiguration.getByType(typeof(CsmKeyDeriveSymKey))
	}
	
	def void setCsmKeyDeriveSymKey(CsmKeyDeriveSymKey csmKeyDeriveSymKey){
		val GContainer container = csmKeyDeriveSymKey.getTarget() 
	    moduleConfiguration.setContainer(container, "CsmKeyDeriveSymKey")
	}
	def CsmKeyExchangeCalcPubVal getCsmKeyExchangeCalcPubVal(){
		moduleConfiguration.getByType(typeof(CsmKeyExchangeCalcPubVal))
	}
	
	def void setCsmKeyExchangeCalcPubVal(CsmKeyExchangeCalcPubVal csmKeyExchangeCalcPubVal){
		val GContainer container = csmKeyExchangeCalcPubVal.getTarget() 
	    moduleConfiguration.setContainer(container, "CsmKeyExchangeCalcPubVal")
	}
	def CsmKeyExchangeCalcSecret getCsmKeyExchangeCalcSecret(){
		moduleConfiguration.getByType(typeof(CsmKeyExchangeCalcSecret))
	}
	
	def void setCsmKeyExchangeCalcSecret(CsmKeyExchangeCalcSecret csmKeyExchangeCalcSecret){
		val GContainer container = csmKeyExchangeCalcSecret.getTarget() 
	    moduleConfiguration.setContainer(container, "CsmKeyExchangeCalcSecret")
	}
	def CsmKeyExchangeCalcSymKey getCsmKeyExchangeCalcSymKey(){
		moduleConfiguration.getByType(typeof(CsmKeyExchangeCalcSymKey))
	}
	
	def void setCsmKeyExchangeCalcSymKey(CsmKeyExchangeCalcSymKey csmKeyExchangeCalcSymKey){
		val GContainer container = csmKeyExchangeCalcSymKey.getTarget() 
	    moduleConfiguration.setContainer(container, "CsmKeyExchangeCalcSymKey")
	}
	def CsmMacGenerate getCsmMacGenerate(){
		moduleConfiguration.getByType(typeof(CsmMacGenerate))
	}
	
	def void setCsmMacGenerate(CsmMacGenerate csmMacGenerate){
		val GContainer container = csmMacGenerate.getTarget() 
	    moduleConfiguration.setContainer(container, "CsmMacGenerate")
	}
	def CsmMacVerify getCsmMacVerify(){
		moduleConfiguration.getByType(typeof(CsmMacVerify))
	}
	
	def void setCsmMacVerify(CsmMacVerify csmMacVerify){
		val GContainer container = csmMacVerify.getTarget() 
	    moduleConfiguration.setContainer(container, "CsmMacVerify")
	}
	def CsmRandomGenerate getCsmRandomGenerate(){
		moduleConfiguration.getByType(typeof(CsmRandomGenerate))
	}
	
	def void setCsmRandomGenerate(CsmRandomGenerate csmRandomGenerate){
		val GContainer container = csmRandomGenerate.getTarget() 
	    moduleConfiguration.setContainer(container, "CsmRandomGenerate")
	}
	def CsmRandomSeed getCsmRandomSeed(){
		moduleConfiguration.getByType(typeof(CsmRandomSeed))
	}
	
	def void setCsmRandomSeed(CsmRandomSeed csmRandomSeed){
		val GContainer container = csmRandomSeed.getTarget() 
	    moduleConfiguration.setContainer(container, "CsmRandomSeed")
	}
	def CsmSignatureGenerate getCsmSignatureGenerate(){
		moduleConfiguration.getByType(typeof(CsmSignatureGenerate))
	}
	
	def void setCsmSignatureGenerate(CsmSignatureGenerate csmSignatureGenerate){
		val GContainer container = csmSignatureGenerate.getTarget() 
	    moduleConfiguration.setContainer(container, "CsmSignatureGenerate")
	}
	def CsmSignatureVerify getCsmSignatureVerify(){
		moduleConfiguration.getByType(typeof(CsmSignatureVerify))
	}
	
	def void setCsmSignatureVerify(CsmSignatureVerify csmSignatureVerify){
		val GContainer container = csmSignatureVerify.getTarget() 
	    moduleConfiguration.setContainer(container, "CsmSignatureVerify")
	}
	def CsmSymBlockDecrypt getCsmSymBlockDecrypt(){
		moduleConfiguration.getByType(typeof(CsmSymBlockDecrypt))
	}
	
	def void setCsmSymBlockDecrypt(CsmSymBlockDecrypt csmSymBlockDecrypt){
		val GContainer container = csmSymBlockDecrypt.getTarget() 
	    moduleConfiguration.setContainer(container, "CsmSymBlockDecrypt")
	}
	def CsmSymBlockEncrypt getCsmSymBlockEncrypt(){
		moduleConfiguration.getByType(typeof(CsmSymBlockEncrypt))
	}
	
	def void setCsmSymBlockEncrypt(CsmSymBlockEncrypt csmSymBlockEncrypt){
		val GContainer container = csmSymBlockEncrypt.getTarget() 
	    moduleConfiguration.setContainer(container, "CsmSymBlockEncrypt")
	}
	def CsmSymDecrypt getCsmSymDecrypt(){
		moduleConfiguration.getByType(typeof(CsmSymDecrypt))
	}
	
	def void setCsmSymDecrypt(CsmSymDecrypt csmSymDecrypt){
		val GContainer container = csmSymDecrypt.getTarget() 
	    moduleConfiguration.setContainer(container, "CsmSymDecrypt")
	}
	def CsmSymEncrypt getCsmSymEncrypt(){
		moduleConfiguration.getByType(typeof(CsmSymEncrypt))
	}
	
	def void setCsmSymEncrypt(CsmSymEncrypt csmSymEncrypt){
		val GContainer container = csmSymEncrypt.getTarget() 
	    moduleConfiguration.setContainer(container, "CsmSymEncrypt")
	}
	def CsmSymKeyExtract getCsmSymKeyExtract(){
		moduleConfiguration.getByType(typeof(CsmSymKeyExtract))
	}
	
	def void setCsmSymKeyExtract(CsmSymKeyExtract csmSymKeyExtract){
		val GContainer container = csmSymKeyExtract.getTarget() 
	    moduleConfiguration.setContainer(container, "CsmSymKeyExtract")
	}
	def CsmSymKeyGenerate getCsmSymKeyGenerate(){
		moduleConfiguration.getByType(typeof(CsmSymKeyGenerate))
	}
	
	def void setCsmSymKeyGenerate(CsmSymKeyGenerate csmSymKeyGenerate){
		val GContainer container = csmSymKeyGenerate.getTarget() 
	    moduleConfiguration.setContainer(container, "CsmSymKeyGenerate")
	}
	def CsmSymKeyUpdate getCsmSymKeyUpdate(){
		moduleConfiguration.getByType(typeof(CsmSymKeyUpdate))
	}
	
	def void setCsmSymKeyUpdate(CsmSymKeyUpdate csmSymKeyUpdate){
		val GContainer container = csmSymKeyUpdate.getTarget() 
	    moduleConfiguration.setContainer(container, "CsmSymKeyUpdate")
	}
	def CsmSymKeyWrapAsym getCsmSymKeyWrapAsym(){
		moduleConfiguration.getByType(typeof(CsmSymKeyWrapAsym))
	}
	
	def void setCsmSymKeyWrapAsym(CsmSymKeyWrapAsym csmSymKeyWrapAsym){
		val GContainer container = csmSymKeyWrapAsym.getTarget() 
	    moduleConfiguration.setContainer(container, "CsmSymKeyWrapAsym")
	}
	def CsmSymKeyWrapSym getCsmSymKeyWrapSym(){
		moduleConfiguration.getByType(typeof(CsmSymKeyWrapSym))
	}
	
	def void setCsmSymKeyWrapSym(CsmSymKeyWrapSym csmSymKeyWrapSym){
		val GContainer container = csmSymKeyWrapSym.getTarget() 
	    moduleConfiguration.setContainer(container, "CsmSymKeyWrapSym")
	}
	
	static class CsmAsymDecrypt implements IWrapper<GContainer> {
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
		
		def Integer getCsmAsymDecryptMaxKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymDecryptMaxKeySize"])
		}
		
		def void setCsmAsymDecryptMaxKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymDecryptMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymDecryptMaxKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CsmAsymDecryptConfig> getCsmAsymDecryptConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmAsymDecryptConfig")
				}
			}
			return new BasicWrappingEList<CsmAsymDecryptConfig, GContainer>(filteredContainers, typeof(CsmAsymDecryptConfig), typeof(GContainer)) {
				override protected delegateAdd(CsmAsymDecryptConfig csmAsymDecryptConfig) {
					csmAsymDecryptConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmAsymDecryptConfig"))
					super.delegateAdd(csmAsymDecryptConfig)
				}
				
				override protected delegateAdd(int index, CsmAsymDecryptConfig csmAsymDecryptConfig) {
					csmAsymDecryptConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmAsymDecryptConfig"))
					super.delegateAdd(index, csmAsymDecryptConfig)
				}	
			}
		}
		
		
		static class CsmAsymDecryptConfig implements IWrapper<GContainer> {
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
			
			def String getCsmAsymDecryptInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymDecryptInitConfiguration"])
			}
			
			def void setCsmAsymDecryptInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymDecryptInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymDecryptInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmAsymDecryptPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymDecryptPrimitiveName"])
			}
			
			def void setCsmAsymDecryptPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymDecryptPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymDecryptPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmCallbackAsymDecrypt(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackAsymDecrypt"])
			}
			
			def void setCsmCallbackAsymDecrypt(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackAsymDecrypt"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackAsymDecrypt"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class CsmAsymEncrypt implements IWrapper<GContainer> {
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
		
		def Integer getCsmAsymEncryptMaxKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymEncryptMaxKeySize"])
		}
		
		def void setCsmAsymEncryptMaxKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymEncryptMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymEncryptMaxKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CsmAsymEncryptConfig> getCsmAsymEncryptConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmAsymEncryptConfig")
				}
			}
			return new BasicWrappingEList<CsmAsymEncryptConfig, GContainer>(filteredContainers, typeof(CsmAsymEncryptConfig), typeof(GContainer)) {
				override protected delegateAdd(CsmAsymEncryptConfig csmAsymEncryptConfig) {
					csmAsymEncryptConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmAsymEncryptConfig"))
					super.delegateAdd(csmAsymEncryptConfig)
				}
				
				override protected delegateAdd(int index, CsmAsymEncryptConfig csmAsymEncryptConfig) {
					csmAsymEncryptConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmAsymEncryptConfig"))
					super.delegateAdd(index, csmAsymEncryptConfig)
				}	
			}
		}
		
		
		static class CsmAsymEncryptConfig implements IWrapper<GContainer> {
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
			
			def String getCsmAsymEncryptInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymEncryptInitConfiguration"])
			}
			
			def void setCsmAsymEncryptInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymEncryptInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymEncryptInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmAsymEncryptPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymEncryptPrimitiveName"])
			}
			
			def void setCsmAsymEncryptPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymEncryptPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymEncryptPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmCallbackAsymEncrypt(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackAsymEncrypt"])
			}
			
			def void setCsmCallbackAsymEncrypt(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackAsymEncrypt"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackAsymEncrypt"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class CsmAsymPrivateKeyExtract implements IWrapper<GContainer> {
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
		
		def Integer getCsmAsymPrivateKeyExtractMaxKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyExtractMaxKeySize"])
		}
		
		def void setCsmAsymPrivateKeyExtractMaxKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyExtractMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPrivateKeyExtractMaxKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CsmAsymPrivateKeyExtractConfig> getCsmAsymPrivateKeyExtractConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmAsymPrivateKeyExtractConfig")
				}
			}
			return new BasicWrappingEList<CsmAsymPrivateKeyExtractConfig, GContainer>(filteredContainers, typeof(CsmAsymPrivateKeyExtractConfig), typeof(GContainer)) {
				override protected delegateAdd(CsmAsymPrivateKeyExtractConfig csmAsymPrivateKeyExtractConfig) {
					csmAsymPrivateKeyExtractConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmAsymPrivateKeyExtractConfig"))
					super.delegateAdd(csmAsymPrivateKeyExtractConfig)
				}
				
				override protected delegateAdd(int index, CsmAsymPrivateKeyExtractConfig csmAsymPrivateKeyExtractConfig) {
					csmAsymPrivateKeyExtractConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmAsymPrivateKeyExtractConfig"))
					super.delegateAdd(index, csmAsymPrivateKeyExtractConfig)
				}	
			}
		}
		
		
		static class CsmAsymPrivateKeyExtractConfig implements IWrapper<GContainer> {
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
			
			def String getCsmAsymPrivateKeyExtractInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyExtractInitConfiguration"])
			}
			
			def void setCsmAsymPrivateKeyExtractInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyExtractInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPrivateKeyExtractInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmAsymPrivateKeyExtractPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyExtractPrimitiveName"])
			}
			
			def void setCsmAsymPrivateKeyExtractPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyExtractPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPrivateKeyExtractPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmCallbackAsymPrivateKeyExtract(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackAsymPrivateKeyExtract"])
			}
			
			def void setCsmCallbackAsymPrivateKeyExtract(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackAsymPrivateKeyExtract"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackAsymPrivateKeyExtract"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class CsmAsymPrivateKeyUpdate implements IWrapper<GContainer> {
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
		
		def Integer getCsmAsymPrivateKeyUpdateMaxKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyUpdateMaxKeySize"])
		}
		
		def void setCsmAsymPrivateKeyUpdateMaxKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyUpdateMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPrivateKeyUpdateMaxKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CsmAsymPrivateKeyUpdateConfig> getCsmAsymPrivateKeyUpdateConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmAsymPrivateKeyUpdateConfig")
				}
			}
			return new BasicWrappingEList<CsmAsymPrivateKeyUpdateConfig, GContainer>(filteredContainers, typeof(CsmAsymPrivateKeyUpdateConfig), typeof(GContainer)) {
				override protected delegateAdd(CsmAsymPrivateKeyUpdateConfig csmAsymPrivateKeyUpdateConfig) {
					csmAsymPrivateKeyUpdateConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmAsymPrivateKeyUpdateConfig"))
					super.delegateAdd(csmAsymPrivateKeyUpdateConfig)
				}
				
				override protected delegateAdd(int index, CsmAsymPrivateKeyUpdateConfig csmAsymPrivateKeyUpdateConfig) {
					csmAsymPrivateKeyUpdateConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmAsymPrivateKeyUpdateConfig"))
					super.delegateAdd(index, csmAsymPrivateKeyUpdateConfig)
				}	
			}
		}
		
		
		static class CsmAsymPrivateKeyUpdateConfig implements IWrapper<GContainer> {
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
			
			def String getCsmAsymPrivateKeyUpdateInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyUpdateInitConfiguration"])
			}
			
			def void setCsmAsymPrivateKeyUpdateInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyUpdateInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPrivateKeyUpdateInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmAsymPrivateKeyUpdatePrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyUpdatePrimitiveName"])
			}
			
			def void setCsmAsymPrivateKeyUpdatePrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyUpdatePrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPrivateKeyUpdatePrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmCallbackAsymPrivateKeyUpdate(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackAsymPrivateKeyUpdate"])
			}
			
			def void setCsmCallbackAsymPrivateKeyUpdate(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackAsymPrivateKeyUpdate"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackAsymPrivateKeyUpdate"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class CsmAsymPrivateKeyWrapAsym implements IWrapper<GContainer> {
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
		
		def Integer getCsmAsymPrivateKeyWrapAsymMaxPrivKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyWrapAsymMaxPrivKeySize"])
		}
		
		def void setCsmAsymPrivateKeyWrapAsymMaxPrivKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyWrapAsymMaxPrivKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPrivateKeyWrapAsymMaxPrivKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getCsmAsymPrivateKeyWrapAsymMaxPubKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyWrapAsymMaxPubKeySize"])
		}
		
		def void setCsmAsymPrivateKeyWrapAsymMaxPubKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyWrapAsymMaxPubKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPrivateKeyWrapAsymMaxPubKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CsmAsymPrivateKeyWrapAsymConfig> getCsmAsymPrivateKeyWrapAsymConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmAsymPrivateKeyWrapAsymConfig")
				}
			}
			return new BasicWrappingEList<CsmAsymPrivateKeyWrapAsymConfig, GContainer>(filteredContainers, typeof(CsmAsymPrivateKeyWrapAsymConfig), typeof(GContainer)) {
				override protected delegateAdd(CsmAsymPrivateKeyWrapAsymConfig csmAsymPrivateKeyWrapAsymConfig) {
					csmAsymPrivateKeyWrapAsymConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmAsymPrivateKeyWrapAsymConfig"))
					super.delegateAdd(csmAsymPrivateKeyWrapAsymConfig)
				}
				
				override protected delegateAdd(int index, CsmAsymPrivateKeyWrapAsymConfig csmAsymPrivateKeyWrapAsymConfig) {
					csmAsymPrivateKeyWrapAsymConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmAsymPrivateKeyWrapAsymConfig"))
					super.delegateAdd(index, csmAsymPrivateKeyWrapAsymConfig)
				}	
			}
		}
		
		
		static class CsmAsymPrivateKeyWrapAsymConfig implements IWrapper<GContainer> {
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
			
			def String getCsmAsymPrivateKeyWrapAsymInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyWrapAsymInitConfiguration"])
			}
			
			def void setCsmAsymPrivateKeyWrapAsymInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyWrapAsymInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPrivateKeyWrapAsymInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmAsymPrivateKeyWrapAsymPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyWrapAsymPrimitiveName"])
			}
			
			def void setCsmAsymPrivateKeyWrapAsymPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyWrapAsymPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPrivateKeyWrapAsymPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmCallbackAsymPrivateKeyWrapAsym(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackAsymPrivateKeyWrapAsym"])
			}
			
			def void setCsmCallbackAsymPrivateKeyWrapAsym(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackAsymPrivateKeyWrapAsym"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackAsymPrivateKeyWrapAsym"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class CsmAsymPrivateKeyWrapSym implements IWrapper<GContainer> {
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
		
		def Integer getCsmAsymPrivateKeyWrapSymMaxPrivKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyWrapSymMaxPrivKeySize"])
		}
		
		def void setCsmAsymPrivateKeyWrapSymMaxPrivKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyWrapSymMaxPrivKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPrivateKeyWrapSymMaxPrivKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getCsmAsymPrivateKeyWrapSymMaxSymKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyWrapSymMaxSymKeySize"])
		}
		
		def void setCsmAsymPrivateKeyWrapSymMaxSymKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyWrapSymMaxSymKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPrivateKeyWrapSymMaxSymKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CsmAsymPrivateKeyWrapSymConfig> getCsmAsymPrivateKeyWrapSymConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmAsymPrivateKeyWrapSymConfig")
				}
			}
			return new BasicWrappingEList<CsmAsymPrivateKeyWrapSymConfig, GContainer>(filteredContainers, typeof(CsmAsymPrivateKeyWrapSymConfig), typeof(GContainer)) {
				override protected delegateAdd(CsmAsymPrivateKeyWrapSymConfig csmAsymPrivateKeyWrapSymConfig) {
					csmAsymPrivateKeyWrapSymConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmAsymPrivateKeyWrapSymConfig"))
					super.delegateAdd(csmAsymPrivateKeyWrapSymConfig)
				}
				
				override protected delegateAdd(int index, CsmAsymPrivateKeyWrapSymConfig csmAsymPrivateKeyWrapSymConfig) {
					csmAsymPrivateKeyWrapSymConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmAsymPrivateKeyWrapSymConfig"))
					super.delegateAdd(index, csmAsymPrivateKeyWrapSymConfig)
				}	
			}
		}
		
		
		static class CsmAsymPrivateKeyWrapSymConfig implements IWrapper<GContainer> {
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
			
			def String getCsmAsymPrivateKeyWrapSymInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyWrapSymInitConfiguration"])
			}
			
			def void setCsmAsymPrivateKeyWrapSymInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyWrapSymInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPrivateKeyWrapSymInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmAsymPrivateKeyWrapSymPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyWrapSymPrimitiveName"])
			}
			
			def void setCsmAsymPrivateKeyWrapSymPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPrivateKeyWrapSymPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPrivateKeyWrapSymPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmCallbackAsymPrivateKeyWrapSym(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackAsymPrivateKeyWrapSym"])
			}
			
			def void setCsmCallbackAsymPrivateKeyWrapSym(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackAsymPrivateKeyWrapSym"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackAsymPrivateKeyWrapSym"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class CsmAsymPublicKeyExtract implements IWrapper<GContainer> {
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
		
		def Integer getCsmAsymPublicKeyExtractMaxKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPublicKeyExtractMaxKeySize"])
		}
		
		def void setCsmAsymPublicKeyExtractMaxKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPublicKeyExtractMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPublicKeyExtractMaxKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CsmAsymPublicKeyExtractConfig> getCsmAsymPublicKeyExtractConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmAsymPublicKeyExtractConfig")
				}
			}
			return new BasicWrappingEList<CsmAsymPublicKeyExtractConfig, GContainer>(filteredContainers, typeof(CsmAsymPublicKeyExtractConfig), typeof(GContainer)) {
				override protected delegateAdd(CsmAsymPublicKeyExtractConfig csmAsymPublicKeyExtractConfig) {
					csmAsymPublicKeyExtractConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmAsymPublicKeyExtractConfig"))
					super.delegateAdd(csmAsymPublicKeyExtractConfig)
				}
				
				override protected delegateAdd(int index, CsmAsymPublicKeyExtractConfig csmAsymPublicKeyExtractConfig) {
					csmAsymPublicKeyExtractConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmAsymPublicKeyExtractConfig"))
					super.delegateAdd(index, csmAsymPublicKeyExtractConfig)
				}	
			}
		}
		
		
		static class CsmAsymPublicKeyExtractConfig implements IWrapper<GContainer> {
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
			
			def String getCsmAsymPublicKeyExtractInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPublicKeyExtractInitConfiguration"])
			}
			
			def void setCsmAsymPublicKeyExtractInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPublicKeyExtractInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPublicKeyExtractInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmAsymPublicKeyExtractPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPublicKeyExtractPrimitiveName"])
			}
			
			def void setCsmAsymPublicKeyExtractPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPublicKeyExtractPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPublicKeyExtractPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmCallbackAsymPublicKeyExtract(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackAsymPublicKeyExtract"])
			}
			
			def void setCsmCallbackAsymPublicKeyExtract(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackAsymPublicKeyExtract"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackAsymPublicKeyExtract"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class CsmAsymPublicKeyUpdate implements IWrapper<GContainer> {
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
		
		def Integer getCsmAsymPublicKeyUpdateMaxKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPublicKeyUpdateMaxKeySize"])
		}
		
		def void setCsmAsymPublicKeyUpdateMaxKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPublicKeyUpdateMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPublicKeyUpdateMaxKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CsmAsymPublicKeyUpdateConfig> getCsmAsymPublicKeyUpdateConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmAsymPublicKeyUpdateConfig")
				}
			}
			return new BasicWrappingEList<CsmAsymPublicKeyUpdateConfig, GContainer>(filteredContainers, typeof(CsmAsymPublicKeyUpdateConfig), typeof(GContainer)) {
				override protected delegateAdd(CsmAsymPublicKeyUpdateConfig csmAsymPublicKeyUpdateConfig) {
					csmAsymPublicKeyUpdateConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmAsymPublicKeyUpdateConfig"))
					super.delegateAdd(csmAsymPublicKeyUpdateConfig)
				}
				
				override protected delegateAdd(int index, CsmAsymPublicKeyUpdateConfig csmAsymPublicKeyUpdateConfig) {
					csmAsymPublicKeyUpdateConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmAsymPublicKeyUpdateConfig"))
					super.delegateAdd(index, csmAsymPublicKeyUpdateConfig)
				}	
			}
		}
		
		
		static class CsmAsymPublicKeyUpdateConfig implements IWrapper<GContainer> {
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
			
			def String getCsmAsymPublicKeyUpdateInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPublicKeyUpdateInitConfiguration"])
			}
			
			def void setCsmAsymPublicKeyUpdateInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPublicKeyUpdateInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPublicKeyUpdateInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmAsymPublicKeyUpdatePrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPublicKeyUpdatePrimitiveName"])
			}
			
			def void setCsmAsymPublicKeyUpdatePrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmAsymPublicKeyUpdatePrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmAsymPublicKeyUpdatePrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmCallbackAsymPublicKeyUpdate(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackAsymPublicKeyUpdate"])
			}
			
			def void setCsmCallbackAsymPublicKeyUpdate(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackAsymPublicKeyUpdate"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackAsymPublicKeyUpdate"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class CsmChecksum implements IWrapper<GContainer> {
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
		
		
		
		def List<CsmChecksumConfig> getCsmChecksumConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmChecksumConfig")
				}
			}
			return new BasicWrappingEList<CsmChecksumConfig, GContainer>(filteredContainers, typeof(CsmChecksumConfig), typeof(GContainer)) {
				override protected delegateAdd(CsmChecksumConfig csmChecksumConfig) {
					csmChecksumConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmChecksumConfig"))
					super.delegateAdd(csmChecksumConfig)
				}
				
				override protected delegateAdd(int index, CsmChecksumConfig csmChecksumConfig) {
					csmChecksumConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmChecksumConfig"))
					super.delegateAdd(index, csmChecksumConfig)
				}	
			}
		}
		
		
		static class CsmChecksumConfig implements IWrapper<GContainer> {
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
			
			def String getCsmCallbackChecksum(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackChecksum"])
			}
			
			def void setCsmCallbackChecksum(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackChecksum"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackChecksum"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmChecksumInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmChecksumInitConfiguration"])
			}
			
			def void setCsmChecksumInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmChecksumInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmChecksumInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmChecksumPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmChecksumPrimitiveName"])
			}
			
			def void setCsmChecksumPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmChecksumPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmChecksumPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class CsmCompression implements IWrapper<GContainer> {
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
		
		
		
		def List<CsmCompressionConfig> getCsmCompressionConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmCompressionConfig")
				}
			}
			return new BasicWrappingEList<CsmCompressionConfig, GContainer>(filteredContainers, typeof(CsmCompressionConfig), typeof(GContainer)) {
				override protected delegateAdd(CsmCompressionConfig csmCompressionConfig) {
					csmCompressionConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmCompressionConfig"))
					super.delegateAdd(csmCompressionConfig)
				}
				
				override protected delegateAdd(int index, CsmCompressionConfig csmCompressionConfig) {
					csmCompressionConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmCompressionConfig"))
					super.delegateAdd(index, csmCompressionConfig)
				}	
			}
		}
		
		
		static class CsmCompressionConfig implements IWrapper<GContainer> {
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
			
			def String getCsmCallbackCompression(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackCompression"])
			}
			
			def void setCsmCallbackCompression(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackCompression"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackCompression"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmCompressionInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCompressionInitConfiguration"])
			}
			
			def void setCsmCompressionInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCompressionInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmCompressionInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmCompressionPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCompressionPrimitiveName"])
			}
			
			def void setCsmCompressionPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCompressionPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmCompressionPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class CsmDecompression implements IWrapper<GContainer> {
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
		
		
		
		def List<CsmDecompressionConfig> getCsmDecompressionConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmDecompressionConfig")
				}
			}
			return new BasicWrappingEList<CsmDecompressionConfig, GContainer>(filteredContainers, typeof(CsmDecompressionConfig), typeof(GContainer)) {
				override protected delegateAdd(CsmDecompressionConfig csmDecompressionConfig) {
					csmDecompressionConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmDecompressionConfig"))
					super.delegateAdd(csmDecompressionConfig)
				}
				
				override protected delegateAdd(int index, CsmDecompressionConfig csmDecompressionConfig) {
					csmDecompressionConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmDecompressionConfig"))
					super.delegateAdd(index, csmDecompressionConfig)
				}	
			}
		}
		
		
		static class CsmDecompressionConfig implements IWrapper<GContainer> {
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
			
			def String getCsmCallbackDecompression(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackDecompression"])
			}
			
			def void setCsmCallbackDecompression(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackDecompression"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackDecompression"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmDecompressionInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmDecompressionInitConfiguration"])
			}
			
			def void setCsmDecompressionInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmDecompressionInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmDecompressionInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmDecompressionPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmDecompressionPrimitiveName"])
			}
			
			def void setCsmDecompressionPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmDecompressionPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmDecompressionPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class CsmGeneral implements IWrapper<GContainer> {
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
		
		def Boolean getCsmDevErrorDetect(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmDevErrorDetect"])
		}
		
		def void setCsmDevErrorDetect(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmDevErrorDetect"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmDevErrorDetect"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Float getCsmMainFunctionPeriod(){
			EcucValueAccessor421Util.getFloatValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMainFunctionPeriod"])
		}
		
		def void setCsmMainFunctionPeriod(Float value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMainFunctionPeriod"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmMainFunctionPeriod"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def String getCsmMaxAlignScalarType(){
			EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMaxAlignScalarType"])
		}
		
		def void setCsmMaxAlignScalarType(String value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMaxAlignScalarType"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmMaxAlignScalarType"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getCsmUseSyncJobProcessing(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmUseSyncJobProcessing"])
		}
		
		def void setCsmUseSyncJobProcessing(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmUseSyncJobProcessing"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmUseSyncJobProcessing"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Boolean getCsmVersionInfoApi(){
			getBooleanValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmVersionInfoApi"])
		}
		
		def void setCsmVersionInfoApi(Boolean value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmVersionInfoApi"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmVersionInfoApi"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		
	}
	static class CsmHash implements IWrapper<GContainer> {
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
		
		
		
		def List<CsmHashConfig> getCsmHashConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmHashConfig")
				}
			}
			return new BasicWrappingEList<CsmHashConfig, GContainer>(filteredContainers, typeof(CsmHashConfig), typeof(GContainer)) {
				override protected delegateAdd(CsmHashConfig csmHashConfig) {
					csmHashConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmHashConfig"))
					super.delegateAdd(csmHashConfig)
				}
				
				override protected delegateAdd(int index, CsmHashConfig csmHashConfig) {
					csmHashConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmHashConfig"))
					super.delegateAdd(index, csmHashConfig)
				}	
			}
		}
		
		
		static class CsmHashConfig implements IWrapper<GContainer> {
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
			
			def String getCsmCallbackHash(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackHash"])
			}
			
			def void setCsmCallbackHash(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackHash"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackHash"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmHashInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmHashInitConfiguration"])
			}
			
			def void setCsmHashInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmHashInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmHashInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmHashPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmHashPrimitiveName"])
			}
			
			def void setCsmHashPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmHashPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmHashPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class CsmKeyDerive implements IWrapper<GContainer> {
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
		
		def Integer getCsmKeyDeriveMaxKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyDeriveMaxKeySize"])
		}
		
		def void setCsmKeyDeriveMaxKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyDeriveMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyDeriveMaxKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CsmKeyDeriveConfig> getCsmKeyDeriveConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmKeyDeriveConfig")
				}
			}
			return new BasicWrappingEList<CsmKeyDeriveConfig, GContainer>(filteredContainers, typeof(CsmKeyDeriveConfig), typeof(GContainer)) {
				override protected delegateAdd(CsmKeyDeriveConfig csmKeyDeriveConfig) {
					csmKeyDeriveConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmKeyDeriveConfig"))
					super.delegateAdd(csmKeyDeriveConfig)
				}
				
				override protected delegateAdd(int index, CsmKeyDeriveConfig csmKeyDeriveConfig) {
					csmKeyDeriveConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmKeyDeriveConfig"))
					super.delegateAdd(index, csmKeyDeriveConfig)
				}	
			}
		}
		
		
		static class CsmKeyDeriveConfig implements IWrapper<GContainer> {
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
			
			def String getCsmCallbackKeyDerive(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackKeyDerive"])
			}
			
			def void setCsmCallbackKeyDerive(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackKeyDerive"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackKeyDerive"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmKeyDeriveInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyDeriveInitConfiguration"])
			}
			
			def void setCsmKeyDeriveInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyDeriveInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyDeriveInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmKeyDerivePrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyDerivePrimitiveName"])
			}
			
			def void setCsmKeyDerivePrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyDerivePrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyDerivePrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class CsmKeyDeriveSymKey implements IWrapper<GContainer> {
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
		
		def Integer getCsmKeyDeriveSymKeyMaxSymKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyDeriveSymKeyMaxSymKeySize"])
		}
		
		def void setCsmKeyDeriveSymKeyMaxSymKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyDeriveSymKeyMaxSymKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyDeriveSymKeyMaxSymKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CsmKeyDeriveSymKeyConfig> getCsmKeyDeriveSymKeyConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmKeyDeriveSymKeyConfig")
				}
			}
			return new BasicWrappingEList<CsmKeyDeriveSymKeyConfig, GContainer>(filteredContainers, typeof(CsmKeyDeriveSymKeyConfig), typeof(GContainer)) {
				override protected delegateAdd(CsmKeyDeriveSymKeyConfig csmKeyDeriveSymKeyConfig) {
					csmKeyDeriveSymKeyConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmKeyDeriveSymKeyConfig"))
					super.delegateAdd(csmKeyDeriveSymKeyConfig)
				}
				
				override protected delegateAdd(int index, CsmKeyDeriveSymKeyConfig csmKeyDeriveSymKeyConfig) {
					csmKeyDeriveSymKeyConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmKeyDeriveSymKeyConfig"))
					super.delegateAdd(index, csmKeyDeriveSymKeyConfig)
				}	
			}
		}
		
		
		static class CsmKeyDeriveSymKeyConfig implements IWrapper<GContainer> {
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
			
			def String getCsmCallbackKeyDeriveSymKey(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackKeyDeriveSymKey"])
			}
			
			def void setCsmCallbackKeyDeriveSymKey(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackKeyDeriveSymKey"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackKeyDeriveSymKey"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmKeyDeriveSymKeyInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyDeriveSymKeyInitConfiguration"])
			}
			
			def void setCsmKeyDeriveSymKeyInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyDeriveSymKeyInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyDeriveSymKeyInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmKeyDeriveSymKeyPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyDeriveSymKeyPrimitiveName"])
			}
			
			def void setCsmKeyDeriveSymKeyPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyDeriveSymKeyPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyDeriveSymKeyPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class CsmKeyExchangeCalcPubVal implements IWrapper<GContainer> {
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
		
		def Integer getCsmKeyExchangeCalcPubValMaxBaseTypeSize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcPubValMaxBaseTypeSize"])
		}
		
		def void setCsmKeyExchangeCalcPubValMaxBaseTypeSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcPubValMaxBaseTypeSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyExchangeCalcPubValMaxBaseTypeSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getCsmKeyExchangeCalcPubValMaxPrivateTypeSize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcPubValMaxPrivateTypeSize"])
		}
		
		def void setCsmKeyExchangeCalcPubValMaxPrivateTypeSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcPubValMaxPrivateTypeSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyExchangeCalcPubValMaxPrivateTypeSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CsmKeyExchangeCalcPubValConfig> getCsmKeyExchangeCalcPubValConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmKeyExchangeCalcPubValConfig")
				}
			}
			return new BasicWrappingEList<CsmKeyExchangeCalcPubValConfig, GContainer>(filteredContainers, typeof(CsmKeyExchangeCalcPubValConfig), typeof(GContainer)) {
				override protected delegateAdd(CsmKeyExchangeCalcPubValConfig csmKeyExchangeCalcPubValConfig) {
					csmKeyExchangeCalcPubValConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmKeyExchangeCalcPubValConfig"))
					super.delegateAdd(csmKeyExchangeCalcPubValConfig)
				}
				
				override protected delegateAdd(int index, CsmKeyExchangeCalcPubValConfig csmKeyExchangeCalcPubValConfig) {
					csmKeyExchangeCalcPubValConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmKeyExchangeCalcPubValConfig"))
					super.delegateAdd(index, csmKeyExchangeCalcPubValConfig)
				}	
			}
		}
		
		
		static class CsmKeyExchangeCalcPubValConfig implements IWrapper<GContainer> {
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
			
			def String getCsmCallbackKeyExchangeCalcPubVal(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackKeyExchangeCalcPubVal"])
			}
			
			def void setCsmCallbackKeyExchangeCalcPubVal(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackKeyExchangeCalcPubVal"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackKeyExchangeCalcPubVal"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmKeyExchangeCalcPubValInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcPubValInitConfiguration"])
			}
			
			def void setCsmKeyExchangeCalcPubValInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcPubValInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyExchangeCalcPubValInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmKeyExchangeCalcPubValPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcPubValPrimitiveName"])
			}
			
			def void setCsmKeyExchangeCalcPubValPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcPubValPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyExchangeCalcPubValPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class CsmKeyExchangeCalcSecret implements IWrapper<GContainer> {
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
		
		def Integer getCsmKeyExchangeCalcSecretMaxBaseTypeSize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcSecretMaxBaseTypeSize"])
		}
		
		def void setCsmKeyExchangeCalcSecretMaxBaseTypeSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcSecretMaxBaseTypeSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyExchangeCalcSecretMaxBaseTypeSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getCsmKeyExchangeCalcSecretMaxPrivateTypeSize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcSecretMaxPrivateTypeSize"])
		}
		
		def void setCsmKeyExchangeCalcSecretMaxPrivateTypeSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcSecretMaxPrivateTypeSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyExchangeCalcSecretMaxPrivateTypeSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CsmKeyExchangeCalcSecretConfig> getCsmKeyExchangeCalcSecretConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmKeyExchangeCalcSecretConfig")
				}
			}
			return new BasicWrappingEList<CsmKeyExchangeCalcSecretConfig, GContainer>(filteredContainers, typeof(CsmKeyExchangeCalcSecretConfig), typeof(GContainer)) {
				override protected delegateAdd(CsmKeyExchangeCalcSecretConfig csmKeyExchangeCalcSecretConfig) {
					csmKeyExchangeCalcSecretConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmKeyExchangeCalcSecretConfig"))
					super.delegateAdd(csmKeyExchangeCalcSecretConfig)
				}
				
				override protected delegateAdd(int index, CsmKeyExchangeCalcSecretConfig csmKeyExchangeCalcSecretConfig) {
					csmKeyExchangeCalcSecretConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmKeyExchangeCalcSecretConfig"))
					super.delegateAdd(index, csmKeyExchangeCalcSecretConfig)
				}	
			}
		}
		
		
		static class CsmKeyExchangeCalcSecretConfig implements IWrapper<GContainer> {
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
			
			def String getCsmCallbackKeyExchangeCalcSecret(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackKeyExchangeCalcSecret"])
			}
			
			def void setCsmCallbackKeyExchangeCalcSecret(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackKeyExchangeCalcSecret"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackKeyExchangeCalcSecret"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmKeyExchangeCalcSecretInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcSecretInitConfiguration"])
			}
			
			def void setCsmKeyExchangeCalcSecretInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcSecretInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyExchangeCalcSecretInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmKeyExchangeCalcSecretPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcSecretPrimitiveName"])
			}
			
			def void setCsmKeyExchangeCalcSecretPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcSecretPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyExchangeCalcSecretPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class CsmKeyExchangeCalcSymKey implements IWrapper<GContainer> {
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
		
		def Integer getCsmKeyExchangeCalcSymKeyMaxBaseTypeSize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcSymKeyMaxBaseTypeSize"])
		}
		
		def void setCsmKeyExchangeCalcSymKeyMaxBaseTypeSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcSymKeyMaxBaseTypeSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyExchangeCalcSymKeyMaxBaseTypeSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getCsmKeyExchangeCalcSymKeyMaxPrivateTypeSize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcSymKeyMaxPrivateTypeSize"])
		}
		
		def void setCsmKeyExchangeCalcSymKeyMaxPrivateTypeSize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcSymKeyMaxPrivateTypeSize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyExchangeCalcSymKeyMaxPrivateTypeSize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getCsmKeyExchangeCalcSymKeyMaxSymKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcSymKeyMaxSymKeySize"])
		}
		
		def void setCsmKeyExchangeCalcSymKeyMaxSymKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcSymKeyMaxSymKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyExchangeCalcSymKeyMaxSymKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CsmKeyExchangeCalcSymKeyConfig> getCsmKeyExchangeCalcSymKeyConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmKeyExchangeCalcSymKeyConfig")
				}
			}
			return new BasicWrappingEList<CsmKeyExchangeCalcSymKeyConfig, GContainer>(filteredContainers, typeof(CsmKeyExchangeCalcSymKeyConfig), typeof(GContainer)) {
				override protected delegateAdd(CsmKeyExchangeCalcSymKeyConfig csmKeyExchangeCalcSymKeyConfig) {
					csmKeyExchangeCalcSymKeyConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmKeyExchangeCalcSymKeyConfig"))
					super.delegateAdd(csmKeyExchangeCalcSymKeyConfig)
				}
				
				override protected delegateAdd(int index, CsmKeyExchangeCalcSymKeyConfig csmKeyExchangeCalcSymKeyConfig) {
					csmKeyExchangeCalcSymKeyConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmKeyExchangeCalcSymKeyConfig"))
					super.delegateAdd(index, csmKeyExchangeCalcSymKeyConfig)
				}	
			}
		}
		
		
		static class CsmKeyExchangeCalcSymKeyConfig implements IWrapper<GContainer> {
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
			
			def String getCsmCallbackKeyExchangeCalcSymKey(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackKeyExchangeCalcSymKey"])
			}
			
			def void setCsmCallbackKeyExchangeCalcSymKey(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackKeyExchangeCalcSymKey"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackKeyExchangeCalcSymKey"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmKeyExchangeCalcSymKeyInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcSymKeyInitConfiguration"])
			}
			
			def void setCsmKeyExchangeCalcSymKeyInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcSymKeyInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyExchangeCalcSymKeyInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmKeyExchangeCalcSymKeyPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcSymKeyPrimitiveName"])
			}
			
			def void setCsmKeyExchangeCalcSymKeyPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmKeyExchangeCalcSymKeyPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmKeyExchangeCalcSymKeyPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class CsmMacGenerate implements IWrapper<GContainer> {
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
		
		def Integer getCsmMacGenerateMaxKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacGenerateMaxKeySize"])
		}
		
		def void setCsmMacGenerateMaxKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacGenerateMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmMacGenerateMaxKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CsmMacGenerateConfig> getCsmMacGenerateConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmMacGenerateConfig")
				}
			}
			return new BasicWrappingEList<CsmMacGenerateConfig, GContainer>(filteredContainers, typeof(CsmMacGenerateConfig), typeof(GContainer)) {
				override protected delegateAdd(CsmMacGenerateConfig csmMacGenerateConfig) {
					csmMacGenerateConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmMacGenerateConfig"))
					super.delegateAdd(csmMacGenerateConfig)
				}
				
				override protected delegateAdd(int index, CsmMacGenerateConfig csmMacGenerateConfig) {
					csmMacGenerateConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmMacGenerateConfig"))
					super.delegateAdd(index, csmMacGenerateConfig)
				}	
			}
		}
		
		
		static class CsmMacGenerateConfig implements IWrapper<GContainer> {
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
			
			def String getCsmCallbackMacGenerate(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackMacGenerate"])
			}
			
			def void setCsmCallbackMacGenerate(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackMacGenerate"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackMacGenerate"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmMacGenerateInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacGenerateInitConfiguration"])
			}
			
			def void setCsmMacGenerateInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacGenerateInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmMacGenerateInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmMacGeneratePrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacGeneratePrimitiveName"])
			}
			
			def void setCsmMacGeneratePrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacGeneratePrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmMacGeneratePrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class CsmMacVerify implements IWrapper<GContainer> {
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
		
		def Integer getCsmMacVerifyMaxKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacVerifyMaxKeySize"])
		}
		
		def void setCsmMacVerifyMaxKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacVerifyMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmMacVerifyMaxKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CsmMacVerifyConfig> getCsmMacVerifyConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmMacVerifyConfig")
				}
			}
			return new BasicWrappingEList<CsmMacVerifyConfig, GContainer>(filteredContainers, typeof(CsmMacVerifyConfig), typeof(GContainer)) {
				override protected delegateAdd(CsmMacVerifyConfig csmMacVerifyConfig) {
					csmMacVerifyConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmMacVerifyConfig"))
					super.delegateAdd(csmMacVerifyConfig)
				}
				
				override protected delegateAdd(int index, CsmMacVerifyConfig csmMacVerifyConfig) {
					csmMacVerifyConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmMacVerifyConfig"))
					super.delegateAdd(index, csmMacVerifyConfig)
				}	
			}
		}
		
		
		static class CsmMacVerifyConfig implements IWrapper<GContainer> {
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
			
			def String getCsmCallbackMacVerify(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackMacVerify"])
			}
			
			def void setCsmCallbackMacVerify(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackMacVerify"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackMacVerify"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmMacVerifyInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacVerifyInitConfiguration"])
			}
			
			def void setCsmMacVerifyInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacVerifyInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmMacVerifyInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmMacVerifyPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacVerifyPrimitiveName"])
			}
			
			def void setCsmMacVerifyPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmMacVerifyPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmMacVerifyPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class CsmRandomGenerate implements IWrapper<GContainer> {
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
		
		
		
		def List<CsmRandomGenerateConfig> getCsmRandomGenerateConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmRandomGenerateConfig")
				}
			}
			return new BasicWrappingEList<CsmRandomGenerateConfig, GContainer>(filteredContainers, typeof(CsmRandomGenerateConfig), typeof(GContainer)) {
				override protected delegateAdd(CsmRandomGenerateConfig csmRandomGenerateConfig) {
					csmRandomGenerateConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmRandomGenerateConfig"))
					super.delegateAdd(csmRandomGenerateConfig)
				}
				
				override protected delegateAdd(int index, CsmRandomGenerateConfig csmRandomGenerateConfig) {
					csmRandomGenerateConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmRandomGenerateConfig"))
					super.delegateAdd(index, csmRandomGenerateConfig)
				}	
			}
		}
		
		
		static class CsmRandomGenerateConfig implements IWrapper<GContainer> {
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
			
			def String getCsmCallbackRandomGenerate(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackRandomGenerate"])
			}
			
			def void setCsmCallbackRandomGenerate(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackRandomGenerate"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackRandomGenerate"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmRandomGenerateInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmRandomGenerateInitConfiguration"])
			}
			
			def void setCsmRandomGenerateInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmRandomGenerateInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmRandomGenerateInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmRandomGeneratePrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmRandomGeneratePrimitiveName"])
			}
			
			def void setCsmRandomGeneratePrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmRandomGeneratePrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmRandomGeneratePrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class CsmRandomSeed implements IWrapper<GContainer> {
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
		
		
		
		def List<CsmRandomSeedConfig> getCsmRandomSeedConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmRandomSeedConfig")
				}
			}
			return new BasicWrappingEList<CsmRandomSeedConfig, GContainer>(filteredContainers, typeof(CsmRandomSeedConfig), typeof(GContainer)) {
				override protected delegateAdd(CsmRandomSeedConfig csmRandomSeedConfig) {
					csmRandomSeedConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmRandomSeedConfig"))
					super.delegateAdd(csmRandomSeedConfig)
				}
				
				override protected delegateAdd(int index, CsmRandomSeedConfig csmRandomSeedConfig) {
					csmRandomSeedConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmRandomSeedConfig"))
					super.delegateAdd(index, csmRandomSeedConfig)
				}	
			}
		}
		
		
		static class CsmRandomSeedConfig implements IWrapper<GContainer> {
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
			
			def String getCsmCallbackRandomSeed(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackRandomSeed"])
			}
			
			def void setCsmCallbackRandomSeed(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackRandomSeed"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackRandomSeed"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmRandomSeedInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmRandomSeedInitConfiguration"])
			}
			
			def void setCsmRandomSeedInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmRandomSeedInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmRandomSeedInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmRandomSeedPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmRandomSeedPrimitiveName"])
			}
			
			def void setCsmRandomSeedPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmRandomSeedPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmRandomSeedPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class CsmSignatureGenerate implements IWrapper<GContainer> {
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
		
		def Integer getCsmSignatureGenerateMaxKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureGenerateMaxKeySize"])
		}
		
		def void setCsmSignatureGenerateMaxKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureGenerateMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmSignatureGenerateMaxKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CsmSignatureGenerateConfig> getCsmSignatureGenerateConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmSignatureGenerateConfig")
				}
			}
			return new BasicWrappingEList<CsmSignatureGenerateConfig, GContainer>(filteredContainers, typeof(CsmSignatureGenerateConfig), typeof(GContainer)) {
				override protected delegateAdd(CsmSignatureGenerateConfig csmSignatureGenerateConfig) {
					csmSignatureGenerateConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmSignatureGenerateConfig"))
					super.delegateAdd(csmSignatureGenerateConfig)
				}
				
				override protected delegateAdd(int index, CsmSignatureGenerateConfig csmSignatureGenerateConfig) {
					csmSignatureGenerateConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmSignatureGenerateConfig"))
					super.delegateAdd(index, csmSignatureGenerateConfig)
				}	
			}
		}
		
		
		static class CsmSignatureGenerateConfig implements IWrapper<GContainer> {
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
			
			def String getCsmCallbackSignatureGenerate(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSignatureGenerate"])
			}
			
			def void setCsmCallbackSignatureGenerate(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSignatureGenerate"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackSignatureGenerate"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmSignatureGenerateInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureGenerateInitConfiguration"])
			}
			
			def void setCsmSignatureGenerateInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureGenerateInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmSignatureGenerateInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmSignatureGeneratePrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureGeneratePrimitiveName"])
			}
			
			def void setCsmSignatureGeneratePrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureGeneratePrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmSignatureGeneratePrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class CsmSignatureVerify implements IWrapper<GContainer> {
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
		
		def Integer getCsmSignatureVerifyMaxKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureVerifyMaxKeySize"])
		}
		
		def void setCsmSignatureVerifyMaxKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureVerifyMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmSignatureVerifyMaxKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CsmSignatureVerifyConfig> getCsmSignatureVerifyConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmSignatureVerifyConfig")
				}
			}
			return new BasicWrappingEList<CsmSignatureVerifyConfig, GContainer>(filteredContainers, typeof(CsmSignatureVerifyConfig), typeof(GContainer)) {
				override protected delegateAdd(CsmSignatureVerifyConfig csmSignatureVerifyConfig) {
					csmSignatureVerifyConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmSignatureVerifyConfig"))
					super.delegateAdd(csmSignatureVerifyConfig)
				}
				
				override protected delegateAdd(int index, CsmSignatureVerifyConfig csmSignatureVerifyConfig) {
					csmSignatureVerifyConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmSignatureVerifyConfig"))
					super.delegateAdd(index, csmSignatureVerifyConfig)
				}	
			}
		}
		
		
		static class CsmSignatureVerifyConfig implements IWrapper<GContainer> {
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
			
			def String getCsmCallbackSignatureVerify(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSignatureVerify"])
			}
			
			def void setCsmCallbackSignatureVerify(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSignatureVerify"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackSignatureVerify"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmSignatureVerifyInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureVerifyInitConfiguration"])
			}
			
			def void setCsmSignatureVerifyInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureVerifyInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmSignatureVerifyInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmSignatureVerifyPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureVerifyPrimitiveName"])
			}
			
			def void setCsmSignatureVerifyPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSignatureVerifyPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmSignatureVerifyPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class CsmSymBlockDecrypt implements IWrapper<GContainer> {
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
		
		def Integer getCsmSymBlockDecryptMaxKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymBlockDecryptMaxKeySize"])
		}
		
		def void setCsmSymBlockDecryptMaxKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymBlockDecryptMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymBlockDecryptMaxKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CsmSymBlockDecryptConfig> getCsmSymBlockDecryptConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmSymBlockDecryptConfig")
				}
			}
			return new BasicWrappingEList<CsmSymBlockDecryptConfig, GContainer>(filteredContainers, typeof(CsmSymBlockDecryptConfig), typeof(GContainer)) {
				override protected delegateAdd(CsmSymBlockDecryptConfig csmSymBlockDecryptConfig) {
					csmSymBlockDecryptConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmSymBlockDecryptConfig"))
					super.delegateAdd(csmSymBlockDecryptConfig)
				}
				
				override protected delegateAdd(int index, CsmSymBlockDecryptConfig csmSymBlockDecryptConfig) {
					csmSymBlockDecryptConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmSymBlockDecryptConfig"))
					super.delegateAdd(index, csmSymBlockDecryptConfig)
				}	
			}
		}
		
		
		static class CsmSymBlockDecryptConfig implements IWrapper<GContainer> {
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
			
			def String getCsmCallbackSymBlockDecrypt(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSymBlockDecrypt"])
			}
			
			def void setCsmCallbackSymBlockDecrypt(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSymBlockDecrypt"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackSymBlockDecrypt"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmSymBlockDecryptInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymBlockDecryptInitConfiguration"])
			}
			
			def void setCsmSymBlockDecryptInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymBlockDecryptInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymBlockDecryptInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmSymBlockDecryptPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymBlockDecryptPrimitiveName"])
			}
			
			def void setCsmSymBlockDecryptPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymBlockDecryptPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymBlockDecryptPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class CsmSymBlockEncrypt implements IWrapper<GContainer> {
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
		
		def Integer getCsmSymBlockEncryptMaxKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymBlockEncryptMaxKeySize"])
		}
		
		def void setCsmSymBlockEncryptMaxKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymBlockEncryptMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymBlockEncryptMaxKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CsmSymBlockEncryptConfig> getCsmSymBlockEncryptConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmSymBlockEncryptConfig")
				}
			}
			return new BasicWrappingEList<CsmSymBlockEncryptConfig, GContainer>(filteredContainers, typeof(CsmSymBlockEncryptConfig), typeof(GContainer)) {
				override protected delegateAdd(CsmSymBlockEncryptConfig csmSymBlockEncryptConfig) {
					csmSymBlockEncryptConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmSymBlockEncryptConfig"))
					super.delegateAdd(csmSymBlockEncryptConfig)
				}
				
				override protected delegateAdd(int index, CsmSymBlockEncryptConfig csmSymBlockEncryptConfig) {
					csmSymBlockEncryptConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmSymBlockEncryptConfig"))
					super.delegateAdd(index, csmSymBlockEncryptConfig)
				}	
			}
		}
		
		
		static class CsmSymBlockEncryptConfig implements IWrapper<GContainer> {
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
			
			def String getCsmCallbackSymBlockEncrypt(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSymBlockEncrypt"])
			}
			
			def void setCsmCallbackSymBlockEncrypt(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSymBlockEncrypt"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackSymBlockEncrypt"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmSymBlockEncryptInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymBlockEncryptInitConfiguration"])
			}
			
			def void setCsmSymBlockEncryptInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymBlockEncryptInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymBlockEncryptInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmSymBlockEncryptPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymBlockEncryptPrimitiveName"])
			}
			
			def void setCsmSymBlockEncryptPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymBlockEncryptPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymBlockEncryptPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class CsmSymDecrypt implements IWrapper<GContainer> {
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
		
		def Integer getCsmSymDecryptMaxKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymDecryptMaxKeySize"])
		}
		
		def void setCsmSymDecryptMaxKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymDecryptMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymDecryptMaxKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CsmSymDecryptConfig> getCsmSymDecryptConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmSymDecryptConfig")
				}
			}
			return new BasicWrappingEList<CsmSymDecryptConfig, GContainer>(filteredContainers, typeof(CsmSymDecryptConfig), typeof(GContainer)) {
				override protected delegateAdd(CsmSymDecryptConfig csmSymDecryptConfig) {
					csmSymDecryptConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmSymDecryptConfig"))
					super.delegateAdd(csmSymDecryptConfig)
				}
				
				override protected delegateAdd(int index, CsmSymDecryptConfig csmSymDecryptConfig) {
					csmSymDecryptConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmSymDecryptConfig"))
					super.delegateAdd(index, csmSymDecryptConfig)
				}	
			}
		}
		
		
		static class CsmSymDecryptConfig implements IWrapper<GContainer> {
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
			
			def String getCsmCallbackSymDecrypt(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSymDecrypt"])
			}
			
			def void setCsmCallbackSymDecrypt(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSymDecrypt"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackSymDecrypt"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmSymDecryptInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymDecryptInitConfiguration"])
			}
			
			def void setCsmSymDecryptInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymDecryptInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymDecryptInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmSymDecryptPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymDecryptPrimitiveName"])
			}
			
			def void setCsmSymDecryptPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymDecryptPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymDecryptPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class CsmSymEncrypt implements IWrapper<GContainer> {
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
		
		def Integer getCsmSymEncryptMaxKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymEncryptMaxKeySize"])
		}
		
		def void setCsmSymEncryptMaxKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymEncryptMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymEncryptMaxKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CsmSymEncryptConfig> getCsmSymEncryptConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmSymEncryptConfig")
				}
			}
			return new BasicWrappingEList<CsmSymEncryptConfig, GContainer>(filteredContainers, typeof(CsmSymEncryptConfig), typeof(GContainer)) {
				override protected delegateAdd(CsmSymEncryptConfig csmSymEncryptConfig) {
					csmSymEncryptConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmSymEncryptConfig"))
					super.delegateAdd(csmSymEncryptConfig)
				}
				
				override protected delegateAdd(int index, CsmSymEncryptConfig csmSymEncryptConfig) {
					csmSymEncryptConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmSymEncryptConfig"))
					super.delegateAdd(index, csmSymEncryptConfig)
				}	
			}
		}
		
		
		static class CsmSymEncryptConfig implements IWrapper<GContainer> {
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
			
			def String getCsmCallbackSymEncrypt(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSymEncrypt"])
			}
			
			def void setCsmCallbackSymEncrypt(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSymEncrypt"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackSymEncrypt"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmSymEncryptInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymEncryptInitConfiguration"])
			}
			
			def void setCsmSymEncryptInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymEncryptInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymEncryptInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmSymEncryptPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymEncryptPrimitiveName"])
			}
			
			def void setCsmSymEncryptPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymEncryptPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymEncryptPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class CsmSymKeyExtract implements IWrapper<GContainer> {
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
		
		def Integer getCsmSymKeyExtractMaxKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyExtractMaxKeySize"])
		}
		
		def void setCsmSymKeyExtractMaxKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyExtractMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymKeyExtractMaxKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CsmSymKeyExtractConfig> getCsmSymKeyExtractConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmSymKeyExtractConfig")
				}
			}
			return new BasicWrappingEList<CsmSymKeyExtractConfig, GContainer>(filteredContainers, typeof(CsmSymKeyExtractConfig), typeof(GContainer)) {
				override protected delegateAdd(CsmSymKeyExtractConfig csmSymKeyExtractConfig) {
					csmSymKeyExtractConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmSymKeyExtractConfig"))
					super.delegateAdd(csmSymKeyExtractConfig)
				}
				
				override protected delegateAdd(int index, CsmSymKeyExtractConfig csmSymKeyExtractConfig) {
					csmSymKeyExtractConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmSymKeyExtractConfig"))
					super.delegateAdd(index, csmSymKeyExtractConfig)
				}	
			}
		}
		
		
		static class CsmSymKeyExtractConfig implements IWrapper<GContainer> {
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
			
			def String getCsmCallbackSymKeyExtract(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSymKeyExtract"])
			}
			
			def void setCsmCallbackSymKeyExtract(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSymKeyExtract"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackSymKeyExtract"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmSymKeyExtractInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyExtractInitConfiguration"])
			}
			
			def void setCsmSymKeyExtractInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyExtractInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymKeyExtractInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmSymKeyExtractPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyExtractPrimitiveName"])
			}
			
			def void setCsmSymKeyExtractPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyExtractPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymKeyExtractPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class CsmSymKeyGenerate implements IWrapper<GContainer> {
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
		
		def Integer getCsmSymKeyGenerateMaxKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyGenerateMaxKeySize"])
		}
		
		def void setCsmSymKeyGenerateMaxKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyGenerateMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymKeyGenerateMaxKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CsmSymKeyGenerateConfig> getCsmSymKeyGenerateConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmSymKeyGenerateConfig")
				}
			}
			return new BasicWrappingEList<CsmSymKeyGenerateConfig, GContainer>(filteredContainers, typeof(CsmSymKeyGenerateConfig), typeof(GContainer)) {
				override protected delegateAdd(CsmSymKeyGenerateConfig csmSymKeyGenerateConfig) {
					csmSymKeyGenerateConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmSymKeyGenerateConfig"))
					super.delegateAdd(csmSymKeyGenerateConfig)
				}
				
				override protected delegateAdd(int index, CsmSymKeyGenerateConfig csmSymKeyGenerateConfig) {
					csmSymKeyGenerateConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmSymKeyGenerateConfig"))
					super.delegateAdd(index, csmSymKeyGenerateConfig)
				}	
			}
		}
		
		
		static class CsmSymKeyGenerateConfig implements IWrapper<GContainer> {
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
			
			def String getCsmCallbackSymKeyGenerate(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSymKeyGenerate"])
			}
			
			def void setCsmCallbackSymKeyGenerate(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSymKeyGenerate"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackSymKeyGenerate"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmSymKeyGenerateInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyGenerateInitConfiguration"])
			}
			
			def void setCsmSymKeyGenerateInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyGenerateInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymKeyGenerateInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmSymKeyGeneratePrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyGeneratePrimitiveName"])
			}
			
			def void setCsmSymKeyGeneratePrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyGeneratePrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymKeyGeneratePrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class CsmSymKeyUpdate implements IWrapper<GContainer> {
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
		
		def Integer getCsmSymKeyUpdateMaxKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyUpdateMaxKeySize"])
		}
		
		def void setCsmSymKeyUpdateMaxKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyUpdateMaxKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymKeyUpdateMaxKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CsmSymKeyUpdateConfig> getCsmSymKeyUpdateConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmSymKeyUpdateConfig")
				}
			}
			return new BasicWrappingEList<CsmSymKeyUpdateConfig, GContainer>(filteredContainers, typeof(CsmSymKeyUpdateConfig), typeof(GContainer)) {
				override protected delegateAdd(CsmSymKeyUpdateConfig csmSymKeyUpdateConfig) {
					csmSymKeyUpdateConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmSymKeyUpdateConfig"))
					super.delegateAdd(csmSymKeyUpdateConfig)
				}
				
				override protected delegateAdd(int index, CsmSymKeyUpdateConfig csmSymKeyUpdateConfig) {
					csmSymKeyUpdateConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmSymKeyUpdateConfig"))
					super.delegateAdd(index, csmSymKeyUpdateConfig)
				}	
			}
		}
		
		
		static class CsmSymKeyUpdateConfig implements IWrapper<GContainer> {
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
			
			def String getCsmCallbackSymKeyUpdate(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSymKeyUpdate"])
			}
			
			def void setCsmCallbackSymKeyUpdate(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSymKeyUpdate"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackSymKeyUpdate"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmSymKeyUpdateInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyUpdateInitConfiguration"])
			}
			
			def void setCsmSymKeyUpdateInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyUpdateInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymKeyUpdateInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmSymKeyUpdatePrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyUpdatePrimitiveName"])
			}
			
			def void setCsmSymKeyUpdatePrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyUpdatePrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymKeyUpdatePrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class CsmSymKeyWrapAsym implements IWrapper<GContainer> {
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
		
		def Integer getCsmSymKeyWrapAsymMaxPubKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyWrapAsymMaxPubKeySize"])
		}
		
		def void setCsmSymKeyWrapAsymMaxPubKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyWrapAsymMaxPubKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymKeyWrapAsymMaxPubKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		def Integer getCsmSymKeyWrapAsymMaxSymKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyWrapAsymMaxSymKeySize"])
		}
		
		def void setCsmSymKeyWrapAsymMaxSymKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyWrapAsymMaxSymKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymKeyWrapAsymMaxSymKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CsmSymKeyWrapAsymConfig> getCsmSymKeyWrapAsymConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmSymKeyWrapAsymConfig")
				}
			}
			return new BasicWrappingEList<CsmSymKeyWrapAsymConfig, GContainer>(filteredContainers, typeof(CsmSymKeyWrapAsymConfig), typeof(GContainer)) {
				override protected delegateAdd(CsmSymKeyWrapAsymConfig csmSymKeyWrapAsymConfig) {
					csmSymKeyWrapAsymConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmSymKeyWrapAsymConfig"))
					super.delegateAdd(csmSymKeyWrapAsymConfig)
				}
				
				override protected delegateAdd(int index, CsmSymKeyWrapAsymConfig csmSymKeyWrapAsymConfig) {
					csmSymKeyWrapAsymConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmSymKeyWrapAsymConfig"))
					super.delegateAdd(index, csmSymKeyWrapAsymConfig)
				}	
			}
		}
		
		
		static class CsmSymKeyWrapAsymConfig implements IWrapper<GContainer> {
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
			
			def String getCsmCallbackSymKeyWrapAsym(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSymKeyWrapAsym"])
			}
			
			def void setCsmCallbackSymKeyWrapAsym(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSymKeyWrapAsym"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackSymKeyWrapAsym"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmSymKeyWrapAsymInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyWrapAsymInitConfiguration"])
			}
			
			def void setCsmSymKeyWrapAsymInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyWrapAsymInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymKeyWrapAsymInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmSymKeyWrapAsymPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyWrapAsymPrimitiveName"])
			}
			
			def void setCsmSymKeyWrapAsymPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyWrapAsymPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymKeyWrapAsymPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
		}
		
	}
	static class CsmSymKeyWrapSym implements IWrapper<GContainer> {
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
		
		def Integer getCsmSymKeyWrapSymMaxSymKeySize(){
			EcucValueAccessor421Util.getIntegerValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyWrapSymMaxSymKeySize"])
		}
		
		def void setCsmSymKeyWrapSymMaxSymKeySize(Integer value){
			var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyWrapSymMaxSymKeySize"]
			if (parameterValue == null) {
				val containerDef = containerValue.gGetDefinition
				if (containerDef instanceof GParamConfContainerDef) {
					parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymKeyWrapSymMaxSymKeySize"])
					containerValue.gGetParameterValues += parameterValue
				}
			}
			EcucValueAccessor421Util.setParameterValue(parameterValue, value)
		}
		
		
		
		def List<CsmSymKeyWrapSymConfig> getCsmSymKeyWrapSymConfigs(){
			val List<GContainer> filteredContainers = new AbstractFilteringEList<GContainer>(containerValue, getEContainingFeature(containerValue, GecucdescriptionPackage.eINSTANCE.getGContainer())) {
				override protected accept(GContainer item) {
					return accept(item, typeof(GContainerDef), "CsmSymKeyWrapSymConfig")
				}
			}
			return new BasicWrappingEList<CsmSymKeyWrapSymConfig, GContainer>(filteredContainers, typeof(CsmSymKeyWrapSymConfig), typeof(GContainer)) {
				override protected delegateAdd(CsmSymKeyWrapSymConfig csmSymKeyWrapSymConfig) {
					csmSymKeyWrapSymConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmSymKeyWrapSymConfig"))
					super.delegateAdd(csmSymKeyWrapSymConfig)
				}
				
				override protected delegateAdd(int index, CsmSymKeyWrapSymConfig csmSymKeyWrapSymConfig) {
					csmSymKeyWrapSymConfig.target?.gSetDefinition(containerValue.getContainerDefinition("CsmSymKeyWrapSymConfig"))
					super.delegateAdd(index, csmSymKeyWrapSymConfig)
				}	
			}
		}
		
		
		static class CsmSymKeyWrapSymConfig implements IWrapper<GContainer> {
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
			
			def String getCsmCallbackSymKeyWrapSym(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSymKeyWrapSym"])
			}
			
			def void setCsmCallbackSymKeyWrapSym(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmCallbackSymKeyWrapSym"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmCallbackSymKeyWrapSym"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmSymKeyWrapSymInitConfiguration(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyWrapSymInitConfiguration"])
			}
			
			def void setCsmSymKeyWrapSymInitConfiguration(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyWrapSymInitConfiguration"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymKeyWrapSymInitConfiguration"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			def String getCsmSymKeyWrapSymPrimitiveName(){
				EcucValueAccessor421Util.getStringValue(containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyWrapSymPrimitiveName"])
			}
			
			def void setCsmSymKeyWrapSymPrimitiveName(String value){
				var GParameterValue parameterValue = containerValue.gGetParameterValues.findFirst[gGetDefinition?.gGetShortName == "CsmSymKeyWrapSymPrimitiveName"]
				if (parameterValue == null) {
					val containerDef = containerValue.gGetDefinition
					if (containerDef instanceof GParamConfContainerDef) {
						parameterValue = EcucValueAccessor421Util.createParameterValue(containerDef.gGetParameters.findFirst[gGetShortName == "CsmSymKeyWrapSymPrimitiveName"])
						containerValue.gGetParameterValues += parameterValue
					}
				}
				EcucValueAccessor421Util.setParameterValue(parameterValue, value)
			}
			
			
			
			
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
